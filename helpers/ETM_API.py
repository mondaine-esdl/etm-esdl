# system modules
import sys

# external modules
import io
import json
import requests

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

    def __init__(self, session, scenario_id = "363691"):
        """
        Note: 363691 is the scenario_id of a default scenario created by
        DataQuest. This scenario is stored within the ETM for future use.
        """
        self.session = session
        self.scenario_id = scenario_id

    def return_gqueries(self,p):
        """
        Extracts information from object p by converting to JSON (use
        like a dict).
        """
        return p.json()["gqueries"]

    def create_new_scenario(self, scenario_title, area_code, end_year):
        """
        Create a new scenario in the ETM. The scenario_id is saved so we can
        continue from the new scenario later on.
        """
        post_data = {
                     "scenario":
                               {
                               "title": scenario_title,
                               "area_code": area_code,
                               "end_year": end_year
                               }
                     }
        p = self.session.post("/scenarios", json = post_data,
                                                headers={'Connection':'close'})

        self.scenario_id = p.json()["id"]
        pass

    def reset_scenario(self):
        """
        Resets scenario with scenario_id
        """
        put_data = {"reset": True}
        p = self.session.put('/scenarios/' + self.scenario_id, json = put_data,
                                                headers={'Connection':'close'})
        self.current_metrics = self.return_gqueries(p)
        pass

    def get_inputs(self):
        """
        Get list of available inputs. Can be used to search parameter space?
        """
        p = self.session.get('/scenarios/' + self.scenario_id + "/inputs",
                                                headers={'Connection':'close'})

        self.dict_inputs = p.json()
        pass

    def get_current_metrics(self, gquery_metrics):
        """
        Perform a gquery on the the ETM model. gquery_metrics is a list of
        available ggueries.
        """
        put_data = {
                   "gqueries": gquery_metrics,
                   "detailed": True
                   }

        p = self.session.put('/scenarios/' + str(self.scenario_id), json = put_data,
                                                headers={'Connection':'close'})
                                                
        self.current_metrics = self.return_gqueries(p)
        return self.current_metrics

    def change_inputs(self, user_values):
        """
        Change inputs to ETM according to dictionary user_values. Also the
        metrics are updated by passing a gquery via gquery_metrics
        """
        put_data = {
                   "scenario":
                             {
                             "user_values": user_values
                             },
                   "detailed": True,
                   }
        p = self.session.put('/scenarios/' + str(self.scenario_id), json = put_data,
                                                headers={'Connection':'close'})

        if p.status_code != requests.codes.ok:
          print(json.dumps(p.json(), indent=4, sort_keys=True))
          sys.exit(1)
