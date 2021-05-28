''' Tests for the Balancer'''
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring

from collections import defaultdict
from app.models.balancer import Balancer
from app.constants.inputs import balancing_groups


def test_without_any_sliders_set():
    '''
    If the sliders of the balancing groups were not touched, we don't want
    any distributing happening
    '''
    empty_sliders = defaultdict(float)
    Balancer(empty_sliders).call()

    assert len(empty_sliders.keys()) == 0

def test_with_one_slider_set_to_100_in_one_group():
    sliders = defaultdict(float)
    a_group = list(balancing_groups.keys())[0]
    a_slider = balancing_groups[a_group][0]

    sliders[a_slider] = 100.0

    Balancer(sliders).call()

    assert len(sliders.keys()) == len(balancing_groups[a_group])

    assert sliders[a_slider] == 100

def test_with_one_slider_set_to_less_than_100():
    sliders = defaultdict(float)
    a_group = list(balancing_groups.keys())[0]
    a_slider = balancing_groups[a_group][0]

    total_sliders_in_group = len(balancing_groups[a_group])

    sliders[a_slider] = 10.0
    Balancer(sliders).call()

    assert sliders[a_slider] == 10 + (90.0 / total_sliders_in_group)

    for slider in balancing_groups[a_group]:
        if slider == a_slider: continue
        assert sliders[slider] == 90.0 / total_sliders_in_group

def test_with_two_sliders_set_to_less_than_100():
    sliders = defaultdict(float)
    a_group = list(balancing_groups.keys())[0]
    slider_one = balancing_groups[a_group][0]
    slider_two = balancing_groups[a_group][1]

    total_sliders_in_group = len(balancing_groups[a_group])

    sliders[slider_one] = 5.0
    sliders[slider_two] = 5.0

    Balancer(sliders).call()

    assert sliders[slider_one] == 5 + (90.0 / total_sliders_in_group)
    assert sliders[slider_two] == 5 + (90.0 / total_sliders_in_group)

    for slider in balancing_groups[a_group]:
        if slider in (slider_one, slider_two): continue
        assert sliders[slider] == 90.0 / total_sliders_in_group

def test_with_one_slider_set_to_more_than_100():
    sliders = defaultdict(float)
    a_group = list(balancing_groups.keys())[0]
    a_slider = balancing_groups[a_group][0]

    sliders[a_slider] = 110.0
    Balancer(sliders).call()

    assert sliders[a_slider] == 100.0

    for slider in balancing_groups[a_group]:
        if slider == a_slider: continue
        assert sliders[slider] == 0

def test_with_two_sliders_set_to_more_than_100():
    sliders = defaultdict(float)
    a_group = list(balancing_groups.keys())[0]
    slider_one = balancing_groups[a_group][0]
    slider_two = balancing_groups[a_group][1]

    sliders[slider_one] = 52.0
    sliders[slider_two] = 52.0

    Balancer(sliders).call()

    assert sliders[slider_one] == 50.0
    assert sliders[slider_two] == 50.0

    for slider in balancing_groups[a_group]:
        if slider in (slider_one, slider_two): continue
        assert sliders[slider] == 0
