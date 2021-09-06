''' Tests for the power plant parser '''

from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.carrier_capacity import CarrierCapacityParser

@pytest.fixture
def energy_system_handler_without_power_plants():
    '''ESH based on valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def hic_2021():
    '''ESH based on a valid HIC ESDL with power plants'''
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def hic_2050():
    '''ESH based on a valid HIC ESDL with power plants'''
    with open('tests/fixtures/2050_hic_description_fake.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_without_power_plants(energy_system_handler_without_power_plants, helpers):
    for props in helpers.get_configs_for_asset_type('PowerPlant'):
        parser = CarrierCapacityParser(
            energy_system_handler_without_power_plants,
            props
        )

        parser.parse()

        # If no power plants are described in the ESDL, no inputs should be over 0
        assert all(val == 0.0 for val in parser.get_parsed_inputs().values())

@pytest.mark.parametrize(
    'esdl_file_name, network_gas_expected',
    [('2021_hic_description', 3167), ('2050_hic_description_fake', 3167)] # 129)]
)
def test_parse_with_power_plants(energy_system_handler, network_gas_expected, helpers):
    # Create logger
    inputs = defaultdict(float)

    # Parse all carriers
    for props in helpers.get_configs_for_asset_type('PowerPlant'):
        parser = CarrierCapacityParser(
            energy_system_handler,
            props,
            inputs=inputs
        )

        parser.parse()

    assert parser.get_parsed_inputs()
    assert 'capacity_of_energy_power_combined_cycle_network_gas' in parser.get_parsed_inputs()
    # There should be over 3000 MW of network gas present in the ESDL in 2021, and a little over 100 in 2050
    assert parser.get_parsed_inputs()['capacity_of_energy_power_combined_cycle_network_gas'] == network_gas_expected
