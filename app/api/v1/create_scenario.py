'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

import urllib.parse
from flask_restx import Namespace, Resource

from app.helpers.api_utils import fail_with
from app.models.energy_system import EnergySystemHandler
from app.models.kpi_handler import KPIHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.create_blank_scenario import CreateBlankScenario
from config.conversions import area_mapping

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

        # Parse ESDL file and create scenario
        energy_system_handler = EnergySystemHandler.from_string(
            urllib.parse.unquote(args['energy_system'])
        )
        scenario_id = new_scenario_id(energy_system_handler)

        # Set sliders in new scenario
        set_sliders_result = SetScenarioSliders.execute(
            scenario_id,
            EsdlToScenarioConverter(energy_system_handler).calculate()
        )
        if not set_sliders_result.successful:
            fail_with(set_sliders_result)

        # Attach ESDL file to scenario
        KPIHandler(energy_system_handler, scenario_id).add_kpis_to_esdl()
        result = AttachEsdlToEtengine.execute(
            scenario_id,
            energy_system_handler.get_as_stream(),
            energy_system_title
        )
        if not result.successful:
            fail_with(result)

        return {'scenario_id': scenario_id}

def new_scenario_id(energy_system_handler):
    '''
    Creates a new scenario in ETEngine. Returns the scenario id if succesful.
    '''
    area_code = area_mapping[energy_system_handler.es.instance[0].area.id]
    result = CreateBlankScenario.execute(0, area_code, 2050)

    if result.successful:
        return result.value

    fail_with(result)
