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

def translate_esdl_to_slider_settings(energy_system):
    # Parse assets:
        # If asset neighbourhood: parse assets
        # Else if asset in list: translate asset

    top_area = esh.es.instance[0].area


    # Use the API to create a new (empty) ETM scenario for this specific region
    etm.create_new_scenario(
        f'Mondaine - {esh.es.name}',
        areas[top_area.id],
        2050)

    # Calculate the new input values
    # TODO
    for category in assets.values():
        for asset_type, properties in category.items():
            list_of_assets = energy_system.get_assets_of_type(top_area, getattr(esh.esdl, asset_type))
            for asset in list_of_assets:
                for prop in properties:
                    
                    print(getattr(asset, prop['attribute']))
            print(asset_type)
            print(properties)

    # Update the input value in the ETM scenario
    for sector in input_values.values():
        for category in sector.values():
            for input_name, input_value in category.items():
                if input_value:
                    print(f'{input_name}: {input_value}')
                    etm.change_inputs({input_name: input_value})

    return etm.scenario_id

def translate_kpis_to_esdl(etm, energy_system):
    metrics = None

    # TODO: POST request

    return etm, metrics


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
    translate_kpis_to_esdl(etm, esh)

    # webbrowser.open_new('https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm.scenario_id))
