"""
Tests for the PowerPlant parser
"""
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=protected-access

import pytest
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.models.parsers.production import PowerPlantParser
from unittest.mock import MagicMock

@pytest.fixture
def esh_mmvib_macro_with_nuclear():
    """
    Energy system based on the MMvIB macro case WITH PowerPlant assets
    of type NUCLEAR
    """
    with open('tests/fixtures/mmvib_macro_with_nuclear.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def mocked_values():
    return {
        'merit_order_nuclear_ii_capacity_in_merit_order_table': {
            'present': 0., 
            'future': 100., 
            'unit': 'MW'
        },
        'merit_order_nuclear_ii_full_load_hours_in_merit_order_table': {
            'present': 0., 
            'future': 2000, 
            'unit': 'hours'
        },
        'merit_order_nuclear_ii_operating_costs_in_merit_order_table': {
            'present': 50., 
            'future': 25., 
            'unit': 'EUR'
        }
    }

def mock_query_response(scenario_id, app, requests_mock, output):
    """
    Mocks a query response from ETEngine
    """
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}',
        json={'gqueries': output, 'scenario': {'end_year': 2050, 'area_code': 'nl2019'}},
        status_code=200
    )

def test_parse(esh_mmvib_macro_with_nuclear, helpers):
    props = helpers.get_first_config_for_asset_type('PowerPlant')
    parser = PowerPlantParser(esh_mmvib_macro_with_nuclear, props)
    parser.parse()

    # Check if the 2nd gen nuclear power plant input is included in the inputs variable
    assert parser.get_parsed_inputs() == {
        'capacity_of_energy_power_nuclear_gen2_uranium_oxide': 10.
    }

def test_update(esh_mmvib_macro_with_nuclear, app, requests_mock, helpers):
    mock_query_response(123456, app, requests_mock, mocked_values())

    config = helpers.get_first_config_for_asset_type('PowerPlant')

    # Check if the power plant asset(s) can be found
    power_plants = list(esh_mmvib_macro_with_nuclear.get_all_instances_of_type_and_attribute_values(
                            'PowerPlant', {'fuel': 'URANIUM', 'type': 'NUCLEAR_2ND_GENERATION'}))
    
    assert len(power_plants) > 0

    first_power_plant = power_plants[0]

    # Call the update method based on the mocked ETE query response
    with app.app_context():
        PowerPlantParser(esh_mmvib_macro_with_nuclear, config).update(123456, 123456)

    # The PowerPlantParser doesn't parse any inputs regardless of 
    # whether PowerPlant assets are present in the ESDL
    parsed_inputs = EsdlToScenarioConverter(esh_mmvib_macro_with_nuclear).inputs
    assert parsed_inputs == {}

    # If more than one PowerPlant asset (with a specific type 
    # fuel combination) is present in the ESDL, ...
    # TODO

    # Check if the range for power has been added and/or updated for the first asset
    assert first_power_plant.constraint[0].range.minValue == 100.e6
    assert first_power_plant.constraint[0].range.maxValue == 100.e6

    # The power attribute itself shouldn't be touched and should still be equal 
    # to the ESDL value
    assert first_power_plant.power == 10.e6

    # Check if the number of FLH has been updated and if it has been 
    # set to 2000 for the first asset
    assert first_power_plant.fullLoadHours == 2000

    # Check if the marginal costs have been updated
    assert first_power_plant.costInformation.marginalCosts.value == 25.