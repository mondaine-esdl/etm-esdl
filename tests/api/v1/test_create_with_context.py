''' cool '''
# pylint: disable=redefined-outer-name disable=missing-function-docstring disable=import-error
import re
import pytest
from app.api.v1.create_with_context import cache

API_URL = '/api/v1/create_with_context/'

@pytest.fixture
def energy_system_hengelo():
    '''String version of the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo_with_kpis.esdl') as file:
        esdl_string = file.read()
    return esdl_string

def test_start_situation(client, energy_system_hengelo):
    """Test caching of the start situation"""
    data = {
            'energy_system_start_situation': energy_system_hengelo,
            'energy_system_end_situation': energy_system_hengelo
        }

    esdl_id = re.search(r'(?<=id\=\")\w+(-\w+)+', energy_system_hengelo.split('\n', 2)[1]).group(0)

    client.post(API_URL, data=data)
    assert cache.get(esdl_id) is not None
