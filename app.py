from flask import Flask, Blueprint
from flask import jsonify
from flask_restplus import Api, Resource, fields
from werkzeug.middleware.proxy_fix import ProxyFix
from helpers.exceptions import EnergysystemParseError
from helpers.energy_system_handler import EnergySystemHandler
from helpers.MondaineHub import MondaineHub
from interface import translate_esdl_to_slider_settings, translate_kpis_to_esdl
from interface import update_esdl
from config.kpis import gqueries as kpis
import urllib.parse

api_v1 = Blueprint('api', __name__, url_prefix='/api/v1')

api = Api(
        api_v1,
        version='1.0',
        title='ETM ESDL API',
        description='A first implementation of an API to the script that \
            generates an ETM scenario from an ESDL energy system description'
    )

ns_es = api.namespace('ImportESDL', description='Transform ESDL into ETM scenario settings')
ns_kpis = api.namespace('KPIs', description='Get ETM KPIs')
ns_etm = api.namespace('ExportESDL', description='Update ESDL based on ETM scenario settings')

energy_system = api.model('energy_system', {
    'energy_system': fields.String(required=True, description='The ESDL string')
})

etm_esdl_result = api.model('etm_esdl_result', {
    'etm_url': fields.String(required=True, description='ETM scenario URL')
})

import_parser = api.parser()

# ESDL energy system (doesn't have to be URL encoded)
import_parser.add_argument('energy_system', type=str, required=True, help='The \
energy system definition (URL encoded ESDL string)', location='form')

# ETM environment (beta or pro)
import_parser.add_argument('environment', type=str, required=True, help='The \
environment of the Energy Transition Model ("beta" or "pro")', location='form')

# Mondaine Hub account
import_parser.add_argument('account', type=str, required=False, help='The Mondaine \
Hub account (email address) - only required when one wants to store the \
ESDL in the Mondaine Hub', location='form')

@ns_es.route('/')
@api.doc(responses={404: 'Energy system not valid'})
# @api.route('/')
class EnergySystem(Resource):
    """
    Transform ESDL energy system description into an ETM scenario
    """
    # @api.doc(description='Transform ESDL energy system description into an ETM scenario')
    @api.doc(parser=import_parser)
    # @api.marshal_with(etm_esdl_result)
    def post(self):
        """
        Transform ESDL energy system description into an ETM scenario
        """
        args = import_parser.parse_args()

        es = {'energy_system': args['energy_system']}
        account = {'email': args['account']}
        env = args['environment']

        esh = EnergySystemHandler()
        try:
            esdl_string = urllib.parse.unquote(es['energy_system'])
            esh.load_from_string(esdl_string)
        except EnergysystemParseError:
            raise
        except Exception as e:
            return 'could not load ESDL: '+ str(e), 404

        etm_config, response = translate_esdl_to_slider_settings(esh, env)
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
                    environment='beta-pro' if env == 'beta' else 'pro',
                    scenario_id=etm_config.scenario_id),
                'link_text': 'Open ETM',
                'response': response
            },
            'scenario_id': etm_config.scenario_id
        }

def handle_api_error(error):
    response = jsonify(error.to_dict())
    response.status_code = error.status_code
    response.content_type = "application/json"
    return response

@ns_kpis.route('/')
class KPIs(Resource):
    """
    Return list of available ETM KPIs
    """

    def post(self):
        """
        Return list of available ETM KPIs
        """
        list_of_kpis = []

        for kpi, prop in kpis.items():
            list_of_kpis.append({'key': kpi, 'name': prop['name']})

        return {
            'kpis': list_of_kpis
        }


energy_system = api.model('energy_system', {
    'energy_system': fields.String(required=True, description='The ESDL string')
})

export_parser = api.parser()

# ESDL energy system (doesn't have to be URL encoded)
export_parser.add_argument('energy_system', type=str, required=True, help='The \
energy system definition (URL encoded ESDL string)', location='form')

# ETM environment (beta or pro)
export_parser.add_argument('environment', type=str, required=True, help='The \
environment of the Energy Transition Model ("beta" or "pro")', location='form')

# Mondaine Hub account (can be removed after access to Mondaine Drive has been
# supported by this app)
export_parser.add_argument('account', type=str, required=False, help='The Mondaine \
Hub account (email address) - only required when one wants to store the \
ESDL in the Mondaine Hub', location='form')

# ETM scenario session ID
export_parser.add_argument('session_id', type=str, required=True, help='The session \
ID of the Energy Transition Model scenario', location='form')

@ns_etm.route('/')
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

        esh = EnergySystemHandler()
        try:
            esdl_string = urllib.parse.unquote(es['energy_system'])
            esh.load_from_string(esdl_string)
        except Exception as e:
            return 'could not load ESDL: '+ str(e), 404

        # Call method that updates ESDL based on ETM scenario settings
        esh = update_esdl(esh, env, session_id)

        if account['email']:
            mh = MondaineHub(account['email'])
            mh.store_in_mondaine_hub('ETM_{}'.format(esh.es.name), esh.resource)

        return {
            'energy_system': es
        }

if __name__ == '__main__':
    app = Flask(__name__)
    app.wsgi_app = ProxyFix(app.wsgi_app, x_for=1, x_host=1, x_proto=1)
    app.register_blueprint(api_v1)
    app.register_error_handler(EnergysystemParseError, handle_api_error)
    app.run(host='0.0.0.0', debug=True)
