''' Tests for the subclass of EtengineService, SetScenarioSliders'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult


def mock_response(app, requests_mock, status_code=200, errors={}):
    ''' Mocks a request to ETEngine '''
    requests_mock.put(
        f'{app.config["ETENGINE"]["beta"]}/scenarios/12345',
        json=errors,
        status_code=status_code
    )

def test_instance(app):
    # We need the context to access the config variables
    with app.app_context():
        service = SetScenarioSliders('beta', 12345)
        assert isinstance(service, EtengineService)


def test_call_with_valid_sliders_and_values(app, requests_mock):
    sliders = {'valid_key': 12.3}
    mock_response(app, requests_mock)

    with app.app_context():
        result = SetScenarioSliders.execute('beta', 12345, sliders)
        assert isinstance(result, ServiceResult)
        assert result.successful

def test_call_with_valid_sliders_and_invalid_values(app, requests_mock):
    sliders = {'valid_key': -1}
    mock_response(app, requests_mock, 422, errors={'errors': ['valid_key must be more than 0']})

    with app.app_context():
        result = SetScenarioSliders.execute('beta', 12345, sliders)
        assert isinstance(result, ServiceResult)
        assert result.failure
        assert 'valid_key must be more than 0' in result.errors

def test_call_with_one_invalid_slider(app, requests_mock):
    sliders = {'invalid_key': 12.3, 'valid_key': 45.6}
    mock_response(app, requests_mock, 422, errors={'errors': ['invalid_key is invalid']})

    with app.app_context():
        result = SetScenarioSliders.execute('beta', 12345, sliders)
        assert isinstance(result, ServiceResult)
        assert result.failure
        assert 'invalid_key is invalid' in result.errors

def test_call_with_only_invalid_sliders(app, requests_mock):
    sliders = {'invalid_key': 12.3}
    mock_response(app, requests_mock, 422, errors={'errors': ['invalid_key is invalid']})

    with app.app_context():
        result = SetScenarioSliders.execute('beta', 12345, sliders)
        assert isinstance(result, ServiceResult)
        assert result.failure
        assert 'invalid_key is invalid' in result.errors
