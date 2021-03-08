'''
Initializes the app and sets up all the routes
'''

import os

from flask import Flask, jsonify
from werkzeug.middleware.proxy_fix import ProxyFix
from app.config import *
from app.helpers.exceptions import EnergysystemParseError
from app.api import blueprint as api

def handle_api_error(error):
    '''Creates a response containing the messages of the error'''
    response = jsonify(error.to_dict())
    response.status_code = error.status_code
    response.content_type = "application/json"
    return response

def create_app(testing=False):
    '''
    Create and configure the app
    '''
    app = Flask(__name__, instance_relative_config=True)
    environment = app.config['ENV']

    # Load in some extra configs
    if testing or environment == 'test':
        app.config.from_object(TestingConfig())
    elif environment == 'production':
        app.config.from_object(ProductionConfig())
    elif environment == 'delevopment':
        app.config.from_object(DevelopmentConfig())
    else:
        # Load the defaults
        app.config.from_object(Config())

    # This a legacy config - not sure if we need it anymore?
    app.wsgi_app = ProxyFix(app.wsgi_app, x_for=1, x_host=1, x_proto=1)

    ### ROUTES ###
    app.register_blueprint(api, url_prefix='/api/v1')

    ### ERRORS ###
    app.register_error_handler(EnergysystemParseError, handle_api_error)

    return app
