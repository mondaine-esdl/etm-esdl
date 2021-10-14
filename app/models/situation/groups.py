'''Helpers for naming issues concerning indusrty groups'''


def slider_for(group):
    '''Returns the slider (str) for the industry group'''
    return f'industry_useful_demand_for_{group}'


def context_query_for(group):
    '''Returns the context query (str) for the group'''
    if group == 'chemical_other':
        query_group = 'other_chemical'
    elif group == 'chemical_refineries':
        query_group = 'refineries'
    elif group == 'aggregated_other':
        query_group = 'other_non_specified'
    elif group == 'other_food':
        query_group = 'food'
    elif group == 'other_paper':
        query_group = 'paper'
    else:
        return ''
    return f'final_demand_of_natural_gas_and_derivatives_in_{query_group}_industry_energetic'


def balancing_group_for(group):
    '''Returns the balancing group (str) for the group'''
    return f'industry_heating_{group}'
