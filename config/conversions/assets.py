'''
Config for the mapping of assets in ESDL and their ETM counterparts
'''

demand = {
    'HeatingDemand': [
        {
            'attribute': 'power',
            'sector': 'REF',
            'input': 'industry_useful_demand_for_chemical_refineries',
            'factor': 1E-6
        }, # CHEMFEED, EDOIL and NONCHLO should be taken into account together
        {
            'attribute': 'power',
            'sector': 'CHEMFEED',
            'input': 'industry_useful_demand_for_chemical_other',
            'factor': 1E-6
        }, # CHEMFEED, EDOIL and NONCHLO should be taken into account together
        {
            'attribute': 'power',
            'sector': 'EDOIL',
            'input': 'industry_useful_demand_for_chemical_other',
            'factor': 1E-6
        },  # CHEMFEED, EDOIL and NONCHLO should be taken into account together
        {
            'attribute': 'power',
            'sector': 'NONCHLO',
            'input': 'industry_useful_demand_for_chemical_other',
            'factor': 1E-6
        }
    ]
}

supply = {
    'WindTurbine': [ # Volatile has sets of attributes, one power and one flh
        [
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
    ],
    'PVPark': [
        [
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
        ]
    ],
    'RooftopPV': [
        {
            'inputs': {
                'RESIDENTIAL': 'households_solar_pv_solar_radiation_market_penetration',
                'BUILDINGS': 'buildings_solar_pv_solar_radiation_market_penetration'
            },
            'factor': 1E2
        }
    ],
    'CHP': [
        {
            'attribute': 'power',
            'type': 'UNDEFINED', # do we want to support this?
            'input': 'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'type': 'STEG',
            'input': 'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'type': 'GAS_TURBINE',
            'input': 'capacity_of_industry_chp_turbine_gas_power_fuelmix',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'type': 'GAS_MOTOR',
            'input': 'capacity_of_industry_chp_engine_gas_power_fuelmix',
            'factor': 1E-6
        },
        # {
        #     'attribute': 'power',
        #     'sector': 'REF',
        #     'input': 'industry_final_demand_for_chemical_other_steam_hot_water_share',
        #     'factor': 1E-6
        # }
    ],
    'GasHeater': [
        {
            'attribute': 'power',
            'carrier': ['HTLH', 'RTLH_ODO', 'RTLH_NODO'],
            'sector': 'REF',
            'input': 'industry_chemicals_other_burner_network_gas_share',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': ['RG', 'PC'],
            'sector': 'REF',
            'input': 'industry_chemicals_other_burner_crude_oil_share',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': ['H2_local', 'H2_Hvision', 'H2_new'],
            'sector': 'REF',
            'input': 'industry_chemicals_other_burner_hydrogen_share',
            'factor': 1E-6
        }
    ],
    'BiomassHeater': [
        {
            'attribute': 'power',
            'carrier': 'BM',
            'sector': 'REF',
            'input': 'industry_chemicals_other_burner_wood_pellets_share',
            'factor': 1E-6
        }
    ],
    'HeatPump': [
        {
            'attribute': 'power',
            'carrier': 'E',
            'sector': 'REF',
            'input': 'industry_chemicals_other_heater_electricity_share',
            'factor': 1E-6
        }
    ],
    'PowerPlant': [
        {
            'attribute': 'power',
            'carrier': 'HTLH',
            'input': 'capacity_of_energy_power_combined_cycle_network_gas',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': 'RG',
            'input': 'capacity_of_energy_power_combined_cycle_network_gas',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': 'PC',
            'input': 'capacity_of_energy_power_ultra_supercritical_coal',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': 'RF',
            'input': 'capacity_of_energy_power_ultra_supercritical_coal',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': 'W',
            'input': 'capacity_of_energy_power_supercritical_waste_mix',
            'factor': 1E-6
        },
        {
            'attribute': 'power',
            'carrier': 'C',
            'input': 'capacity_of_energy_power_ultra_supercritical_coal',
            'factor': 1E-6
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
