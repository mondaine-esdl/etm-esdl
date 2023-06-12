"""
Parser for production assets (e.g. PowerPlant)
"""

from esdl import esdl

from app.models.conversion_assets import quantities
from app.models.cost_handler import CostHandler
from app.models.range_handler import RangeHandler
from app.services.query_scenario import QueryScenario
from app.utils.exceptions import ETMParseError, EnergysystemParseError
from .parser import CapacityParser


class PowerPlantParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and update its
    attributes to the relevant ETM values that have to do with the power 
    plant assets.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)


    def set_asset_generator(self):
        """
        Set the generator to assets with vehicle type and carrier.
        """

        try:
            self.asset_generator = self.energy_system.get_all_instances_of_type_and_attribute_values(
                self.props['asset'],
                {
                    'fuel': self.props['fuel'],
                    'type': self.props['plant_type']
                }
            )

        except AttributeError as att:
            print(att)
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att


    def parse(self):
        """
        Check the total power of the given asset

        Sets self.power and self.input
        """
        self.power = sum((self.__value_of(asset, 'power') for asset in self.asset_generator))
        self.inputs[self.props['attr_set']['power']['input']] = self.power

    
    def update(self, scenario_id_min, scenario_id_max):
        """
        Find the demand asset and update the value of the (input) capacity and
        the full load hours with the ETM value.

        For the first instance in the list of assets of this type of demand, update
        the power to the ETM value and (for now, statically) set the number of 
        full load hours.

        A warning is provided if there are more instances of this asset.

        Sets self.power and self.fullLoadHours
        """
        asset = self.__next_asset()

        if asset:
            # Update the full load hours based on the min value
            self.full_load_hours = self.__query_scenario(scenario_id_min, self.props['attr_set']['fullLoadHours'])
            self.__update_flh(asset)

            # Update the power range based on the min and max value
            min_power = self.__query_scenario(scenario_id_min, self.props['attr_set']['power'])
            # If no second scenario ID is geven, it's not possible to execute the query 
            if scenario_id_max: 
                # TODO: Add q&u to the range if these aren't present yet
                qu_power = quantities['power']
                
                max_power = self.__query_scenario(scenario_id_max, self.props['attr_set']['power'])
                self.__update_range(asset, "power", qu_power, min_power, max_power)

            # Update the marginal costs
            marginal_costs = self.__query_scenario(scenario_id_min, self.props['attr_set']['marginalCosts'])
            self.__update_costs(asset, marginal_costs)

        # TODO: provide warning if there's more than 1 asset in the asset_generator
        # How do we want to communicate this to the user? An extra part of the API
        # JSON return called 'warnings' next to returning the energy system?
        # Here is how you can measure if there's another asset:
        # if self.__next_asset():
        #     print('A warning')


    def __update_flh(self, asset):
        """
        Sets the full load hours of the asset to the ETM value 
        (self.full_load_hours)
        """
        # ESDL expects the FLH to be an integer value
        asset.fullLoadHours = int(self.full_load_hours)


    def __update_range(self, asset, attr, qu, min, max):
        """
        For this instance of the list of assets of this type of supply, update
        the minimum and maximum values of the range for the given attribute to
        the ETM value.

        asset   obj, asset that the range should be added to
        attr    str, attribute the range relates to (e.g. "power")
        qu      dict, specifying the quantity and units
        min     float, minimum value of the range
        max     float, maximum value of the range
        """
        RangeHandler(asset, attr, qu).update(min, max)


    def __update_costs(self, asset, marginal_costs):
        """
        For this instance in the list of assets of this type of supply, update
        the marginal costs to the ETM value.
        """
        CostHandler(asset).update_marginal_costs(marginal_costs)


    def __next_asset(self):
        try:
            return next(self.asset_generator)
        except StopIteration:
            return


    def __value_of(self, asset, key):
        """
        Returns the value multiplied with the config factor for the key

        Params:
            asset (esdl.asset): Asset that is being parsed
            key (str): 'power'

        Returns:
            float
        """

        if not key in ['power', 'fullLoadHours']: return 0.0

        return getattr(asset, key) * self.props['attr_set'][key]['factor']

    
    def __query_scenario(self, scenario_id, prop):
        """
        Query the ETM scenario for the value to set the given prop to

        Params:
            scenario_id (str): e.g. '123456'
            prop (str): e.g. 'fullLoadHours'
        """

        query_result = QueryScenario.execute(scenario_id, prop['gquery'])

        if query_result.successful:
            return query_result.value[prop['gquery']]['future'] / prop['factor']

        raise ETMParseError(
            f"We currently do not support the ETM gquery listed in the config: {prop['gquery']}"
        )
