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
    DEBUG = False

class DevelopmentConfig(Config):
    '''Sets debug to true'''
    DEBUG = True

class TestingConfig(Config):
    '''Sets testing to true'''
    TESTING = True
