"""
Everything to do with profiles
"""

from esdl import esdl


class ProfileHandler():
    """
    Handler to add or update profile based on ETM values for an ESDL asset
    """
    def __init__(self, asset):
        self.asset = asset


    def update(self, val, qu):
        """
        Update the SingleValue of the asset's StaticProfile

        val     float, value representing the yearly (demand) volume
        qu      QuantityAndUnitType (ESDL)
        """
        if not self.asset.port:
            print(f"Warning! Yearly demand volume couldn't be added to the {self.asset} asset because no port was found.")

            return

        if not self.asset.port[0].profile:
            self.__add_profile(qu)

        self.asset.port[0].profile[0].value = val


    def __add_profile(self, qu):
        """
        A single value is added as a static profile to the asset's inPort

        TODO: Make it possible to add other types of profiles

        TODO: How to deal with multiple ports? How to check if 
        we're dealing with the correct port?
        """

        # First, add a SingleValue profile
        yearly_demand = esdl.SingleValue(name="Yearly demand")
        self.asset.port[0].profile.append(yearly_demand)

        # Then, add quantity and units to it
        self.asset.port[0].profile[0].profileQuantityAndUnit = qu
