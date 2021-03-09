''' Tests for ServiceResult '''

# pylint: disable=import-error
from app.services.service_result import ServiceResult

def test_successful_result_without_value():
    result = ServiceResult.success()
    assert result.successful

def test_successful_result_with_value():
    result = ServiceResult.success('We did it!')
    assert result.successful
    assert result.value == 'We did it!'

def test_failure_without_errors():
    result = ServiceResult.failure()
    assert not result.successful

def test_failure_with_errors():
    result = ServiceResult.failure(errors=['Something went wrong', 'Oh no'])
    assert not result.successful
    assert len(result.errors) == 2
    assert 'Oh no' in result.errors
