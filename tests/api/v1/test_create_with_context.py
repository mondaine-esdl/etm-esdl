''' cool '''
# pylint: disable=redefined-outer-name disable=missing-function-docstring disable=import-error
import re
import pytest
from app.api.v1.create_with_context import cache

API_URL = '/api/v1/create_with_context/'

@pytest.fixture
def energy_system_string(esdl_file_name):
    '''String version of the valid Hengelo fixture'''
    with open(f'tests/fixtures/{esdl_file_name}.esdl') as file:
        esdl_string = file.read()
    return esdl_string


@pytest.mark.parametrize(
    'esdl_file_name',
    ['pand_huidig', 'pand_scenario', 'valid_Hengelo_with_kpis']
)
def test_start_situation(client, energy_system_string):
    """Test caching of the start situation"""
    data = {
            'energy_system_start_situation': energy_system_string,
            'energy_system_end_situation': energy_system_string
        }

    esdl_id = re.search(r'(?<=id\=\")\w+(-\w+)+', energy_system_string.split('\n', 2)[1]).group(0)

    client.post(API_URL, data=data)
    assert cache.get(esdl_id) is not None


# TODO: test with scenario id

# TODO: test without scenario id

@pytest.mark.parametrize(
    'esdl_file_name',
    ['valid_Hengelo_with_kpis']
)
def test_with_missing_situation(client, energy_system_string):
    # Only start situation
    data = {
        'energy_system_start_situation': energy_system_string
    }
    resp = client.post(API_URL, data=data)

    assert resp.status_code == 400

    # Only end situation
    data = {
        'energy_system_end_situation': energy_system_string
    }
    resp = client.post(API_URL, data=data)

    assert resp.status_code == 400
