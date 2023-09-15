'''
Api namespace that adjusts an ESDL file to the changes made to a ETM scenario.
Responds with an ESDL file.
Only: post
'''

import urllib.parse
from flask_restx import Namespace, Resource, fields
from app.utils.api_utils import fail_with
from app.models.energy_system import EnergySystemHandler
from app.models.scenario_to_esdl_converter import update_esdl
from app.services.fetch_esdl_from_etengine import FetchEsdlFromEtengine
# pylint: disable=no-self-use

api = Namespace('export_esdl', description='Update ESDL based on ETM scenario settings')

energy_system = api.model('energy_system', {
    'energy_system': fields.String(required=True, description='The ESDL string')
})

## Request parser
export_parser = api.parser()
export_parser.add_argument(
    'energy_system', type=str, required=False,
    help='The energy system definition (URL encoded ESDL string or form-data .esdl file), \
    should be provided if the scenario did not start from ESDL',
    location='form'
)
export_parser.add_argument(
    'session_id_min', type=str, required=True,
    help='The session ID of the Energy Transition Model default/minimum scenario',
    location='form'
)
export_parser.add_argument(
    'session_id_max', type=str, required=False,
    help='The session ID of the Energy Transition Model maximum scenario',
    location='form'
)
export_parser.add_argument(
    'filter', action='append', required=False,
    help='List of assets to update or add to the ESDL file (e.g. WindTurbine)',
    location='form'
)

## Controller
@api.route('/')
class ETMScenario(Resource):
    """
    Update ESDL energy system description based on ETM scenario settings
    """
    @api.expect(export_parser)
    def post(self):
        """
        Update ESDL energy system description based on ETM scenario settings
        """
        args = export_parser.parse_args()
        session_id_min = args['session_id_min']
        session_id_max = args['session_id_max']

        esh = setup_energy_system_handler_from_args(args)

        # Call method that updates ESDL based on ETM scenario settings
        esh = update_esdl(esh, session_id_min, session_id_max, filter=args['filter'])

        return {
            'energy_system': esh.to_string()
        }

def setup_energy_system_handler_from_args(args):
    '''
    Returns an EnergySystemHandler based on a passed energy_system if there was one given,
    or else on the energy system that was attached to the ETM scenario.
    If there is no ESDL to be found, fails the whole request
    '''
    if args['energy_system']:
        return EnergySystemHandler.from_string(urllib.parse.unquote(args['energy_system']))

    result = FetchEsdlFromEtengine.execute(args['session_id_min'])
    if result.successful:
        return EnergySystemHandler.from_string(result.value)

    fail_with(result)
