"""
Parser for storage assets (batteries)
"""

from app.models.conversion_assets import quantities
from app.models.range_handler import RangeHandler
from app.services.gquery_cache import GqueryCache
from .parser import CapacityParser


class StorageParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and
    translate it to the relevant ETM inputs that have to do with storage assets.
    Uses power to calculate the flexibility assets' inputs.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)
        self.full_load_hours = 0.
        self.volume = 0.


    def parse(self):
        """
        Check the total  of the given asset

        Sets self.power and self.input
        """

        self.power = sum((self.__value_of(asset, 'maxChargeRate') for asset in self.asset_generator))
        self.inputs[self.props['attr_set']['maxChargeRate']['input']] = self.power


    def update(self, scenario_id_min, scenario_id_max):
        """
        Find the storage asset and 1) update the volume (capacity in ESDL), number of full load hours 
        and marginal costs and 2) add a range for the capacity (charge rates in ESDL) with the ETM 
        values

        Sets self.full_load_hours, self.volume
        """
        self.full_load_hours = GqueryCache().for_scenario_id(scenario_id_min).get_factor_divided_for_attr_set(self.props['attr_set']['fullLoadHours'])
        self.volume = GqueryCache().for_scenario_id(scenario_id_min).get_factor_divided_for_attr_set(self.props['attr_set']['capacity'])

        min_power = GqueryCache().for_scenario_id(scenario_id_min).get_factor_divided_for_attr_set(self.props['attr_set']['maxChargeRate'])
         # If no second scenario ID is geven, it's not possible to execute the query 
        if scenario_id_max:
            qu_power = quantities['power']
            max_power = GqueryCache().for_scenario_id(scenario_id_max).get_factor_divided_for_attr_set(self.props['attr_set']['maxChargeRate'])

        for asset in self.asset_generator:
            self.__update_flh(asset)
            self.__update_volume(asset)
            
            # If no second scenario ID is given, don't add a range to the asset
            if scenario_id_max:
                self.__update_range(asset, "maxChargeRate", qu_power, min_power, max_power)


    def __update_flh(self, asset):
        """
        For each instance in the list of assets of this type of supply, update
        the number of full load hours to the ETM value.
        """
        # ESDL expects the FLH to be an integer value
        asset.fullLoadHours = int(self.full_load_hours)


    def __update_volume(self, asset):
        """
        For each instance in the list of assets of this type of supply, update
        the volume to the ETM value.
        """
        asset.capacity = self.volume

   
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

        return getattr(asset, key) * self.props['attr_set'][key]['factor']
