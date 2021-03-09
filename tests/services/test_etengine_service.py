'''
Tests for the basic etengine connection
'''

import requests
# pylint: disable=import-error
from app.services.etengine_service import EtengineService

def test_environment(app):
    # we need the context to access the config variables
    with app.app_context():
        service = EtengineService('pro', 12345)
        assert isinstance(service.session, requests.Session)
        assert service.scenario_id == 12345
