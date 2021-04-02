'''
This is now mostly legacy code, all neccesary things should be transformed into a service
'''

import sys

import io
import json
import requests

from flask import current_app
from app.helpers.exceptions import EnergysystemParseError
from app.helpers.StringURI import StringURI
from app.constants.errors import messages as messages

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


    def return_gqueries(self, response):
        """
        Extracts information from object p by converting to JSON (use
        like a dict).
        """
        return response.json()["gqueries"]


    def create_new_scenario(self, scenario_title, area_code, end_year):
        """
        Create a new scenario in the ETM. The scenario_id is saved so we can
        continue from the new scenario later on.
        """
        post_data = {
            "scenario": {
                "title": scenario_title,
                "area_code": area_code,
                "end_year": end_year
            }
        }
        response = self.session.post("/scenarios", json=post_data,
                                     headers={'Connection':'close'})

        self.scenario_id = response.json()["id"]


    def reset_scenario(self):
        """
        Resets scenario with scenario_id
        """
        put_data = {"reset": True}
        response = self.session.put('/scenarios/' + self.scenario_id, json=put_data,
                                    headers={'Connection':'close'})
        self.current_metrics = self.return_gqueries(response)


    def get_inputs(self):
        """
        Get list of available inputs. Can be used to search parameter space?
        """
        response = self.session.get('/scenarios/' + self.scenario_id + "/inputs",
                                    headers={'Connection':'close'})

        self.dict_inputs = response.json()

    def fetch_energy_system(self):
        """
        Try to download the attached ESDL file from the scenario
        """
        response = self.session.get('/scenarios/' +  str(self.scenario_id) + "/esdl_file?download=true",
                                    headers={'Connection':'close'})
        self.handle_response(response)

        return response.json()['file']

    def change_inputs(self, user_values):
        """
        Change inputs to ETM according to dictionary user_values. Also the
        metrics are updated by passing a gquery via gquery_metrics
        """
        put_data = {
            "scenario": {
                "user_values": user_values
            },
            "detailed": True,
        }
        response = self.session.put('/scenarios/' + str(self.scenario_id),
                                    json=put_data, headers={'Connection':'close'})
        self.handle_response(response)

    def handle_response(self, response):
        if response.ok:
            return

        errors = response.json()['errors']
        message = errors[0]
        for etm_message, readable in messages.items():
            for error in errors:
                if etm_message in error:
                    message = readable
                    break

        print(f'\nERROR! {message}\n')

        raise EnergysystemParseError(message, payload=response)
