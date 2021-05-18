''' Tests for the converter '''

import copy
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter

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
    assert all((val['value'] is None for val in converter.inputs.values()))

    # now if we start a second converter it shouldn't keep the values from the first!
    converter.inputs[next(iter(converter.inputs))]['value'] = 10.0
    new_converter = EsdlToScenarioConverter(energy_system_handler)
    assert all((val['value'] is None for val in new_converter.inputs.values()))


def test_calculate_with_valid_hengelo(energy_system_handler):
    converter = EsdlToScenarioConverter(energy_system_handler)
    sliders = converter.calculate()
    assert isinstance(sliders, dict)
    assert sliders

    # TODO @ROOS: hoe moeten die sliders eruit zien?? Voorbeeld:
    # assert sliders[buildings_insulation_level] == 54.0


def test_parse_aggregated_buiding(converter):
    default_inputs = copy.deepcopy(converter.inputs)

    converter.parse_aggregated_buiding(
        converter.energy_system.es.instance[0].area.area[0],
        {'RESIDENTIAL': 10000,'UTILITY': 10000}
    )
    # The values should change from teh default
    one_parse_inputs = copy.deepcopy(converter.inputs)
    for key, val in one_parse_inputs.items():
        if val['value'] is None: continue
        assert default_inputs[key]['value'] != val['value']

    # When parsing another building the values should change again
    converter.parse_aggregated_buiding(
        converter.energy_system.es.instance[0].area.area[0],
        {'RESIDENTIAL': 10000,'UTILITY': 10000}
    )

    for key, val in converter.inputs.items():
        if val['value'] is None: continue
        assert one_parse_inputs[key]['value'] != val['value']
