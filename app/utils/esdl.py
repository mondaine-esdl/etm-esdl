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
