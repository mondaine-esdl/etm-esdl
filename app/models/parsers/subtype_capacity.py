"""
Parser for CHP assets
"""

from app.utils.exceptions import EnergysystemParseError
# from app.services.query_scenario import QueryScenario
from .parser import CapacityParser

class SubtypeCapacityParser(CapacityParser):
    """
    Class to parse ESDL information about a single CHP asset and
    translate it to the relevant ETM inputs.
    """

    def parse(self):
        """
        Check the total power of the given CHP type

        Sets self.power and self.inputs
        """

        # As we only have need power attribute for the asset we can do it like this
        self.power = sum(
            getattr(chp, self.props['attribute']) * self.props['factor'] for chp in self.asset_generator
        )

        # Update ETM input value
        self.inputs[self.props['input']] += self.power


    def update(self, scenario_id):
        """
        TODO
        """


    def set_asset_generator(self):
        """
        Get all instances of chp subtype and set the generator.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_attribute_value(
                self.props['asset'],
                self.props['type_key'],
                self.props['type']
            )

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att
