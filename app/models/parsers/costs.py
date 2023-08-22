'''Includes CostsParser'''

import esdl
import uuid

from app.models.parsers.parser import AssetParser
from app.models.conversion_assets import quantities
from app.services.gquery_cache import GqueryCache

class CostsParser(AssetParser):
    '''Adds costs to a Carrier'''

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)

    def update(self, scenario_id, scenario_max_id):
        '''Only works for carriers'''
        asset = self.energy_system.get_carrier(self.props['attribute'], self.props['asset'])
        gquery_result = GqueryCache().for_scenario_id(scenario_id).get_factor_divided_for_attr_set(self.props)

        self.__set_costs(asset, gquery_result)

    def __set_costs(self, carrier, value):
        if not carrier.cost:
            carrier.cost = esdl.SingleValue(id=str(uuid.uuid1()), value=value)
        else:
            carrier.cost.value = value

        carrier.cost.profileQuantityAndUnit = self.__quantity_and_unit('carrier_costs')

    def __quantity_and_unit(self, quantity_id):
        '''TODO: Move this to a more appropriate place'''
        return esdl.QuantityAndUnitType(**quantities[quantity_id])
