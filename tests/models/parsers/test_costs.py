''' Tests for the CHP parser '''


import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system import EnergySystemHandler
from app.models.parsers.costs import CostsParser


def mock_query(query, scenario_id, value, requests_mock, app):
    output = {query: value}

    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}',
        json={'gqueries': output, 'scenario': {'end_year': 2050, 'area_code': 'nl'}},
        status_code=200
    )

@pytest.mark.parametrize(
    'esdl_file_name, costs_expected',
    [('meso_case', 5), ('valid_Hengelo', 6)]
)
def test_update_costs_te_elec_carrier(energy_system_handler, costs_expected, helpers, requests_mock, app):
    carrier_elec_prop = helpers.get_first_config_for_asset_type('EnergyCarrier')
    scenario_id = 12345
    mock_query(carrier_elec_prop['input'], scenario_id, costs_expected, requests_mock, app)

    parser = CostsParser(
        energy_system_handler,
        carrier_elec_prop
    )

    parser.update(scenario_id, scenario_id)

    resulting_asset = energy_system_handler.get_carrier(
        carrier_elec_prop['attribute'],
        carrier_elec_prop['asset']
    )

    assert resulting_asset.cost
    assert resulting_asset.cost.value == costs_expected
