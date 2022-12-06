'''
Runs during test collection. You can also supply fixtures here that should be loaded
before each test
'''
from os import sys, path
import pytest
sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))
# pylint: disable=wrong-import-position, disable=import-error, disable=redefined-outer-name
from app import create_app
from app.models.energy_system import EnergySystemHandler
from app.models.conversion_assets import assets


@pytest.fixture
def app():
    '''Fixture for the application'''
    app = create_app({
        'TESTING': True
    })
    yield app

@pytest.fixture
def client(app):
    '''Fixture for the client'''
    return app.test_client()


@pytest.fixture
def energy_system_handler(esdl_file_name):
    '''ESH based on a valid ESDL'''
    with open(f'tests/fixtures/{esdl_file_name}.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)


class Helpers:
    '''Put all helper functions that should be globally available here'''
    @staticmethod
    def get_configs_for_asset_type(asset_type):
        '''Returns a generator full of config asset with given asset type e.g. GasHeater'''
        return (asset for asset in assets.collection if asset['asset'] == asset_type)

    @staticmethod
    def get_first_config_for_asset_type(asset_type):
        '''Returns the first found asset of asset_type for the config'''
        try:
            return next(Helpers.get_configs_for_asset_type(asset_type))
        except StopIteration as exc:
            raise AttributeError(f'No assets found for {asset_type} in the config') from exc

    @staticmethod
    def get_config_for(asset_type, parser):
        '''Returns a the first config asset with given asset type e.g. GasHeater and parser type'''
        return next(
            asset for asset in assets.collection
            if asset['asset'] == asset_type and asset['parser'] == parser
        )

@pytest.fixture
def helpers():
    '''Namespace the helpers'''
    return Helpers
