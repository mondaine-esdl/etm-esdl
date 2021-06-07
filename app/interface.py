'''
Some conversion methods
'''
import config.conversions.assets as assets
from app.models.parsers import SupplyParser
from app.models.kpi_handler import KPIHandler

def update_esdl(energy_system, scenario_id):
    """
    TODO
    """
    # Update KPIs
    KPIHandler(energy_system, scenario_id).update_kpis()

    # Update capacities of wind turbines and possibly add measures
    for asset_type in ['WindTurbine']:
        SupplyParser(energy_system, asset_type, assets.supply[asset_type]).update(scenario_id)

    # Just for testing:
    # f = open('data/output/test.esdl', 'a')
    # f.write(energy_system.get_as_string())
    # f.close()

    return energy_system
