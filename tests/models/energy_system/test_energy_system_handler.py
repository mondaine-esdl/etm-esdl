'''
Tests for EnergySystemHandler
Shoul be expanded!!
'''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system.energy_system_handler import EnergySystemHandler

@pytest.fixture
def esdl_string():
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        data = file.read()
    return data

def test_from_string_with_valid_esdl(esdl_string):
    esh = EnergySystemHandler.from_string(esdl_string)

    assert isinstance(esh, EnergySystemHandler)


@pytest.fixture
def hic_handler():
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        data = file.read()
    return EnergySystemHandler.from_string(data)


def test_get_all_instances_of_type_and_sector(hic_handler):
    generator = hic_handler.get_all_instances_of_type_and_sector('GasHeater', 'REF')
    as_list = list(generator)

    assert as_list
    assert len(as_list) >= 20

def test_has_assets_of_type(hic_handler):
    assert not hic_handler.has_assets_of_type('HConnection')

    assert hic_handler.has_assets_of_type('HeatingDemand')
