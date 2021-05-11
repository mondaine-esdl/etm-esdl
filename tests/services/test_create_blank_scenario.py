''' Tests for the subclass of EtengineService, CreateBlankScenario'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name
from app.services.create_blank_scenario import CreateBlankScenario

def test_call_with_valid_area(app, requests_mock):
    requests_mock.post(
        f'{app.config["ETENGINE"]["beta"]}/scenarios',
        json={'id': 12345},
        status_code=200
    )

    with app.app_context():
        result = CreateBlankScenario.execute('beta',0, 'valid_area', 2050)
        assert result.successful
        assert result.value == 12345

def test_call_with_invalid_area(app, requests_mock):
    requests_mock.post(
        f'{app.config["ETENGINE"]["beta"]}/scenarios',
        json={'errors': {'area_code': ['does not exist']}},
        status_code=422
    )

    with app.app_context():
        result = CreateBlankScenario.execute('beta',0, 'valid_area', 2050)
        assert not result.successful
        assert result.errors['area_code'] == ['does not exist']
