"""
Parser for flexibility assets (electrolyzers)
"""

from app.services.query_scenario import QueryScenario
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


    def update(self, scenario_id):
        """
        Find the flexibility asset and update the number of full load hours
        with the ETM value

        Sets self.full_load_hours
        """

        self.update_flh()


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


    def __update_flh(self, scenario_id):
        """
        For each instance in the list of assets of this type of supply, update
        the number of full load hours to the ETM value.
        """

        self.full_load_hours = (
            self.query_scenario(scenario_id, self.props['attr_set']['fullLoadHours'])
        )

        for asset in self.asset_generator:
            asset.fullLoadHours = self.full_load_hours


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
