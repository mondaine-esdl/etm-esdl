# System modules
import os
import sys

# External modules
import json

import requests
from requests import Session, adapters

from pyecore.resources import ResourceSet, URI
from pyecore.utils import DynamicEPackage
from pyecore.resources.resource import HttpURI
from xmlresource import XMLResource

import urllib.parse

import webbrowser

# ETM modules
from ETM_API import ETM_API, SessionWithUrlBase

# ESDL modules
from EnergySystemHandler import EnergySystemHandler

from MondaineHub import MondaineHub
mh = MondaineHub('roos.dekok@quintel.com')


def connect_to_etm():
    # Create base url, note that beta engine is not as fast as production engine
    base_url = 'https://beta-engine.energytransitionmodel.com/api/v3'
    session = SessionWithUrlBase(base_url)

    return ETM_API(session)


def create_etm_scenario(regional_data, supply):
    # Connect to ETM API
    etm = connect_to_etm()
    # Create scenario
    # area = 'RGNH03_gooi_en_vechtstreek'
    area = 'haven_stad'
    etm.create_new_scenario('Mondaine', area, 2050)

    print('\nETM scenario_id: {}'.format(etm.scenario_id))

    shares = {
        'residences': {
            'all_electric': 0.,
            'district_heating': 0.,
            'hybrid_heatpump': 0.,
            'gas_boiler': 0.,
        }, 'services': {
            'all_electric': 0.,
            'district_heating': 0.,
            'hybrid_heatpump': 0.,
            'gas_boiler': 0.,
        }
    }

    if regional_data['residences']['number_of_buildings'] != 0:
        total_number_of_buildings = regional_data['residences']['number_of_buildings']
        for heating_option in ['all_electric', 'district_heating', 'hybrid_heatpump', 'gas_boiler']:
            number_of_buildings = regional_data['residences']['heating_options'][heating_option]
            shares['residences'][heating_option] = number_of_buildings / total_number_of_buildings * 100.
            shares['services'][heating_option] = number_of_buildings / total_number_of_buildings * 100.

    # for building_type in ['residences']:
    #     if regional_data[building_type]['heating_demand']['total'] != 0:
    #         shares[building_type]['residual_heat'] = (
    #             (regional_data[building_type]['heating_demand']['LT'] +
    #              regional_data[building_type]['heating_demand']['MT']) /
    #             regional_data[building_type]['heating_demand']['total']) * 100.
    #     else:
    #         shares[building_type]['residual_heat'] = 0
    #
    #     if regional_data[building_type]['heating_demand']['total'] != 0:
    #         shares[building_type]['gas'] = (
    #             regional_data[building_type]['gas_demand'] /
    #             regional_data[building_type]['heating_demand']['total']) * 100.
    #     else:
    #         shares[building_type]['gas'] = 0
    #
    #     shares[building_type]['electricity'] = (
    #         max(100. - (shares[building_type]['residual_heat'] +
    #             shares[building_type]['gas']), 0))

    # Change the user values (slider settings) based on the energy system
    user_values = {
        'households_number_of_residences': regional_data['residences']['number_of_buildings'],
        'households_insulation_level_apartments': 30.,
        'households_insulation_level_corner_houses': 30.,
        'households_insulation_level_detached_houses': 30.,
        'households_insulation_level_semi_detached_houses': 30.,
        'households_insulation_level_terraced_houses': 30.,
        'households_heater_combined_network_gas_share': shares['residences']['gas_boiler'],
        'households_heater_district_heating_steam_hot_water_share': shares['residences']['district_heating'],
        'households_heater_heatpump_air_water_electricity_share': shares['residences']['all_electric'],
        # 'households_heater_heatpump_ground_water_electricity_share': 0.,
        'households_heater_hybrid_heatpump_air_water_electricity_share': shares['residences']['hybrid_heatpump'],
        # 'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.,
        # 'households_heater_wood_pellets_share': 0.,
        # 'households_heater_network_gas_share': 0.,
        # 'households_heater_electricity_share': 0.,
        'buildings_insulation_level': 52.,
        'buildings_space_heater_network_gas_share': shares['services']['gas_boiler'],
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': shares['services']['all_electric'] + shares['services']['hybrid_heatpump'] * .7,
        'buildings_space_heater_heatpump_air_water_network_gas_share': shares['services']['hybrid_heatpump'] * .3,
        # 'buildings_space_heater_electricity_share': 0.,
        # 'buildings_space_heater_wood_pellets_share': 0.,
        'buildings_space_heater_district_heating_steam_hot_water_share': shares['services']['district_heating'],
        'capacity_of_energy_power_wind_turbine_inland': supply['wind']['capacity'],
        'capacity_of_energy_power_solar_pv_solar_radiation': supply['solar']['capacity'],
        'green_gas_total_share': 100.
    }

    # Determine the metrics (KPIs and relevant slider queries)
    gqueries = [
        # Aandeel hernieuwbare energie op eindgebruik (totaal)
        'renewability',

        # Elektriciteitsopek uit hernieuwbare bronnen
        'total_renewable_electricity_produced',

        # Aandeel hernieuwbare elektriciteit op eindgebruik
        'share_of_renewable_electricity',

        # Energiebesparing t.o.v. startjaar (totaal)
        'turk_energy_use',

        # Energie-import (totaal)

        # Aandeel import op eindgebruik (totaal)
        'dashboard_energy_import_netto',

        # Energie-export (totaal)

        # Import van elektriciteit
        'import_in_source_of_electricity_production',

        # Aandeel import op eindgebruik (elektriciteit)
        'net_import_of_electricity',

        # Export van elektriciteit

        # Import van warmte

        # Aandeel import op eindgebruik (warmte)

        # Export van warmte

        # Reductie CO2-emissies t.o.v. startjaar (relatief)
        'dashboard_co2_emissions_versus_start_year',

        # Reductie CO2-emissies t.o.v. startjaar (absoluut)
        'total_co2_emissions',

        # Aantal uren met elektriciteitstekorten
        'dashboard_blackout_hours',

        # Aantal uren met elektriciteitsoverschotten
        'dashboard_total_number_of_excess_events',

        # Uit te breiden netcapaciteit
        'lv_net_capacity_delta_present_future',
        'lv_mv_trafo_capacity_delta_present_future',
        'mv_net_capacity_delta_present_future',
        'mv_hv_trafo_capacity_delta_present_future',
        'hv_net_capacity_delta_present_future',
        'interconnection_net_capacity_delta_present_future',
        'offshore_net_capacity_delta_present_future',

        # Benodigde meerinvestering infrastructuur (totaal)
        'hv_net_in_additional_infrastructure_investments',
        'interconnection_net_in_additional_infrastructure_investments',
        'lv_mv_transformer_in_additional_infrastructure_investments',
        'lv_net_in_additional_infrastructure_investments',
        'mv_hv_transformer_in_additional_infrastructure_investments',
        'mv_net_in_additional_infrastructure_investments',
        'offshore_net_in_additional_infrastructure_investments',

        # Onbalans tussen vraag en aanbod uitgedrukt in ​piekvermogen (gas-)backup
    ]

    # Change the user inputs (i.e., set sliders)
    etm.change_inputs(user_values, gqueries)

    # Get and print the updated metrics
    metrics = etm.current_metrics
    print(metrics, '\n')

    return etm, metrics


def load_esdl(filename):
    """
    Load ESDL input file into the EnergySystemHandler and add the energy system
    information (ESI) to be ready to be parsed.
    """

    esh = EnergySystemHandler('./input/{}.esdl'.format(filename))
    esh.add_energy_system_information()

    return esh


def print_esdl(esh):
    esdl_string = esh.get_as_string()
    print('\nPrinting the first few lines of the ESDL energy system..\n')
    print(esdl_string[:500])


def aggregate_to_region(esh, neighbourhoods):
    # Get area id and name
    area_id = esh.es.instance[0].area.id
    area_name = esh.es.instance[0].area.name

    print('\nID: {}'.format(area_id))
    print('Name: {}'.format(area_name))

    # Initialise region object
    region = {
        'code': area_id,
        'name': area_name,
        'residences': {
            'number_of_buildings': 0,
            'heating_options': {
                'all_electric': 0,
                'district_heating': 0,
                'hybrid_heatpump': 0,
                'gas_boiler': 0,
            }
        },
        'services': {
            'number_of_buildings': 0,
            'heating_options': {
                'all_electric': 0,
                'district_heating': 0,
                'hybrid_heatpump': 0,
                'gas_boiler': 0,
            }
        }
    }

    # Sum neighbourhood values to regional values
    for neighbourhood in neighbourhoods.values():
        for building_type in ['residences']:
            try:
                region[building_type]['number_of_buildings'] += neighbourhood[building_type]['number_of_buildings']
            except:
                pass
            try:
                region[building_type]['heating_options']['all_electric'] += neighbourhood[building_type]['heating_options']['all_electric']
            except:
                pass
            try:
                region[building_type]['heating_options']['district_heating'] += neighbourhood[building_type]['heating_options']['district_heating']
            except:
                pass
            try:
                region[building_type]['heating_options']['hybrid_heatpump'] += neighbourhood[building_type]['heating_options']['hybrid_heatpump']
            except:
                pass
            try:
                region[building_type]['heating_options']['gas_boiler'] += neighbourhood[building_type]['heating_options']['gas_boiler']
            except:
                pass

    print('\nAggregated values for {} {}:'.format(region['code'], region['name']))

    for key, value in region.items():
        print('  - {}: {}'.format(key, value))

    return region


def parse_aggregated_building(esh, asset):
    # Initialise data object
    data = {}

    # Get number of residences
    number_of_buildings = asset.numberOfBuildings

    # Create data object for this neighbourhood
    data = {
        'number_of_buildings': number_of_buildings,
        'heating_options': {
            'all_electric': 0,
            'district_heating': 0,
            'hybrid_heatpump': 0,
            'gas_boiler': 0,
        }
    }

    # Get number of buildings per heating option
    if asset.name.endswith('ewp'):
        data['heating_options']['all_electric'] += number_of_buildings
    elif asset.name.endswith('lt') or asset.name.endswith('lt_buurtwko'):
        data['heating_options']['district_heating'] += number_of_buildings
    elif asset.name.endswith('lt_lt30_30') or asset.name.endswith('lt_lt30_70'):
        data['heating_options']['district_heating'] += number_of_buildings
    elif asset.name.endswith('mt'):
        data['heating_options']['district_heating'] += number_of_buildings
    elif asset.name.endswith('restwarmte'):
        data['heating_options']['district_heating'] += number_of_buildings
    elif asset.name.endswith('geothermie'):
        data['heating_options']['district_heating'] += number_of_buildings
    elif asset.name.endswith('hr_hg'):
        data['heating_options']['gas_boiler'] += number_of_buildings
    elif asset.name.endswith('hr_hg'):
        data['heating_options']['gas_boiler'] += number_of_buildings
    elif asset.name.endswith('hwp_hg'):
        data['heating_options']['hybrid_heatpump'] += number_of_buildings


    # Get demands for residences
    # electricity_demand = esh.get_assets_of_type(asset, esh.esdl.ElectricityDemand)
    # gas_demand = esh.get_assets_of_type(asset, esh.esdl.GasDemand)
    # heating_demand = esh.get_assets_of_type(asset, esh.esdl.HeatingDemand)

    # Distinguish different types of heating demand (total, MT, HT)
    # total_heating_demand = 0.
    # MT_heating_demand = 0.
    # LT_heating_demand = 0.

    # for demand in heating_demand:
    #     if demand.name == 'Vraag_Warmte_totaal':
    #         total_heating_demand = demand.port[0].profile[0].value
    #     elif demand.name == 'Vraag_MT_Warmte':
    #         MT_heating_demand = demand.port[0].profile[0].value
    #     elif demand.name == 'Vraag_LT_Warmte':
    #         LT_heating_demand = demand.port[0].profile[0].value
    #
    # try:
    #     e_value = electricity_demand[0].port[0].profile[0].value
    # except:
    #     e_value = 0
    #
    # try:
    #     g_value = gas_demand[0].port[0].profile[0].value
    # except:
    #     g_value = 0


    # Read values into data object
    # data = {
    #     'number_of_buildings': number_of_buildings,
    #     'heating_options': {
    #         'total': total_heating_demand,
    #         'MT': MT_heating_demand,
    #         'LT': LT_heating_demand
    #     },
    #     'electricity_demand': e_value,
    #     'gas_demand': g_value
    # }

    return data


def parse_neighbourhood(esh, neighbourhood):
    # Get the neighbourhood code and name
    code = neighbourhood.id

    # Initialise assets object
    assets = {
        'code': code,
        'residences': {},
        'services': {}
    }

    # Loop over AggregatedBuilding assets to determine the number of residences
    # and services and the corresponding energy demands
    for asset in esh.get_assets_of_type(neighbourhood, esh.esdl.AggregatedBuilding):
        # Parse asset data for aggregated building of type residences
        data = parse_aggregated_building(esh, asset)
        # Read attribute values into assets object
        assets['residences'] = data

    return assets


def parse_supply_assets(esh):
    # Initialise dictionary to store supply information per asset type
    supply = {
        'wind': {},
        'solar': {}
    }

    # Parse wind turbines
    list_of_wind_turbines = esh.get_assets_of_type(esh.es.instance[0].area, esh.esdl.WindTurbine)
    # Sum capacities
    capacity = 0
    for wind_turbine in list_of_wind_turbines:
        capacity += wind_turbine.power / 1E6
    supply['wind']['capacity'] = capacity

    # Parse solar PV parcs
    list_of_pv_parcs = esh.get_assets_of_type(esh.es.instance[0].area, esh.esdl.PVParc)
    list_of_pv_parcs.extend(esh.get_assets_of_type(esh.es.instance[0].area, esh.esdl.PVPark))
    # Sum capacities
    capacity = 0
    for pv_parc in list_of_pv_parcs:
        capacity += pv_parc.power / 1E6
    supply['solar']['capacity'] = capacity

    return supply


def parse_neighbourhoods(esh):
    # Initialise dictionary to store demand information per neighbourhood
    neighbourhoods = {}

    # Loop over the neighbourhoods in the area (by looping over the ESDL tree)
    for neighbourhood in esh.es.instance[0].area.area:
        assets = parse_neighbourhood(esh, neighbourhood)

        # And parse the ESDL to store the attributes per neighbourhood
        neighbourhoods[assets['code']] = assets

    return neighbourhoods


def parse_esdl(esh):
    """
    Top area
    For asset in assets:
        parse asset
            - Energy demands
            - Wind turbines
            - Zonneparken
            - Zon PV op dak?
                (SolarPotential type=PV_OP_DAK value=X m2)
                (PVInstallation type=... surfaceArea=1000 m2)

    For sub area in area.area
        For asset in assets:
            parse asset
                - Energy demands
                - Wind turbines
                - Zonneparken
                - Zon PV op dak?

    Aggregate assets for top area

    Generate new energy system for top area

    Return list of changed slider settings
    """

    # Get existing energy system form Mondaine Hub
    # mh.get_existing_es(filename)

    # First, loop over supply assets in top area
    supply = parse_supply_assets(esh)

    # Then, loop over demand assets in sub areas (i.e., parse neighbourhoods)
    neighbourhoods = parse_neighbourhoods(esh)
    # Aggregate neighbourhood values to regional values
    regional_data = aggregate_to_region(esh, neighbourhoods)

    # Print first few lines of ESDL energy system
    print_esdl(esh)

    return regional_data, supply


def add_quantity_and_units(esh):
    # Energy System information can be used to globally define the quantity and
    # units of this system, instead of defining them manually per KPI in each
    # area: this fosters reuse (but is not necessary)
    q_and_u = esh.get_quantity_and_units()

    # Add share of energy demand as quantity and unit to the energy system information
    if esh.get_by_id('share_of_energy_demand') is None:
        unit = esh.esdl.QuantityAndUnitType(
            id='share_of_energy_demand',
            physicalQuantity='ENERGY',
            unit='PERCENT',
            description='%')
        q_and_u.quantityAndUnit.append(unit)

    # Add energy demand in MJ as quantity and unit to the energy system information
    if esh.get_by_id('energy_demand') is None:
        unit = esh.esdl.QuantityAndUnitType(
            id='energy_demand',
            physicalQuantity='ENERGY',
            multiplier='MEGA',
            unit='JOULE',
            description='MJ')
        q_and_u.quantityAndUnit.append(unit)


def add_kpis_and_targets(esh):
    # Create renewable electricity production KPI
    kpi_renewable_electricity_production = esh.esdl.DoubleKPI(
        id=esh.generate_uuid(),
        name='Elektriciteitsopwek uit hernieuwbare bronnen',
        value=0.0,
        quantityAndUnit=esh.get_by_id_slow('energy_demand')
    )

    # TODO: Make this dynamic
    # Create renewable electricity production KPI target
    target_renewable_electricity_production = esh.esdl.DoubleTargetKPI(
        id=esh.generate_uuid(),
        value=0.5E9  # 0.5 PJ (random value)
    )
    # Add target to KPI
    kpi_renewable_electricity_production.target.append(target_renewable_electricity_production)

    # Create share of electricity production KPI
    kpi_renewable_electricity_share = esh.esdl.DoubleKPI(
        id=esh.generate_uuid(),
        name='Aandeel hernieuwbare elektriciteit op eindgebruik',
        value=0.0,
        quantityAndUnit=esh.get_by_id_slow('share_of_energy_demand')
    )

    esh.add_kpis()
    esh.add_kpi(kpi_renewable_electricity_production)
    esh.add_kpi(kpi_renewable_electricity_share)


def update_kpis(esh, metrics):
    # Update the energy system KPIs with the new values
    # get_kpi_by_id() does not work yet in current version of ESDL, so do it by
    # name: co2_emission = get_kpi_by_id(es, 'co2emission')
    renewable_electricity_prodution = esh.get_kpi_by_name('Elektriciteitsopwek uit hernieuwbare bronnen')
    renewable_electricity_prodution.value = metrics.loc['total_renewable_electricity_produced', 'future']
    print('\n{}: {} {}'.format(renewable_electricity_prodution.name, renewable_electricity_prodution.value,
                                   renewable_electricity_prodution.quantityAndUnit.description))

    renewable_electricity_share = esh.get_kpi_by_name('Aandeel hernieuwbare elektriciteit op eindgebruik')
    renewable_electricity_share.value = metrics.loc['share_of_renewable_electricity', 'future'] * 100.
    print('{}: {} {}'.format(renewable_electricity_share.name, renewable_electricity_share.value,
                                   renewable_electricity_share.quantityAndUnit.description))


def add_etm_metrics_to_esdl(esh, metrics):
    # Add quantity and units to EnergySystemInformation
    add_quantity_and_units(esh)

    # Add (empty) KPIs and targets
    add_kpis_and_targets(esh)

    # Update KPIs based on ETM metrics
    update_kpis(esh, metrics)


def post_request(esh):

    post_data = {
        'sender': 'ETM',
        'email': 'roos.dekok@quintel.com',
        'descr': 'Return ETM KPIs for the scenario',
        'esdl': urllib.parse.quote(esh.get_as_string())
    }

    # print(urllib.parse.quote(esh.get_as_string()))

    r = requests.post('https://mapeditor-beta.hesi.energy/api/esdl',
        json = post_data,
        headers={'Content-Type': 'application/json'})

    if r.status_code != requests.codes.ok:
        print(json.dumps(r.json(), indent=4, sort_keys=True))
        sys.exit(1)


def store_esdl_in_mondaine_hub(esh):
    # Save energy system to Mondaine Hub
    mh.store_in_mondaine_hub('ETM_{}'.format(esh.es.name), esh.resource)


def main(args):
    """
    Run [ python3 parse_data.py <name_of_esdl_input_file> ] in your terminal,
    where the name should be specified WITHOUT the extension. For instance:

    python3 parse_data.py gv/S1a_AllElectric_lucht_GooiEnVechtstreek

    Make sure the ESDL input file can be found in the startanalyse-esdl/input
    folder.
    """

    # Determine ESDL input filename based on the user input
    try:
        filename = args[0]

    except IndexError:
        print('\nWARNING! No ESDL input filename has been specified.')
        return

    # Load energy system based on the specified input file
    esh = load_esdl(filename)
    # Parse ESDL input data
    regional_data, supply = parse_esdl(esh)

    # Create ETM scenario and return KPIs
    etm, metrics = create_etm_scenario(regional_data, supply)

    # Add KPIs to ESDL
    add_etm_metrics_to_esdl(esh, metrics)

    # Save in Mondaine hub
    store_esdl_in_mondaine_hub(esh)

    # Open ETM scenario
    webbrowser.open_new('https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm.scenario_id))

    # Send POST request to Map Editor
    # post_request(esh)


if __name__ == '__main__':
    main(sys.argv[1:])
