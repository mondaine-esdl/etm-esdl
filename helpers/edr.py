import requests
from requests import Session, adapters
from xml.etree import ElementTree
import urllib.parse

from helpers.energy_system_handler import EnergySystemHandler

class EnergyDataRepository():
    """
    Class to connect to the EnergyDataRepository (EDR) and collect relevant
    data.
    """

    def __init__(self):
        self.session = Session()
        self.base_url = 'http://edr.hesi.energy/store'


    def parse(self, response):
        esh = EnergySystemHandler()

        try:
            esdl_string = urllib.parse.unquote(response.text)
            esh.load_from_string(esdl_string)
        except EnergysystemParseError:
            raise

        return esh.es


    def get_asset(self, asset_id):
        """
        Get ESDL asset by ID
        """
        params = {
            'format': 'xml'
        }

        response = self.session.get(
            f'{self.base_url}/esdl/{asset_id}',
            params=params,
            verify=True)

        return self.parse(response)
