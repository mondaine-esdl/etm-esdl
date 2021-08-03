''' Tests for Situation '''

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from collections import defaultdict
import pytest
from app.models.situation import Situation
from app.utils.exceptions import EnergysystemParseError

def mock_context_scenario(scenario_id, app, requests_mock):
    output = {query: {'future': 1, 'present': 0.5} for query in Situation.CONTEXT_INPUTS}

    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}',
        json={'gqueries': output, 'scenario': {'end_year': 2050, 'area_code': 'nl'}},
        status_code=200
    )

@pytest.fixture
def slider_settings():
    return defaultdict(float, {
        'buildings_insulation_level': 54.0,
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': 75.0,
        'buildings_space_heater_district_heating_steam_hot_water_share': 25.0,
        'buildings_space_heater_electricity_share': 0.0,
        'buildings_space_heater_heatpump_air_water_network_gas_share': 0.0,
        'buildings_space_heater_network_gas_share': 0.0,
        'buildings_space_heater_wood_pellets_share': 0.0,
        'households_heater_combined_network_gas_share': 0.0,
        'households_heater_crude_oil_share': 0.0,
        'households_heater_district_heating_steam_hot_water_share': 24.73969828369641,
        'households_heater_electricity_share': 0.0,
        'households_heater_heatpump_air_water_electricity_share': 69.3428193077662,
        'households_heater_heatpump_ground_water_electricity_share': 5.917482408537375,
        'households_heater_hybrid_heatpump_air_water_electricity_share': 0.0,
        'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.0,
        'households_heater_network_gas_share': 0.0,
        'households_heater_wood_pellets_share': 0.0,
        'households_insulation_level_apartments': 28.17459039804742,
        'households_insulation_level_corner_houses': 28.17459039804742,
        'households_insulation_level_detached_houses': 28.17459039804742,
        'households_insulation_level_semi_detached_houses': 28.17459039804742,
        'households_insulation_level_terraced_houses': 28.17459039804742,
        'households_number_of_residences': 38513
        }
    )

def test_set_context_scenario(app, requests_mock, slider_settings):
    situation = Situation(slider_settings, 'Hengelo', 2020)

    scenario_id = 12345
    mock_context_scenario(scenario_id, app, requests_mock)
    with app.app_context():
        situation.set_context_scenario(scenario_id)

    assert situation.context
    for slider in Situation.CONTEXT_INPUTS:
        assert slider in situation.context

def test_relative_change_to_with_situations_with_different_areas(slider_settings):
    situation = Situation(slider_settings, 'Hengelo', 2020)
    situation_2 = Situation(slider_settings, 'UK', 2055)

    with pytest.raises(EnergysystemParseError):
        situation.relative_change_to_for_context(situation_2)


def test_relative_change_to_with_two_valid_situations(slider_settings):
    '''TODO'''
    # TODO: assert it is a Situation
    # TODO: assert its slider settings make sense


def test_calculate_slider_based_on_present_share(slider_settings):
    situation = Situation(slider_settings, 'Hengelo', 2020)
    situation.context = {'households_number_of_residences': {
        'present': 385130, #10% share
        'future': 3851300
    }}
    situation_future = Situation(slider_settings, 'Hengelo', 2050)

    # Compare to no change in Hengelo
    new_slider = situation.calculate_slider_based_on_present_share(
        situation_future, 'households_number_of_residences'
    )

    assert new_slider == 3504683
