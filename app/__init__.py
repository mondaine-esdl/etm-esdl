'''
Initializes the app and sets up all the routes and caches
'''

import os

## App
from flask import Flask
from flask_caching import Cache
# from werkzeug.middleware.proxy_fix import ProxyFix
from config.config import *

## Sentry ##
import sentry_sdk
from sentry_sdk.integrations.flask import FlaskIntegration

# Setup the cache for the api
cache = Cache(config={'CACHE_TYPE': 'SimpleCache'})

def create_app(testing=False):
    '''
    Create and configure the app
    '''
    app = Flask(__name__)
    environment = app.config['ENV']

    ### CONFIG ###
    if testing or environment == 'test':
        app.config.from_object(TestingConfig())
    elif environment == 'production':
        app.config.from_object(ProductionConfig())
        # Set up Sentry
        sentry_sdk.init(os.environ.get('SENTRY_DSN'), integrations=[FlaskIntegration()])
    elif environment == 'staging':
        app.config.from_object(StagingConfig())
        # Set up Sentry
        sentry_sdk.init(os.environ.get('SENTRY_DSN'), integrations=[FlaskIntegration()])
    elif environment == 'development':
        app.config.from_object(DevelopmentConfig())
    else:
        # Load the defaults
        app.config.from_object(Config())

    # This a legacy config - not sure if we need it anymore?
    # app.wsgi_app = ProxyFix(app.wsgi_app, x_for=1, x_host=1, x_proto=1)

    ### CACHES ###
    cache.init_app(app)

    ### ROUTES ###
    from app.api import blueprint as api
    app.register_blueprint(api, url_prefix='/api/v1')

    return app
