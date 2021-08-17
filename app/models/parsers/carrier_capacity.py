"""
Parser for the capacity per carrie for an asset
"""

from app.utils.exceptions import EnergysystemParseError
from .parser import CapacityParser

class CarrierCapacityParser(CapacityParser):
    ''' Has extra argument carrier, assumes only one prop per asset: power'''
    def __init__(self, energy_system, props, *args, carrier='', **kwargs):
        self.carrier = carrier
        super().__init__(energy_system, props, *args, **kwargs)


    def parse(self):
        self.power = sum(
            asset.power * self.props[0]['factor'] for asset in self.asset_generator
        )

        self.inputs[self.props[0]['input']] += self.power

    def set_asset_generator(self):
        """
        Get all instances of chp subtype and set the generator.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_carrier(
                self.asset_type,
                self.carrier
            )

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att
