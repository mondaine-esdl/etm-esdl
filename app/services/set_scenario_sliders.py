''' Service to set sliders for a scenario'''
# pylint: disable=arguments-differ
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class SetScenarioSliders(EtengineService):
    '''
    Change inputs to ETM according to dictionary sliders: {slider_key: value}.
    '''

    def __call__(self, sliders):
        data = {'scenario': {'user_values': sliders},'detailed': True}

        response = self.session.put(
            '/scenarios/' + str(self.scenario_id),
            json=data,
            headers={'Connection':'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's a success or not
        '''
        if response.ok:
            return ServiceResult.success()

        return ServiceResult.failure(response.json()['errors'])
