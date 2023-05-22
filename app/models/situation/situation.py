''' Describes a situation that can be used for comparing esdl-scenario settings'''

from collections import defaultdict

from app.utils.exceptions import EnergysystemParseError
from app.models.conversion_assets import balancing_groups
from app.models.balancer import Balancer
from app.models.situation.groups import slider_for, context_query_for, balancing_group_for
import app.models.situation.context as context

class Situation:
    ''' Describes a situation that can be used for comparing esdl-scenario settings'''

    # Sliders that should be calculated with the calculate_slider_based_on_present_share method
    PRESENT_SHARE_SLIDERS =[
        'capacity_of_energy_power_combined_cycle_network_gas',
        'capacity_of_energy_power_supercritical_waste_mix',
        'capacity_of_energy_power_ultra_supercritical_coal',
        'capacity_of_industry_chp_combined_cycle_gas_power_fuelmix',
        'capacity_of_industry_chp_engine_gas_power_fuelmix',
        'capacity_of_industry_chp_turbine_gas_power_fuelmix',
        'capacity_of_energy_power_solar_pv_solar_radiation'
    ]

    INDUSTRY_GROUPS = [
        'chemical_other', 'chemical_refineries', 'aggregated_other', 'other_food', 'other_paper'
    ]

    EXTRA_INDUSTRY_SLIDERS = [slider_for(group) for group in INDUSTRY_GROUPS]
    EXTRA_BUILDING_SLIDER = 'number_of_buildings'
    CONTEXT_QUERIES = [context_query_for(group) for group in INDUSTRY_GROUPS] + ['etmoses_number_of_buildings']
    
    CONTEXT_INPUTS = (PRESENT_SHARE_SLIDERS + EXTRA_INDUSTRY_SLIDERS + [EXTRA_BUILDING_SLIDER] +
        [bgs for group in INDUSTRY_GROUPS for bgs in balancing_groups[balancing_group_for(group)]] +
        balancing_groups['buildings_heating'])

    def __init__(self, slider_settings, number_of_buildings, area, year):
        self.slider_settings = slider_settings
        self.number_of_buildings = number_of_buildings
        self.area = area
        self.year = year
        self.context = {}

    def __eq__(self, other):
        if type(other) is type(self) and self.area == other.area and self.year == other.year:
            return self.slider_settings == other.slider_settings
        return False


    def set_context_scenario(self, context_scenario_id):
        ''' Get context slider settings from ETM scenario and set them in the Situation'''
        self.context = context.get_context_values(
            context_scenario_id,
            self.CONTEXT_INPUTS,
            self.CONTEXT_QUERIES
        )


    def relative_change_to_for_context(self, other):
        """
        Calculates new slider settings. Compares the current 'present' Situation to the
        relative change to another 'future' Situation, based on the context set for the
        current Situation.
        Returns a new Situation for the context, with the change of self to other incorporated
        """
        Situation.sanity_check(self, other)

        # Calculate settings for present share sliders
        slider_settings = defaultdict(float)
        for slider in self.PRESENT_SHARE_SLIDERS:
            slider_settings[slider] = self.calculate_slider_based_on_present_share(other, slider)

        # Calculate settings for industry sliders
        for group in self.INDUSTRY_GROUPS:
            slider_settings.update(self.calculate_industry_heat_share_group_sliders(other, group))

            slider_settings[slider_for(group)] = self.calculate_slider_based_on_present_share_of_query(
                other,
                slider_for(group),
                context_query_for(group)
            )

        # Calculate settings for building heating mix sliders
        slider_settings.update(self.calculate_buildings_heat_share_group_sliders(other))

        Balancer(slider_settings).call()

        return Situation(slider_settings, self.number_of_buildings, self.context['area_code'], self.context['end_year'])


    def calculate_slider_based_on_present_share(self, other, slider, base=1.0):
        """
        Calculate a new slider setting based on present and future Situations and a context.
        Assumes self as present and other as future.
        """
        present_share = Situation.try_division(
            self.slider_settings[slider], self.context[slider]['present']
        )

        assumed_future = self.context[slider]['future'] * present_share

        new_value = self.context[slider]['future'] + (
            (other.slider_settings[slider] - assumed_future) * base
        )

        return new_value if new_value > 0 else 0.0


    def calculate_buildings_heat_share_group_sliders(self, other):
        """
        Returns slider settings for the buildings heat share group
        """
        share_in_context = Situation.try_division(
            self.number_of_buildings['UTILITY'],
            self.context['etmoses_number_of_buildings']['future']
        )

        return {
            input: self.calculate_slider_based_on_present_share(other, input, base=share_in_context)
            for input in balancing_groups['buildings_heating']
        }


    def calculate_industry_heat_share_group_sliders(self, other, group):
        '''Returns slider settings for the industry heat share group'''
        share_in_context = Situation.try_division(
            other.slider_settings[slider_for(group)],
            self.context[context_query_for(group)]['future']
        )

        return {
            input: self.calculate_slider_based_on_present_share(other, input, base=share_in_context)
            for input in balancing_groups[balancing_group_for(group)]
        }


    def calculate_slider_based_on_present_share_of_query(self, other, slider, query):
        '''
        Similar to calculate_slider_based_on_present_share but uses a query on the
        context scenario instead of checking a slider

        Returns a precentage
        '''
        present_share = Situation.try_division(
            self.slider_settings[slider],
            self.context[query]['present']
        )

        assumed_future = self.context[query]['future'] * present_share
        assumed_new_size = self.context[query]['future'] + (
            other.slider_settings[slider] - assumed_future
        )

        return Situation.try_division(assumed_new_size, self.context[query]['present']) * 100

    @staticmethod
    def try_division(first, second):
        '''Divide first by second. Escape ZeroDivisionError by returning 0.0'''
        return first / second if second else 0.0

    @staticmethod
    def sanity_check(sit_1, sit_2):
        '''Performs a sanity check before two Situations can be compared'''
        if sit_1.area != sit_2.area:
            raise EnergysystemParseError('Areas do not match')
        if not sit_1.context:
            raise EnergysystemParseError('Context scenario is needed to measure relative change')
        if sit_1.context['end_year'] != sit_2.year:
            raise EnergysystemParseError('Context scenario does not match compared situation')
