'''Test for the heating technologies parser'''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import pytest
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.heating_technologies import HeatingTechnologiesParser

@pytest.fixture
def energy_system_handler():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def test_parse(energy_system_handler):
    aggregrated_building = energy_system_handler.get_assets_of_type(
        'AggregatedBuilding',
        energy_system_handler.es.instance[0].area.area[0]
    )[0]
    total_buildings = {
        'RESIDENTIAL': 10000,
        'UTILITY': 10000
    }
    building_type = str(
        aggregrated_building.buildingTypeDistribution.buildingTypePercentage[0].buildingType
    )

    heat_parser = HeatingTechnologiesParser(energy_system_handler, total_buildings)
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
