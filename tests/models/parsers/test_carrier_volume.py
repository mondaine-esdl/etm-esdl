''' Tests for the CarrierVolumeParser '''

# from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.carrier_volume import CarrierVolumeParser

from config.conversions.assets import supply


@pytest.fixture
def energy_system_handler_with_chem_ref_gas_heaters():
    '''ESH based on the hic 2021 description, which contains heating demand'''
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def energy_system_handler_without_chem_ref_gas_heaters():
    '''ESH based on the valid Hengelo ESDL'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_parse_with_chem_ref_gas_heaters_present(energy_system_handler_with_chem_ref_gas_heaters):
    chem_ref_gas_heaters_props = supply['GasHeater']

    parser = CarrierVolumeParser(
        energy_system_handler_with_chem_ref_gas_heaters,
        chem_ref_gas_heaters_props[0],
        asset_type='GasHeater'
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[chem_ref_gas_heaters_props[0]['input']] >= 4200000

def test_parse_with_no_chem_ref_present(energy_system_handler_without_chem_ref_gas_heaters):
    chem_ref_gas_heaters_props = supply['GasHeater']

    parser = CarrierVolumeParser(
        energy_system_handler_without_chem_ref_gas_heaters,
        chem_ref_gas_heaters_props[0],
        asset_type='GasHeater'
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[chem_ref_gas_heaters_props[0]['input']] == 0.0
