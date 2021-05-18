'''
Tests for EnergySystemHandler
Shoul be expanded!!
'''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler

@pytest.fixture
def esdl_string():
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        data = file.read()
    return data

def test_from_string_with_valid_esdl(esdl_string):
    esh = EnergySystemHandler.from_string(esdl_string)
    print(esdl_string)
    assert isinstance(esh, EnergySystemHandler)
