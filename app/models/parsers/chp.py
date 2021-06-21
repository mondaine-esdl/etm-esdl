"""
Parser for CHP assets
"""

# from app.models.energy_system import EnergyDataRepository
# from app.utils.exceptions import EnergysystemParseError, ETMParseError
# from app.services.query_scenario import QueryScenario
import config.conversions.chp_types as chp_types
from .parser import AssetParser

class ChpParser(SupplyParser):
    """
    Class to parse ESDL information about a single CHP asset and
    translate it to the relevant ETM inputs.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)
        self.chp_type = 'UNDEFINED'


    def parse(self):
        """
        TODO
        """
        for chp_type in chp_types:
            list_of_chps = self.get_list_of_chps(chp_type)
            self.set_props(list_of_chps)
        return


    def update(self, scenario_id):
        """
        TODO
        """


    def get_list_of_chps(self):
        """
        Get all instances of chp type and set the list.
        """

        try:
            # TODO
            self.list_of_assets = self.energy_system.get_all_instances_of_type(
                getattr(self.energy_system.esdl, self.asset_type))

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att


    def get_props():
        """
        TODO
        """


    def set_props(list_of_chps):
        """
        Check the total power of the given CHP type

        Sets self.power and self.inputs
        """
        self.power = 0. # isn't this redundant?

        # for chp in list_of_chps:
        #     for prop in
        return
