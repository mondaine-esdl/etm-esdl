"""
Some conversion methods
"""
from app.models.conversion_assets import assets
from app.models.parsers import FlexibilityParser, MobilityDemandParser, VolatileParser
from app.models.kpi_handler import KPIHandler

def update_esdl(energy_system, scenario_id_min, scenario_id_max):
    """
    Updates the given energy system based on one or two ETM scenario ids

    energy_system       EnergySystemHandler, describing the energy_system that needs to be updated
    scenario_id_min     int, ETM default/minimum scenario that will be used to update the energy system
    scenario_id_max     int (optional), ETM maximum scenario that will be used to update the energy system
    """
    # Update KPIs
    KPIHandler(energy_system, scenario_id_min).update()

    # Update FLH for wind turbines, PV parks and electrolyzers, and capacities for MobilityDemand;
    # possibly also add measures for wind turbines
    for asset in get_configs_for_assets('WindTurbine', 'PVPark', 'Electrolyzer', 'MobilityDemand'):
        if asset['parser'] == 'volatile':
            VolatileParser(energy_system, asset).update(scenario_id_min, scenario_id_max)
        elif asset['parser'] == 'flexibility':
            FlexibilityParser(energy_system, asset).update(scenario_id_min, scenario_id_max)
        elif asset['parser'] == 'mobility_demand':
            MobilityDemandParser(energy_system, asset).update(scenario_id_min)
    return energy_system


def get_configs_for_assets(*asset_types):
    """
    Returns a generator full of config asset with given asset type e.g. GasHeater
    """
    return (asset for asset in assets if asset['asset'] in asset_types)
