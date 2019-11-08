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


def create_etm_scenario(regional_data):
    # Connect to ETM API
    etm = connect_to_etm()
    # Create scenario
    etm.create_new_scenario('Mondaine', 'RGNH03_gooi_en_vechtstreek', 2050)

    print('\nETM scenario_id: {}'.format(etm.scenario_id))

    share_of_residual_heat = ((regional_data['heating_demand']['LT'] +
                               regional_data['heating_demand']['MT']) /
                               regional_data['heating_demand']['total']) * 100.

    share_of_gas = (regional_data['gas_demand'] /
                    regional_data['heating_demand']['total']) * 100.

    share_of_electricity = max(100. - share_of_residual_heat - share_of_gas, 0)

    # Change the user values (slider settings) based on the energy system (from PICO)
    user_values = {
        'households_number_of_residences': regional_data['number_of_residences'],
        'households_insulation_level_apartments': 30.,
        'households_insulation_level_corner_houses': 30.,
        'households_insulation_level_detached_houses': 30.,
        'households_insulation_level_semi_detached_houses': 30.,
        'households_insulation_level_terraced_houses': 30.,
        'households_heater_combined_network_gas_share': share_of_gas,
        'households_heater_district_heating_steam_hot_water_share': share_of_residual_heat,
        'households_heater_heatpump_air_water_electricity_share': share_of_electricity,
        'households_heater_heatpump_ground_water_electricity_share': 0.,
        'households_heater_hybrid_heatpump_air_water_electricity_share': 0.,
        'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.,
        'households_heater_wood_pellets_share': 0.,
        'households_heater_network_gas_share': 0.,
        'households_heater_electricity_share': 0.,
        'buildings_insulation_level': 52.,
        'buildings_space_heater_network_gas_share': share_of_gas,
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': share_of_electricity,
        'buildings_space_heater_heatpump_air_water_network_gas_share': 0.,
        'buildings_space_heater_electricity_share': 0.,
        'buildings_space_heater_wood_pellets_share': 0.,
        'buildings_space_heater_district_heating_steam_hot_water_share': share_of_residual_heat
    }

    # Determine the metrics (KPIs and relevant slider queries)
    gqueries = [
        'dashboard_co2_emissions_versus_start_year',
        'dashboard_total_costs'
    ]

    # Change the user inputs (i.e., set sliders)
    etm.change_inputs(user_values, gqueries)

    # Get and print the updated metrics
    metrics = etm.current_metrics
    print(metrics, '\n')

    return etm


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
        for building_type in ['residences', 'services']:
            region[building_type]['number_of_buildings'] += neighbourhood[building_type]['number_of_buildings']
            region[building_type]['heating_demand']['total'] += neighbourhood[building_type]['heating_demand']['total']
            region[building_type]['heating_demand']['MT'] += neighbourhood[building_type]['heating_demand']['MT']
            region[building_type]['heating_demand']['LT'] += neighbourhood[building_type]['heating_demand']['LT']
            region[building_type]['electricity_demand'] += neighbourhood[building_type]['electricity_demand']
            region[building_type]['gas_demand'] += neighbourhood[building_type]['gas_demand']

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

    # Read values into data object
    data = {
        'number_of_buildings': number_of_buildings,
        'heating_demand': {
            'total': total_heating_demand,
            'MT': MT_heating_demand,
            'LT': LT_heating_demand
        },
        'electricity_demand': electricity_demand[0].port[0].profile[0].value,
        'gas_demand': gas_demand[0].port[0].profile[0].value
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
    number_of_residences = 0
    number_of_services = 0

    for asset in esh.get_assets_of_type(neighbourhood,esh.esdl.AggregatedBuilding):
        if asset.name == 'Woningen':
            # Parse asset data for aggregated building of type residences
            data = parse_aggregated_building(esh, asset)
            # Read attribute values into assets object
            assets['residences'] = data

        elif asset.name == 'Utiliteiten':
            # Parse asset data for aggregated building of type residences
            data = parse_aggregated_building(esh, asset)
            # Read attribute values into assets object
            assets['services'] = data

    # TODO
    kpis = {
        'costs': 0.,
        'co2': 0.
    }

    assets = {}
    kpis = {}

    return assets, kpis


def parse_neighbourhoods(esh):
    # Create dictionary to store information per neighbourhood
    neighbourhoods = {}

    # Loop over the neighbourhoods in the area (by looping over the ESDL tree)

    for neighbourhood in esh.es.instance[0].area.area:
        print('\nNEIGHBOURHOOD:')
        print(neighbourhood.id.upper())
        print(neighbourhood.scope)
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

    # Parse neighbourhoods
    neighbourhoods = parse_neighbourhoods(esh)
    # Aggregate neighbourhood values to regional values
    regional_data = aggregate_to_region(esh, neighbourhoods)
    # Print first few lines of ESDL energy system
    print_esdl(esh)

    return regional_data


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
    regional_data = parse_esdl(esh)

    # Create ETM scenario
    etm = create_etm_scenario(regional_data)

    # Save energy system to a file
    resource = esh.save('./output/{}.esdl'.format(filename))
    # Save energy system to Mondaine Hub
    # mh.store_in_mondaine_hub(filename, resource)

    # Open ETM scenario
    webbrowser.open_new('https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm.scenario_id))

if __name__ == '__main__':
    main(sys.argv[1:])
