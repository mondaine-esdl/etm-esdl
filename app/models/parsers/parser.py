'''
Basic Parser classes
'''

from collections import defaultdict

class Parser():
    '''Base class for all parsers'''

    def __init__(self, energy_system, inputs=None):
        self.energy_system = energy_system
        self.inputs = inputs if inputs is not None else defaultdict(float)

    def get_parsed_inputs(self):
        '''
        Get the inputs after self.parse() has been called at least once. If parse has not
        been called yet, returns an empty dict. Otherwise returns a dict of kind:
        {
            slider_key_1: value,
            slider_key_2: value,
            ...
        }
        '''
        return self.inputs

class AggregratedBuildingParser(Parser):
    '''
    Parser that can (continuously) parse single aggregrated building assets and thus (continuously)
    builds self.inputs
    '''

    def __init__(self, energy_system, total_buildings, *args, **kwargs):
        super().__init__(energy_system, *args, **kwargs)
        self.total_buildings = total_buildings


    def parse(self, aggregated_building, building_type):
        '''
        Parse a single aggerated building, add the results to self.inputs
        '''

class AssetParser(Parser):
    '''
    Parser that parses the whole energy system at once, based on a certain asset_type
    asset_type is an optional argument that can be passed to init
    '''

    def __init__(self, energy_system, props, *args, **kwargs):
        self.props = props
        self.asset_type = kwargs.pop('asset_type', None)
        self.sub_type = kwargs.pop('sub_type', 'default')
        super().__init__(energy_system, *args, **kwargs)


    def parse(self):
        '''
        Parse all supplies of a certain asset type in the energy system and add the
        results to self.inputs
        '''

    def update(self, scenario_id):
        '''
        Update all supplies of a certain asset type in the energy system based on an ETM
        scenario
        '''
