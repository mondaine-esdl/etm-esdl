'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

import urllib.parse
from flask_restx import Namespace, Resource, fields

# TODO: This needs to be nicer - create a Service or model of some kind
from app.interface import add_kpis_to_esdl
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.create_blank_scenario import CreateBlankScenario
from app.helpers.exceptions import EnergysystemParseError
from config.conversions import area_mapping

api = Namespace('create_scenario', description='Transform ESDL into ETM scenario settings')

# TODO: look if we can couple this to the service?
energy_system = api.model('energy_system', {
    'energy_system': fields.String(required=True, description='The ESDL string')
})

# TODO: What we like to have the response look like
# etm_esdl_result = api.model('etm_esdl_result', {
#     'etm_url': fields.String(required=True, description='ETM scenario URL')
# })

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
    # @api.marshal_with(etm_esdl_result) # This formats the response!
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
        set_silders_result = SetScenarioSliders.execute(
            scenario_id,
            EsdlToScenarioConverter(energy_system_handler).calculate()
        )
        if not set_silders_result.successful:
            fail_with(set_silders_result)

        # Attach ESDL file to scenario
        add_kpis_to_esdl(energy_system_handler, scenario_id)
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


def fail_with(result):
    '''
    Raises an EnergySystemParseError based on the results errors
    '''
    if not len(result.errors) > 0:
        raise EnergysystemParseError('Something went wrong')

    if isinstance(result.errors, list):
        raise EnergysystemParseError.with_humanized_message(result.errors)

    message = ', '.join([f"{key} {', '.join(value)}" for key, value in result.errors.items()])
    raise EnergysystemParseError(message)
