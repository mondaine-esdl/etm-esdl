"""
Quantities and corresponding units
"""
quantities = {
    'share_of_energy_demand': { # id
        'physicalQuantity': 'ENERGY',
        'multiplier': 'NONE',
        'unit': 'PERCENT',
        'description': '%'
    },
    'energy_demand': { # id
        'physicalQuantity': 'ENERGY',
        'multiplier': 'MEGA',
        'unit': 'JOULE',
        'description': 'MJ',
    },
    'power': { # id
        'physicalQuantity': 'POWER',
        'multiplier': 'MEGA',
        'unit': 'WATT',
        'description': 'MW',
    },
    'co2_abs': { # id
        'physicalQuantity': 'EMISSION',
        'multiplier': 'MEGA',
        'unit': 'GRAM',
        'description': 'ton',
    },
    'co2_rel': { # id
        'physicalQuantity': 'EMISSION',
        'multiplier': 'NONE',
        'unit': 'PERCENT',
        'description': '%',
    },
    'total_costs': { # id
        'physicalQuantity': 'COST',
        'multiplier': 'MEGA',
        'unit': 'EURO',
        'description': 'Meur',
    }
}
