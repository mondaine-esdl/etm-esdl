''' Tests for config '''
# pylint: disable=import-error
from config import ProductionConfig

def test_production():
    ''' Test production config '''
    production_config = ProductionConfig()

    assert 'beta' in production_config.ETENGINE.keys()
    assert production_config.DEBUG is False
    assert production_config.TESTING is False
