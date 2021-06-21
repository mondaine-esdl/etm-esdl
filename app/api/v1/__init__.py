'''
Contains the ApiV1 blueprint
'''

from flask import Blueprint
from flask_restx import Api

# Exceptions to be caught
from werkzeug.exceptions import MethodNotAllowed
from app.utils.exceptions import HumanizableException

# Import namespaces (parts of Api)
from .create_scenario import api as ns_create_scenario
from .export_esdl import api as ns_export
from .kpis import api as ns_kpis

# Setup the blueprint and route for the api
blueprint = Blueprint('api', __name__)
api = Api(
    blueprint,
    version='1.0',
    title='ETM ESDL API',
    description='Provides ways to exchange between ETM scenarios and the ESDL language'
)

# Add all the namespaces that we want to be visisble to the api
api.add_namespace(ns_create_scenario)
api.add_namespace(ns_export)
api.add_namespace(ns_kpis)

@api.errorhandler(HumanizableException)
def handle_api_error(error):
    '''Creates a response containing the messages of the error'''
    return error.to_dict(), error.status_code

@api.errorhandler(MethodNotAllowed)
def handle_non_existing_route(error):
    '''Returns a 405'''
    return {'error': f'Allowed methods are {error.valid_methods}'}, 405
