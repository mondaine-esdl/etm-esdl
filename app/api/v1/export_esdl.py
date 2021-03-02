'''
Api namespace that adjusts an ESDL file to the changes made to a ETM scenario.
Responds with an ESDL file.
Only: post
'''

from flask_restplus import Namespace, Resource, fields
from app.helpers.MondaineHub import MondaineHub
from app.interface import update_esdl, setup_esh_from_energy_system, setup_esh_from_scenario

# TODO: See the create api, all todo's there are also applicable here

api = Namespace('export_esdl', description='Update ESDL based on ETM scenario settings')

energy_system = api.model('energy_system', {
    'energy_system': fields.String(required=True, description='The ESDL string')
})

export_parser = api.parser()

# ESDL energy system (doesn't have to be URL encoded)
export_parser.add_argument(
    'energy_system', type=str, required=False,
    help='The energy system definition (URL encoded ESDL string), should be provided if the \
    scenario did not start from ESDL',
    location='form'
)

# ETM environment (beta or pro)
export_parser.add_argument(
    'environment', type=str, required=True,
    help='The environment of the Energy Transition Model ("beta" or "pro")',
    location='form'
)

# Mondaine Hub account (can be removed after access to Mondaine Drive has been
# supported by this app)
export_parser.add_argument(
    'account', type=str, required=False,
    help='The Mondaine Hub account (email address) - only required when one wants to store the \
    ESDL in the Mondaine Hub',
    location='form'
)

# ETM scenario session ID
export_parser.add_argument(
    'session_id', type=str, required=True,
    help='The session ID of the Energy Transition Model scenario',
    location='form'
)

@api.route('/')
class ETMScenario(Resource):
    """
    Update ESDL energy system description based on ETM scenario settings
    """
    @api.doc(parser=export_parser)
    def post(self):
        """
        Update ESDL energy system description based on ETM scenario settings
        """
        args = export_parser.parse_args()

        es = {'energy_system': args['energy_system']}
        account = {'email': args['account']}
        env = args['environment']
        session_id = args['session_id']

        if es['energy_system']:
            esh = setup_esh_from_energy_system(es['energy_system'])
        else:
            esh = setup_esh_from_scenario(env, session_id)

        # Call method that updates ESDL based on ETM scenario settings
        esh = update_esdl(esh, env, session_id)

        if account['email']:
            MondaineHub(account['email']).store_in_mondaine_hub(
                'ETM_{}'.format(esh.es.name), esh.resource
            )

        return {
            'energy_system': esh.get_as_string()
        }
