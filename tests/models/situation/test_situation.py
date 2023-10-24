''' Tests for Situation '''

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from collections import defaultdict
from unittest.mock import patch
import pytest

from app.models.conversion_assets import balancing_groups
from app.models.situation import Situation
import app.models.situation.context
from app.models.situation.groups import balancing_group_for
from app.utils.exceptions import EnergysystemParseError

@pytest.fixture
def slider_settings():
    return defaultdict(float, {
        'buildings_insulation_level': 54.0,
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': 75.0,
        'buildings_space_heater_district_heating_ht_steam_hot_water_share': 25.0,
        'buildings_space_heater_electricity_share': 0.0,
        'buildings_space_heater_heatpump_air_water_network_gas_share': 0.0,
        'buildings_space_heater_network_gas_share': 0.0,
        'buildings_space_heater_wood_pellets_share': 0.0,
        'households_heater_combined_network_gas_share': 0.0,
        'households_heater_crude_oil_share': 0.0,
        'households_heater_district_heating_ht_steam_hot_water_share': 24.73969828369641,
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
        'capacity_of_energy_power_solar_pv_solar_radiation': 0.,
        'capacity_of_energy_power_combined_cycle_network_gas': 3167.0,
        'capacity_of_energy_power_supercritical_waste_mix': 0.521,
        'capacity_of_energy_power_ultra_supercritical_coal': 4191.0,
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix': 2537.0,
        'capacity_of_industry_chp_engine_gas_power_fuelmix': 0.0,
        'capacity_of_industry_chp_turbine_gas_power_fuelmix': 0.0,
        'industry_chemicals_other_burner_coal_share': 0.0,
        'industry_chemicals_other_burner_crude_oil_share': 67.50887666864666,
        'industry_chemicals_other_burner_hydrogen_share': 19.138794456031782,
        'industry_chemicals_other_burner_network_gas_share': 13.352328875321556,
        'industry_chemicals_other_burner_wood_pellets_share': 0.0,
        'industry_chemicals_other_heater_electricity_share': 0.0,
        'industry_chemicals_other_heatpump_water_water_electricity_share': 0.0,
        'industry_chemicals_other_steam_recompression_electricity_share': 0.0,
        'industry_final_demand_for_chemical_other_steam_hot_water_share': 0.0,
        'industry_useful_demand_for_chemical_other': 27842795.087307286
        }
    )

@pytest.fixture
def slider_settings_future_hic():
    return defaultdict(float, {
        'capacity_of_energy_power_solar_pv_solar_radiation': 0.,
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
    '''Present and Future are fixed. Amazingly ugly.'''
    # Balancing groups
    bal = [bgs for group in Situation.INDUSTRY_GROUPS
        for bgs in balancing_groups[balancing_group_for(group)]]
    bal_70 = {slider: {'future': 70.0, 'present': 70.0}
        for slider in bal if slider.endswith('oil_share')}
    bal_10 = {slider: {'future': 10.0, 'present': 10.0}
        for slider in bal if slider.split('_')[-2] in ['gas', 'pellets','hydrogen']}
    bal_0 = {slider: {'future': 0.0, 'present': 0.0}
        for slider in bal if slider.split('_')[-2] not in ['gas', 'pellets','hydrogen', 'oil']}

    queries = {query: {'future': 57000000.0, 'present': 57000000.0}
        for query in Situation.CONTEXT_QUERIES}
    values = {
        'end_year': 2050,
        'area_code': 'nl',
        'number_of_buildings': {'future': 0, 'present': 0.},
        'capacity_of_energy_power_solar_pv_solar_radiation': {'future': 0., 'present': 0.},
        'capacity_of_energy_power_combined_cycle_network_gas':
            {'future': 31670.0, 'present': 31670.0},
        'capacity_of_energy_power_supercritical_waste_mix': {'future': 521, 'present': 521},
        'capacity_of_energy_power_ultra_supercritical_coal': {'future': 41910, 'present': 41910},
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix':
            {'future': 25370, 'present': 25370},
        'capacity_of_industry_chp_engine_gas_power_fuelmix': {'future': 10, 'present': 10},
        'capacity_of_industry_chp_turbine_gas_power_fuelmix': {'future': 20, 'present': 20},
        'industry_useful_demand_for_chemical_other': {'future': 100.0, 'present': 100.0},
        'industry_useful_demand_for_chemical_refineries': {'future': 100.0, 'present': 100.0},
        'industry_useful_demand_for_aggregated_other': {'future': 100.0, 'present': 100.0},
        'industry_useful_demand_for_other_food': {'future': 100.0, 'present': 100.0},
        'industry_useful_demand_for_other_paper': {'future': 100.0, 'present': 100.0},
        'buildings_space_heater_network_gas_share': {'present': 100., 'future': 100.},
        'buildings_space_heater_combined_hydrogen_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_district_heating_ht_steam_hot_water_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_heatpump_air_water_network_gas_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_hybrid_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_wood_pellets_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_crude_oil_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_coal_share': {'present': 0., 'future': 0.}
    }

    values.update(queries)
    values.update(bal_0)
    values.update(bal_70)
    values.update(bal_10)

    return values

@pytest.fixture
def slider_settings_present_business_park():
    return defaultdict(float, {
        'capacity_of_energy_power_solar_pv_solar_radiation': 0.,
        'buildings_space_heater_network_gas_share': 100.,
        'buildings_space_heater_combined_hydrogen_share': 0.,
        'buildings_space_heater_district_heating_ht_steam_hot_water_share': 0.,
        'buildings_space_heater_heatpump_air_water_network_gas_share': 0.,
        'buildings_space_heater_heatpump_air_water_electricity_share': 0.,
        'buildings_space_heater_hybrid_heatpump_air_water_electricity_share': 0.,
        'buildings_space_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.,
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': 0.,
        'buildings_space_heater_electricity_share': 0.,
        'buildings_space_heater_wood_pellets_share': 0.,
        'buildings_space_heater_crude_oil_share': 0.,
        'buildings_space_heater_coal_share': 0.,
        }
    )

@pytest.fixture
def slider_settings_future_business_park():
    return defaultdict(float, {
        'capacity_of_energy_power_solar_pv_solar_radiation': 20.,
        'buildings_space_heater_network_gas_share': 0.,
        'buildings_space_heater_combined_hydrogen_share': 0.,
        'buildings_space_heater_district_heating_ht_steam_hot_water_share': 0.,
        'buildings_space_heater_heatpump_air_water_network_gas_share': 0.,
        'buildings_space_heater_heatpump_air_water_electricity_share': 30.,
        'buildings_space_heater_hybrid_heatpump_air_water_electricity_share': 0.,
        'buildings_space_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': 0.,
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': 70.,
        'buildings_space_heater_electricity_share': 0.,
        'buildings_space_heater_wood_pellets_share': 0.,
        'buildings_space_heater_crude_oil_share': 0.,
        'buildings_space_heater_coal_share': 0.,
        }
    )

@pytest.fixture
def values_tholen():
    characteristics = {'end_year': 2030, 'area_code': 'GM0716_tholen'}
    queries = {'etmoses_number_of_buildings': {'present': 1000., 'future': 1000.}}

    values = {
        'capacity_of_energy_power_solar_pv_solar_radiation': {'present': 10., 'future': 10.},
        'number_of_buildings': {'present': 0., 'future': 0.},
        'buildings_space_heater_network_gas_share': {'present': 100., 'future': 100.},
        'buildings_space_heater_combined_hydrogen_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_district_heating_ht_steam_hot_water_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_heatpump_air_water_network_gas_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_hybrid_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_electricity_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_wood_pellets_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_crude_oil_share': {'present': 0., 'future': 0.},
        'buildings_space_heater_coal_share': {'present': 0., 'future': 0.}
    }

    values.update(characteristics)
    values.update(queries)

    return values

def test_calculate_buildings_heat_share_group_sliders_for_tholen(
        slider_settings_present_business_park, 
        slider_settings_future_business_park, 
        values_tholen):
    
    number_of_buildings = {'RESIDENCES': 0, 'UTILITY': 100}
    
    present_situation = Situation(slider_settings_present_business_park, number_of_buildings, 'GM0716', 2019)
    future_situation = Situation(slider_settings_future_business_park, number_of_buildings, 'GM0716', 2030)

    scenario_id = 12345

    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = values_tholen
        present_situation.set_context_scenario(scenario_id)

    # Check if the share_in_context variable is 10% (since the business park has 100 buildings
    # compared to 1000 buildings in total for the municipality of Tholen)
    share_in_context = Situation.try_division(
            present_situation.number_of_buildings['UTILITY'],
            present_situation.context['etmoses_number_of_buildings']['future']
        )
    
    assert share_in_context == 0.1

    # Calculate new slider settings for the heating mix of buildings
    slider_settings = present_situation.calculate_buildings_heat_share_group_sliders(future_situation)

    # Since the share of the business park in the context of the municipality of Tholen is 10%,
    # we expect the share of gas heaters to decrease by (100 - 0) * 10% = 10% and we expect the 
    # share of collective heat pumps to increase by (70 - 0) * 10% = 7% and the share of 
    # individual heat pumps to increase by (30 - 0) * 10% = 3%.
    assert slider_settings['buildings_space_heater_network_gas_share'] == 90.
    assert slider_settings['buildings_space_heater_heatpump_air_water_electricity_share'] == 3.
    assert slider_settings['buildings_space_heater_collective_heatpump_water_water_ts_electricity_share'] == 7.

def test_calculate_slider_based_on_present_share_for_tholen(
        slider_settings_present_business_park, 
        slider_settings_future_business_park, 
        values_tholen):
    
    number_of_buildings = {'RESIDENCES': 0, 'UTILITY': 100}
    
    present_situation = Situation(slider_settings_present_business_park, number_of_buildings, 'GM0716', 2019)
    future_situation = Situation(slider_settings_future_business_park, number_of_buildings, 'GM0716', 2030)

    scenario_id = 12345

    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = values_tholen
        present_situation.set_context_scenario(scenario_id)

    # Calculate the new value for the solar pv parks slider
    slider = 'capacity_of_energy_power_solar_pv_solar_radiation'
    new_value = present_situation.calculate_slider_based_on_present_share(
        future_situation,
        slider,
    )

    # We expect this value to be 10 + 20 = 30 MW
    assert new_value == 30.

def test_set_context_scenario(slider_settings, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings, {'RESIDENCES': 1000, 'UTILITY': 500}, 'Hengelo', 2020)
    scenario_id = 12345

    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)

    assert situation.context
    for slider in Situation.CONTEXT_QUERIES:
        assert slider in situation.context

def test_relative_change_to_with_situations_with_different_areas(slider_settings):
    situation = Situation(slider_settings, {'RESIDENCES': 1000, 'UTILITY': 500}, 'Hengelo', 2020)
    situation_2 = Situation(slider_settings, {'RESIDENCES': 10000, 'UTILITY': 5000}, 'UK', 2055)

    with pytest.raises(EnergysystemParseError):
        situation.relative_change_to_for_context(situation_2)


def test_relative_change_to_with_two_valid_situations_that_dont_change(slider_settings_hic, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2020)
    situation_2 = Situation(slider_settings_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2050)

    scenario_id = 12345
    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)

    # Assert nothing changed from the current context scenario settings
    future_nl = {slider: val['future'] for slider, val in slider_outcomes_nl_fixed.items() if isinstance(val, dict)}
    change_settings = situation.relative_change_to_for_context(situation_2).slider_settings
    assert all(
        change_settings[slider] == future_nl[slider]
        for slider in slider_settings_hic
    )

# De parameters die je meegeeft aan de method zijn de fixtures (met die naam) die hierboven zijn gedefinieerd
def test_relative_change_to_with_two_valid_situations_that_change(slider_settings_hic, slider_settings_future_hic, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2020)
    situation_2 = Situation(slider_settings_future_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2050)

    scenario_id = 12345
    with patch.object(app.models.situation.context,'get_context_values') as mock_method:
        mock_method.return_value = slider_outcomes_nl_fixed
        situation.set_context_scenario(scenario_id)


    new_situation = situation.relative_change_to_for_context(situation_2)
    assert new_situation.slider_settings['industry_chemicals_other_burner_crude_oil_share'] > 50

def test_calculate_slider_based_on_present_share_of_query(slider_settings_hic, slider_settings_future_hic, slider_outcomes_nl_fixed):
    situation = Situation(slider_settings_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2020)
    situation_2 = Situation(slider_settings_future_hic, {'RESIDENCES': 0, 'UTILITY': 100}, 'HIC', 2050)

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
    situation = Situation(slider_settings, {'RESIDENCES': 1000, 'UTILITY': 500}, 'Hengelo', 2020)
    situation.context = {'households_number_of_residences': {
        'present': 385130, #10% share
        'future': 3851300
    }}
    situation_future = Situation(slider_settings, {'RESIDENCES': 1000, 'UTILITY': 500}, 'Hengelo', 2050)

    # Compare to no change in Hengelo
    new_slider = situation.calculate_slider_based_on_present_share(
        situation_future, 'households_number_of_residences'
    )

    assert new_slider == 3504683
