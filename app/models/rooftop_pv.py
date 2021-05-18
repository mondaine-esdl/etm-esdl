''' Processes rooftop PV from ESDL to ETM'''

# TODO: Make this a Parser
class RooftopPV():
    """
    Class to parse ESDL information about rooftop PV installations and
    translate it to the relevant ETM inputs.

    Note: it assumes the units of the potential and used energy to be the same.
    """

    def __init__(self, energy_system, props):
        self.energy_system = energy_system
        self.props = props
        self.potential = 0.
        self.production = 0.
        self.percentage_used = 0.


    def parse(self):
        """
        Check the potential and production in order to determine the share of
        used potential. Based on this, the ETM input can be set.
        """

        self.set_potential()
        self.set_production()
        self.set_percentage_used()
        return self.calculate_input_value()


    def set_potential(self):
        """
        Check rooftop PV potential
        """
        total_potential = 0.

        list_of_potentials = self.energy_system.get_all_instances_of_type(
            self.energy_system.esdl.SolarPotential)

        for potential in list_of_potentials:
            total_potential += potential.value

        self.potential = total_potential


    def set_production(self):
        """
        Check rooftop PV installations to determine the production
        """
        total_production = 0.

        list_of_assets = self.energy_system.get_all_instances_of_type(
            self.energy_system.esdl.PVInstallation)

        for asset in list_of_assets:
            # Assuming there is only one port and one profile
            total_production += asset.port[0].profile[0].value

        self.production = total_production


    def set_percentage_used(self):
        """
        Based on rooftop PV potential and production, determine which
        percentage of the potential is used for production
        """
        if self.potential > 0:
            self.percentage_used = self.production / (self.potential + self.production)


    def calculate_input_value(self):
        """
        Based on the percentage of used potential, caluculate the ETM input values.
        Note that the same percentage is used for both rooftops of residences
        and services.
        """
        inputs = {}
        if self.potential > 0:
            for prop in self.props:
                for key in prop['inputs'].values():
                    inputs[key] = self.percentage_used * prop['factor']
        return inputs
