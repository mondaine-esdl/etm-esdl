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
        'AggregatedBuilding': [
            {
                'attribute': 'numberOfBuildings',
                'dependent_on': {'distribution': 'buildingTypeDistribution'}, # TODO
                'input': 'households_number_of_residences',
                'factor': 1,
                'aggregation': 'sum'
            },
            {
                'distribution': 'buildingTypeDistribution', # TODO
                'inputs': [
                    'households_number_of_residences',
                ]
            },
            {
                'distribution': 'energyLabelDistribution',
                'inputs': [
                    'households_insulation_level_apartments',
                    'households_insulation_level_corner_houses',
                    'households_insulation_level_detached_houses',
                    'households_insulation_level_semi_detached_houses',
                    'households_insulation_level_terraced_houses',
                    'buildings_insulation_level'
                ],
            },

        ],
    },

    'buildings': {},
}

heating_technologies = {
    # Elektrische luchtwarmtepomp
    'HeatPump': [
        {
            'dependent_on': {'asset': 'AggregatedBuilding'},
            'attribute': 'source',
            'value': 'AIR',
            'input': 'households_heater_heatpump_air_water_electricity_share',
        }
    ],
    # Elektrische bodemwarmtepomp
    'HeatPump': [
        {
            'dependent_on': {'asset': 'AggregatedBuilding'},
            'attribute': 'source',
            'value': 'AQUIFER',
            'input': 'households_heater_heatpump_ground_water_electricity_share',
        }
    ],
    # Elektrische bodemwarmtepomp
    'HeatPump': [
        {
            'dependent_on': {'asset': 'AggregatedBuilding'},
            'attribute': 'source',
            'value': 'SUB_SURFACE',
            'input': 'households_heater_heatpump_ground_water_electricity_share',
        }
    ],
    # Hybride warmtepomp op methaan
    'HeatNetwork': [
        {
            'dependent_on': {'asset': 'AggregatedBuilding'},
            'attribute': 'additionalHeatingSourceType',
            'value': 'GAS',
            'input': 'households_heater_hybrid_heatpump_air_water_electricity_share',
        }
    ],
    # Hybride warmtepomp op waterstof
    'HeatNetwork': [
        {
            'dependent_on': {'asset': 'AggregatedBuilding'},
            'attribute': 'additionalHeatingSourceType',
            'value': 'HYDROGEN',
            'input': 'households_heater_hybrid_hydrogen_heatpump_air_water_electricity_share',
        }
    ],
},

# In case of an AggregatedBuilding, loop over the following distributions
