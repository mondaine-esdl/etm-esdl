''' Tests for the CHP parser '''

# from collections import defaultdict
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.volume import VolumeParser

@pytest.fixture
def energy_system_handler_without_heating_demand():
    '''ESH based on the valid Hengelo ESDL'''
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.mark.parametrize(
    'esdl_file_name, heating_demand_expected',
    [('2021_hic_description', 27), ('2050_hic_description_fake', 27)]#26)]
)
def test_parse_with_heating_demand_present(energy_system_handler, heating_demand_expected, helpers):
    heating_demand_prop = helpers.get_first_config_for_asset_type('HeatingDemand')

    parser = VolumeParser(
        energy_system_handler,
        heating_demand_prop
    )

    parser.parse()
    result = parser.get_parsed_inputs()

    assert result[heating_demand_prop['input']] >= heating_demand_expected
