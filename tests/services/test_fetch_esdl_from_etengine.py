''' Tests for the subclass of EtengineService, FetchEsdlFromEtengine'''

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.services.fetch_esdl_from_etengine import FetchEsdlFromEtengine
from app.services.etengine_service import EtengineService

def test_instance(app):
    # We need the context to access the config variables
    with app.app_context():
        service = FetchEsdlFromEtengine(12345)
        assert isinstance(service, EtengineService)


def test_call_with_a_scenario_that_contains_an_esdl(app, requests_mock):
    requests_mock.get(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/esdl_file?download=true',
        status_code=200,
        json= {'file': 'a_file'}
    )

    with app.app_context():
        result = FetchEsdlFromEtengine.execute(12345)
        assert result.successful
        assert result.value == 'a_file'

def test_call_with_a_scenario_that_has_no_esdl_attached(app, requests_mock):
    requests_mock.get(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/esdl_file?download=true',
        status_code=200,
        json= {}
    )

    with app.app_context():
        result = FetchEsdlFromEtengine.execute(12345)
        assert not result.successful
        assert 'No ESDL file found' in result.errors
