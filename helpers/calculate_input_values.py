from config.inputs import input_values


def number_of_households(value):
    if value >= 0:
        input_values['demand']['households']['general']['households_number_of_residences']


def insulation_households(value=None):
    # Set insulation slider settings for households
    households_insulation_settings = input_values['demand']['households']['insulation']

    for slider, setting in households_insulation_settings.items():
        if not value:
            value = 30.

        households_insulation_settings['slider'] = value


def insulation_buildings(value=None):
    # Set insulation slider settings for buildings
    buildings_insulation_settings = input_values['demand']['buildings']['insulation']

    for slider, setting in buildings_insulation_settings.items():
        if not value:
            value = 52.

        buildings_insulation_settings['slider'] = value


def heating_mix_households(shares):
    # Set heating technology mix for households
    households_heating_mix_settings = input_values['demand']['households']['heating_technologies']

    for slider, setting in households_heating_mix_settings.items():
        if slider in shares.keys():
            households_heating_mix_settings['slider'] = shares['slider']


def heating_mix_buildings(shares):
    # Set heating technology mix for buildings
    buildings_heating_mix_settings = input_values['demand']['buildings']['heating_technologies']

    for slider, setting in buildings_heating_mix_settings.items():
        if slider in shares.keys():
            households_heating_mix_settings['slider'] = shares['slider']


def renewable_production(capacities, flh=None):
    # Set capacity in MW for electricity production from renewables (wind and solar PV)
    for wind_type in ['inland', 'offshore']:
        if capacities[wind_type] >= 0:
            input_values['supply']['wind'][f'capacity_of_energy_power_wind_turbine_{wind_type}'] = capacities[wind_type]

        # If available, set FLH for onshore wind turbines
        if flh[wind_type] >= 0:
            input_values['supply']['wind'][f'flh_of_energy_power_wind_turbine_{wind_type}'] = flh[wind_type]


def solar_pv_production(capacities, flh=None, efficiency=None):
    # Set capacity in MW for electricity production from solar PV parks
    if capacities['pv_parks'] >= 0:
        input_values['supply']['solar_pv']['capacity_of_energy_power_solar_pv_solar_radiation'] = capacity

    # TODO: set sliders for solar pv on rooftops of households and buildings

    # If available, set FLH for solar PV
    if flh >= 0:
        input_values['supply']['solar_pv']['flh_of_solar_pv_solar_radiation'] = flh

    # If available, set efficiency for solar PV
    if efficiency >= 0:
        input_values['supply']['solar_pv']['flh_of_solar_pv_solar_radiation'] = efficiency


def green_gas(share):
    # Set share of green gas in gas network
    if share >= 0:
        input_values['green_gas']['green_gas_total_share'] = share
