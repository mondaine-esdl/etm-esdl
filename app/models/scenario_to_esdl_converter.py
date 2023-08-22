"""
Some conversion methods
"""

from app.models.asset_filter import AssetFilter, find_parser
from app.models.parsers import FlexibilityParser, MobilityDemandParser, VolatileParser
from app.models.kpi_handler import KPIHandler
from app.services.gquery_cache import GqueryCache

def update_esdl(energy_system, scenario_id_min, scenario_id_max, filter=[]):
    """
    Updates the given energy system based on one or two ETM scenario ids

    energy_system       EnergySystemHandler, describing the energy_system that needs to be updated
    scenario_id_min     int, ETM default/minimum scenario that will be used to update the energy system
    scenario_id_max     int (optional), ETM maximum scenario that will be used to update the energy system
    """
    # Update KPIs
    KPIHandler(energy_system, scenario_id_min).update()

    asset_types = filter if filter else ['WindTurbine', 'PVPark', 'Electrolyzer', 'Battery', 'GasConversion','MobilityDemand', 'EnergyCarrier']
    assets = [asset for asset in AssetFilter.assets_for(*asset_types, method='update')]

    # Query ETEngine scenario's for given scenario id and assets. The GqueryCache class is a Singleton
    # that stores the results of the requests that are executed when 'perform_request()' is called.
    # The parsers called in the for-loop below can then read these results from GqueryCache when needed.
    if scenario_id_min:
        GqueryCache().for_scenario_id(scenario_id_min).for_assets(assets).perform_request()
    if scenario_id_max:
        GqueryCache().for_scenario_id(scenario_id_max).for_assets(assets).perform_request()

    # Update FLH for wind turbines, PV parks and electrolyzers, and capacities for MobilityDemand;
    # possibly also add measures for wind turbines
    for asset in assets:
        if asset['parser'] == 'mobility_demand':
            MobilityDemandParser(energy_system, asset).update(scenario_id_min)

        else:
            find_parser(asset)(energy_system, asset).update(scenario_id_min, scenario_id_max)

    return energy_system
