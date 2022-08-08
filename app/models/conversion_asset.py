from pathlib import Path
import yaml

# We might create these for validation? Or when we ant to create methods on it?
# class ConversionAsset:
#     def __init__(self, asset):
#         self.asset = asset

class ConversionAssets:
    def __init__(self, path=Path('config/conversions/assets')):
        self.collection = path

    # TODO: can we optimize this?
    def assets_for(self, parser):
        '''Returns all assets that are using the given parser'''
        return [asset for asset in self.collection if asset['parser'] == parser]

    @property
    def collection(self):
        return self._collection

    @collection.setter
    def collection(self, path):
        self._collection = []

        for asset_file in path.glob('**/*.yml'):
            self._collection.extend(self._load_file(asset_file))

    @staticmethod
    def _load_file(source):
        with open(source, 'r') as f:
            doc = yaml.load(f, Loader=yaml.FullLoader)

        return doc

assets = ConversionAssets()
