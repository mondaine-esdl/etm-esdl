''' Tests for the demand parser '''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers import DemandParser

from config.conversions.assets import demand


# @pytest.fixture
# def energy_system_handler_without_demand():
#     '''ESH based on ...'''
#     with open('tests/fixtures/dummy.esdl') as file:
#         esdl_string = file.read()
#     return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_with_demand():
    '''ESH based on a valid HIC ESDL with CHPs'''
    with open('tests/fixtures/hic_description_v1.11.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


# def test_parse_without_demand(energy_system_handler_without_demand):
#     asset_type = 'HeatingDemand'
#     sub_type = 'REF'
#     parser = DemandParser(energy_system_handler_without_chps, asset_type, sub_type, demand[asset_type][sub_type])
#
#     parser.parse()
#
#     # If no demands are described in the ESDL, no inputs should be parsed
#     assert parser.get_parsed_inputs() == {}


def test_parse_with_demand(energy_system_handler_with_demand):
    for asset in ['HeatingDemand']:
        for sector in ['REF', 'CHEMFEED', 'NONCHLO']:
            props = demand[asset][sector]

            parser = DemandParser(energy_system_handler_with_demand, props, asset, sector)

            parser.parse()
            parser_results = parser.get_parsed_inputs()

            print(parser_results)

            # For now, no inputs should be set yet
            assert len(parser_results) == 0

    assert False
