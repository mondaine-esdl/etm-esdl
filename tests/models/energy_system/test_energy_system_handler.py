'''
Tests for EnergySystemHandler
Shoul be expanded!!
'''

import pytest
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.models.energy_system.energy_system_handler import EnergySystemHandler

@pytest.fixture
def esdl_string():
    with open('tests/fixtures/valid_Hengelo.esdl') as file:
        data = file.read()
    return data

@pytest.fixture
def esdl_string_hic():
    with open('tests/fixtures/2050_hic_description_fake.esdl') as file:
        data = file.read()
    return data

@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_from_string_with_valid_esdl(esdl_string):
    esh = EnergySystemHandler.from_string(esdl_string)

    assert isinstance(esh, EnergySystemHandler)


@pytest.fixture
def hic_handler():
    with open('tests/fixtures/2021_hic_description.esdl') as file:
        data = file.read()
    return EnergySystemHandler.from_string(data)

@pytest.fixture
def future_hic_handler():
    with open('tests/fixtures/2050_hic_description_fake.esdl') as file:
        data = file.read()
    return EnergySystemHandler.from_string(data)


@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_get_all_instances_of_type_and_sector(hic_handler):
    generator = hic_handler.get_all_instances_of_type_and_sector('GasHeater', 'REF')
    as_list = list(generator)

    assert as_list
    assert len(as_list) >= 20

@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_has_assets_of_type(hic_handler):
    assert not hic_handler.has_assets_of_type('HConnection')

    assert hic_handler.has_assets_of_type('HeatingDemand')

@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_get_all_instances_with_two_handlers(hic_handler, future_hic_handler):
    '''Make sure the instances do not overlap when creating the generator'''
    present_list = list(hic_handler.get_all_instances_of_type('GasHeater'))
    future_list = list(future_hic_handler.get_all_instances_of_type('GasHeater'))

    assert len(present_list) == 62
    # assert len(future_list) == 38
    assert len(future_list) == 62

    assert not any((present_heater in future_list for present_heater in present_list))


@pytest.mark.skip(reason="ESDL file temporarily removed")
def test_all_instances_always_returns_same(hic_handler):
    n = 10

    # Exactly the same items
    li_set = [set(list(hic_handler.get_all_instances_of_type('GasHeater'))) for _ in range(n)]
    first_set = li_set[0]
    assert all(a_set == first_set for a_set in li_set)

    # Same item always comes first
    gen = (next(hic_handler.get_all_instances_of_type('GasHeater')) for _ in range(n))
    assert set([next(gen)]) == set(list(gen))


# def test_memory_full(esdl_string_hic):
#     n = 100
#     m = 20

#     for _ in range(n):
#         esh = EnergySystemHandler.from_string(esdl_string_hic)
#         # Exactly the same items
#         li_set = [set(list(esh.get_all_instances_of_type('GasHeater'))) for _ in range(m)]
#         first_set = li_set[0]
#         assert all(a_set == first_set for a_set in li_set)

#          # Same item always comes first
#         gen = (next(esh.get_all_instances_of_type('GasHeater')) for _ in range(m))
#         assert set([next(gen)]) == set(list(gen))
