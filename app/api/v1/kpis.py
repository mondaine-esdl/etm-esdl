'''
Api namespace that only shows ETM KPI's.
Responds with ETM KPI's.
Only: post
'''

from flask_restx import Namespace, Resource
from config.conversions.kpis import gqueries as kpis

api = Namespace('kpis', description='Get ETM KPIs')

@api.route('/')
class KPIs(Resource):
    """
    Return list of available ETM KPIs
    """

    # TODO: find out why this is not a get
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
