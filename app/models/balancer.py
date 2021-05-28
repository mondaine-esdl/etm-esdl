''' Balances sliders in a balancing group to sum to 100. '''
from config.conversions import balancing_groups

class Balancer:
    '''
    Balancer is initialised with slider settings like the ones defined in
    config/inputs. On call it returns said slider settings, altered so that the
    values of sliders in a balancing group sum to 100.
    '''
    def __init__(self, slider_settings):
        self.slider_settings = slider_settings


    def grouped_sliders(self):
        '''
        Returns a dict of grouped sliders, based on self.slider_settings,
        in the following structure:

        {
        balancing_group_1: {
          slider_1: value,
          slider_2: value
        },
        balancing_group_2: {
          ...
        },
        ...
        }

        '''
        grouped_sliders = {}
        for group, sliders in balancing_groups.items():
            grouped_sliders[group] = {slider: self.slider_settings[slider] for slider in sliders}

        return grouped_sliders


    def call(self):
        '''
        Main function
        Changes self.slider_setttings so that the sliders in each balancing
        group sum to 100. Returns self.slider_settings
        '''
        for group, sliders in self.grouped_sliders().items():
            # Check if the set sliders in the share group sum to 100
            total = sum(sliders.values())

            if total == 100.0:
                continue

            if total == 0:
                for slider in sliders: del self.slider_settings[slider]
            elif total < 100:
                losses = 100 - total
                print(f'balancing {group}: sums to {total}, distributing {losses}')
                self.__distribute_losses(sliders, losses)

            else:
                factor = 100 / total
                print(f'balancing {group}: sums to {total}, rescaling by factor {factor}')
                self.__rescale_values(sliders, factor)

        return self.slider_settings

    def __distribute_losses(self, sliders, losses):
        '''
        Even distribution over all set sliders, also set untouched sliders
        in share group to 0
        '''
        distribution = losses / float(len(sliders))
        for slider in sliders:
            self.slider_settings[slider] += distribution


    def __rescale_values(self, sliders, factor):
        '''
        Multpily all set sliders by factor, also set untouched sliders
        in share group to 0
        '''
        for slider in sliders:
            self.slider_settings[slider] *= factor
