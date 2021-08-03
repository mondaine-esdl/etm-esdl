''' Tests for the subclass of EtengineService, CreateScenario'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name
from app.services.create_scenario import CreateScenario

def test_call_with_valid_area(app, requests_mock):
    requests_mock.post(
        f'{app.config["ETENGINE_URL"]}/scenarios',
        json={'id': 12345},
        status_code=200
    )

    with app.app_context():
        result = CreateScenario.execute(None, {'area_code': 'valid_area', 'end_year': 2050})
        assert result.successful
        assert result.value == 12345

def test_call_with_invalid_area(app, requests_mock):
    requests_mock.post(
        f'{app.config["ETENGINE_URL"]}/scenarios',
        json={'errors': {'area_code': ['does not exist']}},
        status_code=422
    )

    with app.app_context():
        result = CreateScenario.execute(None, {'area_code': 'invalid_area', 'end_year': 2050})
        assert not result.successful
        assert result.errors['area_code'] == ['does not exist']
