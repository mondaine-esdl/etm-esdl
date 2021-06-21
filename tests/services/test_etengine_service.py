'''
Tests for the basic etengine connection
'''

import requests
import pytest
# pylint: disable=import-error
from app.services.etengine_service import EtengineService

def test_environment(app):
    # we need the context to access the config variables
    with app.app_context():
        service = EtengineService(12345)
        assert isinstance(service.session, requests.Session)
        assert service.scenario_id == 12345

def test_execute(app):
    with app.app_context():
        with pytest.raises(NotImplementedError):
            EtengineService.execute(12345, ['some', 'args'])
