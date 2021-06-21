"""
Parser for volatile production (PV parks and wind turbines)
"""

class VolatileProductionParser(SupplyParser):
    """
    Class to parse ESDL information about a single volatile production asset
    and translate it to the relevant ETM inputs.
    """

    def __init__(self, energy_system, asset_type, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, asset_type=asset_type, **kwargs)
        self.__set_list_of_assets()
        self.full_load_hours = 0.


    def parse(self):
        """
        TODO
        """
        return


    def update(self, scenario_id):
        """
        Update the power and full load hours based on the ETM inputs
        """
        self.set_props()
        self.update_props(scenario_id)


    def set_props(self):
        """
        Check the full load hours of the given asset

        Sets self.full_load_hours and self.inputs
        """
        self.full_load_hours = 0.

        for asset in self.list_of_assets:
            for prop in self.props:
                # Calculate ETM input value based on value from ESDL asset
                etm_value = getattr(asset, prop['attribute']) * prop['factor']

                # Keep track of the installed capacity to determine the average FLH
                if prop['attribute'] == 'power':
                    current_power = etm_value
                    self.power += etm_value
                    # print(f'CAP = {self.power}')

                elif prop['attribute'] == 'fullLoadHours':
                    prev_etm_value = self.inputs[prop['input']]
                    diff = etm_value - prev_etm_value # 1920 - 2500 = -580
                    etm_value = diff * current_power / self.power # -580 * 13 / 19
                    self.full_load_hours += etm_value
                    # print(f'FLH = {self.full_load_hours}')

                # Update ETM input value
                self.inputs[prop['input']] += etm_value

        print(f'self.power = {self.power}')
        print(f'self.full_load_hours = {self.full_load_hours}')
