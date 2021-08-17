''' Processes rooftop PV from ESDL to ETM'''

from .parser import AssetParser

class RooftopPVParser(AssetParser):
    """
    Class to parse ESDL information about rooftop PV installations and
    translate it to the relevant ETM inputs.

    Note: it assumes the units of the potential and used energy to be the same.
    """

    def __init__(self, energy_system, props, *args, **kwargs):
        super().__init__(energy_system, props, *args, **kwargs)
        self.potential = 0.
        self.production = 0.
        self.percentage_used = 0.


    def parse(self):
        """
        Check the potential and production in order to determine the share of
        used potential. Based on this, the ETM input can be set.
        """

        self.__set_potential()
        self.__set_production()
        self.__set_percentage_used()
        self.__calculate_input_value()


    def __set_potential(self):
        """
        Check rooftop PV potential
        """
        potentials_generator = self.energy_system.get_all_instances_of_type('SolarPotential')

        self.potential = sum((potential.value for potential in potentials_generator))


    def __set_production(self):
        """
        Check rooftop PV installations to determine the production
        """
        assets_generator = self.energy_system.get_all_instances_of_type('PVInstallation')

        # Assuming there is only one port and one profile
        self.production = sum((asset.port[0].profile[0].value for asset in assets_generator))


    def __set_percentage_used(self):
        """
        Based on rooftop PV potential and production, determine which
        percentage of the potential is used for production
        """
        if self.potential > 0:
            self.percentage_used = self.production / (self.potential + self.production)


    def __calculate_input_value(self):
        """
        Based on the percentage of used potential, caluculate the ETM input values.
        Note that the same percentage is used for both rooftops of residences
        and services.
        """
        if self.potential > 0:
            for prop in self.props:
                for key in prop['inputs'].values():
                    self.inputs[key] = self.percentage_used * prop['factor']
