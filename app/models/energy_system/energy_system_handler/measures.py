'''Controls Measures object in the energy system'''
from esdl import esdl

# THIS MODULE IS CURRENTLY NOT ADDED TO THE ESH

def add_measures(self):
    ''' Add Measures object to Energy System '''
    # Create new Measures object
    measures = esdl.Measures(id='measures')
    self.area().measures = measures

def append_measure(self, measure):
    ''' Append measure to Measures object '''
    self.area().measures.measure.append(measure)

def append_asset_to_measure(self, measure, asset):
    ''' Append asset measure to Measures object '''
    measure.asset.append(asset)
    self.area().measures.measure.append(measure)
