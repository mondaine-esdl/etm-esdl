'''
Runs during test collection. You can also supply fixtures here that should be loaded
before each test
'''
from os import sys, path
import pytest
sys.path.append(path.dirname(path.dirname(path.abspath(__file__))))
# pylint: disable=wrong-import-position, disable=import-error, disable=redefined-outer-name
from app import create_app

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
