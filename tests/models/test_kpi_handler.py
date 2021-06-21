''' Tests for the KPI handler, which calculates and updates KPIs for energy systems'''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from unittest.mock import MagicMock
import pytest

import config.conversions.kpis as kpis
from config.conversions import quantities
from app.models.kpi_handler import KPIHandler
from app.models.energy_system import EnergySystemHandler
from app.utils.exceptions import ETMParseError


@pytest.fixture
def energy_system_handler_no_kpis():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_with_kpis():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo_with_kpis.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def mocked_query_results(future_value):
    queries = [gquery['gquery'] for prop in kpis.gqueries.values() for gquery in prop['gqueries']]
    return {query: {'future' : future_value} for query in queries}


@pytest.mark.parametrize('future_value', [10.0, 0.0])
def test_add_kpis(energy_system_handler_no_kpis, mocked_query_results):
    #  make sure we start without KPIs
    kpis_from_other_source = len(energy_system_handler_no_kpis.es.instance[0].area.KPIs.kpi)

    handler = KPIHandler(energy_system_handler_no_kpis, 123456)
    # Mock the values returned by ETE
    handler.get_metrics = MagicMock(return_value=mocked_query_results)
    handler.add_kpis()

    # check that there extra are KPIs present
    assert len(handler.energy_system.es.instance[0].area.KPIs.kpi) > kpis_from_other_source

    # TODO@Roos: check that these kpis make sense?


def test_add_kpis_when_scenario_is_unknown(energy_system_handler_no_kpis):
    handler = KPIHandler(energy_system_handler_no_kpis, 123456)
    handler.get_metrics = MagicMock(side_effect=ETMParseError('No scenario'))

    with pytest.raises(ETMParseError):
        handler.add_kpis()


@pytest.mark.parametrize('future_value', [10.0])
def test_update_when_there_were_no_kpis_present(energy_system_handler_no_kpis, mocked_query_results):
    '''
    Should not work! It cannot find the present KPI's in the prop -> Why? @Roos
    '''
    handler = KPIHandler(energy_system_handler_no_kpis, 123456)
    # Mock the values returned by ETE
    handler.get_metrics = MagicMock(return_value=mocked_query_results)

    with pytest.raises(KeyError):
        handler.update()


@pytest.mark.parametrize('future_value', [-1.0, 100.0])
def test_update_with_high_low_values(energy_system_handler_with_kpis, mocked_query_results):
    number_of_kpis = len(energy_system_handler_with_kpis.es.instance[0].area.KPIs.kpi)
    assert number_of_kpis > 3

    handler = KPIHandler(energy_system_handler_with_kpis, 123456)
    # Mock the values returned by ETE
    handler.get_metrics = MagicMock(return_value=mocked_query_results)
    handler.update()

    assert len(handler.energy_system.es.instance[0].area.KPIs.kpi) == number_of_kpis

@pytest.mark.xfail
def test_add_quantity_and_units(energy_system_handler_no_kpis):
    # Check how many quantities there are
    amount = sum(
        len(energy_system_handler_no_kpis.get_by_id(quantity))
        for quantity in quantities
        if energy_system_handler_no_kpis.get_by_id(quantity)
    )
    print('initial amount of q&u present:', amount)

    handler = KPIHandler(energy_system_handler_no_kpis, 123456)
    handler.add_quantity_and_units()

    # how many now?
    amount = sum(
        len(handler.energy_system.get_by_id(quantity))
        for quantity in quantities
        if handler.energy_system.get_by_id(quantity)
    )
    print('amount of q&u present after adding:', amount)


    # TODO: now they should be here! -> but they are not??
    for quantity in quantities:
        assert handler.energy_system.get_by_id(quantity)
