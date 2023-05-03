"""
Everything to do with converting esdl to slider settings
"""

from collections import defaultdict

from app.utils.exceptions import EnergysystemParseError
from app.models.situation import Situation
from app.models.balancer import Balancer
from app.models.asset_filter import AssetFilter, find_parser
from app.models.conversion_assets import area_mapping, sbi_codes
from app.models.parsers import EnergyLabelsParser, HeatingTechnologiesParser


class EsdlToScenarioConverter():
    """
    Convert an esdl energy_system to ETM slider settings
    """

    def __init__(self, energy_system):
        self.inputs = defaultdict(float)
        self.energy_system = energy_system
        self.area = self.__convert_area()

    def calculate(self, filter=[]):
        """
        Parses the energy_systems assets and converts them to etm slider settings

        Returns a dict of slider settings
        """
        # Parse supply and demand assets and calculate the new input values
        for asset in AssetFilter.assets_for(*filter):
            self.parse_asset(asset)

        # Parse buildings
        self.number_of_buildings = self.determine_number_of_buildings()
        if 'RESIDENTIAL' in self.number_of_buildings:
            self.inputs['households_number_of_residences'] = self.number_of_buildings['RESIDENTIAL']
        self.__setup_building_parsers(self.number_of_buildings)

        # Parse buildings on top area level
        self.parse_buildings()
        
        # Parse aggregated buildings on sub area level
        for sub_area in self.energy_system.area_instance():
            self.parse_aggregated_buidings(sub_area)

        # Balance sliders in share groups
        Balancer(self.inputs).call()

        # pprint.pprint(self.inputs)
        return self.inputs

    def as_situation(self, filter=[]):
        """
        Calculates the inputs and wraps them in a Situation
        """
        self.calculate(filter=filter)

        try:
            year = self.energy_system.year()
        except AttributeError as exc:
            raise EnergysystemParseError('Date instance was missing in the ESDL') from exc

        return Situation(self.inputs, self.number_of_buildings, self.area, year)


    def parse_asset(self, asset):
        """
        Determines which parser to use for the asset type, and calls that parser.

        Alters self.inputs
        """
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

        for asset in self.__list_of_aggregated_buildings():
            if asset.numberOfBuildings and asset.buildingTypeDistribution:
                number_of_buildings[self.__building_type(asset)] += asset.numberOfBuildings

        for asset in self.__list_of_buildings():
            if asset.sector.code and not self.__in_industry(asset):
                number_of_buildings["UTILITY"] += 1

            # elif asset.type:
                # TODO: Check for residential type (BuildingTypeEnum) and update the number of 
                # residential buildings

        return number_of_buildings


    def parse_buildings(self):
        """
        Parses all buidings in the specified area, calculates slider settings
        and updates self.inputs accordingly

        NOTE: can only be run if the building parsers are setup
        """
        buildings = self.energy_system.get_assets_of_type('Building')

        for building in buildings:
            if building.sector.code and not self.__in_industry(building):
                self.heat_parser.parse(building, "UTILITY")


    def parse_aggregated_buidings(self, area):
        """
        Parses all aggregated_buidings in the specified area, calculates slider settings
        and updates self.inputs accordingly

        NOTE: can only be run if the building parsers are setup
        """
        aggregated_buildings = self.energy_system.get_assets_of_type('AggregatedBuilding', area)

        is_aggregated = True

        for aggregated_building in aggregated_buildings:
            building_type = self.__building_type(aggregated_building)
            self.heat_parser.parse(aggregated_building, building_type, is_aggregated)
            self.labels_parser.parse(aggregated_building, building_type, is_aggregated)


    def __setup_building_parsers(self, total_number_of_buildings):
        """
        Setup the parsers for aggegrated buildings: HeatingTechnologiesParser and EnergyLabelsParser
        """
        self.heat_parser = HeatingTechnologiesParser(
            self.energy_system, total_number_of_buildings, self.inputs
        )
        self.labels_parser = EnergyLabelsParser(
            self.energy_system, total_number_of_buildings, self.inputs
        )


    def __list_of_buildings(self):
        """
        Returns all instances of buildings in the energy system
        """
        return self.energy_system.get_all_instances_of_type_by_name('Building')


    def __list_of_aggregated_buildings(self):
        """
        Returns all instances of aggegrated buildings in the energy system
        """
        return self.energy_system.get_all_instances_of_type_by_name('AggregatedBuilding')


    def __building_type(self, asset):
        """
        Returns the building type (UTILITY or RESIDENTIAL) of an aggegrated building asset
        TODO: could be an esdl util
        """
        return str(asset.buildingTypeDistribution.bin[0].buildingType)


    def __in_industry(self, asset):
        """
        Classifies the SBI code of the building asset to either industry or utility.
        If a building has more than one SBI code, the industry SBI code always dominates.
        In other words, if there is a building with two utility SBI codes and one industry 
        SBI code, the whole building is classified as industry.
        """
        string_of_sbi_codes = asset.sector.code
        list_of_sbi_codes = string_of_sbi_codes.split(", ")

        for sbi_code in list_of_sbi_codes:
            for it in range(len(sbi_code)):
                # Check if the code is in the industry list
                if sbi_code in sbi_codes.get('industry'):
                    return True
                # If not, remove the last digit of the code and check again
                sbi_code = sbi_code[0:len(sbi_code)-1]
        
        # If even the first digit is not in the list of industry codes, return false
        return False


    def __convert_area(self):
        """
        Converts the energy_systems area to an ETM area if a conversion is available
        """
        area = self.energy_system.area_code()

        return area_mapping.get(area, area)
