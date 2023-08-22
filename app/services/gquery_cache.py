# pylint: disable=arguments-differ
from __future__ import annotations # to support return type hinting of own class
from app.utils import singleton
from app.utils.exceptions import ETMParseError
from app.services.query_scenario import QueryScenario

from flask import current_app
from datetime import datetime, timezone

'''
Singleton class that obtains and retains (caches) results for gqueries through QueryScenario.
Due to it being a Singleton it is easy for the users to perform requests at one place in the codebase
and then obtain the results from that requests in other parts. This massively reduces overhead of doing
expensive requests for different gqueries multiple times.

Examples of usage:
1. Get results for gqueries in separate steps:
    # First set the proper scenario-id and gqueries we want to get results for
    GqueryCache().for_scenario_id(10)
    GqueryCache().for_gqueries(['gquery_a', 'gquery_b'])

    # Then perform the request and store the results
    GqueryCache().perform_request()

    # Lastly, obtain the results for the gqueries we requested. This can be done anywhere in the codebase at this point.
    gquery_results = GqueryCache().get(['gquery_a', 'gquery_b']) # Returns a dict with the requested gqueries as keys.

2. GqueryCache supports method chaining. The above can be written as a one-liner like this as well:
    # Set scenario-id, request results for given gqueries and obtain them, all in one go.
    # GqueryCache will automatically perform a request for missing gquery results when calling get().
    gquery_results = GqueryCache().for_scenario_id(10).get(['gquery_a', 'gquery_b'])
'''
@singleton
class GqueryCache():

    def __init__(self):
        self.scenario_id = None
        self.gqueries = {}
        self.gqueries_results = {}
        self.gqueries_results_timestamps = {}

    def for_scenario_id(self, scenario_id) -> GqueryCache:
        ''' Sets scenario_id to perform the next request for '''
        self.scenario_id = scenario_id

        if scenario_id and (self.gqueries.get(scenario_id) is None):
            self.gqueries[scenario_id] = []
        if scenario_id and (self.gqueries_results.get(scenario_id) is None):
            self.gqueries_results[scenario_id] = {}

        return self

    def for_gqueries(self, gqueries) -> GqueryCache:
        '''
        Sets the gqueries to perform requests for, in addition to the gquery(ies) that were already set earlier
        '''
        if not self.scenario_id:
            raise ValueError('Scenario id has to be set before gqueries can be set.')

        if not isinstance(gqueries, list):
            gqueries = [gqueries]

        self.gqueries[self.scenario_id].extend(gqueries)

        # Remove empty values and duplicates, then sort list
        self.gqueries[self.scenario_id] = list(filter(lambda gquery: gquery is not None, set(self.gqueries[self.scenario_id])))
        self.gqueries[self.scenario_id].sort()

        return self

    def for_assets(self, assets) -> GqueryCache:
        '''
        Digs gqueries out of the given asset(s) and adds these to the list of gqueries to perform requests for
        '''
        if not isinstance(assets, list):
            assets = [assets]

        if not assets:
            return self

        # Searches for value of 'gquery' in individual assets
        gqueries = [
            asset_val
            for asset in assets
                for asset_key, asset_val in asset.items() if asset_key == 'gquery'
        ]

        # Searches for value of 'gquery' in 'attr_set' sub-dicts of assets
        gqueries.extend([
            attr_vals['gquery']
            for asset in assets
                for attr_name, attr_sets in asset.items() if attr_name == 'attr_set'
                    for attr_vals in attr_sets.values()
        ])

        self.for_gqueries(gqueries)

        return self

    def perform_request(self, scenario_id =None, force =False) -> GqueryCache:
        '''
        Perform a request to fetch gquery values from ETEngine for the currently set scenario_id.
        Results are stored in 'self.gqueries_results' and can be fetched through the 'get' method (below).
        '''
        # Check if scenario id is present or passed through one of the get methods (below)
        requested_scenario_id = scenario_id if scenario_id else self.scenario_id

        if not requested_scenario_id:
            raise ValueError('Scenario id has to be set before a request can be performed.')

        # Obtain results for all gqueries if 'force' is true. Otherwise only obtain for gqueries with missing results.
        if force:
            missing_gquery_results = self.gqueries[requested_scenario_id]
        else:
            self.check_gquery_cache_validity_for(requested_scenario_id)

            missing_gquery_results = [gquery for gquery in self.gqueries[requested_scenario_id] if gquery not in self.gqueries_results[requested_scenario_id].keys()]

            # Nothing to do! Return
            if not missing_gquery_results:
                return self

        # Perform a request to ETEngine to fetch the missing gquery results.
        query_result = QueryScenario.execute(requested_scenario_id, *missing_gquery_results)

        if not query_result.successful:
            raise ETMParseError(
                f"We currently do not support one of the following gqueries: {missing_gquery_results}"
            )

        # Success, store the contents of the returned gqueries together with the current timestamp
        self.gqueries_results[requested_scenario_id].update(query_result.value)
        self.gqueries_results_timestamps[requested_scenario_id] = datetime.now(timezone.utc)

        return self

    def get(self, gqueries =list(), scenario_id=None) -> dict[str, dict]:
        '''
        Returns the value of the given gquery(ies) as returned by ETEngine. If a single gquery
        is passed it will return the value for that gquery, otherwise it will return a dict with
        the requested gqueries as keys.
        Performs a request (through the 'perform_request' method, see above) if necessary.
        '''
        if not gqueries:
            return {}

        if not isinstance(gqueries, list):
            requested_single_gquery = True
            requested_gqueries = [gqueries]
        else:
            requested_single_gquery = False
            requested_gqueries = gqueries

        # Add given gqueries to list of gqueries to get results for
        self.for_gqueries(requested_gqueries)

        requested_scenario_id = scenario_id if scenario_id else self.scenario_id

        # Let perform_request decide if values for any of the gqueries need to be obtained from server
        self.perform_request(scenario_id=requested_scenario_id)

        if requested_single_gquery:
            return self.gqueries_results[requested_scenario_id][gqueries]
        else:
            return { gquery: self.gqueries_results[requested_scenario_id][gquery] for gquery in requested_gqueries }

    def get_factor_divided_for_attr_set(self, attr_set, scenario_id=None) -> int | str:
        '''
        Bonus method: 
        Obtains the value for the gquery from the given asset attribute set and divides it by its factor
        '''
        gquery_value = self.get(attr_set['gquery'], scenario_id=scenario_id)

        return gquery_value['future'] / attr_set['factor']

    def check_gquery_cache_validity_for(self, scenario_id):
        '''
        Checks how old the cache for a given scenario is.
        If older than GQUERY_RESULTS_CACHE_MAX_AGE_SECONDS the cache is invalid and thus purged.
        '''

        if not scenario_id in self.gqueries_results_timestamps:
            return

        cache_age = (datetime.now(timezone.utc) - self.gqueries_results_timestamps[scenario_id])

        if cache_age.seconds > current_app.config['GQUERY_RESULTS_CACHE_MAX_AGE_SECONDS']:
            self.gqueries_results[scenario_id] = {}
            self.gqueries_results_timestamps[scenario_id] = None

    def reset(self):
        self.scenario_id = None
        self.gqueries = {}
        self.gqueries_results = {}

