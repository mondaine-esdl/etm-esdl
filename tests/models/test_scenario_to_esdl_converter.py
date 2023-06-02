# what happens if scenario id does not exist?
# if I throw in an energysystem do i get one out that is different
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring

from unittest.mock import MagicMock, patch
import pytest

from app.models.scenario_to_esdl_converter import update_esdl
from app.models.energy_system import EnergySystemHandler
from app.models.asset_filter import FilterValidationError

# To mock their update methods
from app.models.kpi_handler import KPIHandler
from app.models.parsers import FlexibilityParser, MobilityDemandParser, VolatileParser, CostsParser

@pytest.fixture
def energy_system_handler():
    '''String version of the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo_with_kpis.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


@pytest.fixture
def mocking_parsers():
    """
    Currently only mocks CostsParser and MobilityDemandParser
    
    TODO: Beautify this
    """
    with patch("app.models.parsers.CostsParser.update", new=MagicMock(return_value=None)):
        with patch("app.models.parsers.MobilityDemandParser.update", new=MagicMock(return_value=None)):
            with patch("app.models.parsers.StorageParser.update", new=MagicMock(return_value=None)):
                yield

@pytest.mark.usefixtures("mocking_parsers")
def test_update_esdl(energy_system_handler):
    '''TODO: unmock this test!'''
    #  !! THIS TEST IS MOCKED !!
    KPIHandler.update = MagicMock(return_value=None)
    VolatileParser.update = MagicMock(return_value=None)
    FlexibilityParser.update = MagicMock(return_value=None)

    esh = update_esdl(energy_system_handler, 123456, None)

    assert esh

def test_update_esdl_with_filter(energy_system_handler):
    KPIHandler.update = MagicMock(return_value=None)
    VolatileParser.update = MagicMock(return_value=None)

    esh = update_esdl(energy_system_handler, 123456, None, filter=['PVPark'])
    assert esh

def test_update_esdl_with_falsey_filter(energy_system_handler):
    KPIHandler.update = MagicMock(return_value=None)
    VolatileParser.update = MagicMock(return_value=None)

    with pytest.raises(FilterValidationError):
        update_esdl(energy_system_handler, 123456, None, filter=['PVPark', 'Pirates'])
