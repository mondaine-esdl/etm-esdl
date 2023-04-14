'''Connect to ETM inputs endpoint'''

# pylint: disable=arguments-differ
from json.decoder import JSONDecodeError
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class InputsScenario(EtengineService):
    """
    Gets the scenarios inputs (one or more).
    Returns a ServiceResult with a list containing the input results as value.
    """
    def __call__(self, *inputs):
        response = self.session.get(
            f'/scenarios/{self.scenario_id}',
            headers={'Connection': 'close'}
        )

        return self.__handle_response(response, *inputs)

    def __handle_response(self, response, *inputs):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if response.ok:
            filtered_inputs = {k:v for k,v in response.json()['user_values'].items() if k in inputs}
            return ServiceResult.success(filtered_inputs)
        try:
            # Check if ETE returned any errors
            return ServiceResult.failure(response.json()['errors'])
        except JSONDecodeError:
            return ServiceResult.failure([f'ETEngine returned a {response.status_code}'])
