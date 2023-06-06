"""
Tests for the StorageParser
"""

# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
import pytest

from app.models.parsers.storage import StorageParser
from app.models.energy_system import EnergySystemHandler


@pytest.fixture
def esh_mmvib_macro_with_storage():
    """
    ESH based on the mmvib macro with storage fixture
    """
    with open('tests/fixtures/mmvib_macro_with_storage.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def mocked_values():
    return {
        'energy_flexibility_mv_batteries_electricity_volume': {
            'present': 0., 
            'future': 2.77778, 
            'unit': 'MWh'
        },
        'energy_flexibility_mv_batteries_electricity_capacity': {
            'present': 0., 
            'future': 25.e3, 
            'unit': 'MW'
        },
        'energy_flexibility_mv_batteries_electricity_flhs': {
            'present': 0., 
            'future': 235., 
            'unit': 'hours'
        },
        'query_marginal_costs': {
            'present': 0., 
            'future': 100., 
            'unit': 'EUR'
        },
    }

def mock_query_response(scenario_id, app, requests_mock, output):
    """
    Mocks a query response from ETEngine
    """
    requests_mock.put(
        f'{app.config["ETENGINE_URL"]}/scenarios/{scenario_id}',
        json={'gqueries': output, 'scenario': {'end_year': 2050, 'area_code': 'nl2019'}},
        status_code=200
    )

# TODO: test if sliders are set when asset is present in ESDL
# if power is given but no FLH are present, power should be set
# if power is not given but asset is present, slider is set to zero
def test_parse_battery(esh_mmvib_macro_with_storage, helpers):
    conf = helpers.get_first_config_for_asset_type("Battery")
    parser = StorageParser(esh_mmvib_macro_with_storage, conf)

    parser.parse()
    inputs = parser.get_parsed_inputs()

    assert "capacity_of_energy_flexibility_mv_batteries_electricity" in inputs.keys()
    assert round(inputs["capacity_of_energy_flexibility_mv_batteries_electricity"]) == 50.


# TODO: test if volume (range), charge rates and marginal costs are 
# added and/or updated for Battery assets
def test_update_battery(esh_mmvib_macro_with_storage, app, requests_mock, helpers, mocked_values):
    mock_query_response(123456, app, requests_mock, mocked_values)

    conf = helpers.get_first_config_for_asset_type('Battery')

    # Check if the battery assets can be found
    assets = esh_mmvib_macro_with_storage.get_assets_of_type('Battery')
    assert len(assets) > 0

    # Get the first battery asset
    first_asset = assets[0]

    # Call the update method based on the mocked ETE query response
    with app.app_context():
        StorageParser(esh_mmvib_macro_with_storage, conf).update(123456, 123456)

    # Check if the range for capacity (charge rates) has been added and/or updated for the first asset
    assert first_asset.constraint[0].range.minValue == 25.e9
    assert first_asset.constraint[0].range.maxValue == 25.e9

    # The charge rate shouldn't be touched and should still be equal to the ESDL value
    assert first_asset.maxChargeRate == 50.e6

    # TODO Check if the volume has been updated 
    assert first_asset.capacity == 1.e10

    # Check if the number of FLH has been updated 
    assert first_asset.fullLoadHours == 235.

    # TODO Check if the marginal costs have been updated
    # assert first_asset.costInformation.marginalCosts.value == 100.

    # print(esh_mmvib_macro_with_storage.to_string())
    # assert False
