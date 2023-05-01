"""
Tests for the MobilityDemand parser
"""
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring disable=protected-access

import pytest
from app.models.energy_system import EnergySystemHandler
from app.models.esdl_to_scenario_converter import EsdlToScenarioConverter
from app.models.parsers.demand import MobilityDemandParser
from unittest.mock import MagicMock

@pytest.fixture
def esh_without_mobility_demand():
    """
    Energy system based on the MMvIB macro case WITHOUT mobility demand assets
    """
    with open('tests/fixtures/mmvib_macro_without_demand.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

@pytest.fixture
def esh_with_mobility_demand():
    """
    Energy system based on the MMvIB macro case WITH mobility demand assets
    """
    with open('tests/fixtures/mmvib_macro.esdl') as file:
        esdl_string = file.read()
    return EnergySystemHandler.from_string(esdl_string)

def mocked_values():
    return {
        'capacity_of_transport_car_using_hydrogen': {
            'present': 0., 
            'future': 100., 
            'unit': 'MW'
        },
        'flh_of_transport_car_using_hydrogen': {
            'present': 0., 
            'future': 8760., 
            'unit': 'hours'
        },
        'hydrogen_cars_in_use_of_final_demand_in_cars': {
            'present': 0., 
            'future': 200., 
            'unit': 'JOULE'
        }
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

def test_parse_without_mobility_demand(esh_without_mobility_demand, app, requests_mock, helpers):
    mobility_demand_asset_config = helpers.get_first_config_for_asset_type('MobilityDemand')

    # If no mobility demand asset is present in the ESDL, 
    # the mobility_demands dict is empty
    mobility_demands = esh_without_mobility_demand.get_assets_of_type('MobilityDemand')
    assert len(mobility_demands) == 0

    # The MobilityDemandParser doesn't parse any inputs regardless of 
    # whether MobilityDemand assets are present in the ESDL
    parsed_inputs = EsdlToScenarioConverter(esh_without_mobility_demand).inputs
    assert parsed_inputs == {}

def test_parse_with_mobility_demand(esh_with_mobility_demand, app, requests_mock, helpers):
    mock_query_response(123456, app, requests_mock, mocked_values())

    mobility_demand_asset_config = helpers.get_first_config_for_asset_type('MobilityDemand')

    # Check if the mobility demand asset(s) can be found
    mobility_demands = esh_with_mobility_demand.get_assets_of_type('MobilityDemand')
    assert len(mobility_demands) > 0

    first_mobility_demand = mobility_demands[0]

    # Call the update method
    with app.app_context():
        MobilityDemandParser(esh_with_mobility_demand, mobility_demand_asset_config).update(123456)

    # The MobilityDemandParser doesn't parse any inputs regardless of 
    # whether MobilityDemand assets are present in the ESDL
    parsed_inputs = EsdlToScenarioConverter(esh_with_mobility_demand).inputs
    assert parsed_inputs == {}

    # If more than one mobility demand asset (with a specific vehicle 
    # fuel combination) is present in the ESDL, ...
    # TODO

    # Check if the power has been updated for the first asset
    assert first_mobility_demand.power == 100.e6

    # Check if the number of FLH has been updated and if it has been 
    # set to 8760 for the first asset
    assert first_mobility_demand.fullLoadHours == 8760

    # Check if the volume has been added as a SingleValue profile
    # for the first asset
    assert first_mobility_demand.port[0].profile[0].value == 200.e15