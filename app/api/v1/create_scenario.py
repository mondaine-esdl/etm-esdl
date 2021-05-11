'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

from flask_restx import Namespace, Resource, fields

# TODO: This needs to be nicer - create a Service or model of some kind
from app.interface import (
    setup_esh_from_energy_system, translate_esdl_to_slider_settings, add_kpis_to_esdl
)
from app.services.attach_esdl_to_etengine import AttachEsdlToEtengine
from app.services.set_scenario_sliders import SetScenarioSliders
from app.services.create_blank_scenario import CreateBlankScenario
from app.helpers.exceptions import EnergysystemParseError
from app.constants.errors import messages
import app.constants.areas as areas

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
        energy_system_handler = setup_esh_from_energy_system(args['energy_system'])
        scenario_id = new_scenario_id(energy_system_handler)

        # Set sliders in new scenario
        new_sliders = translate_esdl_to_slider_settings(energy_system_handler)
        set_silders_result = SetScenarioSliders.execute(scenario_id, new_sliders)
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
    area_code = areas.mapping[energy_system_handler.es.instance[0].area.id]
    result = CreateBlankScenario.execute(0, area_code, 2050)

    if result.successful:
        return result.value

    fail_with(result)


# TODO: better placement and handling
def fail_with(result):
    '''
    Raises an EnergySystemParseError with a humanized message based on the results errors
    '''
    if not len(result.errors) > 0:
        raise EnergysystemParseError('Something went wrong', 422)

    if isinstance(result.errors, list): message = result.errors[0]
    else: message = ', '.join([f"{key} {', '.join(value)}" for key, value in result.errors.items()])

    for etm_message, readable in messages.items():
        for error in result.errors:
            if etm_message in error:
                message = readable
                break

    raise EnergysystemParseError(message, 422)
