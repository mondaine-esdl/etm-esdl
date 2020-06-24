input_values = {
    'demand': {
        'households': {
            'general': {
                'households_number_of_residences': None,
            },
            'insulation': {
                'households_insulation_level_apartments': None,
                'households_insulation_level_corner_houses': None,
                'households_insulation_level_detached_houses': None,
                'households_insulation_level_semi_detached_houses': None,
                'households_insulation_level_terraced_houses': None,
            },
            'heating_technologies': {
                'households_heater_combined_network_gas_share': None,
                'households_heater_district_heating_steam_hot_water_share': None,
                'households_heater_heatpump_air_water_electricity_share': None,
                'households_heater_heatpump_ground_water_electricity_share': None,
                'households_heater_hybrid_heatpump_air_water_electricity_share': None,
                'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share': None,
                'households_heater_wood_pellets_share': None,
                'households_heater_network_gas_share': None,
                'households_heater_electricity_share': None,
            }
        },

        'buildings': {
            'insulation': {
                'buildings_insulation_level': None,
            },
            'heating_technologies': {
                'buildings_space_heater_network_gas_share': None,
                'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share': None,
                'buildings_space_heater_heatpump_air_water_network_gas_share': None,
                'buildings_space_heater_electricity_share': None,
                'buildings_space_heater_wood_pellets_share': None,
                'buildings_space_heater_district_heating_steam_hot_water_share': None,
            }
        },
    },

    'supply': {
        'wind': {
            'capacity_of_energy_power_wind_turbine_inland': None,
            'capacity_of_energy_power_wind_turbine_offshore': None,
            'flh_of_energy_power_wind_turbine_inland': None,
            'flh_of_energy_power_wind_turbine_offshore': None,
        },

        'solar_pv': {
            'households_solar_pv_solar_radiation_market_penetration': None,
            'buildings_solar_pv_solar_radiation_market_penetration': None,
            'capacity_of_energy_power_solar_pv_solar_radiation': None,
            'flh_of_solar_pv_solar_radiation': None,
            'technical_solar_pv_efficiency': None,
        },

        'green_gas': {
            'green_gas_total_share': None,
        }
    }
}
