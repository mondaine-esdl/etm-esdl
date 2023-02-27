''' Holds all custom exceptions '''

from config.errors import esdl_error_messages, etm_error_messages

class HumanizableException(Exception):
    '''
    Exception that should be easily caught and propagated by the API
    Humanises the error message
    '''
    status_code = 422
    ERROR_MESSAGES = {}

    def __init__(self, message, status_code=None, payload=None):
        Exception.__init__(self)
        self.message = message
        if status_code is not None:
            self.status_code = status_code
        self.payload = payload

    def to_dict(self):
        ''' Represent the error as a dict, to easily pass it on in a json response later'''
        exc = dict(self.payload or ())
        exc['message'] = self.message
        return exc

    @classmethod
    def with_humanized_message(cls, errors, *args, **kwargs):
        '''
        Create a new Error with a humanised message based on the given list of errors
        '''
        message = errors[0]
        for etm_message, readable in cls.ERROR_MESSAGES.items():
            for error in errors:
                if etm_message in error:
                    message = readable
                    break
        return cls(message, *args, **kwargs)

class EnergysystemParseError(HumanizableException):
    '''
    Exception that can be thrown when parsing an EnergySystem
    '''
    ERROR_MESSAGES = esdl_error_messages

class ETMParseError(HumanizableException):
    '''
    Exception that can be raised based on ETE calls not being successful or
    returning falsey data
    '''
    ERROR_MESSAGES = etm_error_messages

class FilterValidationError(HumanizableException):
    '''Exception that is raised trying to filter and validate asset types'''
    pass
