''' Tests for the converter '''

import copy
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=protected-access
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.models.situation import Situation

@pytest.fixture
def energy_system_handler():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def converter(energy_system_handler):
    ''' Basic converter '''
    return EsdlToScenarioConverter(energy_system_handler)


def test_inputs_values(energy_system_handler):
    converter = EsdlToScenarioConverter(energy_system_handler)
    assert all((val is None for val in converter.inputs.values()))

    # now if we start a second converter it shouldn't keep the values from the first!
    converter.inputs['households_heating'] = 10.0
    new_converter = EsdlToScenarioConverter(energy_system_handler)
    assert all((val is None for val in new_converter.inputs.values()))


def test_calculate_with_valid_hengelo(energy_system_handler):
    converter = EsdlToScenarioConverter(energy_system_handler)
    sliders = converter.calculate()
    assert isinstance(sliders, dict)
    assert sliders

    # TODO @ROOS: hoe moeten die sliders eruit zien?? Voorbeeld:
    # assert sliders[buildings_insulation_level] == 54.0


def test_parse_aggregated_buidings(converter):
    converter._EsdlToScenarioConverter__setup_building_parsers({'RESIDENTIAL': 1000,'UTILITY': 100})
    first_area = converter.energy_system.es.instance[0].area.area[0]

    default_inputs = copy.deepcopy(converter.inputs)

    converter.parse_aggregated_buidings(first_area)
    # The values should change from the default
    one_parse_inputs = copy.deepcopy(converter.inputs)
    assert one_parse_inputs
    for key, val in one_parse_inputs.items():
        assert default_inputs[key] != val

    # When parsing another building the values should change again
    converter.parse_aggregated_buidings(first_area)

    for key, val in converter.inputs.items():
        assert one_parse_inputs[key] != val

def test_as_situation(converter):
    situation = converter.as_situation()

    assert isinstance(situation, Situation)
    assert situation.year == 2050
    assert situation.area == 'Hengelo'
