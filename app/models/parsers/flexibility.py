"""
Parser for flexibility assets (electrolyzers)
"""

from app.models.range_handler import RangeHandler
from app.services.query_scenario import QueryScenario
from app.utils.exceptions import ETMParseError
from .parser import CapacityParser

class FlexibilityParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and
    translate it to the relevant ETM inputs that have to do with flexibility assets.
    Uses power to calculate the flexibility assets' inputs.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)
        self.full_load_hours = 0.


    def parse(self):
        """
        Check the total power of the given asset

        Sets self.power and self.input
        """

        self.power = sum((self.__value_of(asset, 'power') for asset in self.asset_generator))
        self.inputs[self.props['attr_set']['power']['input']] = self.power


    def update(self, scenario_id_min, scenario_id_max):
        """
        Find the flexibility asset and update the number of full load hours with the ETM value

        Sets self.full_load_hours
        """
        self.full_load_hours = (
            self.__query_scenario(scenario_id_min, self.props['attr_set']['fullLoadHours'])
        )

        min_power = self.__query_scenario(scenario_id_min, self.props['attr_set']['power'])
         # If no second scenario ID is geven, it's not possible to execute the query 
        if scenario_id_max: max_power = self.__query_scenario(scenario_id_max, self.props['attr_set']['power'])

        qu_power = {"multiplier": "MEGA", "unit": "WATT", "physicalQuantity": "power"}

        for asset in self.asset_generator:
            self.__update_flh(asset)
            
            # If no second scenario ID is given, don't add a range to the asset
            if scenario_id_max: self.__update_range(asset, "power", qu_power, min_power, max_power)


    def __update_flh(self, asset):
        """
        For each instance in the list of assets of this type of supply, update
        the number of full load hours to the ETM value.
        """
        # ESDL expects the FLH to be an integer value
        asset.fullLoadHours = int(self.full_load_hours)

   
    def __update_range(self, asset, attr, qu, min, max):
        """
        For this instance of the list of assets of this type of supply, update
        the minimum and maximum values of the range for the given attribute to
        the ETM value.

        asset   obj, asset that the range should be added to
        attr    str, attribute the range relates to (e.g. "power")
        qu      dict, specifying the quantity and units
        min     float, minimum value of the range
        max     float, maximum value of the range
        """
        RangeHandler(asset, attr, qu).update(min, max)


    def __value_of(self, asset, key):
        """
        Returns the value multiplied with the config factor for the key

        Params:
            asset (esdl.asset): Asset that is being parsed
            key (str): 'power'

        Returns:
            float
        """

        if not key in ['power', 'fullLoadHours']: return 0.0

        return getattr(asset, key) * self.props['attr_set'][key]['factor']


    def __query_scenario(self, scenario_id, prop):
        """
        Query the ETM scenario for the value to set the given prop to

        Params:
            scenario_id (str): e.g. '123456'
            prop (str): e.g. 'fullLoadHours'
        """

        query_result = QueryScenario.execute(scenario_id, prop['gquery'])

        if query_result.successful:
            return query_result.value[prop['gquery']]['future'] / prop ['factor']

        raise ETMParseError(
            f"We currently do not support the ETM gquery listed in the config: {prop['gquery']}"
        )
