'''Module to help with getting the context for a Situation'''

from app.services.inputs_scenario import InputsScenario
from app.services.query_scenario import QueryScenario
from app.utils.api_utils import fail_with

def get_context_values(scenario_id, inputs, queries):
    '''
    Gets all the requested inputs and queries from the ETM scenario
    May use two calls to achive this, as the queries and default inputs have different
    endpoints.

    scenario_id (int) - The ETM scenario ID
    inputs (list)     - The ETM inputs (sliders) where future and present values are requested from
    queries (list)    - ETM gqueries where future and present values are requested from

    Returns a dict with the inputs and queries as keys, with ETM future and present values
    in a nested dict
    '''
    values = {}

    if inputs:
        raw_result = InputsScenario.execute(scenario_id, *inputs)
        values = process(raw_result) if raw_result.successful else fail_with(raw_result)

    # We always need to access this because we need area and end year
    # (TODO: we can also get that from inputs)
    query_result = QueryScenario.execute(scenario_id, detailed=True, *queries)
    if not query_result.successful: return fail_with(raw_result)

    values.update(query_result.value)

    return values

def process(raw_result):
    '''
    Processes the succesful inputs result into a dict that conforms to the query response style:
    {
        input1: {
            future:  2,
            present: 5
        },
        ...
    }

    Returns the result in dict form
    '''
    return {key : extract_present_future(value) for key, value in raw_result.value.items()}


def extract_present_future(input_response):
    '''
    Returns the response of an input_response as a dict with the present (default)
    and future (user) values as keys
    '''
    return {
        'future': input_response.get('user', input_response['default']),
        'present': input_response['default']
    }
