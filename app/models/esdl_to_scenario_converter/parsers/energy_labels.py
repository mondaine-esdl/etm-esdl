'''
Parser for energy labels
'''

from config.conversions.assets import distributions
from config.conversions.key_figures import energyLabel
from .parser import Parser

class EnergyLabelsParser(Parser):
    '''Parser for energy labels, parses per aggegrated building and builds ETM inputs'''
    def __init__(self, energy_system, total_buildings, *args, **kwargs):
        super().__init__(energy_system, *args, **kwargs)
        self.__total_buildings = total_buildings

    def parse(self, aggregated_building, building_type):
        '''
        Parses an aggegrated building and updates self.inputs accordingly

        aggregated_building     AggegratedBuilding asset from the energy system
        building_type           String, the type of building to be parsed
        '''
        energy_labels, prop = self.parse_distribution(aggregated_building, 'energyLabelDistribution')
        share = aggregated_building.numberOfBuildings / self.__total_buildings[building_type]

        etm_value = sum((
            self.__value(perc, share, label, building_type) for label, perc in energy_labels.items()
        ))

        for input_value in prop['inputs'][building_type]:
            self.inputs[input_value] += etm_value

    def parse_distribution(self, aggregated_building, distribution_type):
        """
        Parses the distribution of a certain type in an aggegrated building assets into a dict
        aggregated_building     AggegratedBuilding asset from the energy system
        distribution_type       String, the type of distribution to be parsed e.g.
                                'energyLabelDistribution'

        Returns a tuple with the distribution (dict), and iets properties (dict)
        """
        prop = distributions[distribution_type]
        categories = getattr(getattr(aggregated_building, distribution_type), prop['category'])
        dist = {getattr(cat, prop['attribute']): cat.percentage for cat in categories}

        return dist, prop

    def __value(self, perc, share, label, building_type):
        '''
        TODO: @Roos
        '''
        return perc / 100. * share * energyLabel[str(label)][building_type]
