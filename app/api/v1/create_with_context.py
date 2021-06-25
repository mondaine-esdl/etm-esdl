'''
Api namespace that uses an uploaded ESDL file of a start situation and an end sitution
and creates an ETE scenario based on the changes. An ETE scenario ID may also be passed
to be used as a base scenario.
Responds with an ETE scenario id.
Only: post
'''

import urllib.parse
import re
from flask_restx import Namespace, Resource
from flask_caching import Cache

from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter

# pylint: disable=no-self-use

# Setup the cache for the api
cache = Cache(config={'CACHE_TYPE': 'SimpleCache'})

api = Namespace('create_with_context', description='Transform 2 ESDLs into one ETM scenario')

## Setup the parser for the request parameters
context_parser = api.parser()
context_parser.add_argument(
    'energy_system_start_situation', type=str, required=True,
    help='The energy system definition of the start situation',
    location='form'
)
context_parser.add_argument(
    'energy_system_end_situation', type=str, required=True,
    help='The energy system definition of the end situation',
    location='form'
)
context_parser.add_argument(
    'end_year', type=str, required=False,
    help='The year of the end situation, defaults to 2050',
    location='form'
)
context_parser.add_argument(
    'scenario_id', type=str, required=False,
    help='The scenario ID of the Energy Transition Model scenario that can be used as a base',
    location='form'
)

## Controller
@api.route('/')
@api.doc(responses={422: 'Energy system could not be made into a scenario'})
class EnergySystem(Resource):
    """
    Transform ESDL energy system description into an ETM scenario
    """
    @api.expect(context_parser)
    def post(self):
        """
        Transform ESDL energy system description into an ETM scenario
        """
        args = context_parser.parse_args()
        self.__get_start_situation(args['energy_system_start_situation'])

        return {'scenario_id': 3}

    def __get_start_situation(self, energy_system):
        '''
        Returns the slider settings result of the start situation
        Because we expect this API to be called multiple times with the same
        start situation but different futures, we cache the start situations results
        based on the unique ESDL id
        '''
        es_id = self.__grab_energy_system_id(energy_system)
        result = cache.get(es_id)
        if not result:
            energy_system_handler = EnergySystemHandler.from_string(
                urllib.parse.unquote(energy_system)
            )
            result = EsdlToScenarioConverter(energy_system_handler).calculate()
            cache.set(es_id, result)
        return result

    def __grab_energy_system_id(self, energy_system):
        ''' Parses the string energy_system in search for it's id '''
        return re.search(r'(?<=id\=\")\w+(-\w+)+', energy_system.split('\n', 2)[1]).group(0)
