''' Service to create an empty scenario'''
# pylint: disable=arguments-differ
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class CreateScenario(EtengineService):
    '''
    Creates a new scenario based on the area_code and end_year.
    Returns the scenario_id
    '''

    def __call__(self, scenario_attrs):
        if self.scenario_id: scenario_attrs['scenario_id'] = self.scenario_id

        data = {
            "scenario": scenario_attrs
        }

        response = self.session.post(
            '/scenarios',
            json=data,
            headers={'Connection':'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if response.ok:
            return ServiceResult.success(response.json()['id'])

        return ServiceResult.failure(response.json()['errors'])
