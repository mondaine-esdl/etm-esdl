'''Tests for the energy labels parser '''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import pytest
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter.parsers.energy_labels import EnergyLabelsParser

@pytest.fixture
def energy_system_handler():
    '''ESH based on the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def test_parse(energy_system_handler):
    total_buildings = {'RESIDENTIAL': 10000, 'UTILITY': 10000}
    label_parser = EnergyLabelsParser(energy_system_handler, total_buildings)
    aggregrated_building = energy_system_handler.get_assets_of_type(
        energy_system_handler.es.instance[0].area.area[0],
        energy_system_handler.esdl.AggregatedBuilding
    )[0]
    building_type = str(
        aggregrated_building.buildingTypeDistribution.buildingTypePercentage[0].buildingType
    )

    label_parser.parse(aggregrated_building, building_type)

    inputs = label_parser.get_parsed_inputs()
    assert inputs
    # Right now, all labels should have equal values, as the labels are distributed evenly
    assert sum(inputs.values()) / max(inputs.values()) == len(inputs)


def test_parse_distribution(energy_system_handler):
    total_buildings = {'RESIDENTIAL': 10000, 'UTILITY': 10000}
    label_parser = EnergyLabelsParser(energy_system_handler, total_buildings)

    aggregrated_building = energy_system_handler.get_assets_of_type(
        energy_system_handler.es.instance[0].area.area[0],
        energy_system_handler.esdl.AggregatedBuilding
    )[0]

    dist, prop = label_parser.parse_distribution(aggregrated_building, 'energyLabelDistribution')
    assert isinstance(dist, dict)
    assert set(dist.values()) == set(
        [4.227405247813411, 17.20116618075802, 16.909620991253643,  61.66180758017493]
    )
    assert prop['attribute'] == 'energyLabel'
