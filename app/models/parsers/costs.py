'''Includes CostsParser'''
import esdl
import uuid
from app.models.parsers.parser import AssetParser
from app.utils.exceptions import EnergysystemParseError

class CostsParser(AssetParser):
    '''Adds costs to a Carrier'''

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)


    def update(self, scenario_id, scenario_max_id):
        '''Only works for carriers'''
        asset = self.energy_system.get_carrier(self.props['attribute'], self.props['asset'])

        # TODO: grab value form ETM instead of pushing 5.0

        self.__set_costs(asset, 5.0)


    def __set_costs(self, carrier, value):
        if not carrier.cost:
            carrier.cost = esdl.SingleValue(id=str(uuid.uuid1()), value=value)
        else:
            carrier.cost.value = value


