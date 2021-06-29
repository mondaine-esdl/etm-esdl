''' Describes a situation that can be used for comparing esdl-scenario settings'''
from app.utils.exceptions import ETMParseError, EnergysystemParseError
from app.services.query_scenario import QueryScenario

class Situation:
    ''' Describes a situation that can be used for comparing esdl-scenario settings'''

    CONTEXT_INPUTS = [
        'query_1',
        'query_2',
        'query_3',
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
        ''' Get context slider settings from ETM scenario '''
        result = QueryScenario.execute(context_scenario_id, *self.CONTEXT_INPUTS)
        if result.successful:
            self.context = result.value
        else:
            raise ETMParseError.with_humanized_message(result.errors)

    def relative_change_to(self, other):
        '''
        Calculates the slider settings of the current situation compared to the
        relative change to another
        Returns a new situation
        '''
        Situation.sanity_check(self, other)

        # TODO: calculate a new situation!

        return Situation(self.slider_settings, self.area, self.year)

    @staticmethod
    def sanity_check(sit_1, sit_2):
        '''Performs a sanity check before two Situations can be compared'''
        if sit_1.area != sit_2.area:
            raise EnergysystemParseError('Areas do not match')
        if sit_1.context and sit_1.context['end_year'] != sit_2.year:
            raise EnergysystemParseError('Context scenario does not match compared sitation')
