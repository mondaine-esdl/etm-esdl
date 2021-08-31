'''Connect to ETM inputs endpoint'''

# pylint: disable=arguments-differ
from json.decoder import JSONDecodeError
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class InputsScenario(EtengineService):
    """
    Query a scenario with supplied gqueries (one or more).
    Returns a ServiceResult with a dict containing the gquery results as value.
    """
    def __call__(self, *inputs):
        response = self.session.put(
            f'/scenarios/{self.scenario_id}/inputs/{",".join(inputs)}',
            headers={'Connection': 'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if response.ok:
            return ServiceResult.success(response.json())
        try:
            # Check if ETE returned any errors
            return ServiceResult.failure(response.json()['errors'])
        except JSONDecodeError:
            return ServiceResult.failure([f'ETEngine returned a {response.status_code}'])
