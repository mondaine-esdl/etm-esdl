'''
Contains the configuration of the app
'''

class Config(object):
    '''Default config settings'''
    DEBUG = False
    TESTING = False

    # Point to the correct versions of ETEngine
    ETENGINE = {
        'pro': 'https://engine.energytransitionmodel.com/api/v3',
        'beta': 'https://beta-engine.energytransitionmodel.com/api/v3'
    }

class ProductionConfig(Config):
    ''' Use the defaults for production'''

class StagingConfig(ProductionConfig):
    ''' Use the production defaults for staging'''

class DevelopmentConfig(Config):
    '''Sets debug to true'''
    DEBUG = True
    # You can replace the ETEngine urls here to point to your local version. Example:
    # ETENGINE = {
    #     'pro': 'http://host.docker.internal:<PORT>/api/v3',
    #     'beta': 'http://host.docker.internal:<PORT>/api/v3'
    # }
    # Where <PORT> should be 3000, 3001, etc. You need host.docker.internal instead of localhost
    # here when running the app in Docker.

class TestingConfig(Config):
    '''Sets testing to true'''
    TESTING = True
