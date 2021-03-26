'''
Runs during test collection. You can also supply fixtures here that should be loaded
before each test
'''
from os import sys, path
import pytest
sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))
# pylint: disable=wrong-import-position, disable=import-error, disable=redefined-outer-name
from app import create_app

@pytest.fixture(scope='session', autouse=True)
def precondition():
    ''' Runs before tests, checks if preconditions are met'''
    ecore_resource = 'tmp/esdl/esdl.ecore'
    if not path.exists(ecore_resource):
        pytest.exit(
            'No ecore resource was found, please run "pipenv run fetch_esdl_ecore_resource" ' +
            'before running tests'
        )


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
