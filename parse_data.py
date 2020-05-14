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
    etm.create_new_scenario('Mondaine', 'RGNH03_gooi_en_vechtstreek', 2050)

    print('\nETM scenario_id: {}'.format(etm.scenario_id))

    shares = {
        'residences': {}, 'services': {}
    }

    for building_type in ['residences']:
        if regional_data[building_type]['heating_demand']['total'] != 0:
            shares[building_type]['residual_heat'] = (
                (regional_data[building_type]['heating_demand']['LT'] +
                 regional_data[building_type]['heating_demand']['MT']) /
                regional_data[building_type]['heating_demand']['total']) * 100.
        else:
            shares[building_type]['residual_heat'] = 0

        if regional_data[building_type]['heating_demand']['total'] != 0:
            shares[building_type]['gas'] = (
                regional_data[building_type]['gas_demand'] /
                regional_data[building_type]['heating_demand']['total']) * 100.
        else:
            shares[building_type]['gas'] = 0

        shares[building_type]['electricity'] = (
            max(100. - (shares[building_type]['residual_heat'] +
                shares[building_type]['gas']), 0))

    # Change the user values (slider settings) based on the energy system (from PICO)
    user_values = {
        'households_number_of_residences': regional_data['residences']['number_of_buildings'],
        'households_insulation_level_apartments': 30.,
        'households_insulation_level_corner_houses': 30.,
        'households_insulation_level_detached_houses': 30.,
        'households_insulation_level_semi_detached_houses': 30.,
        'households_insulation_level_terraced_houses': 30.,
        'households_heater_combined_network_gas_share': shares['residences']['gas'],
        'households_heater_district_heating_steam_hot_water_share': shares['residences']['residual_heat'],
        'households_heater_heatpump_air_water_electricity_share': shares['residences']['electricity'],
        'households_heater_heatpump_ground_water_electricity_share': 0.,
        'households_heater_hybrid_heatpump_air_water_electricity_share': 0.,
        'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.,
        'households_heater_wood_pellets_share': 0.,
        'households_heater_network_gas_share': 0.,
        'households_heater_electricity_share': 0.,
        'buildings_insulation_level': 52.,
        # 'buildings_space_heater_network_gas_share': shares['services']['gas'],
        # 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': shares['services']['electricity'],
        # 'buildings_space_heater_heatpump_air_water_network_gas_share': 0.,
        # 'buildings_space_heater_electricity_share': 0.,
        # 'buildings_space_heater_wood_pellets_share': 0.,
        # 'buildings_space_heater_district_heating_steam_hot_water_share': shares['services']['residual_heat']
        'capacity_of_energy_power_wind_turbine_inland': supply['wind']['capacity'],
        'capacity_of_energy_power_solar_pv_solar_radiation': supply['solar']['capacity']
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
            'heating_demand': {'total': 0., 'MT': 0., 'LT': 0.},
            'electricity_demand': 0.,
            'gas_demand': 0.
        },
        'services': {
            'number_of_buildings': 0,
            'heating_demand': {'total': 0., 'MT': 0., 'LT': 0.},
            'electricity_demand': 0.,
            'gas_demand': 0.
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
                region[building_type]['heating_demand']['total'] += neighbourhood[building_type]['heating_demand']['total']
            except:
                pass
            try:
                region[building_type]['heating_demand']['MT'] += neighbourhood[building_type]['heating_demand']['MT']
            except:
                pass
            try:
                region[building_type]['heating_demand']['LT'] += neighbourhood[building_type]['heating_demand']['LT']
            except:
                pass
            try:
                region[building_type]['electricity_demand'] += neighbourhood[building_type]['electricity_demand']
            except:
                pass
            try:
                region[building_type]['gas_demand'] += neighbourhood[building_type]['gas_demand']
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

    # Get demands for residences
    electricity_demand = esh.get_assets_of_type(asset, esh.esdl.ElectricityDemand)
    gas_demand = esh.get_assets_of_type(asset, esh.esdl.GasDemand)
    heating_demand = esh.get_assets_of_type(asset, esh.esdl.HeatingDemand)

    # Distinguish different types of heating demand (total, MT, HT)
    total_heating_demand = 0.
    MT_heating_demand = 0.
    LT_heating_demand = 0.

    for demand in heating_demand:
        if demand.name == 'Vraag_Warmte_totaal':
            total_heating_demand = demand.port[0].profile[0].value
        elif demand.name == 'Vraag_MT_Warmte':
            MT_heating_demand = demand.port[0].profile[0].value
        elif demand.name == 'Vraag_LT_Warmte':
            LT_heating_demand = demand.port[0].profile[0].value

    try:
        e_value = electricity_demand[0].port[0].profile[0].value
    except:
        e_value = 0

    try:
        g_value = gas_demand[0].port[0].profile[0].value
    except:
        g_value = 0


    # Read values into data object
    data = {
        'number_of_buildings': number_of_buildings,
        'heating_demand': {
            'total': total_heating_demand,
            'MT': MT_heating_demand,
            'LT': LT_heating_demand
        },
        'electricity_demand': e_value,
        'gas_demand': g_value
    }

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
        if asset.name.startswith('Woningen'):
            # Parse asset data for aggregated building of type residences
            data = parse_aggregated_building(esh, asset)
            # Read attribute values into assets object
            assets['residences'] = data

        # elif asset.name == 'Utiliteiten':
        #     # Parse asset data for aggregated building of type residences
        #     data = parse_aggregated_building(esh, asset)
        #     # Read attribute values into assets object
        #     assets['services'] = data

    # TODO
    kpis = {
        'costs': 0.,
        'co2': 0.
    }

    return assets, kpis


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
        assets, kpis = parse_neighbourhood(esh, neighbourhood)

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
    renewable_electricity_share.value = metrics.loc['share_of_renewable_electricity', 'future']
    print('{}: {} {}'.format(renewable_electricity_share.name, renewable_electricity_share.value,
                                   renewable_electricity_share.quantityAndUnit.description))


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
    add_quantity_and_units(esh)
    add_kpis_and_targets(esh)
    update_kpis(esh, metrics)

    # Save energy system to a file
    resource = esh.save('./output/{}.esdl'.format(filename))
    # Save energy system to Mondaine Hub
    # mh.store_in_mondaine_hub(filename, resource)

    # Open ETM scenario
    # webbrowser.open_new('https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm.scenario_id))

if __name__ == '__main__':
    main(sys.argv[1:])
