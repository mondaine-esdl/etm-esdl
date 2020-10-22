# Balancer is initialised with slider settings like the ones defined in
# config/inputs. On call it returns said slider settings, altered so that the
# values of sliders in a balancing group sum to 100.

class Balancer:
  def __init__(self, slider_settings):
    self.slider_settings = slider_settings

  # Returns a dict of grouped sliders, based on self.slider_settings,
  # in the following structure:
  #
  # {
  #   balancing_group_1: {
  #     slider_1: value,
  #     slider_2: value
  #   },
  #   balancing_group_2: {
  #     ...
  #   },
  #   ...
  # }
  #
  def grouped_sliders(self):
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

  # Main function
  # Changes self.slider_setttings so that the sliders in each balancing
  # group sum to 100. Returns self.slider_settings
  #
  def call(self):
    for group, sliders in self.grouped_sliders().items():
      # Check if the set sliders in the share group sum to 100
      total = sum(sliders.values())
      losses = 100 - total

      print(f'balancing {group}: sums to {total}, distributing {losses}')

      # Even distribution over all set sliders, also set untouched sliders
      # in share group to 0
      distribution = losses / float(len(sliders))
      for slider, value in sliders.items():
        if self.slider_settings[slider]['value']:
          self.slider_settings[slider]['value'] += distribution
        else:
          self.slider_settings[slider]['value'] = 0

    return self.slider_settings
