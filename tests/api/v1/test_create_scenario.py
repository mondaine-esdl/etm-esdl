'''
Tests for the import esdl api
'''

API_URL = '/api/v1/create_scenario/'

def test_import_esdl_with_invalid_params(client):
    """Make sure import api responds correctly to invalid parameters"""

    response_no_params = client.post(API_URL, data={})
    assert response_no_params.status_code == 400

def test_get_responds_wit_405(client):
    '''Check if unavailable method is caught'''
    response = client.get(API_URL)
    assert response.status_code == 405
