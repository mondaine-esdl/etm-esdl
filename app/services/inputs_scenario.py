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
    def __call__(self, *user_values):
        inputs = self.session.get(
            f'/scenarios/{self.scenario_id}/inputs',
            headers={'Connection': 'close'},
        )

        return self.__handle_response(inputs, *user_values)

    def __handle_response(self, inputs, *user_values):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if inputs.ok:
            filtered_inputs = {k:v for k,v in inputs.json().items() if k in user_values}
            return ServiceResult.success(filtered_inputs)
        try:
            # Check if ETE returned any errors
            return ServiceResult.failure(inputs.json()['errors'])
        except JSONDecodeError:
            return ServiceResult.failure([f'ETEngine returned a {inputs.status_code}'])
