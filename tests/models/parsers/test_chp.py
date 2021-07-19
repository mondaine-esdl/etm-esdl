''' Tests for the CHP parser '''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.chp import ChpParser

from config.conversions.assets import supply


@pytest.fixture
def energy_system_handler_without_chps():
    '''ESH based on the valid Hengelo fixture without CHPs'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_with_chps():
    '''ESH based on a valid HIC ESDL with CHPs'''
    with open('tests/fixtures/hic_description_chp.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_without_chps_present(energy_system_handler_without_chps):
    for chp_type in ['UNDEFINED', 'STEG', 'GAS_TURBINE', 'GAS_MOTOR']:
        parser = ChpParser(energy_system_handler_without_chps, 'CHP', chp_type, supply['CHP'][chp_type])

        parser.parse()

        # If no CHPs are described in the ESDL, no inputs should be parsed
        assert parser.get_parsed_inputs() == {}


def test_parse_with_chps_present(energy_system_handler_with_chps):
    for chp_type in ['UNDEFINED', 'STEG', 'GAS_TURBINE', 'GAS_MOTOR']:

        parser = ChpParser(energy_system_handler_with_chps, 'CHP', chp_type, supply['CHP'][chp_type])

        parser.parse()
        parser_results = parser.get_parsed_inputs()

        print(parser_results)

        # If all CHP types are described in the ESDL, check whether the three
        # relevant CHP inputs are parsed
        # assert len(parser_results) == 1 # the number of different CHPs is 3
        # for key in [
        #     'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
        #     'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
        #     'capacity_of_industry_chp_turbine_gas_power_fuelmix'
        #     ]: assert key in parser_results.keys()

        # Each input value should have a value greater than or equal to 0 (MW)
        for val in parser_results.values():
            assert val >= 0

    assert False
