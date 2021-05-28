''' Tests for the RooftopPV parser '''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter.parsers.rooftop_pv import RooftopPV

from app.constants.assets import supply

@pytest.fixture
def energy_system_handler_without_pv():
    '''ESH based on the valid Hengelo fixture'''
    # TODO: should be an ESDL with actual rooftop PV in it
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def test_parse_without_rooftop_pv_present(energy_system_handler_without_pv):
    parser = RooftopPV(energy_system_handler_without_pv, supply['RooftopPV'])

    parser.parse()
    assert parser.get_parsed_inputs() == {}

# TODO: implement this test
# def test_parse_with_rooftop_pv_present(energy_system_handler):
#     pass
