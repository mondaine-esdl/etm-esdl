''' Everything to do with converting esdl to slider settings'''

import pprint
from collections import defaultdict

from app.utils.exceptions import EnergysystemParseError
from app.models.situation import Situation
from app.models.balancer import Balancer
from app.models.asset_filter import AssetFilter, find_parser
from app.models.conversion_assets import area_mapping
from app.models.parsers import EnergyLabelsParser, HeatingTechnologiesParser


class EsdlToScenarioConverter():
    '''Convert an esdl energy_system to ETM slider settings'''

    def __init__(self, energy_system):
        self.inputs = defaultdict(float)
        self.energy_system = energy_system
        self.area = self.__convert_area()

    def calculate(self, filter=[]):
        '''
        Parses the energy_systems assets and converts them to etm slider settings

        Returns a dict of slider settings
        '''
        # Parse supply and demand assets and calculate the new input values
        for asset in AssetFilter.assets_for(*filter):
            self.parse_asset(asset)

        # Parse buildings
        number_of_buildings = self.determine_number_of_buildings()
        if 'RESIDENTIAL' in number_of_buildings:
            self.inputs['households_number_of_residences'] = number_of_buildings['RESIDENTIAL']
        self.__setup_building_parsers(number_of_buildings)

        for sub_area in self.energy_system.area_instance():
            self.parse_aggregated_buidings(sub_area)

        # Balance sliders in share groups
        Balancer(self.inputs).call()

        # pprint.pprint(self.inputs)
        return self.inputs

    def as_situation(self):
        ''' Calculates the inputs and wraps them in a Situation'''
        self.calculate()

        try:
            year = self.energy_system.year()
        except AttributeError as exc:
            raise EnergysystemParseError('Date instance was missing in the ESDL') from exc

        return Situation(self.inputs, self.area, year)

    def parse_asset(self, asset):
        '''
        Determines which parser to use for the asset type, and calls that parser.

        Alters self.inputs
        '''
        # Watch out! we are skipping the heating_tech parser!
        if asset['parser'] in ['heating_technologies']:
            return
        try:
            find_parser(asset)(self.energy_system, asset, inputs=self.inputs).parse()
        except NotImplementedError:
            # This includes mobility demand, costs and others that only have an update method
            pass

    def determine_number_of_buildings(self):
        """
        Determine the number of buildings per building type (residential and utility)

        Returns a dict containing number of buildings for UTILITY and RESIDENTIAL
        """
        number_of_buildings = defaultdict(int)

        for asset in self.__list_of_assets():
            if asset.numberOfBuildings and asset.buildingTypeDistribution:
                number_of_buildings[self.__building_type(asset)] += asset.numberOfBuildings

        return number_of_buildings

    def parse_aggregated_buidings(self, area):
        """
        Parses all aggregated_buidings in the specified area, calculates slider settings
        and updates self.inputs accordingly

        NOTE: can only be run if the building parsers are setup
        """
        aggregated_buildings = self.energy_system.get_assets_of_type('AggregatedBuilding', area)

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
        return self.energy_system.get_all_instances_of_type_by_name('AggregatedBuilding')

    def __building_type(self, asset):
        '''
        Returns the building type (UTILITY or RESIDENTIAL) of an aggegrated building asset
        TODO: could be an esdl util
        '''
        return str(asset.buildingTypeDistribution.bin[0].buildingType)

    def __convert_area(self):
        '''Converts the energy_systems area to an ETM area if a conversion is available'''
        area = self.energy_system.area_code()

        return area_mapping.get(area, area)
