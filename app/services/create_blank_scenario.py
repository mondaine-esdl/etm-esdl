''' Service to create an empty scenario'''

from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class CreateBlankScenario(EtengineService):
    def __call__(self, area_code, end_year):
        '''
        Creates a new scenario based on the area_code and end_year.
        Returns the scenario_id
        '''
        data = {
            "scenario": {
                "area_code": area_code,
                "end_year": end_year
            }
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
