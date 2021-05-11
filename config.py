'''
Contains the configuration of the app
'''

class Config(object):
    '''Default config settings'''
    DEBUG = False
    TESTING = False

    # Point to the correct version of ETEngine
    ETENGINE_URL = 'https://engine.energytransitionmodel.com/api/v3'

class ProductionConfig(Config):
    ''' Use the defaults for production'''
    ETENGINE_URL = 'https://engine.energytransitionmodel.com/api/v3'

class StagingConfig(ProductionConfig):
    ''' Use the production defaults for staging'''
    ETENGINE_URL = 'https://beta-engine.energytransitionmodel.com/api/v3'

class DevelopmentConfig(Config):
    '''Sets debug to true'''
    DEBUG = True
    # You can replace the ETEngine url here to point to your local version. Example:
    # ETENGINE_URL = 'http://host.docker.internal:3001/api/v3'
    # Where <PORT> should be 3000, 3001, etc. You need host.docker.internal instead of localhost
    # here when running the app in Docker.

class TestingConfig(Config):
    '''Sets testing to true'''
    TESTING = True
    # This is also false in production - this allows us to check if the error handlers are
    # performing as they should
    PROPAGATE_EXCEPTIONS = False
