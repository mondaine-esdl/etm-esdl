'''Test for the heating technologies parser'''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import pytest
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.heating_technologies import HeatingTechnologiesParser

@pytest.fixture
def energy_system_handler_hengelo():
    """
    ESH based on the valid Hengelo fixture
    """
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def energy_system_handler_mmvib_micro():
    """
    ESH based on the mmvib micro case fixture
    """
    with open('tests/fixtures/pand_scenario.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def test_parse_building(energy_system_handler_mmvib_micro):
    building = energy_system_handler_mmvib_micro.get_assets_of_type('Building')[0]
    total_buildings = {
        'RESIDENTIAL': 0,
        'UTILITY': 114
    }

    heat_parser = HeatingTechnologiesParser(energy_system_handler_mmvib_micro, total_buildings)
    heat_parser.parse(building, 'UTILITY')

    inputs = heat_parser.get_parsed_inputs()

    # First utility building has a ground-sourced HeatPump 
    assert 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share' in inputs

    old_heater_val = inputs.copy()['buildings_space_heater_collective_heatpump_water_water_ts_electricity_share']
    
    # Parse the same building again
    heat_parser.parse(building, 'UTILITY')

    doubled_inputs = heat_parser.get_parsed_inputs()
    doubled_heater_val = doubled_inputs['buildings_space_heater_collective_heatpump_water_water_ts_electricity_share']

    # And check if the input value has doubled
    assert doubled_heater_val == 2 * old_heater_val

def test_parse_aggregated_buildings(energy_system_handler_hengelo):
    aggregrated_building = energy_system_handler_hengelo.get_assets_of_type(
        'AggregatedBuilding',
        energy_system_handler_hengelo.area_instance()[0]
    )[0]
    total_buildings = {
        'RESIDENTIAL': 10000,
        'UTILITY': 10000
    }
    building_type = str(
        aggregrated_building.buildingTypeDistribution.bin[0].buildingType
    )

    heat_parser = HeatingTechnologiesParser(energy_system_handler_hengelo, total_buildings)
    heat_parser.parse(aggregrated_building, building_type)
    inputs = heat_parser.get_parsed_inputs()
    assert 'households_heater_district_heating_steam_hot_water_share' in inputs

    # now we parse the same asset again and see if the input doubles
    old_heater_val = inputs.copy()['households_heater_district_heating_steam_hot_water_share']
    heat_parser.parse(aggregrated_building, building_type)
    doubled_inputs = heat_parser.get_parsed_inputs()
    doubled_heater_val = doubled_inputs['households_heater_district_heating_steam_hot_water_share']
    assert doubled_heater_val == 2 * old_heater_val


# what happens if it breaks?/