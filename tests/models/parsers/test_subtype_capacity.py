''' Tests for the CHP parser '''

from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.subtype_capacity import SubtypeCapacityParser

@pytest.fixture
def energy_system_handler_without_chps():
    '''ESH based on the valid Hengelo fixture without CHPs'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_without_chps_present(energy_system_handler_without_chps, helpers):
    for chp_type in  helpers.get_configs_for_asset_type('CHP'):
        if not chp_type['parser'] == 'subtype_capacity': continue

        parser = SubtypeCapacityParser(energy_system_handler_without_chps, chp_type)

        parser.parse()

        # If no CHPs are described in the ESDL, all input should be 0
        assert sum(parser.get_parsed_inputs().values()) == 0.0

@pytest.mark.parametrize(
    'esdl_file_name, chps_expected',
    [('hic_description_chp', 0.0), ('2050_hic_description_fake', 0.0)]
)
def test_parse_with_chps_present(energy_system_handler, chps_expected, helpers):
    inputs = defaultdict(float)

    helpers.get_configs_for_asset_type('CHP')
    for chp_type in  helpers.get_configs_for_asset_type('CHP'):
        if not chp_type['parser'] == 'subtype_capacity': continue
        parser = SubtypeCapacityParser(energy_system_handler, chp_type, inputs=inputs)

        parser.parse()
        parser_results = parser.get_parsed_inputs()

        # Each input value should have a value greater than or equal to 0 (MW)
        assert all(val >=chps_expected for val in parser_results.values())

    print(parser_results)

    # If all CHP types are described in the ESDL, check whether the three
    # relevant CHP inputs are parsed after looping through all assets
    assert len(parser_results) == 3

    for key in [
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
        'capacity_of_industry_chp_turbine_gas_power_fuelmix'
        ]: assert key in parser_results.keys()
