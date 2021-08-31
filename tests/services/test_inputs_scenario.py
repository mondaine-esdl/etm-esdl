''' Tests for the subclass of EtengineService, InputsScenario'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.services.inputs_scenario import InputsScenario
from app.services.etengine_service import EtengineService

def test_instance(app):
    # We need the context to access the config variables
    with app.app_context():
        service = InputsScenario(12345)
        assert isinstance(service, EtengineService)


def test_call_with_valid_inputs(app, requests_mock):
    inputs = ['input1', 'input2']

    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/inputs/{",".join(inputs)}',
        json=[
            {
                "min":0.0,
                "max":60680.50675542846,
                "default":3167.0,
                "user":3167.0,
                "step":1.0,
                "code":inputs[0],
                "unit":"MW"
            },
            {
                "min":0.0,
                "max":28860.24101782573,
                "default":0.521,
                "user":0.521,
                "step":1.0,
                "code":inputs[1],
                "unit":"MW"
            }
        ],
        status_code=200
    )

    with app.app_context():
        result = InputsScenario.execute(12345, *inputs)
        assert result.successful
        assert len(result.value) == 2
        # TODO: deze aanpassen Nora!
        assert all([key['code'] in inputs for key in result.value])


def test_call_with_invalid_input(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/inputs/input1',
        json={
            'errors': ['Unkown input: input1']
        },
        status_code=422
    )
    with app.app_context():
        service = InputsScenario(12345)
        result = service('input1')
        assert not result.successful
        assert 'Unkown input: input1' in result.errors


def test_with_non_existing_scenario_id(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/inputs/input1',
        json={
            'errors': ['Scenario not found']
        },
        status_code=404
    )
    with app.app_context():
        service = InputsScenario(12345)
        result = service('input1')
        assert not result.successful
        assert 'Scenario not found' in result.errors

def test_call_with_etengine_failing(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/inputs/input1',
        status_code=500
    )

    with app.app_context():
        service = InputsScenario(12345)
        result = service('input1')
        assert not result.successful
        assert 'ETEngine returned a 500' in  result.errors
