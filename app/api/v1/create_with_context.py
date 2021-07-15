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

from app import cache
from app.utils.api_utils import fail_with
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.services.create_scenario import CreateScenario
from app.services.set_scenario_sliders import SetScenarioSliders

# pylint: disable=no-self-use

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
    'scenario_id', type=str, required=False,
    help='The ID of the ETM scenario that can be used as context',
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
        start_situation = self.__get_start_situation(args['energy_system_start_situation'])

        # Set the ETM scenario as context
        scenario_id = self.__scenario_id(args['scenario_id'], start_situation.area)
        start_situation.set_context_scenario(scenario_id)
        end_situation = self.__get_as_situation(args['energy_system_end_situation'])

        # Compare start and end to create new settings for the context scenario
        sliders = start_situation.relative_change_to_for_context(end_situation).slider_settings

        result = SetScenarioSliders.execute(scenario_id, sliders)
        if not result.successful:
            fail_with(result)

        return {'scenario_id': scenario_id}

    def __get_start_situation(self, energy_system):
        '''
        Returns the slider settings result of the start situation
        Because we expect this API to be called multiple times with the same
        start situation but different futures, we cache the start situations results
        based on the unique ESDL id
        '''
        es_id = self.__find_energy_system_id(energy_system)
        start_situation = cache.get(es_id)
        if not start_situation:
            start_situation = self.__get_as_situation(energy_system)
            cache.set(es_id, start_situation)
        return start_situation

    def __get_as_situation(self, energy_system):
        return EsdlToScenarioConverter(
            EnergySystemHandler.from_string(
                urllib.parse.unquote(energy_system)
            )
        ).as_situation()

    def __find_energy_system_id(self, energy_system):
        ''' Parses the string energy_system in search for it's id '''
        return re.search(r'(?<=id\=\")\w+(-\w+)+', energy_system.split('\n', 2)[1]).group(0)

    def __scenario_id(self, scenario_id, area):
        '''Returns a fresh ETM scenario id to use as context'''
        if scenario_id:
            return self.__copy_scenario(scenario_id)

        return self.__create_new_scenario_id(area)

    def __copy_scenario(self, scenario_id):
        '''
        Creates a copy of the given scenario in ETEngine. Returns the new scenario id if succesful.
        '''
        return self.__handle_create(CreateScenario.execute(scenario_id, {}))

    def __create_new_scenario_id(self, area):
        '''
        Creates a new scenario in ETEngine. Returns the scenario id if succesful.
        '''
        return self.__handle_create(
            CreateScenario.execute(None, {'area_code': area, 'end_year': 2050})
        )

    def __handle_create(self, result):
        if not result.successful:
            fail_with(result)

        return result.value
