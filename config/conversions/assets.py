'''
Config for the mapping of assets in ESDL and their ETM counterparts
'''

supply = {
    'WindTurbine': [
        {
            'attribute': 'power',
            'input': 'capacity_of_energy_power_wind_turbine_inland',
            'gquery': 'merit_order_onshore_wind_turbines_capacity_in_merit_order_table',
            'factor': 1E-6,
            'edr': 'b68cb054-44ee-46cb-a32b-ef1b7830f0e1'
        },
        {
            'attribute': 'fullLoadHours',
            'input': 'flh_of_energy_power_wind_turbine_inland',
            'gquery': 'merit_order_onshore_wind_turbines_full_load_hours_in_merit_order_table',
            'factor': 1,
            'edr': 'b68cb054-44ee-46cb-a32b-ef1b7830f0e1'
        }
    ],
    'PVPark': [
        {
            'attribute': 'power',
            'input': 'capacity_of_energy_power_solar_pv_solar_radiation',
            'gquery': '',
            'factor': 1E-6,
            'edr': ''
        },
        {
            'attribute': 'fullLoadHours',
            'input': 'flh_of_solar_pv_solar_radiation',
            'gquery': '',
            'factor': 1,
            'edr': ''
        }
    ],
    'RooftopPV': [
        {
            'inputs': {
                'RESIDENTIAL': 'households_solar_pv_solar_radiation_market_penetration',
                'BUILDINGS': 'buildings_solar_pv_solar_radiation_market_penetration'
            },
            'factor': 1E2
        }
    ]
}

distributions = {
    'energyLabelDistribution': {
        'category': 'labelPerc',
        'attribute': 'energyLabel',
        'percentage': 'percentage',
        'inputs': {
            'RESIDENTIAL': [
                'households_insulation_level_apartments',
                'households_insulation_level_corner_houses',
                'households_insulation_level_detached_houses',
                'households_insulation_level_semi_detached_houses',
                'households_insulation_level_terraced_houses',
            ],
            'UTILITY': [
                'buildings_insulation_level'
            ]
        }
    }
}

heating_technologies = {
    'HeatPump': [
        { # Hybride warmtepomp op methaan
            'attribute': 'additionalHeatingSourceType',
            'value': 'GAS',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_hybrid_heatpump_air_water_electricity_share',
                'UTILITY': 'buildings_space_heater_heatpump_air_water_network_gas_share'
            },
            'aggregation': 'sum'
        },
        { # Hybride warmtepomp op waterstof
            'attribute': 'additionalHeatingSourceType',
            'value': 'HYDROGEN',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share',
                'UTILITY': 'buildings_space_heater_heatpump_air_water_network_gas_share'
            },
            'aggregation': 'sum'
        },
        { # Elektrische luchtwarmtepomp
            'attribute': 'source',
            'value': 'AIR',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_heatpump_air_water_electricity_share',
                'UTILITY': 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share'
            },
            'aggregation': 'sum'
        },
        { # Elektrische bodemwarmtepomp
            'attribute': 'source',
            'value': 'AQUIFER',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_heatpump_ground_water_electricity_share',
                'UTILITY': 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share'
            },
            'aggregation': 'sum'
        },
        { # Elektrische bodemwarmtepomp
            'attribute': 'source',
            'value': 'SUB_SURFACE',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_heatpump_ground_water_electricity_share',
                'UTILITY': 'buildings_space_heater_collective_heatpump_water_water_ts_electricity_share'
            },
            'aggregation': 'sum'
        }
    ],
    'HConnection': [
        { # Aansluiting op het warmtenet
            'attribute': '',
            'value': '',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_district_heating_steam_hot_water_share',
                'UTILITY': 'buildings_space_heater_district_heating_steam_hot_water_share'
            },
            'aggregation': 'sum'
        }
    ],
    'GasHeater': [
        { # CV-ketel
            'attribute': '',
            'value': '',
            'inputs': { #dependent on building types
                'RESIDENTIAL': 'households_heater_combined_network_gas_share',
                'UTILITY': 'buildings_space_heater_network_gas_share'
            },
            'aggregation': 'sum'
        }
    ]
}
