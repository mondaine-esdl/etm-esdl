'''
Service to establish a connection to ETEngine
'''

import requests
from flask import current_app

class EtengineService():
    """
    Setup a basic service to connect to ETEngine
    """
    def __init__(self, environment, scenario_id=0):
        self.session = SessionWithUrlBase(current_app.config['ETENGINE'][environment])
        self.scenario_id = scenario_id

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
