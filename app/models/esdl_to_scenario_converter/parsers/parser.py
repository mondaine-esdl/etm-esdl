'''
Basic Parser class
'''
from collections import defaultdict

class Parser():
    '''Base class for all parsers'''

    def __init__(self, energy_system, inputs=None):
        self.energy_system = energy_system
        self.inputs = inputs if inputs else defaultdict(float)

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
