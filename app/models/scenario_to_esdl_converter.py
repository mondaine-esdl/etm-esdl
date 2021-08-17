'''
Some conversion methods
'''
import config.conversions.assets as assets
from app.models.parsers import VolatileParser
from app.models.kpi_handler import KPIHandler

def update_esdl(energy_system, scenario_id):
    """
    Updates the given energy system based on an ETM scenario id

    energy_system   EnergySystemHandler, describing the energy_system that needs to be updated
    scenario_id     int, ETM scenario that will be used to update the energy system
    """
    # Update KPIs
    KPIHandler(energy_system, scenario_id).update()

    # Update capacities of wind turbines and possibly add measures
    for asset_type in ['WindTurbine']:
        VolatileParser(
            energy_system,
            assets.supply[asset_type]['default'],
            asset_type=asset_type
        ).update(scenario_id)

    return energy_system
