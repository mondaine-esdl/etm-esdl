''' Service for fetching an ESDL file to ETEngine'''
# pylint: disable=arguments-differ
from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class FetchEsdlFromEtengine(EtengineService):
    """
    Fetch the energy system from the ETM scenario
    """

    def __call__(self):
        response = self.session.get(
            '/scenarios/' +  str(self.scenario_id) + "/esdl_file?download=true",
            headers={'Connection':'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's
        a success or not
        '''
        if response.ok:
            if 'file' in response.json():
                return ServiceResult.success(response.json()['file'])
            return ServiceResult.failure(['No ESDL file found'])

        if response.status_code == 422:
            return ServiceResult.failure(response.json()['errors'])

        print(f'ETEngine returned a {response.status_code}')
        return ServiceResult.failure(['Something went wrong'])
