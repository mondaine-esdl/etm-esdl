"""
Everything to do with ranges
"""

from esdl import esdl


class RangeHandler():
    """
    Handler to add or update a range based on ETM values for an ESDL asset
    """
    def __init__(self, asset, attr, qu):
        self.asset = asset
        self.attr = attr
        self.qu = qu


    def update(self, min, max):
        """
        Update the min and max value of the range

        min     float, minimum value of the range
        max     float, maximal value of the range
        """
        if not self.asset.constraint:
            self.__add_range()

        ranges = self.__get_ranges()

        # Check if min is actually the minimum value and max the maximum value.
        # If not, switch variable values.
        if max < min: min, max = max, min

        # TODO: Conceptually not sure if we should update the values of ALL ranges?!
        for range in ranges:
            range.minValue = min
            range.maxValue = max


    def __get_ranges(self):
        """
        Return generator with the range(s) from the asset's constraint whose
        attributeReference is equal to the given attribute (self.attr)
        """
        return (it.range for it in self.asset.constraint.items
                    if all((
                        type(it) == getattr(esdl, "RangedConstraint"),
                        it.attributeReference == self.attr
                    )))


    def __add_range(self):
        """
        A ranged constraint allows to specify a certain constraint as a range
        (with min and max values)
        """
        # First add a ranged constraint, ...
        ranged_constraint = esdl.RangedConstraint(
            # TODO: Should we add an id, name and description?
            attributeReference=self.attr # e.g. "power" for PVPark
        )

        # ... secondly, add a range to it, ...
        ranged_constraint.range = esdl.Range()

        # Then, append the RangedConstraint including the Range to the asset's constraint
        self.asset.constraint.append(ranged_constraint)
