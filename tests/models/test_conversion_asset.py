import pytest

from app.models.conversion_assets import assets

def test_collection():
    assert assets.collection

# Also test if it keeps being the same object (?) we dont want it to be reading
# those ymls all the time!
