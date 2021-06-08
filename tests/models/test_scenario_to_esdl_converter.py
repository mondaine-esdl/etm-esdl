# what happens if scenario id does not exist?
# if I throw in an energysystem do i get one out that is different
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring

from unittest.mock import MagicMock
import pytest

from app.models.scenario_to_esdl_converter import update_esdl
from app.models.energy_system import EnergySystemHandler

# To mock their update methods
from app.models.kpi_handler import KPIHandler
from app.models.parsers.supply import SupplyParser

@pytest.fixture
def energy_system_handler():
    '''String version of the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo_with_kpis.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_update_esdl(energy_system_handler):
    KPIHandler.update = MagicMock(return_value=None)
    SupplyParser.update = MagicMock(return_value=None)

    esh = update_esdl(energy_system_handler, 123456)
    assert esh
