from flask import Flask, Blueprint
from flask_restplus import Api, Resource, fields
from EnergySystemHandler import EnergySystemHandler
from parse_data import parse_esdl, create_etm_scenario, add_etm_metrics_to_esdl, post_request
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


@ns_es.route('/')
@api.doc(responses={404: 'EnergySytem not valid'})
class EnergySystem(Resource):
    '''Transform ESDL energysystem description into an ETM scenario'''
#    @api.doc(description='Transform ESDL energysystem description into an ETM scenario')
    @api.doc(parser=parser)
#    @api.marshal_with(etm_esdl_result)
    def post(self):
        '''Transform ESDL energysystem description into an ETM scenario'''
        args = parser.parse_args()
        es = {'energysystem': args['energysystem']}

        esh = EnergySystemHandler()
        try:
            esdl_string = urllib.parse.unquote(es['energysystem'])
            esh.load_from_string(esdl_string)
        except Exception as e:
            return 'could not load ESDL: '+ str(e), 404

        regional_data, supply = parse_esdl(esh)
        etm_config, metrics = create_etm_scenario(regional_data, supply)
        add_etm_metrics_to_esdl(esh, metrics)
        post_request(esh)

        return {
            'show_url': {
                'description': 'Click on this link to open the created ETM scenario:',
                'url': 'https://beta-pro.energytransitionmodel.com/scenarios/{}'.format(etm_config.scenario_id),
                'link_text': 'Open ETM'
            }
        }


if __name__ == '__main__':
    app = Flask(__name__)
    app.register_blueprint(api_v1)
    app.run(host='0.0.0.0', debug=True)
