''' Describes a situation that can be used for comparing esdl-scenario settings'''
from app.utils.exceptions import ETMParseError, EnergysystemParseError
from app.services.query_scenario import QueryScenario

class Situation:
    ''' Describes a situation that can be used for comparing esdl-scenario settings'''

    # TODO: or are these the same sliders as are already in the slider settings? < alle sliders bij elkaar optellen
    CONTEXT_INPUTS = [
        'industry_useful_demand_for_chemical_refineries'
    ]

    # Sliders that should be calculated with the calculate_slider_based_on_present_share method
    PRESENT_SHARE_SLIDERS =[
        'industry_useful_demand_for_chemical_refineries',
        # alle technologien
    ]

    def __init__(self, slider_settings, area, year):
        self.slider_settings = slider_settings
        self.area = area
        self.year = year
        self.context = {}

    def __eq__(self, other):
        if type(other) is type(self) and self.area == other.area and self.year == other.year:
            return self.slider_settings == other.slider_settings
        return False

    def set_context_scenario(self, context_scenario_id):
        ''' Get context slider settings from ETM scenario and set them in the Situation'''
        result = QueryScenario.execute(context_scenario_id, detailed=True, *self.CONTEXT_INPUTS)
        if result.successful:
            self.context = result.value
        else:
            raise ETMParseError.with_humanized_message(result.errors)


    def relative_change_to_for_context(self, other):
        '''
        Calculates new slider settings. Compares the current 'present' Situation to the
        relative change to another 'future' Situation, based on the context set for the
        current Situation.
        Returns a new Situation for the context, with the change of self to other incorporated
        '''
        Situation.sanity_check(self, other)

        slider_settings = {}
        for slider in self.PRESENT_SHARE_SLIDERS:
            slider_settings[slider] = self.calculate_slider_based_on_present_share(other, slider)

        # TODO: other methods??


        return Situation(slider_settings, self.context['area_code'], self.context['end_year'])


    def calculate_slider_based_on_present_share(self, other, slider):
        '''
        Calculate a new slider setting based on present and future Situations and a context.
        Assumes self as present and other as future.
        '''
        present_share = self.slider_settings[slider] / self.context[slider]['present']
        assumed_future = self.context[slider]['future'] * present_share
        return self.context[slider]['future'] + (other.slider_settings[slider] - assumed_future)

    @staticmethod
    def sanity_check(sit_1, sit_2):
        '''Performs a sanity check before two Situations can be compared'''
        if sit_1.area != sit_2.area:
            raise EnergysystemParseError('Areas do not match')
        if not sit_1.context:
            raise EnergysystemParseError('Context scenario is needed to measure relative change')
        if sit_1.context['end_year'] != sit_2.year:
            raise EnergysystemParseError('Context scenario does not match compared situation')
