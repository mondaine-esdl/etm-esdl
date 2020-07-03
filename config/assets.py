assets = {
    'energy': {
        'WindTurbine': [
            {
                'attribute': 'power',
                'input': 'capacity_of_energy_power_wind_turbine_inland',
                'factor': 1E-6
            },
            {
                'attribute': 'fullLoadHours',
                'input': 'flh_of_energy_power_wind_turbine_inland',
                'factor': 1
            }
        ],
        'PVPark': [
            {
                'attribute': 'power',
                'input': 'capacity_of_energy_power_solar_pv_solar_radiation',
                'factor': 1E-6
            },
            {
                'attribute': 'fullLoadHours',
                'input': 'flh_of_solar_pv_solar_radiation',
                'factor': 1
            }
        ],
    },

    'households': {},
    'buildings': {},
}
