'''
Tests for the export esdl api
'''
# pylint: disable=redefined-outer-name disable=missing-function-docstring
import pytest

API_URL = '/api/v1/export_esdl/'
ETM_SCENARIO_ID = 123456

@pytest.fixture
def energy_system_hengelo():
    '''String version of the valid Hengelo fixture'''
    with open('tests/fixtures/valid_Hengelo_with_kpis.esdl') as file:
        esdl_string = file.read()
    return esdl_string

def test_import_esdl_with_energy_system_param(client, energy_system_hengelo):
    """Make sure import api responds correctly with a given energy_system"""
    # can only do this when the update_esdl function is refactored

    # response = client.post(
    #     API_URL, data={'energy_system': energy_system_hengelo,
    #     'session_id': ETM_SCENARIO_ID}
    # )
    # assert response.status_code == 200
