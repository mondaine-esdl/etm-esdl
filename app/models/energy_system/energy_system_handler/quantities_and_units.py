'''Methods regarding quantaties and units in the energy system'''

import uuid
from esdl import esdl

def get_quantity_and_units(self):
    '''
    Returns quantity and units

    Add energy system information to the energy system if it is not there yet
    Energy System information can be used to globally define the quantity and units of this
    system, instead of defining them manually per KPI in each area: this fosters reuse
    (but is not necessary)
    '''
    if not self.energy_system.energySystemInformation:
        self.add_energy_system_information()

    q_and_u = self.energy_system.energySystemInformation.quantityAndUnits

    if not q_and_u:
        q_and_u = esdl.QuantityAndUnits(id='quantity_and_units')
        self.energy_system.energySystemInformation.quantityAndUnits = q_and_u

    return q_and_u

def add_energy_system_information(self):
    '''Add Energy System Information'''
    esi = esdl.EnergySystemInformation(id='energy_system_information')
    self.energy_system.energySystemInformation = esi


def get_carrier(self, name, asset_type):
    '''
    Returns the carrier, or creates one if it's not present

    Params:
        name(str): the name of the carrier, as specified under the 'name' attribute

    '''
    c = self.get_top_level_carriers()

    for carrier in c.carrier:
        if carrier.name == name:
            return carrier

    carrier = getattr(esdl, asset_type)(id=str(uuid.uuid1()), name=name)
    c.carrier.append(carrier)

    return carrier

def get_top_level_carriers(self):
    if not self.energy_system.energySystemInformation:
        self.add_energy_system_information()

    carriers = self.energy_system.energySystemInformation.carriers

    if not carriers:
        carriers = esdl.Carriers(id=str(uuid.uuid1()))
        self.energy_system.energySystemInformation.carriers = carriers

    return carriers


def set_cost_of_asset(self, asset):
    if not asset.cost:
        asset.cost = esld.Cost
