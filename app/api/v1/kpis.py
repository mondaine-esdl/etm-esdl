'''
Api namespace that only shows ETM KPI's.
Responds with ETM KPI's.
Only: get
'''
import urllib.parse

from flask_restx import Namespace, Resource
from app.models.conversion_assets import kpis
from app.models.energy_system import EnergySystemHandler
from app.models.kpi_handler import KPIHandler
# pylint: disable=no-self-use

api = Namespace('kpis', description='Get a list of ETM KPIs, or add KPIs to an ESDL file')

post_parser = api.parser()
post_parser.add_argument(
    'energy_system', type=str, required=True,
    help='The energy system definition (URL encoded ESDL string)',
    location='form'
)
post_parser.add_argument(
    'scenario_id',
    type=int,
    required=True,
    help='The ID of the ETM scenario that can be used as context',
    location='form'
)

@api.route('/')
class KPIs(Resource):
    """
    Return list of available ETM KPIs
    """

    def get(self):
        """
        Return list of available ETM KPIs
        """
        return {
            'kpis': [{'key': kpi, 'name': prop['name']} for kpi, prop in kpis.items()]
        }

    @api.expect(post_parser)
    def post(self):
        '''Add ETM KPI's to the ESDL file'''
        args = post_parser.parse_args()
        esh = EnergySystemHandler.from_string(urllib.parse.unquote(args['energy_system']))
        KPIHandler(esh, args['scenario_id']).add_kpis_to_esdl()

        return {
            'energy_system': esh.to_string()
        }
