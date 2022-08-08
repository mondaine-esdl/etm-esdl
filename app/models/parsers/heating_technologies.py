'''
Parser for heating technologies
'''

from app.models.conversion_asset import assets
from .parser import AggregratedBuildingParser

class HeatingTechnologiesParser(AggregratedBuildingParser):
    ''' Parser for heating technologies, parses per aggegrated building and builds ETM inputs '''

    def __init__(self, energy_system, total_buildings, *args, **kwargs):
        super().__init__(energy_system, total_buildings, *args, **kwargs)
        self.assets = assets.assets_for(self)

    def parse(self, aggregated_building, building_type):
        """
        Sets, or increases self.inputs based on the heating technologies for the given parameters

        aggregated_building     AggegratedBuilding asset from the energy system
        building_type           String, the type of building to be parsed
        """
        asset = self.__get_heating_asset(aggregated_building)
        value = aggregated_building.numberOfBuildings / self.total_buildings[building_type] * 100.

        if asset['aggregation'] == 'sum':
            self.inputs[asset['inputs'][building_type]] += value

    def __get_heating_asset(self, aggregated_building):
        '''
        Parses the three main heating technologies and returns the fitting properties
        '''
        # If there's no heat network connection, determine other technologies
        if self.energy_system.has_assets_of_type('HConnection', area=aggregated_building):
            return self.assets.find_asset('HConnection')

        # If there's no heat network and no heat pump, check for a gas heater
        if self.energy_system.has_assets_of_type('GasHeater', area=aggregated_building):
            if not self.energy_system.has_assets_of_type('HeatPump', area=aggregated_building):
                return self.assets.find_asset('GasHeater')

        # Else if there's a (hybrid) heat pump
        return self.__asset_heat_technology(aggregated_building)


    def __asset_heat_technology(self, aggregated_building):
        """
        Returns a dict of the heat technologies properties, based on the available assets in the
        aggegrated_building
        TODO: now it always picks the first one it finds??
        """
        # Parse heating technologies and calculate the new input values
        for asset in self.assets:
            if not asset['attribute']: continue
            # Get assets of specific type, filtered by the attribute-value combination
            if self.energy_system.has_assets_of_type_and_attribute_value(
                asset['asset'],
                aggregated_building,
                asset['attribute'],
                asset['carrier']
            ): return asset

        return {}
