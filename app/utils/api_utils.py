''' Utility methods for the api '''
from app.utils.exceptions import ETMParseError

def fail_with(result):
    '''
    Raises an ETMParseError based on the results (ServiceResult) errors
    '''
    if not len(result.errors) > 0:
        raise ETMParseError('Something went wrong')

    if result.errors[0] == 'ETEngine returned a 429' or result.errors[0] == 'Too many requests':
        raise ETMParseError.with_humanized_message('too_many_requests', status_code=429)

    if isinstance(result.errors, list):
        raise ETMParseError.with_humanized_message(result.errors)

    message = ', '.join([f"{key} {', '.join(value)}" for key, value in result.errors.items()])
    raise ETMParseError(message)
