"""
Parser for demand assets (e.g. MobilityDemand)
"""

from app.services.query_scenario import QueryScenario
from app.utils.exceptions import ETMParseError, EnergysystemParseError
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
            self.power = self.query_scenario(scenario_id, self.props['attr_set']['power'])
            self.full_load_hours = self.query_scenario(scenario_id, self.props['attr_set']['fullLoadHours'])

        self.__update_power(asset)
        self.__update_flh(asset)

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


    def __next_asset(self):
        try:
            return next(self.asset_generator)
        except StopIteration:
            return


    def query_scenario(self, scenario_id, prop):
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
