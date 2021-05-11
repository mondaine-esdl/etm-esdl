'''
This is now mostly legacy code, all neccesary things should be transformed into a service
'''
import requests

from flask import current_app
from app.helpers.exceptions import EnergysystemParseError
from app.constants.errors import messages

class SessionWithUrlBase(requests.Session):
    """
    Helper class to store the base url. This allows us to only type the
    relevant additional information.
    from: https://stackoverflow.com/questions/42601812/python-requests-url-base-in-session
    """
    def __init__(self, url_base=None, *args, **kwargs):
        super(SessionWithUrlBase, self).__init__(*args, **kwargs)
        self.url_base = url_base


    def request(self, method, url, **kwargs):
        modified_url = self.url_base + url

        return super(SessionWithUrlBase, self).request(
            method, modified_url, **kwargs)


class ETM_API(object):
    """
    Creates an object based on the ETM api by Quintel
    (see: https://energytransitionmodel.com/api). Each object is connected
    to a single scenario which is identified by the scenario_id. Via the api we
    can request key parameters as shown by the ETM and we can also change
    various input parameters.
    """

    def __init__(self, environment, scenario_id="363691"):
        """
        Note: 363691 is the scenario_id of a default scenario created by
        DataQuest. This scenario is stored within the ETM for future use.
        """
        self.session = SessionWithUrlBase(current_app.config['ETENGINE'][environment])
        self.scenario_id = scenario_id
        self.environment = environment

    def fetch_energy_system(self):
        """
        Try to download the attached ESDL file from the scenario
        """
        response = self.session.get('/scenarios/' +  str(self.scenario_id) + "/esdl_file?download=true",
                                    headers={'Connection':'close'})
        self.handle_response(response)

        return response.json()['file']

    def handle_response(self, response):
        if response.ok:
            return

        errors = response.json()['errors']

        if isinstance(errors, list): message = errors[0]
        else: message = ', '.join([f"{key} {', '.join(value)}" for key, value in errors.items()])

        for etm_message, readable in messages.items():
            for error in errors:
                if etm_message in error:
                    message = readable
                    break

        print(f'\nERROR! {message}\n')

        raise EnergysystemParseError(message, payload=response)
