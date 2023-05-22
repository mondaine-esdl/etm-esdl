''' Tests for the converter '''

import copy
import pprint
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=protected-access
from app.models.balancer import Balancer
from app.models.conversion_assets import balancing_groups
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
def energy_system_handler_mmvib_micro():
    '''ESH based on the mmvib micro case fixture'''
    with open('tests/fixtures/pand_scenario.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def converter_hengelo(energy_system_handler_hengelo):
    ''' Basic converter based on the Hengelo fixture'''
    return EsdlToScenarioConverter(energy_system_handler_hengelo)

@pytest.fixture
def converter_mmvib_micro(energy_system_handler_mmvib_micro):
    ''' Basic converter based on the MMvIB micro case fixture'''
    return EsdlToScenarioConverter(energy_system_handler_mmvib_micro)

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


def test_calculate_with_mmvib_micro(energy_system_handler_mmvib_micro):
    converter = EsdlToScenarioConverter(energy_system_handler_mmvib_micro)
    sliders = converter.calculate()
    assert isinstance(sliders, dict)
    assert sliders

    # HeatingDemand was parsed (werkt dat ook al voor utiliteitssector ipv alleen voor industrie?)

    # PVInstallation was parsed
    assert 'capacity_of_energy_power_solar_pv_solar_radiation' in sliders

    # RooftopPV was not parsed
    assert 'households_solar_pv_solar_radiation_market_penetration' not in sliders
    assert 'buildings_solar_pv_solar_radiation_market_penetration' not in sliders

    # air-sourced HeatPump was parsed for buildings, not for households
    assert 'buildings_space_heater_heatpump_air_water_electricity_share' in sliders
    assert 'households_heater_heatpump_air_water_electricity_share' not in sliders

    # ground-sourced HeatPump was parsed for buildings, not for households
    assert 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share' in sliders
    assert 'households_heater_heatpump_ground_water_electricity_share' not in sliders

    # TODO: Should the ESDL include any other heating technologies to be parsed?

def test_parse_buildings_mmvib(converter_mmvib_micro):
    number_of_buildings = converter_mmvib_micro.determine_number_of_buildings()

    # The MMvIB micro case ESDL should have 51 (of 114 in total) utility buildings and 0 
    # residential buildings based on the current config sbi_codes.yml
    assert number_of_buildings['RESIDENTIAL'] == 0
    assert number_of_buildings['UTILITY'] == 51

    # Setup building parsers
    converter_mmvib_micro._EsdlToScenarioConverter__setup_building_parsers(number_of_buildings)
    default_inputs = copy.deepcopy(converter_mmvib_micro.inputs)

    # Parse the buildings in the top area of the ESDL description
    converter_mmvib_micro.parse_buildings()

    # The values should change from the default
    one_parse_inputs = copy.deepcopy(converter_mmvib_micro.inputs)
    assert one_parse_inputs
    for key, val in one_parse_inputs.items():
        assert default_inputs[key] != val

    # Balance sliders in share groups and print slider keys and values
    Balancer(converter_mmvib_micro.inputs).call()
    pprint.pprint(converter_mmvib_micro.inputs)
    
    # Test if inputs for space heating in buildings sum up to 1
    sum_of_inputs = sum([val for input, val in converter_mmvib_micro.inputs.items() 
                 if input in balancing_groups['buildings_heating']])
    assert round(sum_of_inputs,2) == 100.

# TODO: For this test we need a fixture with both Building and AggregatedBuilding assets
# def test_all_buildings_mmvib(converter_mmvib_micro):
#     number_of_buildings = converter_mmvib_micro.determine_number_of_buildings()
#     converter_mmvib_micro._EsdlToScenarioConverter__setup_building_parsers(number_of_buildings)

#     # Parse buildings on top area level
#     converter_mmvib_micro.parse_buildings()
    
#     # Parse aggregated buildings on sub area level
#     for sub_area in converter_mmvib_micro.energy_system.area_instance():
#         converter_mmvib_micro.parse_aggregated_buidings(sub_area)
#     assert True

def test_sbi_filter(energy_system_handler_mmvib_micro, converter_mmvib_micro):
    first_building = energy_system_handler_mmvib_micro.get_assets_of_type('Building')[0]
    industry_building = energy_system_handler_mmvib_micro.get_assets_of_type('Building')[11]
    utility_building = energy_system_handler_mmvib_micro.get_assets_of_type('Building')[12]
        
    print(first_building.sector.code)
    print(industry_building.sector.code)
    print(utility_building.sector.code)

    # The first building has a single SBI code (B08553) that corresponds to industry
    assert converter_mmvib_micro._EsdlToScenarioConverter__in_industry(first_building) == True

    # This building has a multi-value SBI code (B06420, A03102) of which B06420 corresponds to industry
    assert converter_mmvib_micro._EsdlToScenarioConverter__in_industry(industry_building) == True

    # This building has a multi-value SBI code (M70221, G45312, G45311) of which none corresponds to industry
    assert converter_mmvib_micro._EsdlToScenarioConverter__in_industry(utility_building) == False

def test_parse_aggregated_buidings_hengelo(converter_hengelo):
    converter_hengelo._EsdlToScenarioConverter__setup_building_parsers({'RESIDENTIAL': 1000,'UTILITY': 100})
    first_area = converter_hengelo.energy_system.area_instance()[0]

    default_inputs = copy.deepcopy(converter_hengelo.inputs)

    converter_hengelo.parse_aggregated_buidings(first_area)
    # The values should change from the default
    one_parse_inputs = copy.deepcopy(converter_hengelo.inputs)
    assert one_parse_inputs
    for key, val in one_parse_inputs.items():
        assert default_inputs[key] != val

    # When parsing another building the values should change again
    converter_hengelo.parse_aggregated_buidings(first_area)

    for key, val in converter_hengelo.inputs.items():
        assert one_parse_inputs[key] != val

def test_as_situation(converter_hengelo):
    situation = converter_hengelo.as_situation()

    assert isinstance(situation, Situation)
    assert situation.year == 2050
    assert situation.area == 'GM0164_hengelo'
