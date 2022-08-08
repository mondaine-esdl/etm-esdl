from pathlib import Path
import yaml

from app.utils import parser_to_snake

# We can put the assets into objects if we want to do some validation on them
def load_file(source: Path) -> dict:
    '''Loads a YAML file'''
    with open(source, 'r') as f:
        doc = yaml.load(f, Loader=yaml.FullLoader)

    return doc

class ConversionAssets:
    def __init__(self, collection: list):
        self.collection = collection

    def __iter__(self):
        yield from self.collection

    # TODO: can we optimize this?
    def assets_for(self, parser):
        '''
        Returns a new instance containing assets that are using the given parser

        Params:
            parser(Parser): The instance of the parser
        '''
        name = parser_to_snake(parser.__class__)
        return self.__class__([asset for asset in self.collection if asset['parser'] == name])

    def find_asset(self, asset_name):
        '''
        Returns the first occurence of this asset in the collection. If none is found,
        returns an empty object.
        '''
        for asset in self.collection:
            if asset['asset'] == asset_name:
                return asset

        return {}

    @classmethod
    def load_config(cls, path=Path('config/conversions/assets')):
        '''Create a new instance based on the current assets in the config'''
        collection = []

        for asset_file in path.glob('**/*.yml'):
            collection.extend(load_file(asset_file))

        return cls(collection)


# TODO: is this instance only created once? Let's make sure! Or find a package to
# interface with yml as db?
assets = ConversionAssets.load_config()

# TODO: Nora you should not just load these configs without validations :)
distributions = load_file(Path('config/conversions/distributions.yml'))

energy_label_percentages = load_file(Path('config/conversions/energy_labels.yml'))

area_mapping = load_file(Path('config/conversions/areas.yml'))
