'''Holds utililty classes for garbage collection'''
import gc

class HaltGarbageCollection():
    '''
    Can be used with a 'with' statement to temporarily stop garbage collection,
    and empties everything afterwards
    '''
    def __init__(self):
        ''''''

    def __enter__(self):
        '''Halts all garbage collection'''
        gc.disable()

    def __exit__(self, exc_type, exc_val, traceback):
        '''Continues garbage collection and immeadiatly collects upto generation 1'''
        gc.enable()
        gc.collect(1)
