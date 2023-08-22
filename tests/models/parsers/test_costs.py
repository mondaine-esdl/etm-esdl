''' Tests for the CHP parser '''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import pytest
from unittest.mock import Mock, patch
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.costs import CostsParser
from app.services.gquery_cache import GqueryCache
from app.services.query_scenario import QueryScenario

@pytest.mark.parametrize(
    'esdl_file_name, costs_expected',
    [('meso_case', 5), ('valid_Hengelo', 6)]
)
def test_update_costs_te_elec_carrier(app, energy_system_handler, costs_expected, helpers):
    GqueryCache().reset() # Pytest does not reset initialized classes/objects in between tests
    carrier_elec_prop = helpers.get_first_config_for_asset_type('EnergyCarrier')
    scenario_id = 12345

    query_results = {
        carrier_elec_prop['gquery']: {'present': costs_expected,'future': costs_expected}
    }

    parser = CostsParser(
        energy_system_handler,
        carrier_elec_prop
    )

    with app.app_context():
        with patch.object(QueryScenario, 'execute', return_value=Mock(successful=True, value=query_results)):
            parser.update(scenario_id, scenario_id)

    resulting_asset = energy_system_handler.get_carrier(
        carrier_elec_prop['attribute'],
        carrier_elec_prop['asset']
    )

    assert resulting_asset.cost
    assert resulting_asset.cost.value == costs_expected
    assert resulting_asset.cost.profileQuantityAndUnit.unit == 'EURO'
