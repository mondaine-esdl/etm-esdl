'''
Defines aspects of ETM inputs like balancing groups
'''

balancing_groups = {
    'households_heating': [
        'households_heater_combined_network_gas_share',
        'households_heater_district_heating_steam_hot_water_share',
        'households_heater_heatpump_air_water_electricity_share',
        'households_heater_heatpump_ground_water_electricity_share',
        'households_heater_hybrid_heatpump_air_water_electricity_share',
        'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share',
        'households_heater_wood_pellets_share',
        'households_heater_network_gas_share',
        'households_heater_electricity_share',
        'households_heater_crude_oil_share'
    ],
    'buildings_heating': [
        'buildings_space_heater_network_gas_share',
        'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share',
        'buildings_space_heater_heatpump_air_water_network_gas_share',
        'buildings_space_heater_electricity_share',
        'buildings_space_heater_wood_pellets_share',
        'buildings_space_heater_district_heating_steam_hot_water_share'
    ],
    'industry_heating_chemical_other': [
        'industry_chemicals_other_burner_network_gas_share',
        'industry_chemicals_other_burner_crude_oil_share',
        'industry_chemicals_other_burner_wood_pellets_share',
        'industry_chemicals_other_burner_coal_share',
        'industry_final_demand_for_chemical_other_steam_hot_water_share',
        'industry_chemicals_other_steam_recompression_electricity_share',
        'industry_chemicals_other_heatpump_water_water_electricity_share',
        'industry_chemicals_other_heater_electricity_share',
        'industry_chemicals_other_burner_hydrogen_share'
    ],
    'industry_heating_chemical_refineries':[
        'industry_chemicals_refineries_burner_network_gas_share',
        'industry_chemicals_refineries_burner_crude_oil_share',
        'industry_chemicals_refineries_burner_hydrogen_share',
        'industry_chemicals_refineries_burner_wood_pellets_share',
        'industry_chemicals_refineries_burner_coal_share',
        'industry_final_demand_for_chemical_refineries_steam_hot_water_share'
    ],
    'industry_heating_other_food': [
        'industry_other_food_burner_network_gas_share',
        'industry_other_food_burner_crude_oil_share',
        'industry_other_food_burner_hydrogen_share',
        'industry_other_food_burner_wood_pellets_share',
        'industry_other_food_heater_electricity_share',
        'industry_other_food_burner_coal_share',
        'industry_final_demand_for_other_food_steam_hot_water_share'
    ],
    'industry_heating_other_paper': [
        'industry_other_paper_burner_network_gas_share',
        'industry_other_paper_burner_crude_oil_share',
        'industry_other_paper_burner_hydrogen_share',
        'industry_other_paper_burner_wood_pellets_share',
        'industry_other_paper_heater_electricity_share',
        'industry_other_paper_burner_coal_share',
        'industry_final_demand_for_other_paper_steam_hot_water_share'
    ],
    'industry_heating_aggregated_other': [
        'industry_aggregated_other_industry_network_gas_share',
        'industry_aggregated_other_industry_useable_heat_share',
        'industry_aggregated_other_industry_crude_oil_share',
        'industry_aggregated_other_industry_hydrogen_share',
        'industry_aggregated_other_industry_wood_pellets_share',
        'industry_aggregated_other_industry_electricity_share',
        'industry_aggregated_other_industry_coal_share',
    ]
}

ON_HOLD = [
    'industry_chemicals_other_burner_network_gas_share',
    'industry_useful_demand_for_chemical_refineries',
    'industry_useful_demand_for_chemical_other',

    # For testing purposes I turned these off - they seem to cause many problems
    'flh_of_energy_power_wind_turbine_inland',
    'capacity_of_energy_power_solar_pv_solar_radiation',
    'flh_of_solar_pv_solar_radiation'
]
