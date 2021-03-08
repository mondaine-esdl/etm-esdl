''' Contains ServiceResult, to be used by all services'''

class ServiceResult():
    '''
    Used as an object returned by services, holds values and errors
    '''
    def __init__(self, successful=True, errors=None, value=None):
        self.errors = errors
        self.value = value
        self.successful = successful

    @classmethod
    def failure(cls, errors=None):
        ''' Creates a new (success=False) instance, containing the errors (list-like)'''
        return cls(successful=False, errors=errors)

    @classmethod
    def success(cls, value=None):
        '''Creates a successfull ServiceResult with value as value'''
        return cls(value=value)
