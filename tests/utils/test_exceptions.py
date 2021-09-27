'''Tests for the custom exceptions'''

# pylint: disable=import-error disable=missing-function-docstring
from app.utils.exceptions import EnergysystemParseError
from config.errors import etm_error_messages


def test_with_humanized_message_with_existing_key():
    errors = [list(etm_error_messages.keys())[0]]

    err = EnergysystemParseError.with_humanized_message(errors, 404)
    assert err.message == etm_error_messages[errors[0]]
    assert err.status_code == 404


def test_with_humanized_message_with_non_existing_key():
    err = EnergysystemParseError.with_humanized_message(['hi', 'you'])
    assert err.message == 'hi'
    assert err.status_code == 422
