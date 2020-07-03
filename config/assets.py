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
                'input': None,
                'factor': None,
                'aggregation': 'sum'
            }
        ],
        'HeatPump': [
            {
                'attribute': None,
                'input': 'households_heater_heatpump_air_water_electricity_share',
                'factor': 1,
                'aggregation': 'sum'
            }
        ],
        'HeatNetwork': [
            {
                'attribute': None,
                'input': 'households_heater_district_heating_steam_hot_water_share',
                'factor': 1,
                'aggregation': 'sum'
            }
        ],
    },

    'buildings': {},
}
