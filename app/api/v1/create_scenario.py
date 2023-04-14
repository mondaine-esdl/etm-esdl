'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

import urllib.parse
from flask_restx import Namespace, Resource

from app.utils.api_utils import fail_with
from app.utils.garbage import HaltGarbageCollection
from app.models.energy_system import EnergySystemHandler
from app.models.kpi_handler import KPIHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.models.conversion_assets import config
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.create_scenario import CreateScenario

api = Namespace('create_scenario', description='Transform ESDL into ETM scenario settings')

## Setup the parser for the request parameters
import_parser = api.parser()
import_parser.add_argument(
    'energy_system', type=str, required=True,
    help='The energy system definition (URL encoded ESDL string)',
    location='form'
)
import_parser.add_argument('energy_system_title', type=str, required=False, location='form')
import_parser.add_argument(
    'scenario_id',
    type=int,
    required=False,
    location='form',
    help='If you want to update an existing scenario instead of creating an ew one, please specify the ID here.'
)
import_parser.add_argument(
    'filter', action='append', required=False,
    help='List of assets to update or add to the scenario file (e.g. WindTurbine),' +
        'if left empty uses all available assets',
    location='form'
)

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

        converter = EsdlToScenarioConverter(self.energy_system_handler)

        # NOTE: we don't validate if this scenario matches the area!
        if args['scenario_id']:
            self.scenario_id = args['scenario_id']
        else:
            self.__create_new_scenario_id(converter.area)

        with HaltGarbageCollection():
            self.__set_sliders_in_etm(
                self.__filter_on_hold(converter.calculate(filter=args['filter']))
            )

        self.__attach_esdl_to_etm(energy_system_title)

        return {'scenario_id': self.scenario_id}

    def __create_new_scenario_id(self, area_code):
        '''
        Creates a new scenario in ETEngine. Sets the scenario id if succesful.
        '''
        result = CreateScenario.execute(None, {'area_code': area_code, 'end_year': 2050})

        if result.successful:
            self.scenario_id = result.value
        else:
            fail_with(result)

    def __filter_on_hold(self, slider_settings):
        '''Filters the inputs that are on hold'''
        for hold_input in config['on_hold']:
            slider_settings.pop(hold_input, None)

        return slider_settings


    def __set_sliders_in_etm(self, slider_settings):
        ''' Set sliders in new scenario '''
        result = SetScenarioSliders.execute(self.scenario_id, slider_settings)

        if not result.successful:
            fail_with(result)

    def __attach_esdl_to_etm(self, energy_system_title):
        ''' Attach ESDL file to scenario '''
        KPIHandler(self.energy_system_handler, self.scenario_id).add_kpis_to_esdl()
        result = AttachEsdlToEtengine.execute(
            self.scenario_id,
            self.energy_system_handler.to_bytesio(),
            energy_system_title
        )
        if not result.successful:
            fail_with(result)
