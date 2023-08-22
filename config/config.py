'''
Contains the configuration of the app
'''

class Config(object):
    '''Default config settings'''
    DEBUG = False
    TESTING = False

    # Point to the correct version of ETEngine
    ETENGINE_URL = 'https://engine.energytransitionmodel.com/api/v3'

    # Time in seconds before the cached values in GqueryCache are considered invalid
    GQUERY_RESULTS_CACHE_MAX_AGE_SECONDS = 30

class ProductionConfig(Config):
    ''' Use the defaults for production'''
    ETENGINE_URL = 'https://engine.energytransitionmodel.com/api/v3'

class StagingConfig(ProductionConfig):
    ''' Use the production defaults for staging'''
    ETENGINE_URL = 'https://beta-engine.energytransitionmodel.com/api/v3'

class DevelopmentConfig(Config):
    '''Sets debug to true'''
    DEBUG = True
    # You can uncomment the ETEngine url below to point to your local version instead of beta:
    # ETENGINE_URL = 'http://host.docker.internal:3000/api/v3'
    # You need host.docker.internal instead of localhost here when running the app in Docker.
    # Comment this beta url when using your local engine:
    ETENGINE_URL = 'https://beta-engine.energytransitionmodel.com/api/v3'

class TestingConfig(Config):
    '''Sets testing to true'''
    TESTING = True
    # This is also false in production - this allows us to check if the error handlers are
    # performing as they should
    PROPAGATE_EXCEPTIONS = False
