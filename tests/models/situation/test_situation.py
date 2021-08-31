''' Tests for Situation '''

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from collections import defaultdict
from unittest.mock import patch
import pytest
from app.models.situation import Situation
import app.models.situation.context
from app.utils.exceptions import EnergysystemParseError

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

@pytest.fixture
def slider_settings_hic():
    return defaultdict(float, {
        'capacity_of_energy_power_combined_cycle_network_gas': 3167.0,
        'capacity_of_energy_power_supercritical_waste_mix': 0.521,
        'capacity_of_energy_power_ultra_supercritical_coal': 4191.0,
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix': 2537.0,
        'capacity_of_industry_chp_engine_gas_power_fuelmix': 0.0,
        'capacity_of_industry_chp_turbine_gas_power_fuelmix': 0.0,
        'industry_chemicals_other_burner_coal_share': 0.0,
        'industry_chemicals_other_burner_crude_oil_share': 67.50887666864666,
        'industry_chemicals_other_burner_hydrogen_share': 0.0,
        'industry_chemicals_other_burner_network_gas_share': 13.352328875321556,
        'industry_chemicals_other_burner_wood_pellets_share': 0.0,
        'industry_chemicals_other_heater_electricity_share': 0.0,
        'industry_chemicals_other_heatpump_water_water_electricity_share': 0.0,
        'industry_chemicals_other_steam_recompression_electricity_share': 0.0,
        'industry_final_demand_for_chemical_other_steam_hot_water_share': 19.138794456031782,
        'industry_useful_demand_for_chemical_other': 27842795.087307286
        }
    )

@pytest.fixture
def slider_settings_future_hic():
    return defaultdict(float, {
        'capacity_of_energy_power_combined_cycle_network_gas': 2000.0,
        'capacity_of_energy_power_supercritical_waste_mix': 2.,
        'capacity_of_energy_power_ultra_supercritical_coal': 4000.0,
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix': 3000.0,
        'capacity_of_industry_chp_engine_gas_power_fuelmix': 3.,
        'capacity_of_industry_chp_turbine_gas_power_fuelmix': 0.0,
        'industry_chemicals_other_burner_coal_share': 0.0,
        'industry_chemicals_other_burner_crude_oil_share': 30.0,
        'industry_chemicals_other_burner_hydrogen_share': 20.0,
        'industry_chemicals_other_burner_network_gas_share': 10.0,
        'industry_chemicals_other_burner_wood_pellets_share': 0.0,
        'industry_chemicals_other_heater_electricity_share': 0.0,
        'industry_chemicals_other_heatpump_water_water_electricity_share': 20.0,
        'industry_chemicals_other_steam_recompression_electricity_share': 0.0,
        'industry_final_demand_for_chemical_other_steam_hot_water_share': 20.0,
        'industry_useful_demand_for_chemical_other': 27842795.087307286
        }
    )

@pytest.fixture
def slider_outcomes_nl_fixed():
    '''Present and Future are fixed'''
    return {
        'end_year': 2050,
        'area_code': 'nl',
        'capacity_of_energy_power_combined_cycle_network_gas': {'future': 31670.0, 'present': 31670.0},
        'capacity_of_energy_power_supercritical_waste_mix': {'future': 521, 'present': 521},
        'capacity_of_energy_power_ultra_supercritical_coal': {'future': 41910, 'present': 41910},
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix': {'future': 25370, 'present': 25370},
        'capacity_of_industry_chp_engine_gas_power_fuelmix': {'future': 10, 'present': 10},
        'capacity_of_industry_chp_turbine_gas_power_fuelmix': {'future': 20, 'present': 20},
        'industry_chemicals_other_burner_coal_share': {'future': 0.0, 'present': 0.0},
        'industry_chemicals_other_burner_crude_oil_share': {'future': 70.0, 'present': 70.0},
        'industry_chemicals_other_burner_hydrogen_share': {'future': 0.0, 'present': 0.0},
        'industry_chemicals_other_burner_network_gas_share': {'future': 10.0, 'present': 10.0},
        'industry_chemicals_other_burner_wood_pellets_share': {'future': 10.0, 'present': 10.0},
        'industry_chemicals_other_heater_electricity_share': {'future': 0.0, 'present': 0.0},
        'industry_chemicals_other_heatpump_water_water_electricity_share': {'future': 0.0, 'present': 0.0},
        'industry_chemicals_other_steam_recompression_electricity_share': {'future': 0.0, 'present': 0.0},
        'industry_final_demand_for_chemical_other_steam_hot_water_share': {'future': 10.0, 'present': 10.0},
        'industry_useful_demand_for_chemical_other': {'future': 100.0, 'present': 100.0},
        'final_demand_of_natural_gas_and_derivatives_in_other_chemical_industry_energetic': {'future': 57000000.0, 'present': 57000000.0}
    }

def test_set_context_scenario(slider_settings, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings, 'Hengelo', 2020)
    scenario_id = 12345

    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)

    assert situation.context
    for slider in Situation.CONTEXT_QUERIES:
        assert slider in situation.context

def test_relative_change_to_with_situations_with_different_areas(slider_settings):
    situation = Situation(slider_settings, 'Hengelo', 2020)
    situation_2 = Situation(slider_settings, 'UK', 2055)

    with pytest.raises(EnergysystemParseError):
        situation.relative_change_to_for_context(situation_2)


def test_relative_change_to_with_two_valid_situations_that_dont_change(slider_settings_hic, slider_outcomes_nl_fixed):

    situation = Situation(slider_settings_hic, 'HIC', 2020)
    situation_2 = Situation(slider_settings_hic, 'HIC', 2050)

    scenario_id = 12345
    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)

    # Assert nothing changed from the current context scenario settings
    future_nl = {slider: val['future'] for slider, val in slider_outcomes_nl_fixed.items() if isinstance(val, dict)}
    assert all(
        situation.relative_change_to_for_context(situation_2).slider_settings[slider] == future_nl[slider]
        for slider in slider_settings_hic
    )

def test_relative_change_to_with_two_valid_situations_that_change(slider_settings_hic, slider_settings_future_hic, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings_hic, 'HIC', 2020)
    situation_2 = Situation(slider_settings_future_hic, 'HIC', 2050)

    scenario_id = 12345
    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)


    new_situation = situation.relative_change_to_for_context(situation_2)
    assert new_situation.slider_settings['industry_chemicals_other_burner_crude_oil_share'] > 50

def test_calculate_slider_based_on_present_share_of_query(slider_settings_hic, slider_settings_future_hic, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings_hic, 'HIC', 2020)
    situation_2 = Situation(slider_settings_future_hic, 'HIC', 2050)

    scenario_id = 12345
    slider_outcomes_nl_fixed['industry_useful_demand_for_chemical_other']['future'] = 90.0
    slider_outcomes_nl_fixed['final_demand_of_natural_gas_and_derivatives_in_other_chemical_industry_energetic']['future'] = 51300000
    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)


    new_slider = situation.calculate_slider_based_on_present_share_of_query(
        situation_2,
        'industry_useful_demand_for_chemical_other',
        'final_demand_of_natural_gas_and_derivatives_in_other_chemical_industry_energetic'
    )
    assert new_slider > 94.0


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
