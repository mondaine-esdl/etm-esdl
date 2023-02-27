import pytest

from app.models.asset_filter import AssetFilter, FilterValidationError
from app.models.conversion_assets import assets

def test_validate_types():
    # Nothing happens if correct
    AssetFilter.validate_types('WindTurbine', 'Electrolyzer')

    # Error raised if incorrect
    with pytest.raises(FilterValidationError):
        AssetFilter.validate_types('WindTurbine', 'Tabletennis')


def test_validate_applicable_parser():
    wind = assets.find_asset('WindTurbine')
    heating = assets.find_asset('HConnection')

    # Nothing happens if correct
    AssetFilter.validate_applicable_parser(wind, 'update')

    # Error raised if incorrect
    with pytest.raises(FilterValidationError):
        AssetFilter.validate_applicable_parser(heating, 'update')

def test_filter():
    filtered_results = AssetFilter.filter('WindTurbine', 'Electrolyzer')

    # Found some results without raising anything
    assert filtered_results

    # Error raised for unknown asset typers
    with pytest.raises(FilterValidationError):
        AssetFilter.filter('WindTurbine', 'Tabletennis')

     # Error raised if incorrect
    with pytest.raises(FilterValidationError):
        [_ for _ in (AssetFilter.filter('WindTurbine', 'HConnection', method='update'))]
