"""
ETM gqueries mapped to ESDL KPIs
"""
gqueries = {
    # Elektriciteitsmix
    'source_of_electricity_production': {
        'esdl_type': 'DistributionKPI',
        'gqueries': [
            {
                'label': 'Import',
                'gquery': 'import_in_source_of_electricity_production'
            },
            {
                'label': 'Zon',
                'gquery': 'solar_in_source_of_electricity_production'
            },
            {
                'label': 'Wind',
                'gquery': 'wind_in_source_of_electricity_production'
            },
            {
                'label': 'Biogas',
                'gquery': 'biogas_in_source_of_electricity_production'
            },
            {
                'label': 'Biomassa',
                'gquery': 'biomass_in_source_of_electricity_production'
            },
            {
                'label': 'Kolen',
                'gquery': 'coal_in_source_of_electricity_production'
            },
            {
                'label': 'Aardgas',
                'gquery': 'gas_in_source_of_electricity_production'
            },
            {
                'label': 'Geothermie',
                'gquery': 'geothermal_in_source_of_electricity_production'
            },
            {
                'name': 'Groengas',
                'gquery': 'greengas_in_source_of_electricity_production'
            },
            {
                'label': 'Water',
                'gquery': 'hydro_in_source_of_electricity_production'
            },
            {
                'label': 'Waterstof',
                'gquery': 'hydrogen_in_source_of_electricity_production'
            },
            {
                'label': 'Nucleair',
                'gquery': 'nuclear_in_source_of_electricity_production'
            },
            {
                'label': 'Olie',
                'gquery': 'oil_in_source_of_electricity_production'
            },
            {
                'label': 'Afval',
                'gquery': 'waste_in_source_of_electricity_production'
            }
        ],
        'name': 'Elektriciteitsmix',
        'q_and_u': 'energy_demand',
        'factor': 1e6
    },

    # Totale systeemkosten
    'total_costs': {
        'esdl_type': 'DoubleKPI',
        'gqueries': [
            {
                'label': 'Totale systeemkosten',
                'gquery': 'total_costs'
            }
        ],
        'name': 'Totale systeemkosten',
        'q_and_u': 'total_costs',
        'factor': 1
    },

    # Aandeel hernieuwbare energie op eindgebruik (totaal)
    # 'renewability': {},

    # Elektriciteitsopek uit hernieuwbare bronnen
    # 'total_renewable_electricity_produced': {
    #     'esdl_type': 'DoubleKPI',
    #     'name': 'Elektriciteitsopwek uit hernieuwbare bronnen',
    #     'q_and_u': 'energy_demand',
    #     'factor': 1
    # },

    # Aandeel hernieuwbare elektriciteit op eindgebruik
    # 'share_of_renewable_electricity': {
    #     'esdl_type': 'DoubleKPI',
    #     'gqueries': ['share_of_renewable_electricity'],
    #     'name': 'Aandeel hernieuwbare elektriciteit op eindgebruik',
    #     'q_and_u': 'share_of_energy_demand',
    #     'factor': 1
    # },

    # Energiebesparing t.o.v. startjaar (totaal)
    # 'turk_energy_use': {},

    # Energie-import (totaal)

    # Aandeel import op eindgebruik (totaal)
    # 'dashboard_energy_import_netto': {},

    # Energie-export (totaal)

    # Import van elektriciteit
    # 'import_in_source_of_electricity_production': {},

    # Aandeel import op eindgebruik (elektriciteit)
    # 'net_import_of_electricity': {},

    # Export van elektriciteit

    # Import van warmte

    # Aandeel import op eindgebruik (warmte)

    # Export van warmte

    # Reductie CO2-emissies t.o.v. startjaar (relatief)
    # 'dashboard_co2_emissions_versus_start_year': {},

    # Reductie CO2-emissies t.o.v. startjaar (absoluut)
    'dashboard_reduction_of_co2_emissions_versus_1990': {
        'esdl_type': 'DoubleKPI',
        'gqueries': [
            {
                'label': 'Reductie CO2-emissies t.o.v. 1990',
                'gquery': 'dashboard_reduction_of_co2_emissions_versus_1990'
            }
        ],
        'name': 'Reductie CO2-emissies t.o.v. 1990',
        'q_and_u': 'co2_rel',
        'factor': 1e2
    },

    # Totale CO2-emissies
    'total_co2_emissions': {
        'esdl_type': 'DoubleKPI',
        'gqueries': [
            {
                'label': 'CO2-emissies totaal',
                'gquery': 'total_co2_emissions'
            }
        ],
        'name': 'CO2-emissies totaal',
        'q_and_u': 'co2_abs',
        'factor': 1e-6
    },

    # Opgesteld vermogen wind op land
    'merit_order_onshore_wind_turbines_capacity_in_merit_order_table': {
        'esdl_type': 'DoubleKPI',
        'gqueries': [
            {
                'label': 'Wind op land (MW)',
                'gquery': 'merit_order_onshore_wind_turbines_capacity_in_merit_order_table'
            }
        ],
        'name': 'Opgesteld vermogen wind op land',
        'q_and_u': 'power',
        'factor': 1
    },

    # Vollasturen wind op land
    'merit_order_onshore_wind_turbines_full_load_hours_in_merit_order_table': {
        'esdl_type': 'DoubleKPI',
        'gqueries': [
            {
                'label': 'Wind op land (FLH)',
                'gquery': 'merit_order_onshore_wind_turbines_full_load_hours_in_merit_order_table'
            }
        ],
        'name': 'Vollasturen wind op land',
        'q_and_u': 'time',
        'factor': 1
    }

    # Aantal uren met elektriciteitstekorten
    # 'dashboard_blackout_hours': {},

    # Aantal uren met elektriciteitsoverschotten
    # 'dashboard_total_number_of_excess_events': {},

    # Uit te breiden netcapaciteit
    # 'lv_net_capacity_delta_present_future': {},
    # 'lv_mv_trafo_capacity_delta_present_future': {},
    # 'mv_net_capacity_delta_present_future': {},
    # 'mv_hv_trafo_capacity_delta_present_future': {},
    # 'hv_net_capacity_delta_present_future': {},
    # 'interconnection_net_capacity_delta_present_future': {},
    # 'offshore_net_capacity_delta_present_future': {},

    # Benodigde meerinvestering infrastructuur (totaal)
    # 'hv_net_in_additional_infrastructure_investments': {},
    # 'interconnection_net_in_additional_infrastructure_investments': {},
    # 'lv_mv_transformer_in_additional_infrastructure_investments': {},
    # 'lv_net_in_additional_infrastructure_investments': {},
    # 'mv_hv_transformer_in_additional_infrastructure_investments': {},
    # 'mv_net_in_additional_infrastructure_investments': {},
    # 'offshore_net_in_additional_infrastructure_investments': {},

    # Onbalans tussen vraag en aanbod uitgedrukt in ​piekvermogen (gas-)backup
}
