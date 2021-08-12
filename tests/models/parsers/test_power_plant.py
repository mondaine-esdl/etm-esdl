# ''' Tests for the power plant parser '''

# import pytest
# # pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
# from app.models.energy_system import EnergySystemHandler
# from app.models.parsers import PowerPlantParser

# from config.conversions.assets import supply


# @pytest.fixture
# def energy_system_handler_without_power_plants():
#     '''ESH based on valid Hengelo fixture'''
#     with open('tests/fixtures/valid_Hengelo.esdl') as file:
#         esdl_string = file.read()
#     return EnergySystemHandler.from_string(esdl_string)


# @pytest.fixture
# def energy_system_handler_with_power_plants():
#     '''ESH based on a valid HIC ESDL with power plants'''
#     with open('tests/fixtures/hic_description_v1.11.esdl') as file:
#         esdl_string = file.read()
#     return EnergySystemHandler.from_string(esdl_string)


# def test_parse_without_power_plants(energy_system_handler_without_power_plants):
#     for asset in ['PowerPlant']:
#         for carrier in ['COAL', 'GAS']:
#             props = supply[asset]['default']

#             parser = PowerPlantParser(energy_system_handler_without_power_plants, props, asset)

#             parser.parse()
#             parser_results = parser.get_parsed_inputs()

#             print(parser_results)

#             # If no power plants are described in the ESDL, no inputs should be parsed
#             assert parser.get_parsed_inputs() == {}


# def test_parse_with_power_plants(energy_system_handler_with_power_plants):
#     for asset in ['PowerPlant']:
#         for carrier in ['COAL', 'GAS']:
#             props = supply[asset]['default']

#             parser = PowerPlantParser(energy_system_handler_with_power_plants, props, asset)

#             parser.parse()
#             parser_results = parser.get_parsed_inputs()

#             print(parser_results)

#             # For now, no inputs should be set yet
#             assert parser.get_parsed_inputs() == {}

#     assert False
