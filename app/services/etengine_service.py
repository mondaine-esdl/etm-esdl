'''
Service to establish a connection to ETEngine
'''

import requests
from flask import current_app

class EtengineService():
    """
    Setup a basic service to connect to ETEngine
    """
    def __init__(self, scenario_id):
        self.session = SessionWithUrlBase(current_app.config['ETENGINE_URL'])
        self.scenario_id = scenario_id

    def __call__(self, *args, **kwargs):
        raise NotImplementedError()

    @classmethod
    def execute(cls, scenario_id, *args, **kwargs):
        '''
        Creates a new Services and executes it
        '''
        service = cls(scenario_id)
        return service.__call__(*args, **kwargs)

# Can/should we get rid of this?
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
