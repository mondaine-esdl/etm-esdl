"""
Everything to do with costs
"""

from esdl import esdl


class CostHandler():
    """
    Handler to add or update the ETM costs for an ESDL asset
    """
    def __init__(self, asset):
        self.asset = asset
        self.__add_cost_information()


    def __add_cost_information(self):
        """
        Cost information can be used to describe the costs to acquire, install
        and maintain a certain asset
        """
        if not self.asset.costInformation:
            # Should we add an id, name and description?
            self.asset.costInformation = esdl.CostInformation()


    def update(self, vals):
        """
        Determine which cost values should be updated and call the relevant
        functions
        """
        # TODO
        return


    def update_marginal_costs(self, val):
        """
        Update the asset's marginal costs to the ETM value
        """
        if not self.asset.costInformation.marginalCosts:
            # Add value (should we add an id?)
            self.asset.costInformation.marginalCosts = esdl.SingleValue(value=val)

            # Add quantity and units to the value
            self.asset.costInformation.marginalCosts.profileQuantityAndUnit = (
                esdl.QuantityAndUnitType(
                    # id
                    perUnit="WATTHOUR",
                    description="Cost in EUR/MWh",
                    perMultiplier="MEGA",
                    unit="EURO",
                    physicalQuantity="COST"
                )
            )

        else:
            self.asset.costInformation.marginalCosts.value = val


    def update_investment_costs(self):
        """
        Update the asset's investment costs to the ETM value
        """
        return


    def update_installation_costs(self):
        """
        Update the asset's installation costs to the ETM value
        """
        return


    def update_fixed_om_costs(self):
        """
        Update the asset's fixed operational and maintenance costs to the
        ETM value
        """
        return


    def update_variable_om_costs(self):
        """
        Update the asset's variable operational and maintenance costs to the
        ETM value
        """
        return


    def update_discount_rate(self):
        """
        Update the asset's discount rate to the ETM value
        """
        return


    def update_variable_operational_costs(self):
        """
        Update the asset's variable operational costs to the ETM value
        """
        return


    def update_fixed_operational_costs(self):
        """
        Update the asset's fixed operational costs to the ETM value
        """
        return


    def update_fixed_maintenance_costs(self):
        """
        Update the asset's fixed maintenance costs to the ETM value
        """
        return


    def update_variable_maintenance_costs(self):
        """
        Update the asset's variable maintenance costs to the ETM value
        """
        return


    def update_development_costs(self):
        """
        Update the asset's development costs to the ETM value
        """
        return
