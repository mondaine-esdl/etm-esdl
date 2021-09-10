'''Love me some garbage collection'''

import gc
# pylint: disable=import-error disable=redefined-outer-name disable=missing-function-docstring
from app.utils.garbage import HaltGarbageCollection
from app.models.situation import Situation

def test_garbage_disabled_in_with_block():
    assert gc.isenabled()

    with HaltGarbageCollection():
        assert not gc.isenabled()

    assert gc.isenabled()
