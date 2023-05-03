'''tests for context module'''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import app.models.situation.context as context
from app.services.service_result import ServiceResult

@pytest.fixture
def happy_values():
    return {
        'input1': {
            "min":0.0,
            "max":60680.50675542846,
            "default":3167.0,
            "user":3167.0,
            "step":1.0,
            "code":'input1',
            "unit":"MW"
        },
        'input2': { # and one without a user value
            "min":0.0,
            "max":28860.24101782573,
            "default":0.521,
            "step":1.0,
            "code":'input2',
            "unit":"MW"
        }
    }

def mock_query_response(scenario_id, app, requests_mock, output):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}',
        json={'gqueries': output, 'scenario': {'end_year': 2050, 'area_code': 'nl'}},
        status_code=200
    )

def mock_inputs_response(scenario_id, app, requests_mock, output):
    requests_mock.get(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}/inputs',
        json=output,
        status_code=200
    )

def test_process(happy_values):
    inputs = ['input1', 'input2']
    happy_result = ServiceResult.success(happy_values)

    processed = context.process(happy_result)

    assert processed
    assert all((key in processed for key in inputs))
    assert processed[inputs[0]]['future'] == 3167.0
    assert processed[inputs[0]]['present'] == 3167.0

def test_process_with_only_one_input():
    happy_result = ServiceResult.success(
        {'happy_input':{
            "min":0.0,
            "max":60680.50675542846,
            "default":3167.0,
            "user":3167.0,
            "step":1.0,
            "code":'happy_input',
            "unit":"MW"
        }}
    )

    processed = context.process(happy_result)

    assert processed
    assert processed['happy_input']['future'] == 3167.0
    assert processed['happy_input']['present'] == 3167.0

def test_get_context_values_with_no_inputs_and_no_queries(app, requests_mock):
    mock_query_response(12345, app, requests_mock, {})
    with app.app_context():
        values = context.get_context_values(12345, [], [])

    assert 'area_code' in values
    assert 'end_year' in values
    assert len(values.keys()) == 2

def test_get_context_values_with_just_queries(app, requests_mock):
    scenario_id = 12345
    queries = ['query1', 'query2']

    mock_query_response(scenario_id, app, requests_mock,
        {query: {'future': 1, 'present': 0} for query in queries}
    )

    with app.app_context():
        values = context.get_context_values(scenario_id, [], queries)

    assert all((query in values for query in queries))

def test_get_context_values_with_just_inputs(app, requests_mock, happy_values):
    scenario_id = 12345
    inputs = ['input1', 'input2']

    mock_inputs_response(scenario_id, app, requests_mock, happy_values)
    mock_query_response(scenario_id, app, requests_mock, {})

    with app.app_context():
        values = context.get_context_values(scenario_id, inputs, [])

    assert all((input in values for input in inputs))

def test_get_context_values_with_both(app, requests_mock, happy_values):
    scenario_id = 12345
    queries = ['query1', 'query2']
    inputs = ['input1', 'input2']

    mock_inputs_response(scenario_id, app, requests_mock, happy_values)
    mock_query_response(scenario_id, app, requests_mock,
        {query: {'future': 1, 'present': 0} for query in queries}
    )

    with app.app_context():
        values = context.get_context_values(scenario_id, inputs, queries)

    assert all((input in values for input in inputs))
    assert all((query in values for query in queries))
