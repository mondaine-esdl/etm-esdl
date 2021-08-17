'''Helpers for ESDL'''

def full_load_hours(asset):
    ''' Returns the full load hours associated with the asset, returns 0 if none are found '''
    if hasattr(asset, 'fullLoadHours'):
        return asset.fullLoadHours

    sum_power = 0.0
    sum_flh = 0.0
    for port in asset.port:
        for connection in port.connectedTo:
            if not hasattr(connection.energyasset, 'fullLoadHours'): continue
            power = connection.energyasset.power
            sum_power += power
            sum_flh += (connection.energyasset.fullLoadHours - sum_flh) * power / sum_power

    return sum_flh

def in_sector(asset, sector_id):
    '''
    Returns Boolean depending on if the asset is in the sector or not. Also checks if the assets
    parents have a sector set, if 'sector' is not an attribute of the asset directly.

    asset       pyecore.ecore object, the asset that is to be checked
    sector_id   String, the id of the sector, e.g. REF for Refineries
    '''
    if asset.sector and asset.sector.id == sector_id:
        return True

    for port in asset.port:
        if not 'Out' in port.name: continue

        for connection in port.connectedTo:
            if not hasattr(connection.energyasset, 'sector'): continue

            if connection.energyasset.sector and connection.energyasset.sector.id == sector_id:
                return True

    return False
