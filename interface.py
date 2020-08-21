import sys

import webbrowser

from config.areas import areas
from config.assets import assets, heating_technologies
from config.env import base_urls
from config.inputs import input_values


from helpers.energy_system_handler import EnergySystemHandler

from helpers.MondaineHub import MondaineHub
mh = MondaineHub('roos.dekok@quintel.com')

from helpers.ETM_API import ETM_API, SessionWithUrlBase

from helpers.balancer import Balancer

def start_etm_session(environment):
    session = SessionWithUrlBase(base_urls[environment])

    return ETM_API(session)

def parse_asset_type(energy_system, area, asset_type, properties):
    # TODO: Use get_all_assets_of_type instead of get_assets_of_type
    # Or not? Is this valid for all assets? e.g. AggregatedBuilding?
    try:
        list_of_assets = energy_system.get_assets_of_type(
            area,
            getattr(energy_system.esdl, asset_type))

        for asset in list_of_assets:
            for prop in properties:
                esdl_value = getattr(asset, prop['attribute'])
                etm_value = esdl_value * prop['factor']

                if not input_values[prop['input']]['value']:
                    input_values[prop['input']]['value'] = 0

                if prop['aggregation'] == 'sum':
                    input_values[prop['input']]['value'] += etm_value
    except AttributeError as att:
        print(f'We currently do not support attribute {str(att).split()[-1]}')


def determine_number_of_buildings(energy_system):
    number_of_buildings = {
        'RESIDENTIAL': 0,
        'UTILITY': 0
    }

    list_of_assets = energy_system.get_all_assets_of_type(energy_system.esdl.AggregatedBuilding)

    for asset in list_of_assets:
        number = asset.numberOfBuildings
        building_type = str(asset.buildingTypeDistribution.buildingTypePercentage[0].buildingType)

        number_of_buildings[building_type] += number

    input_values['households_number_of_residences']['value'] = number_of_buildings['RESIDENTIAL']

    print(f'number_of_buildings = {number_of_buildings}')

    return number_of_buildings


def prop_heat_technology(energy_system, aggregated_building):
    # Parse heating technologies and calculate the new input values
    for technology, properties in heating_technologies.items():
        # Get assets of specific type, filtered by the attribute-value combination
        for prop in properties:
            list_of_assets = energy_system.get_assets_of_type_and_attribute_value(
                aggregated_building,
                getattr(energy_system.esdl, technology),
                prop['attribute'],
                prop['value'])

            if list_of_assets: return prop


def parse_heating_technology(energy_system, area, total_number_of_buildings):
    # TODO: Move lines below to determine_number_of_buildings method?
    try:
        aggregated_buildings = energy_system.get_assets_of_type(
            area,
            energy_system.esdl.AggregatedBuilding)

        for aggregated_building in aggregated_buildings:
            number_of_buildings = aggregated_building.numberOfBuildings
            building_type = str(aggregated_building.buildingTypeDistribution.buildingTypePercentage[0].buildingType)

            # First check if there's an H-connection
            list_of_assets = energy_system.get_assets_of_type(
                aggregated_building,
                getattr(energy_system.esdl, 'HConnection')
            )

            # If there's no heat network connection, determine other technologies
            if list_of_assets:
                prop = heating_technologies['HConnection'][0]
            else:
                prop = prop_heat_technology(energy_system, aggregated_building)

            etm_value = number_of_buildings / total_number_of_buildings[building_type] * 100.

            if not input_values[prop['inputs'][building_type]]['value']:
                input_values[prop['inputs'][building_type]]['value'] = 0

            if prop['aggregation'] == 'sum':
                input_values[prop['inputs'][building_type]]['value'] += etm_value

    except:
        pass


def translate_esdl_to_slider_settings(energy_system, environment):
    # Reset input_values
    for input_name, value in input_values.items():
        value['value'] = None

    # Determine top level area
    top_area = energy_system.es.instance[0].area

    # Use the API to create a new (empty) ETM scenario for this specific region
    etm = start_etm_session(environment)

    etm.create_new_scenario(
        f'Mondaine - {energy_system.es.name}',
        areas[top_area.id],
        2050)

    number_of_buildings = determine_number_of_buildings(energy_system)

    # TODO: Merge two for loops below using a "for collection in [assets, technologies]" kinda construction
    # Parse assets and calculate the new input values
    for category in assets.values():
        for asset_type, properties in category.items():
            # Parse assets in top area
            parse_asset_type(energy_system, top_area, asset_type, properties)

            # Parse assets in sub areas
            for sub_area in top_area.area:
                parse_asset_type(energy_system, sub_area, asset_type, properties)

    # Parse assets in sub areas
    for sub_area in top_area.area:
        parse_heating_technology(energy_system, sub_area, number_of_buildings)

    # Balance share groups
    balanced_input_values = Balancer(input_values).call()

    # Update the input value in the ETM scenario
    set_sliders = {}
    for input_name, input_value in balanced_input_values.items():
        # Also update sliders set to 0 by Balancer
        if not input_value['value'] is None:
            print(f"{input_name}: {input_value['value']}")
            set_sliders[input_name] = input_value['value']

    # Set all new sliders simultaniously
    etm.change_inputs(set_sliders)

    return etm


def translate_kpis_to_esdl(energy_system, environment, etm_config):
    etm = start_etm_session(environment)

    metrics = None

    # TODO: POST request

    return metrics


if __name__ == '__main__':
    args = sys.argv[1:]

    try:
        dir = args[0]
        filename = args[1]
    except IndexError:
        print('\nWARNING! No ESDL input filename has been specified.')
        # return

    esh = EnergySystemHandler('./data/input/{}/{}'.format(dir,filename))
    esh.add_energy_system_information()

    translate_esdl_to_slider_settings(esh)
    translate_kpis_to_esdl(esh)

    webbrowser.open_new('https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm.scenario_id))
