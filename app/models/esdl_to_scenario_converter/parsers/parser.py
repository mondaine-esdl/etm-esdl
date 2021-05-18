'''
Basic Parser class
'''

class Parser():
    def __init__(self, energy_system, inputs=None):
        self.energy_system = energy_system
        self.inputs = inputs if inputs else {}

    def get_parsed_inputs(self):
        return self.inputs
