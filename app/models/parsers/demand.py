''' Represents a single demand asset '''

from app.utils.exceptions import EnergysystemParseError, ETMParseError
from .parser import AssetParser

class DemandParser(AssetParser):
    """
    Class to parse ESDL information about a single demand asset and
    translate it to the relevant ETM inputs.
    """

    def __init__(self, energy_system, props, asset_type, sub_type='default', *args, **kwargs):
        super().__init__(energy_system, props, *args, asset_type=asset_type, sub_type=sub_type, **kwargs)
        self.__set_list_of_assets()
        self.power = 0.


    def parse(self):
        """
        Check the power to set the corresponding props.

        Returns a dict containing ETM inputs that can be used when converting
        ESDL to slider settings.
        """
        self.set_props()

        print()
        print(self.asset_type)
        print(self.sub_type)
        print(self.power)


    def update(self, scenario_id):
        """
        TODO
        """


    def __set_list_of_assets(self):
        """
        Get all instances of asset type and set the list.
        """
        try:
            self.list_of_assets = self.energy_system.get_all_instances_of_type(
                getattr(self.energy_system.esdl, self.asset_type))
            # self.list_of_assets = self.energy_system.get_all_instances_of_type_and_attribute_value(
            #     getattr(self.energy_system.esdl, self.asset_type),
            #     'sector',
            #     self.sub_type)

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att

    def set_props(self):
        """
        Check the total power of the given asset. Ideally, the total demand
        (an energy volume in J) would be parsed - this is not available though.

        Sets self.power, self.inputs
        """
        self.power = 0.

        for asset in self.list_of_assets:
            for prop in self.props:
                # Calculate ETM input value based on value from ESDL asset
                val = getattr(asset, prop['attribute']) * prop['factor']

                if prop['attribute'] == 'power':
                    self.power += val

                # Update ETM input value
                # TODO
