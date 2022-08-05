''' Tests for the subclass of EtengineService, AttachEsdlToEtengine'''
import pytest
# pylint: disable=import-error disable=redefined-outer-name
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult
from esdl.esdl_handler import StringURI

@pytest.fixture
def esdl_stream():
    ''' Returns a BytesIO stream containing an ESDL file'''
    return StringURI('tmp/anyname.esdl', text='bla').get_stream()

@pytest.fixture
def empty_esdl_stream():
    ''' Returns a BytesIO stream containing an empty ESDL file'''
    return StringURI('tmp/empty.esdl', text='').get_stream()

def test_instance(app):
    # We need the context to access the config variables
    with app.app_context():
        service = AttachEsdlToEtengine(12345)
        assert isinstance(service, EtengineService)

def test_call_with_valid_stream(app, esdl_stream, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/esdl_file',
        status_code=204
    )
    with app.app_context():
        response = AttachEsdlToEtengine.execute(12345, esdl_stream, 'default.esdl')
        assert isinstance(response, ServiceResult)
        assert response.successful

def test_call_with_empty_stream(app, empty_esdl_stream, requests_mock):
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/12345/esdl_file',
        status_code=422,
        json={'errors': 'This file does not contain ESDL'}
    )
    with app.app_context():
        response = AttachEsdlToEtengine.execute(12345, empty_esdl_stream, 'default.esdl')
        assert isinstance(response, ServiceResult)
        assert not response.successful
