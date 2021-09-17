"""
Parser for volatile production (PV parks and wind turbines)
"""

from app.models.energy_system import EnergyDataRepository
from app.utils.exceptions import ETMParseError, EnergysystemParseError
from app.services.query_scenario import QueryScenario
from .parser import CapacityParser

class VolatileParser(CapacityParser):
    """
    Class to parse ESDL information about a single asset and
    translate it to the relevant ETM inputs that have to do with volatile assets.
    Uses full load hours and power to calculate the volatile assets' inputs.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)

        self.full_load_hours = 0.
        self.__ensure_valid_props()


    def parse(self):
        """
        Check the total power and full load hours of the given asset

        Sets self.power, self.full_load_hours and self.inputs
        """
        self.power = 0.
        self.full_load_hours = 0.

        for asset in self.asset_generator:
            current_power = self.__value_of(asset, 'power')
            if not current_power: continue

            self.power += current_power

            diff_flh = self.__value_of(asset, 'fullLoadHours') - self.full_load_hours
            current_flh = diff_flh * current_power / self.power
            self.full_load_hours += current_flh

        self.inputs[self.props['attr_set']['power']['input']] += self.power
        self.inputs[self.props['attr_set']['fullLoadHours']['input']] += self.full_load_hours


    def update(self, scenario_id):
        """
        Update the power and full load hours based on the ETM inputs
        """
        self.parse()
        self.update_props(scenario_id)

    def __ensure_valid_props(self):
        '''Raises an ESPError if power and fullLoadHours are not included in the props'''
        if all(a in self.props['attr_set'] for a in ['power', 'fullLoadHours']):
            return

        print(self.props['asset'])

        raise EnergysystemParseError(
            f'Props do not contain "power" or "fullLoadHours" in attribute set: {self.props["attr_set"]}'
        )

    def __value_of(self, asset, key):
        '''
        Returns the value multiplied with the config factor for the key

        Params:
            asset (esdl.asset): Asset that is being parsed
            key (str): Either 'power' of 'fullLoadHours'

        Returns:
            float
        '''
        if not key in ['power', 'fullLoadHours']: return 0.0

        return getattr(asset, key) * self.props['attr_set'][key]['factor']

    ### Update methods ###

    def query_scenario(self, scenario_id, prop):
        """
        TODO
        """
        query_result = QueryScenario.execute(scenario_id, prop['gquery'])

        if query_result.successful:
            return query_result.value[prop['gquery']]['future'] / prop['factor']

        raise ETMParseError(
            f"We currently do not support the ETM gquery listed in the config: {prop['gquery']}"
        )


    def update_props(self, scenario_id):
        """
        TODO
        """
        # First, update the full load hours. This value is necessary for the
        # measures that follow from updating the power.
        # TODO: Send the queries in batches instead of one-by-one
        flh_val = self.query_scenario(scenario_id, self.props['attr_set']['fullLoadHours'])
        self.update_flh(flh_val / self.props['attr_set']['fullLoadHours']['factor'])

        power_val = self.query_scenario(scenario_id, self.props['attr_set']['power'])
        diff = power_val - (self.power / self.props['attr_set']['power']['factor'])
        if diff > 0:
            self.add_measures(diff, self.props['attr_set']['power']['edr'])


    def update_flh(self, val):
        """
        For each instance in the list of assets of this type of supply, update
        the number of full load hours to the ETM value.
        """
        self.full_load_hours = val

        for asset in self.asset_generator:
            asset.fullLoadHours = val


    def remove_assets(self, diff):
        """
        Update the installed capacity of wind turbines based on the ETM value.
        If the capacity has decreased, remove redundant assets. If it has
        increased, don't touch the assets but add measure to the ESDL energy
        system.
        """
        remaining_diff = diff
        while remaining_diff > 0:
            asset = self.asset_generator[0]
            if asset.power > remaining_diff:
                asset.power = asset.power - remaining_diff
                break
            remaining_diff -= asset.power
            self.asset_generator.remove(asset)
            # TODO: It's probably necessary to remove the actual asset in the
            # energy system instead of the copy in this list (by using the id?)


    def add_measures(self, diff, asset_id):
        """
        WIP (test scenario 806669): 26 MW onshore wind
        """
        self.energy_system.add_measures()

        edr = EnergyDataRepository()
        edr_asset = edr.get_asset(asset_id)

        power = edr_asset.power
        flh = int(self.full_load_hours)

        measure = self.energy_system.esdl.Measure()

        # klass = getattr(self.energy_system.esdl, self.props['asset'])
        # constructor = globals()[klass.name]

        remaining_diff = diff
        while remaining_diff > 0:
            # asset = constructor()
            power = min(power, remaining_diff)

            asset = self.energy_system.esdl.WindTurbine(
                id=self.energy_system.generate_uuid(),
                power=power,
                fullLoadHours=flh)

            self.energy_system.append_asset_to_measure(measure, asset)

            remaining_diff -= asset.power
