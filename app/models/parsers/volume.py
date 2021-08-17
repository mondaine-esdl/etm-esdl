"""
Parser for volumes
"""
from app.utils.exceptions import EnergysystemParseError
from app.utils.esdl import full_load_hours
from .parser import CapacityParser

class VolumeParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and
    translate it to the relevant ETM inputs that have to do with volume.
    Uses full load hours and power to calculate the volume.

    subtype is expected to be a sector id

    TODO: This is not sent directly to the ETM.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        ''' Assumes props to only have a power item '''
        self.subtype = kwargs.pop('subtype', None)

        super().__init__(energy_system, props, *args, **kwargs)


    def parse(self):
        """
        Check the full load hours and capacicty of the given asset

        Sets self.power and self.inputs
        """

        self.inputs[self.props[0]['input']] += sum(
            (self.calculate_volume(asset) for asset in self.asset_generator)
        )


    def calculate_volume(self, asset):
        ''' Calculates an assets volume based on power and full load hours'''
        power = asset.power * self.props[0]['factor']
        self.power += power
        return power * full_load_hours(asset)


    def set_asset_generator(self):
        """
        Get all instances with subtype sector and set the generator.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_sector(
                self.asset_type,
                self.subtype
            )

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att
