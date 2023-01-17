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

        Sets self.power
        """

        self.__update_power(scenario_id)

    def __update_power(self, scenario_id):
        """
        For the first instance in the list of assets of this type of demand, update
        the number of full load hours to the ETM value.

        A warning is provided if there are more instances of this asset.
        """

        # TODO: provide warning if there's more than 1 asset in the asset_generator

        self.power = self.query_scenario(scenario_id)
        next(self.asset_generator).power = self.power

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
