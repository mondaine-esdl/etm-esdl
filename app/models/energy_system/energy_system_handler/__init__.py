''' Main interface to an ESDL energy system '''
# pylint: disable=no-member

from venv import create
from esdl.esdl_handler import EnergySystemHandler

from app.utils.exceptions import EnergysystemParseError
from . import lookup
from . import kpis
from . import quantities_and_units
from . import top_level_area

def area_code(self):
    '''Returns the area code of the Energy System'''
    return self.area().id

def area_instance(self):
    '''Returns the top level area instance of the Energy System'''
    return self.area().area

def area(self):
    '''Returns the top level area of the Energy System'''
    return self.get_energy_system().instance[0].area

def year(self):
    '''Returns the year of the Energy System'''
    return self.get_energy_system().instance[0].date.date.year

@classmethod
def from_string(cls, esdl_string):
    '''
    Create a new EnergySystemHandler based on an EnergySystem esdl_string (using UTF-8 encoding)
    '''
    try:
        handler = cls()
        handler.load_from_string(esdl_string)
        return handler
    except Exception as exception:
        raise EnergysystemParseError('ESDL could not be parsed') from exception

# Add the custom methods
EnergySystemHandler.area_code = area_code
EnergySystemHandler.area_instance = area_instance
EnergySystemHandler.area = area
EnergySystemHandler.year = year
EnergySystemHandler.from_string = from_string

# Add the lookup methods
EnergySystemHandler.get_all_instances_of_type_by_name = lookup.get_all_instances_of_type_by_name
EnergySystemHandler.get_all_instances_of_type_and_carrier = lookup.get_all_instances_of_type_and_carrier
EnergySystemHandler.get_all_instances_of_type_carrier_and_sector = lookup.get_all_instances_of_type_carrier_and_sector
EnergySystemHandler.get_all_instances_of_type_and_attribute_value = lookup.get_all_instances_of_type_and_attribute_value
EnergySystemHandler.get_all_instances_of_type_and_attribute_values = lookup.get_all_instances_of_type_and_attribute_values
EnergySystemHandler.get_all_instances_of_type_and_sector = lookup.get_all_instances_of_type_and_sector
EnergySystemHandler.get_by_id_slow = lookup.get_by_id_slow
EnergySystemHandler.has_object_with_id = lookup.has_object_with_id
EnergySystemHandler.in_sector = lookup.in_sector
EnergySystemHandler.get_assets_of_type = lookup.get_assets_of_type
EnergySystemHandler.has_assets_of_type = lookup.has_assets_of_type
EnergySystemHandler.has_assets_of_type_and_attribute_value = lookup.has_assets_of_type_and_attribute_value
EnergySystemHandler.has_carrier = lookup.has_carrier

# Add the KPI methods
EnergySystemHandler.add_kpis = kpis.add_kpis
EnergySystemHandler.add_kpi = kpis.add_kpi
EnergySystemHandler.create_kpi = kpis.create_kpi

# Add the Q&U methods
EnergySystemHandler.get_quantity_and_units = quantities_and_units.get_quantity_and_units
EnergySystemHandler.add_energy_system_information = quantities_and_units.add_energy_system_information
EnergySystemHandler.get_carrier = quantities_and_units.get_carrier
EnergySystemHandler.get_top_level_carriers = quantities_and_units.get_top_level_carriers

# Add the area methods
EnergySystemHandler.add_top_level_area = top_level_area.add_top_level_area
EnergySystemHandler.is_top_area = top_level_area.is_top_area
