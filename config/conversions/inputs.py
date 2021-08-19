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
    ]
}

ON_HOLD = [
    'industry_chemicals_other_burner_network_gas_share',
    'industry_useful_demand_for_chemical_refineries',
    'industry_useful_demand_for_chemical_other',
]
