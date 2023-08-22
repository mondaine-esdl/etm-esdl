''' Tests for the GqueryCache singleton class '''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import unittest
from unittest.mock import Mock, patch
from app import create_app
from flask import current_app
from freezegun import freeze_time
import datetime

from app.services import query_scenario
from app.services.gquery_cache import GqueryCache
from app.services.query_scenario import QueryScenario

class GqueryCacheTest(unittest.TestCase):
    def setUp(self):
        self.app = create_app()
        self.app_context = self.app.app_context()
        self.app_context.push()

        # We need to do this explicitely before each test since it is a Singleton
        GqueryCache().reset()

    def test_singleton_instance(self):
        ''' Make sure that the same instance of the GqueryCache class is always returned '''
        assert GqueryCache() is GqueryCache()
    
    def test_setting_scenario_id(self):
        GqueryCache().for_scenario_id(10)
    
        assert GqueryCache().scenario_id is 10
        assert GqueryCache().gqueries[10] == []
        assert GqueryCache().gqueries_results[10] == {}
    
    def test_setting_gqueries(self):
        GqueryCache().for_scenario_id(10)
        GqueryCache().for_gqueries(['query_a', 'query_b', 'query_c'])
    
        assert GqueryCache().gqueries[10] == ['query_a', 'query_b', 'query_c']
    
    def test_setting_gqueries_without_scenario_id(self):
        ''' Make sure that attempting to set gqueries without setting a scenario_id raises an error '''
        with self.assertRaises(ValueError):
            GqueryCache().for_gqueries(['query_a', 'query_b', 'query_c'])
    
    def test_setting_gqueries_from_assets(self):
        GqueryCache().for_scenario_id(10)
    
        # Test setting gqueries from a single asset
        asset_a = {'attr_set': {'a': {'gquery': 'gquery_a'}, 'b': {'gquery': 'gquery_b'}}}
    
        GqueryCache().for_assets(asset_a)
    
        assert GqueryCache().gqueries[10] == ['gquery_a', 'gquery_b']
    
        # Test setting gqueries from multiple assets
        asset_b = {'attr_set': {'c': {'gquery': 'gquery_c'}, 'd': {'gquery': 'gquery_d'}}}
        assets = [asset_a, asset_b]
    
        GqueryCache().for_assets(assets)
    
        assert GqueryCache().gqueries[10] == ['gquery_a', 'gquery_b', 'gquery_c', 'gquery_d']
    
    def test_perform_request_calls_query_scenario(self):
        ''' Assert that GqueryCache.perform_request calls QueryScenario.execute method with proper attributes '''
        gqueries = ['gquery_a', 'gquery_b', 'gquery_c']
    
        GqueryCache().for_scenario_id(10)
        GqueryCache().for_gqueries(gqueries)

        # Mock QueryScenario.execute() so we can determine if it has been called, and with the proper arguments.
        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value={})) as mocked_execute:
            GqueryCache().perform_request()

        mocked_execute.assert_called_with(10, *gqueries)
    
    def test_perform_request_not_querying_twice_for_same_gquery(self):
        '''
        Once the GqueryCache singleton has obtained the results for a set of gqueries
        it should not query the server for these gqueries again.
        '''
        GqueryCache().for_scenario_id(10)
        GqueryCache().for_gqueries(['gquery_a', 'gquery_b', 'gquery_c'])

        # Set results for 'query_a' and 'query_b'
        self.set_results(10, {'gquery_a': 'Results for query A', 'gquery_b': 'Results for query B'})

        # When we call 'perform_request' at this stage GqueryCache should not request the server
        # for 'gquery_a' and 'gquery_b' again as it already has return values set for those
        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value={})) as mocked_execute:
            GqueryCache().perform_request()

        # Should only have been called for gquery_c
        mocked_execute.assert_called_with(10, 'gquery_c')

    def test_perform_request_with_force(self):
        ''' GqueryCache should always perform a request for all gqueries towards etengine if force is true '''
        GqueryCache().for_scenario_id(10)
        GqueryCache().for_gqueries(['gquery_a', 'gquery_b', 'gquery_c'])

        # Set results for all gqueries
        self.set_results(10, {'gquery_a': 'Results for query A', 'gquery_b': 'Results for query B', 'gquery_c': 'Results for query C'})

        # When we call 'perform_request' with 'force' all gqueries should now be requested
        # despite the fact that their results are known to GqueryCache already.
        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value={})) as mocked_execute:
            GqueryCache().perform_request(force=True)

        mocked_execute.assert_called_with(10, 'gquery_a', 'gquery_b', 'gquery_c')

    def test_get_single_gquery_result(self):
        ''' When requesting a single gquery through get() a single String result should be returned '''
        GqueryCache().for_scenario_id(10)
        GqueryCache().gqueries_results_timestamps[10] = datetime.datetime.now(datetime.timezone.utc)

        result_value = {'gquery_a': 'Results for query A'}

        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value=result_value)):
            gquery_a_result = GqueryCache().get('gquery_a')

        assert gquery_a_result == 'Results for query A'

    def test_get_multiple_gquery_results(self):
        ''' When requesting multiple gqueries through get() a dict with results should be returned '''
        GqueryCache().for_scenario_id(10)
        GqueryCache().gqueries_results_timestamps[10] = datetime.datetime.now(datetime.timezone.utc)

        result_values = {
            'gquery_a': 'Results for query A',
            'gquery_b': 'Results for query B',
            'gquery_c': 'Results for query C'
        }

        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value=result_values)):
            gquery_results = GqueryCache().get(['gquery_a', 'gquery_b', 'gquery_c'])

        assert gquery_results == result_values

    def test_check_gquery_cache_validity_for(self):
        ''' Cache should be invalidated after X amount of seconds (set in config) '''

        result_values = {
            'gquery_a': 'Results for query A',
            'gquery_b': 'Results for query B',
            'gquery_c': 'Results for query C'
        }

        max_cache_age = self.app.config['GQUERY_RESULTS_CACHE_MAX_AGE_SECONDS']

        init_datetime = datetime.datetime(year=2000, month=1, day=1, hour=12, minute=0, second=0, tzinfo=datetime.timezone.utc)
        with freeze_time(init_datetime) as frozen_datetime:
            GqueryCache().for_scenario_id(10)
            GqueryCache().for_gqueries(['gquery_a', 'gquery_b', 'gquery_c'])
            self.set_results(10, result_values)

            with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value=result_values)) as mocked_execute:
                # 1 second before the max cache age the results should still be present
                frozen_datetime.tick(max_cache_age - 1.0)
                GqueryCache().get(['gquery_a', 'gquery_b', 'gquery_c'])
                mocked_execute.assert_not_called

                # 2 seconds later (so 1 second AFTER the cache max age) the cache should have been purged,
                # so QueryScenario.execute should have been called to obtain new results
                frozen_datetime.tick(2.0)
                GqueryCache().get(['gquery_a', 'gquery_b', 'gquery_c'])
                mocked_execute.assert_called_with(10, 'gquery_a', 'gquery_b', 'gquery_c')

    def test_reset(self):
        GqueryCache().for_scenario_id(10)
        GqueryCache().for_gqueries(['query_a', 'query_b', 'query_c'])

        assert GqueryCache().gqueries[10] == ['query_a', 'query_b', 'query_c']
    
        GqueryCache().reset()

        assert GqueryCache().scenario_id == None
        assert GqueryCache().gqueries == {}
        assert GqueryCache().gqueries_results == {}
    
    def set_results(self, scenario_id, results):
        GqueryCache().gqueries_results = { scenario_id: results }
        GqueryCache().gqueries_results_timestamps[scenario_id] = datetime.datetime.now(datetime.timezone.utc)
