'''
Api namespace that only shows ETM KPI's.
Responds with ETM KPI's.
Only: get
'''

from flask_restx import Namespace, Resource
from config.conversions.kpis import gqueries as kpis
# pylint: disable=no-self-use

api = Namespace('kpis', description='Get ETM KPIs')

@api.route('/')
class KPIs(Resource):
    """
    Return list of available ETM KPIs
    """

    def get(self):
        """
        Return list of available ETM KPIs
        """
        list_of_kpis = []

        for kpi, prop in kpis.items():
            list_of_kpis.append({'key': kpi, 'name': prop['name']})

        return {
            'kpis': list_of_kpis
        }
