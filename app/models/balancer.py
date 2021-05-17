''' Balances sliders in a balancing group to sum to 100. '''

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
        for slider, settings in self.slider_settings.items():
             # Check if the slider has a balancing group and a value set
            if 'balancing_group' in settings:
                # Setup empty balancing group in dict if the group is not present
                if not settings['balancing_group'] in grouped_sliders:
                    grouped_sliders[settings['balancing_group']] = {}

                # Add slider to group
                grouped_sliders[settings['balancing_group']][slider] = settings['value'] or 0
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

            if total < 100:
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
        for slider, _value in sliders.items():
            if self.slider_settings[slider]['value']:
                self.slider_settings[slider]['value'] += distribution
            else:
                self.slider_settings[slider]['value'] = 0

    def __rescale_values(self, sliders, factor):
        '''
        Multpily all set sliders by factor, also set untouched sliders
        in share group to 0
        '''
        for slider, _value in sliders.items():
            if self.slider_settings[slider]['value']:
                self.slider_settings[slider]['value'] *= factor
            else:
                self.slider_settings[slider]['value'] = 0
