''' TODO Check if this should be a model or a service'''

import urllib.parse
from requests import Session
from .energy_system_handler import EnergySystemHandler

class EnergyDataRepository():
    """
    Class to connect to the EnergyDataRepository (EDR) and collect relevant
    data.
    """

    def __init__(self):
        self.session = Session()
        self.base_url = 'http://edr.hesi.energy/store'


    def parse(self, response):
        esh = EnergySystemHandler.from_string(
            urllib.parse.unquote(response.text)
        )

        return esh.es


    # TODO: can we also get this from the vendor/esdl module??
    def get_asset(self, asset_id):
        """
        Get ESDL asset by ID
        """
        # TODO: why is this in xml then ESH and then only the 'power' attribute is extracted?
        # Couldn't we request the info as json and directly extract the power attribute form there?
        params = {
            'format': 'xml'
        }

        response = self.session.get(
            f'{self.base_url}/esdl/{asset_id}',
            params=params,
            verify=True)

        return self.parse(response)
