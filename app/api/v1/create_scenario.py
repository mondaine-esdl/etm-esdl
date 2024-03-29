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
from app.helpers.exceptions import EnergysystemParseError
from app.constants.errors import messages

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
import_parser.add_argument(
    'environment', type=str, required=True,
    help='The environment of the Energy Transition Model ("beta" or "pro")',
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

        # TODO: clean the args up
        es = args['energy_system']
        energy_system_title = args['energy_system_title'] or 'original.esdl'
        env = args['environment']

        esh = setup_esh_from_energy_system(es)

        etm_config, response = translate_esdl_to_slider_settings(esh, env)
        add_kpis_to_esdl(esh, env, etm_config.scenario_id)

        result = AttachEsdlToEtengine(env, etm_config.scenario_id)(
            esh.get_as_stream(), energy_system_title
        )
        if not result.successful:
            handle_failure(result)

        return {
            'show_url': {
                'description': 'Click on this link to open the created ETM scenario:',
                'url': (
                    'https://{environment}.energytransitionmodel.com/scenarios/{scenario_id}'.format(
                    environment='beta-pro' if env == 'beta' else 'pro',
                    scenario_id=etm_config.scenario_id)),
                'link_text': 'Open ETM',
                'response': response
            },
            'scenario_id': etm_config.scenario_id
        }

# TODO: better placement and handling
def handle_failure(result):
    if not len(result.errors) > 0:
        raise EnergysystemParseError('Something went wrong', 422)

    message = result.errors[0]
    for etm_message, readable in messages.items():
        for error in result.errors:
            if etm_message in error:
                message = readable
                break

    raise EnergysystemParseError(message, 422)
