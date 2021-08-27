''' Tests for the CHP parser '''

from collections import defaultdict
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
    for chp_type in supply['CHP']:
        parser = ChpParser(energy_system_handler_without_chps, chp_type, asset_type='CHP')

        parser.parse()

        # If no CHPs are described in the ESDL, all input should be 0
        assert sum(parser.get_parsed_inputs().values()) == 0.0


def test_parse_with_chps_present(energy_system_handler_with_chps):
    inputs = defaultdict(float)

    for chp_type in supply['CHP']:

        parser = ChpParser(energy_system_handler_with_chps, chp_type, asset_type='CHP', inputs=inputs)

        parser.parse()
        parser_results = parser.get_parsed_inputs()

        # Each input value should have a value greater than or equal to 0 (MW)
        assert all(val >=0 for val in parser_results.values())

    print(parser_results)

    # If all CHP types are described in the ESDL, check whether the three
    # relevant CHP inputs are parsed after looping through all assets
    assert len(parser_results) == 3

    for key in [
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
        'capacity_of_industry_chp_turbine_gas_power_fuelmix'
        ]: assert key in parser_results.keys()
