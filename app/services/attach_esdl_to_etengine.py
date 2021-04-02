''' Service for uploading an ESDL file to ETEngine'''

from app.services.etengine_service import EtengineService
from app.services.service_result import ServiceResult

class AttachEsdlToEtengine(EtengineService):
    def __call__(self, energy_system_stream, title):
        """
        Attach the energy system to the scenario
        """
        # Rewind the BytesIO stream just to be sure
        energy_system_stream.seek(0)
        files = {"file": (title, energy_system_stream)}
        response = self.session.put(
            '/scenarios/' + str(self.scenario_id) + "/esdl_file",
            files=files,
            headers={'Connection': 'close'}
        )

        return self.__handle_response(response)

    def __handle_response(self, response):
        '''
        Returns a service result, by which we can check later if it's
        a success or not
        '''
        if response.ok:
            return ServiceResult.success()

        if response.status_code == 422:
            return ServiceResult.failure(response.json()['errors'])

        if response.status_code == 413:
            return ServiceResult.failure(['File is too large'])

        return ServiceResult.failure([f'ETEngine returned a {response.status_code}'])
