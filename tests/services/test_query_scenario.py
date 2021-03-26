''' Tests for the subclass of EtengineService, QueryScenario'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name
from app.services.query_scenario import QueryScenario
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

def test_instance(app):
    # We need the context to access the config variables
    with app.app_context():
        service = QueryScenario('beta', 12345)
        assert isinstance(service, EtengineService)


def test_call_with_valid_queries(app, requests_mock):
    queries = ['query1', 'query2']

    requests_mock.put(
        f'{app.config["ETENGINE"]["beta"]}/scenarios/12345',
        json={
            'gqueries': {
                queries[0]: {'future': 1, 'present': 0.5},
                queries[1]: {'future': 0.5, 'present': 1}
            }
        },
        status_code=200
    )

    with app.app_context():
        service = QueryScenario('beta', 12345)
        result = service(queries)
        assert result.successful
        assert len(result.value) == 2
        assert all([key in queries for key in result.value.keys()])


def test_call_with_invalid_queries(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE"]["beta"]}/scenarios/12345',
        json={
            'errors': ['Unkown gquery: gquery1']
        },
        status_code=422
    )
    with app.app_context():
        service = QueryScenario('beta', 12345)
        result = service(['gquery1'])
        assert not result.successful
        assert 'Unkown gquery: gquery1' in result.errors


def test_with_non_existing_scenario_id(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE"]["beta"]}/scenarios/12345',
        json={
            'errors': ['Scenario not found']
        },
        status_code=404
    )
    with app.app_context():
        service = QueryScenario('beta', 12345)
        result = service('gquery1')
        assert not result.successful
        assert 'Scenario not found' in result.errors

def test_call_with_etengine_failing(app, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE"]["beta"]}/scenarios/12345',
        status_code=500
    )

    with app.app_context():
        service = QueryScenario('beta', 12345)
        result = service('gquery1')
        assert not result.successful
        assert 'ETEngine returned a 500' in  result.errors
