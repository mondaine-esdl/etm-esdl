from app.models.conversion_assets import assets
import app.models.parsers

class AssetFilter:
    def __init__(self) -> None:
        pass

    @staticmethod
    def filter(*asset_types, notify_unknown_asset_types=True, method='parse'):
        '''What about update or parse? This we have to validate as well!'''
        if notify_unknown_asset_types:
            AssetFilter.validate_types(*asset_types)
        return (asset for asset in assets if AssetFilter.elegible(asset, asset_types, method))

    @staticmethod
    def elegible(asset, asset_types, method):
        if not asset['asset'] in asset_types:
            return False

        AssetFilter.validate_applicable_parser(asset, method)
        return True

    @staticmethod
    def validate_types(*asset_types):
        '''Fails if requested assets types are not present in the mapping'''
        diff = set(asset_types).difference(set([asset['asset'] for asset in assets]))
        if not diff:
            return

        raise FilterValidationError(f'No available mapping for assets: {diff}')

    @staticmethod
    def validate_applicable_parser(asset, method='parse'):
        '''Method can be 'update' or 'parse' '''
        # print(asset)
        if hasattr(find_parser(asset), method):
            return

        if method == 'parse':
            reason = 'being parsed into ETM values'
        elif method == 'update':
            reason = 'getting updated or created with ETM values'
        else:
            reason = f'unknown method {method}'

        raise FilterValidationError(f'Asset {asset["asset"]} does not support {reason}')

class FilterValidationError(Exception):
    pass


def find_parser(asset):
    '''Returns a Parser'''
    return getattr(app.models.parsers, f"{to_camel_case(asset['parser'])}Parser")


def to_camel_case(text):
    if len(text) == 0:
        return text

    s = text.replace("-", " ").replace("_", " ")
    s = s.split()

    return ''.join(i.capitalize() for i in s)
