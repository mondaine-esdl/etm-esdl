'''Includes CostsParser'''

import esdl
import uuid

from app.models.parsers.parser import AssetParser
from app.models.conversion_assets import quantities
from app.services.query_scenario import QueryScenario
from app.utils.exceptions import ETMParseError

class CostsParser(AssetParser):
    '''Adds costs to a Carrier'''

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)

    def update(self, scenario_id, scenario_max_id):
        '''Only works for carriers'''
        asset = self.energy_system.get_carrier(self.props['attribute'], self.props['asset'])
        self.__set_costs(asset, self.query_scenario(scenario_id))

    def __set_costs(self, carrier, value):
        if not carrier.cost:
            carrier.cost = esdl.SingleValue(id=str(uuid.uuid1()), value=value)
        else:
            carrier.cost.value = value

        carrier.cost.profileQuantityAndUnit = self.__quantity_and_unit('carrier_costs')

    def query_scenario(self, scenario_id):
        """
        Query the ETM scenario

        Params:
            scenario_id (int): e.g. 123456
        """

        query_result = QueryScenario.execute(scenario_id, self.props['gquery'])

        if query_result.successful:
            return query_result.value[self.props['gquery']]['future'] / self.props['factor']

        raise ETMParseError(
            f"We currently do not support the ETM gquery listed in the config: {self.props['gquery']}"
        )

    def __quantity_and_unit(self, quantity_id):
        '''TODO: Move this to a more appropriate place'''
        return esdl.QuantityAndUnitType(**quantities[quantity_id])
