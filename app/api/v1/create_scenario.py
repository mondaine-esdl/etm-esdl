'''
Api namespace that transforms an uploaded ESDL file into ETM slider settings.
Responds with an ETE scenario id.
Only: post
'''

from flask_restplus import Namespace, Resource, fields
from app.helpers.MondaineHub import MondaineHub
# TODO: This needs to be nicer - create a Service of some kind
from app.interface import (
    setup_esh_from_energy_system, translate_esdl_to_slider_settings, add_kpis_to_esdl
)

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
# ESDL energy system (doesn't have to be URL encoded)
import_parser.add_argument(
    'energy_system', type=str, required=True,
    help='The energy system definition (URL encoded ESDL string)',
    location='form'
)
# ETM environment (beta or pro)
import_parser.add_argument(
    'environment', type=str, required=True,
    help='The environment of the Energy Transition Model ("beta" or "pro")',
    location='form'
)
# Mondaine Hub account
import_parser.add_argument(
    'account', type=str, required=False,
    help='The Mondaine Hub account (email address) - only required when one wants to store the ESDL\
    in the Mondaine Hub',
    location='form'
)
import_parser.add_argument('energy_system_title', type=str, required=False, location='form')

## Controller
@api.route('/')
@api.doc(responses={404: 'Energy system not valid'})
class EnergySystem(Resource):
    """
    Transform ESDL energy system description into an ETM scenario
    """
    @api.doc(parser=import_parser)
    # @api.marshal_with(etm_esdl_result) # This formats the response!
    def post(self):
        """
        Transform ESDL energy system description into an ETM scenario
        """
        args = import_parser.parse_args()

        # TODO: clean the args up
        es = {'energy_system': args['energy_system']}
        energy_system_title = args['energy_system_title'] or 'original.esdl'
        account = {'email': args['account']}
        env = args['environment']

        esh = setup_esh_from_energy_system(es['energy_system'])

        etm_config, response = translate_esdl_to_slider_settings(esh, env)
        add_kpis_to_esdl(esh, env, etm_config.scenario_id)

        etm_config.upload_energy_system(esh.get_as_stream(), energy_system_title)

        if account['email']:
            MondaineHub(account['email']).store_in_mondaine_hub(
                'ETM_{}'.format(esh.es.name), esh.resource
            )

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
