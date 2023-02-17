'''Lookups methods for the energy system'''

from esdl import esdl
from app.utils.esdl import equal_or_in


def get_by_id_slow(self, object_id):
    '''
    This function iterates over all the contents of the Energy System and is much slower
    than get_by_id()
    '''
    for child in self.energy_system.eAllContents():
        if hasattr(child, 'id') and child.id == object_id:
            return child

    return None

def has_object_with_id(self, object_id):
    '''Checks if the object is present in the Energy System'''
    return object_id in self.resource.uuid_dict


def get_assets_of_type(self, esdl_type, area=None):
    '''Get a list of assets of a specific ESDL type in the specified area or asset'''
    assets = area.asset if not area is None else self.area().asset
    esdl_asset = esdl_kls(esdl_type)

    return [asset for asset in assets if isinstance(asset, esdl_asset)]


def has_assets_of_type(self, esdl_type, area=None):
    ''' Boolean, see get_assets_of_type '''
    assets = area.asset if not area is None else self.area().asset

    try:
        next((asset for asset in assets if isinstance(asset, esdl_kls(esdl_type))))
        return True
    except StopIteration:
        return False


def get_assets_of_type_and_attribute_value(self, esdl_type, area, attr, val):
    '''
    Returns a list of assets of a specific ESDL type in the specified area or asset
    filtered by a specified attribute-value combination

    Params:
        esdl_type (str): The type of asset
        area (esdl.Area): The area that contains the assets to be filtered
        attr (str): The attribute that should be evaluated
        val (str): The value that the attribute should have

    Returns:
        list[esdl.Asset]
    '''
    return [asset for asset in area.asset
            if isinstance(asset,  esdl_kls(esdl_type)) and str(getattr(asset, attr)) == val]


def has_assets_of_type_and_attribute_value(self, esdl_type, area, attr, val):
    '''
    Works like get_of_type_and_attribute_value, but only checks if the first item
    can be generated

    Params:
        esdl_type (str): The type of asset
        area (esdl.Area): The area that contains the assets to be filtered
        attr (str): The attribute that should be evaluated
        val (str): The value that the attribute should have

    Returns:
        bool
    '''
    try:
        next((asset for asset in area.asset
            if isinstance(asset,  esdl_kls(esdl_type))
            and str(getattr(asset, attr)) == val))
        return True
    except StopIteration:
        return False


def get_potentials_of_type(self, esdl_type):
    ''' Get a list of potentials of a specific ESDL type in the main instance's area '''
    potentials = []

    for current_potential in self.area().potential:
        if isinstance(current_potential, esdl_type):
            potentials.append(current_potential)
    return potentials


def get_all_instances_of_type_by_name(self, esdl_type):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    Params:
        esdl_type (str): The type of asset

    Returns:
        generator of assets or potentials
    '''
    yield from self.get_all_instances_of_type(esdl_kls(esdl_type))


def get_all_instances_of_type_and_attribute_value(self, esdl_type, attr, val):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    The assets are then filtered for a specific attribute-value combination

    Params:
        esdl_type (str): The type of asset
        attr (str): The attribute that should be evaluated
        val (str): The value that the attribute should have

    Returns:
        generator of assets or potentials
    '''
    yield from (inst for inst in self.get_all_instances_of_type_by_name(esdl_type)
            if str(getattr(inst, attr)) == val)


def get_all_instances_of_type_and_attribute_values(self, esdl_type, attr_vals):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    The assets are then filtered for a specific attribute-value combination

    Params:
        esdl_type (str): The type of asset
        attr_vals ({str: str}): A dict with the attribute/value combinations
                                that should be evaluated

    Returns:
        generator of assets or potentials
    '''
    yield from (inst for inst in self.get_all_instances_of_type_by_name(esdl_type)
            if all((str(getattr(inst, attr)) == val for attr, val in attr_vals.items())))


def get_all_instances_of_type_and_sector(self, esdl_type, sector_id):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    The assets are then filtered for a specific combination on an attribute and it's ID.

    Params:
        esdl_type (str): The type of asset
        sector_id (str | list[str]): The value of the sectors id, e.g. REF for Refineries

    Returns:
        generator of assets or potentials
    '''
    yield from (inst for inst in self.get_all_instances_of_type_by_name(esdl_type)
            if self.in_sector(inst, sector_id))


def get_all_instances_of_type_and_carrier(self, esdl_type, carrier_id):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    The assets are then filtered for having the specified carrier as input.

    Params:
        esdl_type (str): The type of asset
        carrier_id (str | list[str]): The value of the carriers id, e.g. HTLH for network gas

    Returns:
        generator of assets or potentials
    '''
    yield from (inst for inst in self.get_all_instances_of_type_by_name(esdl_type)
            if self.has_carrier(inst, carrier_id))


def get_all_instances_of_type_carrier_and_sector(self, esdl_type, sector_id, carrier_id):
    '''
    Returns a generator of all assets or potentials of a specific type.
    Not only the ones defined in the main Instance's Area e.g. QuantityAndUnits can be
    defined in the KPI of an Area or in the EnergySystemInformation object this
    function returns all of them at once.

    The assets are then filtered for given sectors and carriers.

    Params:
        esdl_type (str): The type of asset
        sector_id (str | list[str]): The value of the sectors id, e.g. REF for Refineries
        carrier_id (str | list[str]): The value of the carriers id, e.g. HTLH for network gas

    Returns:
        generator of assets or potentials
    '''
    yield from (inst for inst in self.get_all_instances_of_type_by_name(esdl_type)
            if self.in_sector(inst, sector_id) and self.has_carrier(inst, carrier_id))


def has_carrier(self, asset, carrier_id):
    '''Carrier id may also be a list'''
    for port in asset.port:
        if not isinstance(port, esdl.InPort): continue

        if port.carrier.id == carrier_id:
            return True

        if isinstance(carrier_id, list) and port.carrier.id in carrier_id:
            return True

    return False


def in_sector(self, asset, sector_id):
    '''
    Returns Boolean depending on if the asset is in the sector or not. Also checks if the assets
    parents have a sector set, if 'sector' is not an attribute of the asset directly.

    Params:
        asset (pyecore.ecore.Object): The asset that is to be checked.
        sector_id (str | list[str]): The id of the sector, e.g. REF for Refineries.

    Returns:
        bool
    '''
    if asset.sector and equal_or_in(asset.sector.id, sector_id):
        return True

    for port in asset.port:
        if not isinstance(port, esdl.OutPort): continue

        for connection in port.connectedTo:
            if not getattr(connection.energyasset, 'sector', None): continue

            if equal_or_in(connection.energyasset.sector.id, sector_id):
                return True

    return False


def get_asset_attribute(self, esdl_type, attr, area=None):
    '''
    Create a readable list of the attributes of an ESDL class
    Scoped to a specific area, if one is given

    Returns:
        list[dict] with formatted assets
    '''
    assets = area.asset if not area is None else self.area().asset

    return [format_asset(ass, attr) for ass in assets if isinstance(ass, esdl_kls(esdl_type))]


def format_asset(current_asset, attribute):
    return {
        'name': current_asset.name,  # name
        'attribute': {
            'key': attribute,
            'value': getattr(current_asset, attribute)
        }
    }


def esdl_kls(esdl_type_name):
    '''Returns the Class of the esdl_type_name'''
    return getattr(esdl, esdl_type_name)
