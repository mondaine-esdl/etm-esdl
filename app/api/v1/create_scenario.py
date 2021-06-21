'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

import urllib.parse
from flask_restx import Namespace, Resource

from app.utils.api_utils import fail_with
from app.models.energy_system import EnergySystemHandler
from app.models.kpi_handler import KPIHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.create_blank_scenario import CreateBlankScenario
from config.conversions import area_mapping
# pylint: disable=no-self-use

api = Namespace('create_scenario', description='Transform ESDL into ETM scenario settings')

## Setup the parser for the request parameters
import_parser = api.parser()
import_parser.add_argument(
    'energy_system', type=str, required=True,
    help='The energy system definition (URL encoded ESDL string)',
    location='form'
)
import_parser.add_argument('energy_system_title', type=str, required=False, location='form')

## Controller
@api.route('/')
@api.doc(responses={422: 'Energy system could not be made into a scenario'})
class EnergySystem(Resource):
    """
    Transform ESDL energy system description into an ETM scenario
    """
    @api.expect(import_parser)
    def post(self):
        """
        Transform ESDL energy system description into an ETM scenario
        """
        args = import_parser.parse_args()
        energy_system_title = args['energy_system_title'] or 'original.esdl'

        self.energy_system_handler = EnergySystemHandler.from_string(
            urllib.parse.unquote(args['energy_system'])
        )
        self.__create_new_scenario_id()
        self.__set_sliders_in_etm()
        self.__attach_esdl_to_etm(energy_system_title)

        return {'scenario_id': self.scenario_id}

    def __create_new_scenario_id(self):
        '''
        Creates a new scenario in ETEngine. Sets the scenario id if succesful.
        '''
        area_code = area_mapping[self.energy_system_handler.es.instance[0].area.id]
        result = CreateBlankScenario.execute(0, area_code, 2050)

        if result.successful:
            self.scenario_id = result.value
        else:
            fail_with(result)

    def __set_sliders_in_etm(self):
        ''' Set sliders in new scenario '''
        result = SetScenarioSliders.execute(
            self.scenario_id,
            EsdlToScenarioConverter(self.energy_system_handler).calculate()
        )
        if not result.successful:
            fail_with(result)

    def __attach_esdl_to_etm(self, energy_system_title):
        ''' Attach ESDL file to scenario '''
        KPIHandler(self.energy_system_handler, self.scenario_id).add_kpis_to_esdl()
        result = AttachEsdlToEtengine.execute(
            self.scenario_id,
            self.energy_system_handler.get_as_stream(),
            energy_system_title
        )
        if not result.successful:
            fail_with(result)
