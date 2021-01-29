import sys

import webbrowser

import config.areas as areas
import config.assets as assets
import config.key_figures as key_figures
import config.kpis as kpis

from config.q_and_u import quantities

from config.env import base_urls
from config.inputs import input_values

from helpers.balancer import Balancer
from helpers.energy_system_handler import EnergySystemHandler
from helpers.ETM_API import ETM_API, SessionWithUrlBase
from helpers.exceptions import EnergysystemParseError
from helpers.rooftop_pv import RooftopPV

from helpers.MondaineHub import MondaineHub
mh = MondaineHub('roos.dekok@quintel.com')

def start_etm_session(environment, scenario_id=None):
    """
    Start an ETM API session based on the given environment (beta or pro)
    """
    session = SessionWithUrlBase(base_urls[environment])

    if scenario_id:
        return ETM_API(session, scenario_id)

    return ETM_API(session)


def add_quantity_and_units(energy_system):
    """
    Energy System information can be used to globally define the quantity and
    units of this system, instead of defining them manually per KPI in each
    area: this fosters reuse (but is not necessary)
    """
    q_and_u = energy_system.get_quantity_and_units()

    for quantity, prop in quantities.items():
        if energy_system.get_by_id(quantity) is None:
            unit = energy_system.esdl.QuantityAndUnitType(
                id=quantity,
                physicalQuantity=prop['physicalQuantity'],
                multiplier=prop['multiplier'],
                unit=prop['unit'],
                description=prop['description'])
            q_and_u.quantityAndUnit.append(unit)


def add_kpis(energy_system, etm):
    """
    TODO
    """
    energy_system.add_kpis()

    for kpi_id, prop in kpis.gqueries.items():
        list_of_gqueries = [gquery['gquery'] for gquery in prop['gqueries']]
        metrics = etm.get_current_metrics(list_of_gqueries)

        kpi = getattr(energy_system.esdl, prop['esdl_type'])(
            id=kpi_id, # alternative: energy_system.generate_uuid()
            name=prop['name'],
            quantityAndUnit=energy_system.get_by_id_slow(prop['q_and_u']))

        if prop['esdl_type'] == 'DistributionKPI':
            kpi.distribution = energy_system.esdl.StringLabelDistribution()

            for gquery in prop['gqueries']:
                val = metrics[gquery['gquery']]['future'] * prop['factor']

                if val != 0:
                    kpi.distribution.stringItem.append(energy_system.esdl.StringItem(
                        label=gquery['label'],
                        value=val))

        else:
            kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']

        energy_system.add_kpi(kpi)


def parse_supply_assets(energy_system, area, asset_type, properties):
    """
    Parse all ESDL supply assets of the given asset type
    """
    total_power = 0

    try:
        list_of_assets = energy_system.get_assets_of_type(
            area,
            getattr(energy_system.esdl, asset_type))

        for asset in list_of_assets:
            for prop in properties:
                esdl_value = getattr(asset, prop['attribute'])

                etm_value = esdl_value * prop['factor']

                # Initialise the input value if it hasn't been touched yet
                if not input_values[prop['input']]['value']:
                    input_values[prop['input']]['value'] = 0

                # Keep track of the installed capacity to determine the average FLH
                if prop['attribute'] == 'power':
                    current_power = etm_value
                    total_power += etm_value

                elif prop['attribute'] == 'fullLoadHours':
                    prev_etm_value = input_values[prop['input']]['value']
                    diff = etm_value - prev_etm_value
                    etm_value = diff * current_power / total_power

                # Update ETM input value
                input_values[prop['input']]['value'] += etm_value

    except AttributeError as att:
        raise EnergysystemParseError(
            f'We currently do not support attribute {str(att).split()[-1]}'
        ) from att


def determine_number_of_buildings(energy_system):
    """
    Determine the number of buildings per building type
    """
    number_of_buildings = {
        'RESIDENTIAL': 0,
        'UTILITY': 0
    }

    list_of_assets = energy_system.get_all_instances_of_type(energy_system.esdl.AggregatedBuilding)

    for asset in list_of_assets:
        if asset.numberOfBuildings:
            number = asset.numberOfBuildings

            if asset.buildingTypeDistribution:
                building_type = str(asset.buildingTypeDistribution.
                                    buildingTypePercentage[0].buildingType)

                number_of_buildings[building_type] += number

                input_values['households_number_of_residences']['value'] = (
                    number_of_buildings['RESIDENTIAL'])

    # print(f'number_of_buildings = {number_of_buildings}')

    return number_of_buildings


def prop_heat_technology(energy_system, aggregated_building):
    """
    TODO
    """
    # Parse heating technologies and calculate the new input values
    for technology, properties in assets.heating_technologies.items():
        # Get assets of specific type, filtered by the attribute-value combination
        for prop in properties:
            list_of_assets = energy_system.get_assets_of_type_and_attribute_value(
                aggregated_building,
                getattr(energy_system.esdl, technology),
                prop['attribute'],
                prop['value'])

            if list_of_assets: return prop


def parse_heating_technology(
        energy_system,
        aggregated_building,
        building_type,
        number_of_buildings,
        total_number_of_buildings):
    """
    TODO
    """
    # First check if there's an H-connection
    heat_network_connection = energy_system.get_assets_of_type(
        aggregated_building,
        getattr(energy_system.esdl, 'HConnection')
    )

    # Also check if there's a (hybrid) heatpump
    heat_pump = energy_system.get_assets_of_type(
        aggregated_building,
        getattr(energy_system.esdl, 'HeatPump')
    )

    # Lastly, check for a gas heater
    gas_heater = energy_system.get_assets_of_type(
        aggregated_building,
        getattr(energy_system.esdl, 'GasHeater')
    )

    # If there's no heat network connection, determine other technologies
    if heat_network_connection:
        prop = assets.heating_technologies['HConnection'][0]
    # If there's no heat network and no heat pump, check for a gas heater
    elif gas_heater and not heat_pump:
        prop = assets.heating_technologies['GasHeater'][0]
    # Else if there's a (hybrid) heat pump
    else:
        prop = prop_heat_technology(energy_system, aggregated_building)

    etm_value = number_of_buildings / total_number_of_buildings[building_type] * 100.

    if not input_values[prop['inputs'][building_type]]['value']:
        input_values[prop['inputs'][building_type]]['value'] = 0

    if prop['aggregation'] == 'sum':
        input_values[prop['inputs'][building_type]]['value'] += etm_value


def parse_distribution(
        aggregated_building,
        distribution_type):
    """
    TODO
    """
    prop = assets.distributions[distribution_type]

    distribution = {}

    esdl_distribution = getattr(aggregated_building, distribution_type)

    for category in getattr(esdl_distribution, prop['category']):
        attribute_value = getattr(category, prop['attribute'])
        distribution[attribute_value] = category.percentage

    return distribution, prop


def parse_energy_labels(
        aggregated_building,
        building_type,
        number_of_buildings,
        total_number_of_buildings):
    """
    TODO
    """
    energy_labels, prop = parse_distribution(
        aggregated_building,
        'energyLabelDistribution')

    etm_value = 0

    for label, perc in energy_labels.items():
        share_of_buildings = number_of_buildings / total_number_of_buildings[building_type]
        etm_value += (perc / 100. * share_of_buildings *
                      key_figures.energyLabel[str(label)][building_type])

    for input_value in prop['inputs'][building_type]:
        if not input_values[input_value]['value']:
            input_values[input_value]['value'] = 0

        input_values[input_value]['value'] += etm_value


def parse_aggregated_buiding(energy_system, area, total_number_of_buildings):
    """
    TODO
    """
    try:
        aggregated_buildings = energy_system.get_assets_of_type(
            area,
            energy_system.esdl.AggregatedBuilding)

        for aggregated_building in aggregated_buildings:
            number_of_buildings = aggregated_building.numberOfBuildings
            building_type = str(aggregated_building.buildingTypeDistribution.
                                buildingTypePercentage[0].buildingType)

            parse_heating_technology(
                energy_system,
                aggregated_building,
                building_type,
                number_of_buildings,
                total_number_of_buildings)

            # Parse distribution of energy labels
            parse_energy_labels(
                aggregated_building,
                building_type,
                number_of_buildings,
                total_number_of_buildings)

    except:
        pass


def translate_esdl_to_slider_settings(energy_system, environment):
    """
    TODO
    """
    # Reset input_values
    for input_name, value in input_values.items():
        value['value'] = None

    # Determine top level area
    top_area = energy_system.es.instance[0].area

    # Use the API to create a new (empty) ETM scenario for this specific region
    etm = start_etm_session(environment)

    etm.create_new_scenario(
        f'Mondaine - {energy_system.es.name}',
        areas.mapping[top_area.id],
        2050)

    number_of_buildings = determine_number_of_buildings(energy_system)

    # TODO: Merge two for loops below using a "for collection in
    # [assets, technologies]" kinda construction?

    # Parse supply assets and calculate the new input values
    for asset_type, properties in assets.supply.items():
        if asset_type == 'RooftopPV':
            val = RooftopPV(energy_system).call()
            for prop in properties:
                for key in prop['inputs'].values():
                    input_values[key]['value'] = val * prop['factor']

        else:
            # Parse supply assets in top area
            parse_supply_assets(energy_system, top_area, asset_type, properties)

            # Parse supply assets in sub areas
            for sub_area in top_area.area:
                parse_supply_assets(energy_system, sub_area, asset_type, properties)

    for sub_area in top_area.area:
        parse_aggregated_buiding(
            energy_system,
            sub_area,
            number_of_buildings)

    # Balance share groups
    balanced_input_values = Balancer(input_values).call()

    # Update the input value in the ETM scenario
    set_sliders = {}
    for input_name, input_value in balanced_input_values.items():
        # Also update sliders set to 0 by Balancer
        if not input_value['value'] is None:
            print(f"{input_name}: {input_value['value']}")
            set_sliders[input_name] = input_value['value']

    # Set all new sliders simultaneously
    response = etm.change_inputs(set_sliders)

    return etm, response


def translate_kpis_to_esdl(energy_system, environment, scenario_id):
    """
    TODO
    """
    etm = start_etm_session(environment, scenario_id)

    # Add quantity and units to EnergySystemInformation
    add_quantity_and_units(energy_system)

    # Add (empty) KPIs and targets and update KPIs based on ETM metrics
    add_kpis(energy_system, etm)

    return energy_system
