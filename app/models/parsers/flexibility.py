"""
Parser for flexibility assets (electrolyzers)
"""

from .parser import CapacityParser

class FlexibilityParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and
    translate it to the relevant ETM inputs that have to do with flexibility assets.
    Uses power to calculate the flexibility assets' inputs.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)
        self.power = 0. # is this line of code redundant?


    def parse(self):
        """
        Check the total power of the given asset

        Sets self.power and self.input
        """

        self.power = sum((self.__value_of(asset, 'power') for asset in self.asset_generator))
        self.inputs[self.props['input']] = self.power


    def __value_of(self, asset, key):
        '''
        Returns the value multiplied with the config factor for the key

        Params:
            asset (esdl.asset): Asset that is being parsed
            key (str): 'power'

        Returns:
            float
        '''
        if key!=self.props['attribute']: return 0.0

        return getattr(asset, key) * self.props['factor']
