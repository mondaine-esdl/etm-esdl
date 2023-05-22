'''
Parser for energy labels - this one is special because it has a special config
'''

from app.models.conversion_assets import distributions, energy_label_percentages
from .parser import BuildingParser

class EnergyLabelsParser(BuildingParser):
    '''Parser for energy labels, parses per aggegrated building and builds ETM inputs'''

    def parse(self, building, building_type, is_aggregated=False):
        '''
        Parses an aggegrated building and updates self.inputs accordingly

        building                Building or AggegratedBuilding asset from the energy system
        building_type           String, the type of building to be parsed
        is_aggregated           Boolean, True for an AggregatedBuilding and False for a Building
        '''
        energy_labels, prop = self.parse_distribution(building, 'energyLabelDistribution')

        number_of_buildings = building.numberOfBuildings if is_aggregated else 1
        share = number_of_buildings / self.total_buildings[building_type]

        etm_value = sum((
            self.__value(perc, share, label, building_type) for label, perc in energy_labels.items()
        ))

        for input_value in prop['inputs'][building_type]:
            self.inputs[input_value] += etm_value

    def parse_distribution(self, building, distribution_type):
        """
        Parses the distribution of a certain type in an aggegrated building assets into a dict
        building                AggegratedBuilding asset from the energy system
        distribution_type       String, the type of distribution to be parsed e.g.
                                'energyLabelDistribution'

        Returns a tuple with the distribution (dict), and iets properties (dict)
        """
        prop = distributions[distribution_type]
        categories = getattr(getattr(building, distribution_type), prop['category'])
        dist = {getattr(cat, prop['attribute']): cat.percentage for cat in categories}

        return dist, prop

    def __value(self, perc, share, label, building_type):
        '''
        TODO: @Roos
        '''
        return perc / 100. * share * energy_label_percentages[str(label)][building_type]
