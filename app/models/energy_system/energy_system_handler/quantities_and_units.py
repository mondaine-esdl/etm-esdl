'''Methods regarding quantaties and units in the energy system'''

from esdl import esdl

def get_quantity_and_units(self):
    '''
    Returns quantity and units

    Add energy system information to the energy system if it is not there yet
    Energy System information can be used to globally define the quantity and units of this
    system, instead of defining them manually per KPI in each area: this fosters reuse
    (but is not necessary)
    '''
    if self.has_object_with_id('energy_system_information'):
        return self.get_by_id('quantity_and_units')

    self.add_energy_system_information()
    q_and_u = esdl.QuantityAndUnits(id='quantity_and_units')
    self.energy_system.energySystemInformation.quantityAndUnits = q_and_u

    return q_and_u

def add_energy_system_information(self):
    '''Add Energy System Information'''
    esi = esdl.EnergySystemInformation(id='energy_system_information')
    self.energy_system.energySystemInformation = esi
