''' Tests for the RooftopPV parser '''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.rooftop_pv import RooftopPVParser

from config.conversions.assets import supply


@pytest.fixture
def energy_system_handler_without_pv():
    '''ESH based on the valid Hengelo fixture without rooftop PV'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_with_pv():
    '''ESH based on the valid Hengelo fixture with rooftop PV'''
    with open('tests/fixtures/valid_Hengelo_with_pv.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_without_rooftop_pv_present(energy_system_handler_without_pv):
    parser = RooftopPVParser(energy_system_handler_without_pv, supply['RooftopPV'])

    parser.parse()

    # If no rooftop PV is described in the ESDL, no inputs should be parsed
    assert parser.get_parsed_inputs() == {}


def test_parse_with_rooftop_pv_present(energy_system_handler_with_pv):
    parser = RooftopPVParser(energy_system_handler_with_pv, supply['RooftopPV'])

    parser.parse()
    parser_results = parser.get_parsed_inputs()

    # If rooftop PV is described in the ESDL, check whether the two relevant
    # rooftop PV inputs are parsed
    assert len(parser_results) == 2
    for key in [
        'households_solar_pv_solar_radiation_market_penetration',
        'households_solar_pv_solar_radiation_market_penetration'
        ]: assert key in parser_results.keys()

    # Each input value should have a value between 0 and 100 (%)
    for val in parser_results.values():
        assert val >= 0
        assert val <= 100
