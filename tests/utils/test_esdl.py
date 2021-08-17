''' Tests for the helpers'''

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=undefined-variable
import pytest
from app.models.energy_system import EnergySystemHandler
from app.utils.esdl import full_load_hours

@pytest.fixture
def hic_handler():
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        data = file.read()
    return EnergySystemHandler.from_string(data)

def asset_has_flh_connected(asset):
    for port in asset.port:
        for connection in port.connectedTo:
            if hasattr(connection.energyasset, 'fullLoadHours'):
                return True

    return False


def test_full_load_hours_with_asset_with_full_load_hours(hic_handler):
    asset = next(hic_handler.get_all_instances_of_type('GasHeater'))

    flh = full_load_hours(asset)

    assert flh > 0

def test_full_load_hours_with_asset_with_ports(hic_handler):
    for asset in hic_handler.get_all_instances_of_type('HeatingDemand'):
        flh = full_load_hours(asset)
        if asset_has_flh_connected(asset):
            assert flh > 0
        else:
            print(asset.id)
            assert flh == 0
