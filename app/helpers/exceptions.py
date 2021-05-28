from config.errors import error_messages

class EnergysystemParseError(Exception):
    '''
    Copied from https://flask.palletsprojects.com/en/1.1.x/patterns/apierrors/
    '''
    status_code = 422

    def __init__(self, message, status_code=None, payload=None):
        Exception.__init__(self)
        self.message = message
        if status_code is not None:
            self.status_code = status_code
        self.payload = payload

    def to_dict(self):
        rv = dict(self.payload or ())
        rv['message'] = self.message
        return rv

    @classmethod
    def with_humanized_message(cls, errors, *args, **kwargs):
        '''
        Create a new Error with a humanised message based on the given list of errors
        '''
        message = errors[0]
        for etm_message, readable in error_messages.items():
            for error in errors:
                if etm_message in error:
                    message = readable
                    break
        return cls(message, *args, **kwargs)
