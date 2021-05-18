'''
Parser for heating technologies
'''

import app.constants.assets as assets
from .parser import Parser

class HeatingTechnologiesParser(Parser):
    ''' Parser for heating technologies, parses per aggegrated building and builds ETM inputs '''
    def __init__(self, energy_system, total_buildings):
        super().__init__(energy_system)
        self.__total_buildings = total_buildings

    def parse(self, aggregated_building, building_type):
        """
        Sets, or increases self.inputs based on the heating technologies for the given parameters

        aggregated_building     AggegratedBuilding asset from the energy system
        building_type           String, the type of building to be parsed
        """
        prop = self.__get_heating_properties(aggregated_building)
        value = aggregated_building.numberOfBuildings / self.__total_buildings[building_type] * 100.

        if not prop['inputs'][building_type] in self.inputs:
            self.inputs[prop['inputs'][building_type]] = 0

        if prop['aggregation'] == 'sum':
            self.inputs[prop['inputs'][building_type]] += value

    def __get_heating_properties(self, aggregated_building):
        '''
        Parses the three main heating technologies and returns the fitting properties
        '''
        # If there's no heat network connection, determine other technologies
        if self.__has_heating_technology(aggregated_building, 'HConnection'):
            return assets.heating_technologies['HConnection'][0]

        # If there's no heat network and no heat pump, check for a gas heater
        if self.__has_heating_technology(aggregated_building, 'GasHeater'):
            if not self.__has_heating_technology(aggregated_building, 'HeatPump'):
                return assets.heating_technologies['GasHeater'][0]

        # Else if there's a (hybrid) heat pump
        return self.__prop_heat_technology(aggregated_building)


    def __has_heating_technology(self, aggregated_building, tech_type):
        '''
        Checks if the aggregated building has a heating technology of type tech_type

        aggregated_building     AggegratedBuilding asset from the energy system
        tech_type               String, the type of heating technology e.g. 'GasHeater'

        Returns Boolean
        '''
        return self.energy_system.get_assets_of_type(
            aggregated_building,
            getattr(self.energy_system.esdl, tech_type)
        )

    def __prop_heat_technology(self, aggregated_building):
        """
        Returns a dict of the heat technologies properties, based on the available assets in the
        aggegrated_building
        """
        # Parse heating technologies and calculate the new input values
        for technology, properties in assets.heating_technologies.items():
            # Get assets of specific type, filtered by the attribute-value combination
            for prop in properties:
                list_of_assets = self.energy_system.get_assets_of_type_and_attribute_value(
                    aggregated_building,
                    getattr(self.energy_system.esdl, technology),
                    prop['attribute'],
                    prop['value']
                )

                if list_of_assets: return prop
