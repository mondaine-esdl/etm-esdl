"""
Parser for the capacity per carrie for an asset
"""

from app.utils.exceptions import EnergysystemParseError
from .parser import CapacityParser

class CarrierCapacityParser(CapacityParser):
    ''' Assumes prop to be power and have a carrier specified'''

    def parse(self):
        self.power = sum(
            asset.power * self.props['factor'] for asset in self.asset_generator
        )

        self.inputs[self.props['input']] += self.power

    def set_asset_generator(self):
        """
        Set the generator to assets with type and carrier.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_carrier(
                self.asset_type,
                self.props['carrier']
            )

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att
