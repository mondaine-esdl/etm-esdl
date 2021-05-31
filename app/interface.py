import urllib.parse

import config.conversions.assets as assets
import config.conversions.kpis as kpis
from config.conversions import quantities

from app.models.energy_system import EnergySystemHandler
from app.helpers.ETM_API import ETM_API
from app.helpers.exceptions import EnergysystemParseError
from app.models.parsers import SupplyParser

from app.services.query_scenario import QueryScenario

def start_etm_session(scenario_id=None):
    """
    Start an ETM API session based on the set environment (beta for staging or pro for pro)
    """
    if scenario_id:
        return ETM_API(scenario_id)

    return ETM_API()


def add_quantity_and_units(energy_system):
    """
    Energy System information can be used to globally define the quantity and
    units of this system, instead of defining them manually per KPI in each
    area: this fosters reuse (but is not necessary)
    """
    q_and_u = energy_system.get_quantity_and_units()

    for quantity, prop in quantities.items():
        if energy_system.get_by_id(quantity) is None:
            unit = energy_system.esdl.QuantityAndUnitType(
                id=quantity,
                physicalQuantity=prop['physicalQuantity'],
                multiplier=prop['multiplier'],
                unit=prop['unit'],
                description=prop['description'])
            q_and_u.quantityAndUnit.append(unit)


def update_kpis(energy_system, scenario_id):
    """
    TODO
    """

    for kpi in energy_system.es.instance[0].area.KPIs.kpi:
        prop = kpis.gqueries[kpi.id]

        list_of_gqueries = [gquery['gquery'] for gquery in prop['gqueries']]
        query_result = QueryScenario.execute(scenario_id, *list_of_gqueries)

        if not query_result.successful: raise ValueError(query_result.errors)
        metrics = query_result.value

        if prop['esdl_type'] == 'DistributionKPI':
            for it in kpi.distribution.stringItem:
                kpi.distribution.stringItem.remove(it)

            for gquery in prop['gqueries']:
                val = metrics[gquery['gquery']]['future'] * prop['factor']

                if val != 0:
                    kpi.distribution.stringItem.append(energy_system.esdl.StringItem(
                        label=gquery['label'],
                        value=val))

        else:
            kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']


def add_kpis(energy_system, scenario_id):
    """
    TODO
    """
    energy_system.add_kpis()

    for kpi_id, prop in kpis.gqueries.items():
        list_of_gqueries = [gquery['gquery'] for gquery in prop['gqueries']]
        query_result = QueryScenario.execute(scenario_id, *list_of_gqueries)

        if not query_result.successful: raise ValueError(query_result.errors)
        metrics = query_result.value

        kpi = energy_system.create_kpi(
            prop['esdl_type'],
            kpi_id,
            prop['name'],
            energy_system.get_by_id_slow(prop['q_and_u']))

        if prop['esdl_type'] == 'DistributionKPI':
            kpi.distribution = energy_system.esdl.StringLabelDistribution()

            for gquery in prop['gqueries']:
                val = metrics[gquery['gquery']]['future'] * prop['factor']

                if val != 0:
                    kpi.distribution.stringItem.append(energy_system.esdl.StringItem(
                        label=gquery['label'],
                        value=val))

        else:
            kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']

        print(f'Adding KPI of type: {type(kpi)}')
        energy_system.add_kpi(kpi)


def add_kpis_to_esdl(energy_system, scenario_id):
    """
    After adding the KPI's to the EnergySystem, it's no longer able to be
    converted into either a file or an esdl string
    """

    # Add quantity and units to EnergySystemInformation
    add_quantity_and_units(energy_system)

    # Add (empty) KPIs and targets and update KPIs based on ETM metrics
    add_kpis(energy_system, scenario_id)

    # Just for testing:
    # f = open('data/output/test_import_1.esdl', 'a')
    # f.write(energy_system.get_as_string())
    # f.close()


def update_esdl(energy_system, scenario_id):
    """
    TODO
    """
    # Update KPIs
    update_kpis(energy_system, scenario_id)

    # Update capacities of wind turbines and possibly add measures
    for asset_type in ['WindTurbine']:
        SupplyParser(energy_system, asset_type, assets.supply[asset_type]).update(scenario_id)

    # Just for testing:
    # f = open('data/output/test.esdl', 'a')
    # f.write(energy_system.get_as_string())
    # f.close()

    return energy_system

def setup_esh_from_energy_system(energy_system):
    '''
    Creates and returns an EnergySystemHandler based on an energy_system '.esdl' file that was
    extracted from form-data
    '''
    try:
        return EnergySystemHandler.from_string(urllib.parse.unquote(energy_system))
    except Exception as exception:
        raise EnergysystemParseError('ESDL could not be parsed', 422) from exception

def setup_esh_from_scenario(scenario_id):
    etm = start_etm_session(scenario_id)
    return EnergySystemHandler.from_string(etm.fetch_energy_system())
