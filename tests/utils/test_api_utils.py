''' Tests for API utils'''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=undefined-variable
import pytest

from app.utils.api_utils import fail_with
from app.utils.exceptions import ETMParseError
from app.services.service_result import ServiceResult


def test_fail_with_with_429_from_engine():
    result = ServiceResult.failure(['ETEngine returned a 429'])

    with pytest.raises(ETMParseError) as excinfo:
        fail_with(result)

    assert excinfo.value.status_code == 429
