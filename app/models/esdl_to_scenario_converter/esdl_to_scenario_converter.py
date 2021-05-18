''' Everything to do with converting esdl to slider settings'''

import copy

import app.constants.assets as assets

# Default slider settings
from app.constants.inputs import input_values

from app.models.balancer import Balancer
from app.models.rooftop_pv import RooftopPV
from app.models.supply import Supply

from .parsers.heating_technologies import HeatingTechnologiesParser
from .parsers.energy_labels import EnergyLabelsParser

class EsdlToScenarioConverter():
    '''Convert an esdl energy_system to ETM slider settings'''
    def __init__(self, energy_system):
        self.inputs = copy.deepcopy(input_values)
        self.energy_system = energy_system

    def calculate(self):
        '''
        Parses the energy_systems assets and converts them to etm slider settings

        Returns a dict of slider settings
        '''
        # Parse supply assets and calculate the new input values
        for asset_type, properties in assets.supply.items():
            if asset_type == 'RooftopPV':
                RooftopPV(self.energy_system, properties).call()
            else:
                Supply(self.energy_system, asset_type, properties).call(overwrite=True)

        number_of_buildings = self.determine_number_of_buildings()
        top_area = self.energy_system.es.instance[0].area
        for sub_area in top_area.area:
            self.parse_aggregated_buiding(sub_area, number_of_buildings)

        balanced_input_values = Balancer(self.inputs).call()

        # Update the input value in the ETM scenario
        set_sliders = {}
        for input_name, input_value in balanced_input_values.items():
            # Also update sliders set to 0 by Balancer
            if not input_value['value'] is None:
                print(f"{input_name}: {input_value['value']}")
                set_sliders[input_name] = input_value['value']

        return set_sliders


    def determine_number_of_buildings(self):
        """
        Determine the number of buildings per building type
        """
        number_of_buildings = {
            'RESIDENTIAL': 0,
            'UTILITY': 0
        }

        list_of_assets = self.energy_system.get_all_instances_of_type(
            self.energy_system.esdl.AggregatedBuilding
        )

        for asset in list_of_assets:
            if asset.numberOfBuildings:
                number = asset.numberOfBuildings

                if asset.buildingTypeDistribution:
                    building_type = str(asset.buildingTypeDistribution.
                                        buildingTypePercentage[0].buildingType)

                    number_of_buildings[building_type] += number

                    self.inputs['households_number_of_residences']['value'] = (
                        number_of_buildings['RESIDENTIAL'])

        return number_of_buildings

    def parse_aggregated_buiding(self, area, total_number_of_buildings):
        """
        Parses all aggregated_buidings in the specified area, calculates slider settings
        and updates self.inputs accordingly
        """
        aggregated_buildings = self.energy_system.get_assets_of_type(
            area,
            self.energy_system.esdl.AggregatedBuilding
        )
        heat_parser = HeatingTechnologiesParser(self.energy_system, total_number_of_buildings)
        labels_parser = EnergyLabelsParser(self.energy_system, total_number_of_buildings)
        for aggregated_building in aggregated_buildings:
            building_type = str(
                aggregated_building.buildingTypeDistribution.buildingTypePercentage[0].buildingType
            )
            heat_parser.parse(aggregated_building, building_type)
            labels_parser.parse(aggregated_building, building_type)

        self.__include_parsed_data(heat_parser.get_parsed_inputs())
        self.__include_parsed_data(labels_parser.get_parsed_inputs())

    def __include_parsed_data(self, parsed_data):
        for key, val in parsed_data.items():
            if not self.inputs[key]['value']:
                self.inputs[key]['value'] = val
            else:
                self.inputs[key]['value'] += val
