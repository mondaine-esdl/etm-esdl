from flask import Flask, Blueprint
from flask_restplus import Api, Resource, fields
from helpers.energy_system_handler import EnergySystemHandler
from helpers.MondaineHub import MondaineHub
from interface import translate_esdl_to_slider_settings, translate_kpis_to_esdl
import urllib.parse

api_v1 = Blueprint('api', __name__, url_prefix='/api/v1')

api = Api(api_v1, version='1.0', title='ETM ESDL API',
    description='A first implementation of an API to the script that generates an ETM scenario from an ESDL energysystem description',
)

ns_es = api.namespace('EnergySystem', description='Energysystem operations')

energysystem = api.model('energysystem', {
    'energysystem': fields.String(required=True, description='The ESDL string')
})

etm_esdl_result = api.model('etm_esdl_result', {
    'etm_url': fields.String(required=True, description='ETM scenario URL')
})


def abort_if_es_doesnt_exist(es_id):
    if es_id not in ES_list:
        api.abort(404, "Energysystem with id {} doesn't exist".format(es_id))


parser = api.parser()
parser.add_argument('energysystem', type=str, required=True, help='The energysystem definition (URL encoded ESDL string)', location='form')
parser.add_argument('environment', type=str, required=True, help='The environment of the Energy Transition Model ("beta" or "pro")', location='form')
parser.add_argument('account', type=str, required=False, help='The Mondaine Hub account (email address) - only required when one wants to store the ESDL in the Mondaine Hub', location='form')

@ns_es.route('/')
@api.doc(responses={404: 'EnergySytem not valid'})
@api.route('/')
class EnergySystem(Resource):
    """
    Transform ESDL energysystem description into an ETM scenario
    """
    # @api.doc(description='Transform ESDL energysystem description into an ETM scenario')
    @api.doc(parser=parser)
    # @api.marshal_with(etm_esdl_result)
    def post(self):
        """
        Transform ESDL energysystem description into an ETM scenario
        """
        args = parser.parse_args()

        es = {'energysystem': args['energysystem']}
        account = {'email': args['account']}
        env = args['environment']

        esh = EnergySystemHandler()
        try:
            esdl_string = urllib.parse.unquote(es['energysystem'])
            esh.load_from_string(esdl_string)
        except Exception as e:
            return 'could not load ESDL: '+ str(e), 404

        etm_config = translate_esdl_to_slider_settings(esh, env)
        esh = translate_kpis_to_esdl(esh, env, etm_config.scenario_id)

        if account['email']:
            mh = MondaineHub(account['email'])
            mh.store_in_mondaine_hub('ETM_{}'.format(esh.es.name), esh.resource)

        # post_data = {
        #     'sender': 'ETM',
        #     'email': 'roos.dekok@quintel.com',
        #     'descr': 'Return ETM KPIs for the scenario',
        #     'esdl': urllib.parse.quote(esh.get_as_string())
        # }

        # r = requests.post('https://mapeditor-beta.hesi.energy/api/esdl',
        #     json = post_data,
        #     headers={'Content-Type': 'application/json'})

        return {
            'show_url': {
                'description': 'Click on this link to open the created ETM scenario:',
                'url': 'https://{environment}.energytransitionmodel.com/scenarios/{scenario_id}'.format(
                    environment='beta-pro' if env=='beta' else 'pro',
                    scenario_id=etm_config.scenario_id),
                'link_text': 'Open ETM'
            },
            'scenario_id': etm_config.scenario_id
        }


if __name__ == '__main__':
    app = Flask(__name__)
    app.register_blueprint(api_v1)
    app.run(host='0.0.0.0', debug=True)
