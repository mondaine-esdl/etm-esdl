"""
Parser for demand assets (e.g. MobilityDemand)
"""

from esdl import esdl

from app.models.profile_handler import ProfileHandler
from app.services.gquery_cache import GqueryCache
from app.utils.exceptions import EnergysystemParseError
from .parser import CapacityParser


class MobilityDemandParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and update its
    attributes to the relevant ETM values that have to do with the demand assets.
    Sets the power (= demand input capacity) and full load hours.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)


    def set_asset_generator(self):
        """
        Set the generator to assets with vehicle type and carrier.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_attribute_values(
                self.props['asset'],
                {
                    'fuelType': self.props['fuel'],
                    'type': self.props['vehicle']
                }
            )

        except AttributeError as att:
            print(att)
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att


    def update(self, scenario_id):
        """
        Find the demand asset and update the value of the (input) capacity and
        the full load hours with the ETM value.

        For the first instance in the list of assets of this type of demand, update
        the power to the ETM value and (for now, statically) set the number of 
        full load hours.

        A warning is provided if there are more instances of this asset.

        Sets self.power and self.fullLoadHours
        """
        asset = self.__next_asset()

        if asset:
            GqueryCache().for_scenario_id(scenario_id)
            self.power = GqueryCache().get_factor_divided_for_attr_set(self.props['attr_set']['power'])
            self.full_load_hours = GqueryCache().get_factor_divided_for_attr_set(self.props['attr_set']['fullLoadHours'])
            self.volume = GqueryCache().get_factor_divided_for_attr_set(self.props['attr_set']['volume'])

            self.__update_power(asset)
            self.__update_flh(asset)

            qu_volume = esdl.QuantityAndUnitType(
                physicalQuantity="ENERGY",
                unit="JOULE")
            self.__update_profile(asset, qu_volume)

        # TODO: provide warning if there's more than 1 asset in the asset_generator
        # How do we want to communicate this to the user? An extra part of the API
        # JSON return called 'warnings' next to returning the energy system?
        # Here is how you can measure if there's another asset:
        # if self.__next_asset():
        #     print('A warning')


    def __update_power(self, asset):
        """
        Sets the power of the asset to the ETM value (self.power)
        """
        asset.power = self.power


    def __update_flh(self, asset):
        """
        Sets the full load hours of the asset to the ETM value 
        (self.full_load_hours)
        """
        # ESDL expects the FLH to be an integer value
        asset.fullLoadHours = int(self.full_load_hours)


    def __update_profile(self, asset, qu):
        """
        Sets the profile of the asset to a single value 
        based on the ETM value 
        (self.volume)
        """
        ProfileHandler(asset).update(self.volume, qu)


    def __next_asset(self):
        try:
            return next(self.asset_generator)
        except StopIteration:
            return
