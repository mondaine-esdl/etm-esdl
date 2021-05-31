''' Utility methods for the api '''
from app.helpers.exceptions import EnergysystemParseError

def fail_with(result):
    '''
    Raises an EnergySystemParseError based on the results errors
    '''
    if not len(result.errors) > 0:
        raise EnergysystemParseError('Something went wrong')

    if isinstance(result.errors, list):
        raise EnergysystemParseError.with_humanized_message(result.errors)

    message = ', '.join([f"{key} {', '.join(value)}" for key, value in result.errors.items()])
    raise EnergysystemParseError(message)
