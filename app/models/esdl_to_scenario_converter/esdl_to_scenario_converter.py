''' Everything to do with converting esdl to slider settings'''

import pprint
from collections import defaultdict

import app.constants.assets as assets

from app.models.balancer import Balancer
from app.models.rooftop_pv import RooftopPV
from app.models.supply import Supply

from .parsers.heating_technologies import HeatingTechnologiesParser
from .parsers.energy_labels import EnergyLabelsParser

class EsdlToScenarioConverter():
    '''Convert an esdl energy_system to ETM slider settings'''
    def __init__(self, energy_system):
        self.inputs = defaultdict(float)
        self.energy_system = energy_system

    def calculate(self):
        '''
        Parses the energy_systems assets and converts them to etm slider settings

        Returns a dict of slider settings
        '''
        # Parse supply assets and calculate the new input values
        for asset_type, properties in assets.supply.items():
            self.__include_parsed_data(self.parse_supply(asset_type, properties))

        number_of_buildings = self.determine_number_of_buildings()
        self.inputs['households_number_of_residences'] = number_of_buildings['RESIDENTIAL']

        for sub_area in self.energy_system.es.instance[0].area.area:
            self.parse_aggregated_buiding(sub_area, number_of_buildings)

        Balancer(self.inputs).call()

        pprint.pprint(self.inputs)
        return self.inputs

    def parse_supply(self, asset_type, properties):
        '''
        Determines which supply parser to use for the asset type, and calls that parser.

        Returns a dict of slider settings
        '''
        if asset_type == 'RooftopPV':
            return RooftopPV(self.energy_system, properties).parse()

        return Supply(self.energy_system, asset_type, properties).parse()

    def determine_number_of_buildings(self):
        """
        Determine the number of buildings per building type (residential and utility)
        """
        number_of_buildings = {'RESIDENTIAL': 0, 'UTILITY': 0}

        for asset in self.__list_of_assets():
            if asset.numberOfBuildings and asset.buildingTypeDistribution:
                number_of_buildings[self.__building_type(asset)] += asset.numberOfBuildings

        return number_of_buildings

    # TODO: should be its own Parser
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
            building_type = self.__building_type(aggregated_building)
            heat_parser.parse(aggregated_building, building_type)
            labels_parser.parse(aggregated_building, building_type)

        self.__include_parsed_data(heat_parser.get_parsed_inputs())
        self.__include_parsed_data(labels_parser.get_parsed_inputs())

    def __include_parsed_data(self, parsed_data):
        '''
        Adds the parsed_data to self.inputs
        '''
        for key, val in parsed_data.items():
            self.inputs[key] += val

    def __list_of_assets(self):
        return self.energy_system.get_all_instances_of_type(
            self.energy_system.esdl.AggregatedBuilding
        )

    def __building_type(self, asset):
        return str(asset.buildingTypeDistribution.buildingTypePercentage[0].buildingType)
