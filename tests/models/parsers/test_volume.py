''' Tests for the CHP parser '''

# from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.volume import VolumeParser
from app.utils.esdl import full_load_hours

from config.conversions.assets import demand


@pytest.fixture
def energy_system_handler_with_heating_demand():
    '''ESH based on the hic 2021 description, which contains heating demand'''
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_without_heating_demand():
    '''ESH based on the valid Hengelo ESDL'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_with_heating_demand_present(energy_system_handler_with_heating_demand):
    heating_demand_props = demand['HeatingDemand']

    parser = VolumeParser(
        energy_system_handler_with_heating_demand,
        heating_demand_props['REF'],
        asset_type='HeatingDemand',
        subtype='REF'
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[heating_demand_props['REF'][0]['input']] >= 27000000
