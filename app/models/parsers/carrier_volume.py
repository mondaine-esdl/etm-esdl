'''VolumeParser that analyses the carrier'''

from app.utils.exceptions import EnergysystemParseError
from .volume import VolumeParser


class CarrierVolumeParser(VolumeParser):
    '''VolumeParser that also takes the carrier into account'''

    def set_asset_generator(self):
        """
        Get all instances with given sector and carrier and set the generator.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_carrier_and_sector(
                self.asset_type,
                self.props['sector'],
                self.props['carrier']
            )

        except AttributeError as att:
            print(att)
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att
