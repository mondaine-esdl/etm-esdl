''' Tests for the converter '''

import copy
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=protected-access
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.models.situation import Situation

@pytest.fixture
def energy_system_handler_hengelo():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def converter(energy_system_handler_hengelo):
    ''' Basic converter '''
    return EsdlToScenarioConverter(energy_system_handler_hengelo)


def test_inputs_values(energy_system_handler_hengelo):
    converter = EsdlToScenarioConverter(energy_system_handler_hengelo)
    assert all((val is None for val in converter.inputs.values()))

    # now if we start a second converter it shouldn't keep the values from the first!
    converter.inputs['households_heating'] = 10.0
    new_converter = EsdlToScenarioConverter(energy_system_handler_hengelo)
    assert all((val is None for val in new_converter.inputs.values()))


def test_calculate_with_valid_hengelo(energy_system_handler_hengelo):
    converter = EsdlToScenarioConverter(energy_system_handler_hengelo)
    sliders = converter.calculate()
    assert isinstance(sliders, dict)
    assert sliders

    # HeatDemand was parsed
    assert 'industry_useful_demand_for_chemical_other' in sliders
    # CHPs were parsed
    assert 'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix' in sliders
    # Powerplants were parsed
    assert 'capacity_of_energy_power_combined_cycle_network_gas' in sliders


    # Empty share groups were filtered out:
    # GasHeaters
    assert 'industry_chemicals_other_burner_network_gas_share' not in sliders
    # BiomassHeaters
    assert 'industry_chemicals_other_burner_wood_pellets_share' not in sliders

    # TODO @ROOS: hoe moeten die sliders eruit zien?? Voorbeeld:
    # assert sliders[buildings_insulation_level] == 54.0

@pytest.mark.parametrize('esdl_file_name', ['2021_hic_description', '2050_hic_description_fake'])
@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_calculate_with_hic(energy_system_handler):
    converter = EsdlToScenarioConverter(energy_system_handler)
    sliders = converter.calculate()
    assert isinstance(sliders, dict)
    assert sliders

    # HeatDemand was parsed
    assert 'industry_useful_demand_for_chemical_other' in sliders
    # CHPs were parsed
    assert 'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix' in sliders
    # Powerplants were parsed
    assert 'capacity_of_energy_power_combined_cycle_network_gas' in sliders
    # GasHeaters
    assert 'industry_chemicals_other_burner_network_gas_share' in sliders
    # BiomassHeaters
    assert 'industry_chemicals_other_burner_wood_pellets_share' in sliders



def test_parse_aggregated_buidings(converter):
    converter._EsdlToScenarioConverter__setup_building_parsers({'RESIDENTIAL': 1000,'UTILITY': 100})
    first_area = converter.energy_system.area_instance()[0]

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
    assert situation.area == 'GM0164_hengelo'
