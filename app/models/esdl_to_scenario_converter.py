''' Everything to do with converting esdl to slider settings'''

import pprint
from collections import defaultdict

import config.conversions.assets as assets
from config.conversions import area_mapping
from app.models.situation import Situation
from app.models.balancer import Balancer
from app.models.parsers import (
    EnergyLabelsParser, HeatingTechnologiesParser, SupplyParser, RooftopPVParser
)


class EsdlToScenarioConverter():
    '''Convert an esdl energy_system to ETM slider settings'''

    def __init__(self, energy_system):
        self.inputs = defaultdict(float)
        self.energy_system = energy_system
        self.area = self.__convert_area()


    def calculate(self):
        '''
        Parses the energy_systems assets and converts them to etm slider settings

        Returns a dict of slider settings
        '''
        # Parse supply assets and calculate the new input values
        for asset_type, properties in assets.supply.items():
            self.parse_supply(asset_type, properties)

        # Parse buildings
        number_of_buildings = self.determine_number_of_buildings()
        self.inputs['households_number_of_residences'] = number_of_buildings['RESIDENTIAL']
        self.__setup_building_parsers(number_of_buildings)

        for sub_area in self.energy_system.es.instance[0].area.area:
            self.parse_aggregated_buidings(sub_area)

        # Balance sliders in share groups
        Balancer(self.inputs).call()

        pprint.pprint(self.inputs)
        return self.inputs


    def as_situation(self):
        ''' Calculates the inputs and wraps them in a Situation'''
        self.calculate()
        year = self.energy_system.es.instance[0].date.date.year

        return Situation(self.inputs, self.area, year)


    def parse_supply(self, asset_type, properties):
        '''
        Determines which supply parser to use for the asset type, and calls that parser.

        Returns a dict of slider settings
        '''
        if asset_type == 'RooftopPV':
            RooftopPVParser(self.energy_system, properties, inputs=self.inputs).parse()
        else:
            SupplyParser(self.energy_system, asset_type, properties, inputs=self.inputs).parse()


    def determine_number_of_buildings(self):
        """
        Determine the number of buildings per building type (residential and utility)

        Returns a dict containing number of buildings for UTILITY and RESIDENTIAL
        """
        number_of_buildings = {'RESIDENTIAL': 0, 'UTILITY': 0}

        for asset in self.__list_of_assets():
            if asset.numberOfBuildings and asset.buildingTypeDistribution:
                number_of_buildings[self.__building_type(asset)] += asset.numberOfBuildings

        return number_of_buildings


    def parse_aggregated_buidings(self, area):
        """
        Parses all aggregated_buidings in the specified area, calculates slider settings
        and updates self.inputs accordingly

        Note: can only be run if the building parsers are setup
        """
        aggregated_buildings = self.energy_system.get_assets_of_type(
            self.energy_system.esdl.AggregatedBuilding,
            area
        )

        for aggregated_building in aggregated_buildings:
            building_type = self.__building_type(aggregated_building)
            self.heat_parser.parse(aggregated_building, building_type)
            self.labels_parser.parse(aggregated_building, building_type)


    def __setup_building_parsers(self, total_number_of_buildings):
        '''
        Setup the parsers for aggegrated buildings: HeatingTechnologiesParser and EnergyLabelsParser
        '''
        self.heat_parser = HeatingTechnologiesParser(
            self.energy_system, total_number_of_buildings, self.inputs
        )
        self.labels_parser = EnergyLabelsParser(
            self.energy_system, total_number_of_buildings, self.inputs
        )


    def __list_of_assets(self):
        '''
        Returns all instances of aggegrated buildings in the energy system
        '''
        return self.energy_system.get_all_instances_of_type(
            self.energy_system.esdl.AggregatedBuilding
        )


    def __building_type(self, asset):
        '''
        Returns the building type (UTILITY or RESIDENTIAL) of an aggegrated building asset
        '''
        return str(asset.buildingTypeDistribution.buildingTypePercentage[0].buildingType)

    def __convert_area(self):
        '''Converts the energy_systems area to an ETM area if a conversion is available'''
        area = self.energy_system.es.instance[0].area.id
        if area in area_mapping:
            area = area_mapping[area]
        return area
