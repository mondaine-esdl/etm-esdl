"""
Tests for the profile handler, which adds or updates profiles to assets
"""
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
# from unittest.mock import MagicMock
import pytest

from esdl import esdl

from app.models.energy_system import EnergySystemHandler
from app.models.profile_handler import ProfileHandler


@pytest.fixture
def esh_without_mobility_demand():
    """
    Energy system based on the MMvIB macro case WITHOUT mobility demand assets
    """
    with open('tests/fixtures/mmvib_macro_without_demand.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def esh_with_mobility_demand():
    """
    Energy system based on the MMvIB macro case WITH mobility demand assets
    """
    with open('tests/fixtures/mmvib_macro.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


def test_add_range_to_pv(esh_with_mobility_demand):
    asset = next(esh_with_mobility_demand.get_all_instances_of_type_by_name('MobilityDemand'))

    handler = ProfileHandler(asset)

    val = 10.
    qu = esdl.QuantityAndUnitType(
                physicalQuantity="ENERGY",
                unit="JOULE")
    
    handler.update(val, qu)

    assert asset.port[0].profile[0].value == val