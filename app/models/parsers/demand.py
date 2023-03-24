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
        Find the demand asset and update the value of the (input) capacity
        with the ETM value

        Sets self.power and self.fullLoadHours
        """

        self.__update_power(scenario_id)


    def __update_power(self, scenario_id):
        """
        For the first instance in the list of assets of this type of demand, update
        the power to the ETM value and (for now, statically) set the number of 
        full load hours.

        A warning is provided if there are more instances of this asset.
        """
        asset = self.__next_asset()

        # TODO: As a QUICK & DIRTY FIX the full load hours for this type of consumers 
        # (the different types of mobility demand) are statically set to 8760.
        # The ETM doesn't provide a gquery returning this value so, ideally, these
        # should be derived from the profile attached to the asset. Since these
        # consumers have flat curves we can assume the number of full load hours
        # to be 8760.
        if asset:
            asset.power = self.query_scenario(scenario_id)
            asset.fullLoadHours = 8760.

        # TODO: provide warning if there's more than 1 asset in the asset_generator
        # How do we want to communicate this to the user? An extra part of the API
        # JSON return called 'warnings' next to returning the energy system?
        # Here is how you can measure if there's another asset:
        # if self.__next_asset():
        #     print('A warning')


    def __next_asset(self):
        try:
            return next(self.asset_generator)
        except StopIteration:
            return


    def query_scenario(self, scenario_id):
        """
        Query the ETM scenario for the value to set the given prop to

        Params:
            scenario_id (str): e.g. '123456'
            prop (str): e.g. 'fullLoadHours'
        """

        query_result = QueryScenario.execute(scenario_id, self.props['gquery'])

        if query_result.successful:
            return query_result.value[self.props['gquery']]['future'] / self.props['factor']

        raise ETMParseError(
            f"We currently do not support the ETM gquery listed in the config: {self.props['gquery']}"
        )
