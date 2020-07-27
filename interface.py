import sys

import webbrowser

from config.areas import areas
from config.assets import assets
from config.inputs import input_values

import helpers.calculate_input_values as calculate_input_values
from helpers.energy_system_handler import EnergySystemHandler
import helpers.return_kpis as kpis

from helpers.MondaineHub import MondaineHub
mh = MondaineHub('roos.dekok@quintel.com')

from helpers.ETM_API import ETM_API, SessionWithUrlBase
base_url = 'https://beta-engine.energytransitionmodel.com/api/v3'
session = SessionWithUrlBase(base_url)
etm = ETM_API(session)


def parse_asset_type(energy_system, area, asset_type, properties):
    list_of_assets = energy_system.get_assets_of_type(
        area,
        getattr(energy_system.esdl, asset_type))

    for asset in list_of_assets:
        for prop in properties:
            if 'attribute' in prop.keys():
                esdl_value = getattr(asset, prop['attribute'])
                etm_value = esdl_value * prop['factor']

                if input_values[prop['input']]:
                    if prop['aggregation'] == 'sum':
                        input_values[prop['input']] += etm_value
                else:
                    input_values[prop['input']] = etm_value


def translate_esdl_to_slider_settings(energy_system):
    # Determine top level area
    top_area = energy_system.es.instance[0].area

    # Use the API to create a new (empty) ETM scenario for this specific region
    etm.create_new_scenario(
        f'Mondaine - {energy_system.es.name}',
        areas[top_area.id],
        2050)

    # Calculate the new input values
    for category in assets.values():
        for asset_type, properties in category.items():
            # Parse assets in top area
            parse_asset_type(energy_system, top_area, asset_type, properties)

            # Parse assets in sub areas
            for sub_area in top_area.area:
                parse_asset_type(energy_system, sub_area, asset_type, properties)

    # Update the input value in the ETM scenario
    for input_name, input_value in input_values.items():
        if input_value:
            print(f'{input_name}: {input_value}')
            etm.change_inputs({input_name: input_value})

    return etm


def translate_kpis_to_esdl(energy_system):
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
