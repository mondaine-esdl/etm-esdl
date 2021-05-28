''' Tests for config '''
# pylint: disable=import-error
from config.config import ProductionConfig

def test_production():
    ''' Test production config '''
    production_config = ProductionConfig()

    assert production_config.ETENGINE_URL
    assert production_config.DEBUG is False
    assert production_config.TESTING is False
