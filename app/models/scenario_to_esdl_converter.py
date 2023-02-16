"""
Some conversion methods
"""
from app.models.conversion_assets import assets
from app.models.parsers import FlexibilityParser, VolatileParser
from app.models.kpi_handler import KPIHandler

def update_esdl(energy_system, scenario_id):
    """
    Updates the given energy system based on an ETM scenario id

    energy_system   EnergySystemHandler, describing the energy_system that needs to be updated
    scenario_id     int, ETM scenario that will be used to update the energy system
    """
    # Update KPIs
    KPIHandler(energy_system, scenario_id).update()

    # Update capacities of wind turbines, FLH for PV parks and FLH for electrolyzers;
    # possibly add measures
    for asset in get_configs_for_assets('WindTurbine', 'PVPark', 'Electrolyzer'):
        if asset['parser'] == 'volatile':
            VolatileParser(energy_system, asset).update(scenario_id)
        elif asset['parser'] == 'flexibility':
            FlexibilityParser(energy_system, asset).update(scenario_id)
    return energy_system


    return energy_system


def get_configs_for_assets(*asset_types):
    """
    Returns a generator full of config asset with given asset type e.g. GasHeater
    """
    return (asset for asset in assets if asset['asset'] in asset_types)