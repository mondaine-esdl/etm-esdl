''' Tests for the CarrierVolumeParser '''

# from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.carrier_volume import CarrierVolumeParser

@pytest.fixture
def energy_system_handler_without_chem_ref_gas_heaters():
    '''ESH based on the valid Hengelo ESDL'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.mark.parametrize(
    'esdl_file_name, chem_ref_gas_heaters_expected',
    [('2021_hic_description', 4200000), ('2050_hic_description_fake', 4200000)] #0.0)]
)
@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_parse_with_chem_ref_gas_heaters_present(
    energy_system_handler, chem_ref_gas_heaters_expected, helpers):
    chem_ref_gas_heaters_prop = helpers.get_config_for('GasHeater', 'carrier_volume')

    parser = CarrierVolumeParser(
        energy_system_handler,
        chem_ref_gas_heaters_prop
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[chem_ref_gas_heaters_prop['input']] >= chem_ref_gas_heaters_expected


def test_parse_with_no_chem_ref_present(
    energy_system_handler_without_chem_ref_gas_heaters, helpers):
    chem_ref_gas_heaters_prop = helpers.get_config_for('GasHeater', 'carrier_volume')

    parser = CarrierVolumeParser(
        energy_system_handler_without_chem_ref_gas_heaters,
        chem_ref_gas_heaters_prop
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[chem_ref_gas_heaters_prop['input']] == 0.0
