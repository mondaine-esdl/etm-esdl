'''
Tests for the import esdl api
'''

def test_import_esdl_with_invalid_params(client):
    """Make sure import api responds correctly to invalid parameters"""

    response_no_params = client.post('/api/v1/create_scenario/', data={})
    assert response_no_params.status_code == 400
