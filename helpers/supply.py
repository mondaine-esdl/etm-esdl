from config.inputs import input_values

class Supply():
    """
    Class to parse ESDL information about supply assets and
    translate it to the relevant ETM inputs.
    """

    def __init__(self, energy_system, asset_type, props):
        self.energy_system = energy_system
        self.asset_type = asset_type
        self.props = props
        self.power = 0.
        self.full_load_hours = 0.


    def call(self):
        """
        Check the power and full load hours to set the corresponding ETM inputs
        """
        self.set_props()


    def update(self):
        """
        Update the power and full load hours based on the ETM inputs
        """
        self.update_props()


    def set_props(self):
        """
        Check the total power of the given asset
        """
        total_power = 0.
        full_load_hours = 0.

        try:
            list_of_assets = self.energy_system.get_all_instances_of_type(
                getattr(self.energy_system.esdl, self.asset_type))

        except AttributeError as att:
            raise EnergysystemParseError(
                f'We currently do not support the asset {str(att).split()[-1]}'
            ) from att

        for asset in list_of_assets:
            for prop in self.props:
                # Calculate ETM input value
                esdl_value = getattr(asset, prop['attribute'])
                etm_value = esdl_value * prop['factor']

                # Initialise the input value if it hasn't been touched yet
                if not input_values[prop['input']]['value']:
                    input_values[prop['input']]['value'] = 0

                # Keep track of the installed capacity to determine the average FLH
                if prop['attribute'] == 'power':
                    current_power = etm_value
                    total_power += etm_value

                elif prop['attribute'] == 'fullLoadHours':
                    prev_etm_value = input_values[prop['input']]['value']
                    diff = etm_value - prev_etm_value
                    etm_value = diff * current_power / total_power
                    full_load_hours = etm_value

                # Update ETM input value
                input_values[prop['input']]['value'] += etm_value

        self.power = total_power
        self.full_load_hours = full_load_hours

    def update_props(self):
        return
