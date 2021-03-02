import sys

import webbrowser

import urllib.parse

import app.constants.areas as areas
import app.constants.assets as assets
import app.constants.key_figures as key_figures
import app.constants.kpis as kpis

from app.constants.q_and_u import quantities

from app.constants.env import base_urls
from app.constants.inputs import input_values

from app.helpers.balancer import Balancer
from app.helpers.energy_system_handler import EnergySystemHandler
from app.helpers.ETM_API import ETM_API, SessionWithUrlBase
from app.helpers.exceptions import EnergysystemParseError
from app.helpers.rooftop_pv import RooftopPV
from app.helpers.supply import Supply

from app.helpers.StringURI import StringURI

from app.helpers.MondaineHub import MondaineHub
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


def update_kpis(energy_system, etm):
    """
    TODO
    """

    for kpi in energy_system.es.instance[0].area.KPIs.kpi:
        prop = kpis.gqueries[kpi.id]

        list_of_gqueries = [gquery['gquery'] for gquery in prop['gqueries']]
        metrics = etm.get_current_metrics(list_of_gqueries)

        if prop['esdl_type'] == 'DistributionKPI':
            for it in kpi.distribution.stringItem:
                kpi.distribution.stringItem.remove(it)

            for gquery in prop['gqueries']:
                val = metrics[gquery['gquery']]['future'] * prop['factor']

                if val != 0:
                    kpi.distribution.stringItem.append(energy_system.esdl.StringItem(
                        label=gquery['label'],
                        value=val))

        else:
            kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']


def add_kpis(energy_system, etm):
    """
    TODO
    """
    energy_system.add_kpis()

    for kpi_id, prop in kpis.gqueries.items():
        list_of_gqueries = [gquery['gquery'] for gquery in prop['gqueries']]
        metrics = etm.get_current_metrics(list_of_gqueries)

        kpi = energy_system.create_kpi(
            prop['esdl_type'],
            kpi_id,
            prop['name'],
            energy_system.get_by_id_slow(prop['q_and_u']))

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

        print(f'Adding KPI of type: {type(kpi)}')
        energy_system.add_kpi(kpi)


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

    # Parse supply assets and calculate the new input values
    for asset_type, properties in assets.supply.items():
        if asset_type == 'RooftopPV':
            RooftopPV(energy_system, properties).call()
        else:
            Supply(energy_system, asset_type, properties).call(overwrite=True)

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


def add_kpis_to_esdl(energy_system, environment, scenario_id):
    """
    After adding the KPI's to the EnergySystem, it's no longer able to be
    converted into either a file or an esdl string
    """
    etm = start_etm_session(environment, scenario_id)

    # Add quantity and units to EnergySystemInformation
    add_quantity_and_units(energy_system)

    # Add (empty) KPIs and targets and update KPIs based on ETM metrics
    add_kpis(energy_system, etm)

    # Just for testing:
    f = open('data/output/test_import_1.esdl', 'a')
    f.write(energy_system.get_as_string())
    f.close()


def update_esdl(energy_system, environment, scenario_id):
    """
    TODO
    """
    etm = start_etm_session(environment, scenario_id)

    # Update KPIs
    update_kpis(energy_system, etm)

    # Update capacities of wind turbines and possibly add measures
    for asset_type in ['WindTurbine']:
        Supply(energy_system, asset_type, assets.supply[asset_type]).update(etm)

    # Just for testing:
    f = open('data/output/test.esdl', 'a')
    f.write(energy_system.get_as_string())
    f.close()

    return energy_system

def setup_esh_from_energy_system(energy_system):
    esh = EnergySystemHandler()
    try:
        esdl_string = urllib.parse.unquote(energy_system)
        esh.load_from_string(esdl_string)
        return esh
    except Exception as e:
        return 'could not load ESDL: '+ str(e), 404

def setup_esh_from_scenario(environment, scenario_id):
    esh = EnergySystemHandler()
    # fetch
    etm = start_etm_session(environment, scenario_id)
    esh.load_from_string(etm.fetch_energy_system())

    return esh
