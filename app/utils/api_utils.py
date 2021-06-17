''' Utility methods for the api '''
from app.utils.exceptions import ETMParseError

def fail_with(result):
    '''
    Raises an ETMParseError based on the results (ServiceResult) errors
    '''
    if not len(result.errors) > 0:
        raise ETMParseError('Something went wrong')

    if isinstance(result.errors, list):
        raise ETMParseError.with_humanized_message(result.errors)

    message = ', '.join([f"{key} {', '.join(value)}" for key, value in result.errors.items()])
    raise ETMParseError(message)
