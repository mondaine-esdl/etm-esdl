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
    'co2_reduction': { # id
        'physicalQuantity': 'EMISSION',
        'multiplier': 'MEGA',
        'unit': 'GRAM',
        'description': 'ton',
    },
    'total_costs': { # id
        'physicalQuantity': 'COST',
        'multiplier': 'MEGA',
        'unit': 'EURO',
        'description': 'Meur',
    }
}
