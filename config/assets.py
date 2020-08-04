assets = {
    'energy': {
        'WindTurbine': [
            {
                'attribute': 'power',
                'input': 'capacity_of_energy_power_wind_turbine_inland',
                'factor': 1E-6,
                'aggregation': 'sum',
            },
            {
                'attribute': 'fullLoadHours',
                'input': 'flh_of_energy_power_wind_turbine_inland',
                'factor': 1,
                'aggregation': 'weighted_average',
            }
        ],
        'PVParc': [
            {
                'attribute': 'power',
                'input': 'capacity_of_energy_power_solar_pv_solar_radiation',
                'factor': 1E-6,
                'aggregation': 'sum',
            },
            {
                'attribute': 'fullLoadHours',
                'input': 'flh_of_solar_pv_solar_radiation',
                'factor': 1,
                'aggregation': 'weighted_average',
            }
        ],
        'PVPark': [
            {
                'attribute': 'power',
                'input': 'capacity_of_energy_power_solar_pv_solar_radiation',
                'factor': 1E-6,
                'aggregation': 'sum',
            },
            {
                'attribute': 'fullLoadHours',
                'input': 'flh_of_solar_pv_solar_radiation',
                'factor': 1,
                'aggregation': 'weighted_average',
            }
        ],
    },

    'households': {
        # 'AggregatedBuilding': [
        #     {
        #         'attribute': 'numberOfBuildings',
        #         'dependent_on': {'distribution': 'buildingTypeDistribution'}, # TODO
        #         'input': 'households_number_of_residences',
        #         'factor': 1,
        #         'aggregation': 'sum'
        #     },
        #     {
        #         'distribution': 'buildingTypeDistribution', # TODO
        #         'inputs': [
        #             'households_number_of_residences',
        #         ]
        #     },
        #     {
        #         'distribution': 'energyLabelDistribution',
        #         'inputs': [
        #             'households_insulation_level_apartments',
        #             'households_insulation_level_corner_houses',
        #             'households_insulation_level_detached_houses',
        #             'households_insulation_level_semi_detached_houses',
        #             'households_insulation_level_terraced_houses',
        #             'buildings_insulation_level'
        #         ],
        #     },
        #
        # ],
    },

    'buildings': {},
}

# TODO: Separate individual and collective heating technologies
heating_technologies = {
    'HeatPump': [
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
        },
        { # Hybride warmtepomp op methaan
            'attribute': 'additionalHeatingSourceType',
            'value': 'GAS',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_hybrid_heatpump_air_water_electricity_share',
                'UTILITY': None
            },
            'aggregation': 'sum'
        },
        { # Hybride warmtepomp op waterstof
            'attribute': 'additionalHeatingSourceType',
            'value': 'HYDROGEN',
            'inputs': { # dependent on building types
                'RESIDENTIAL': 'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share',
                'UTILITY': None
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
}
