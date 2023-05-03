''' Service for querying an ETEngine scenario'''
# pylint: disable=arguments-differ
from json.decoder import JSONDecodeError
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class QueryScenario(EtengineService):
    """
    Query a scenario with supplied gqueries (one or more).
    Returns a ServiceResult with a dict containing the gquery results as value.
    """
    def __call__(self, *gqueries):
        data = {"gqueries": list(gqueries)}

        response = self.session.put(
            '/scenarios/' + str(self.scenario_id),
            json=data,
            headers={'Connection': 'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if response.ok:
            value = response.json()['gqueries']
            value.update(response.json()['scenario'])

            return ServiceResult.success(value)
        try:
            # Check if ETE returned any errors
            return ServiceResult.failure(response.json()['errors'])
        except JSONDecodeError:
            return ServiceResult.failure([f'ETEngine returned a {response.status_code}'])
