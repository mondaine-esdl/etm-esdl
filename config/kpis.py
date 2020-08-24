"""
ETM gqueries mapped to ESDL KPIs
"""
gqueries = {
    # Totale systeemkosten
    'total_costs': {
        'esdl_type': 'DoubleKPI',
        'name': 'Totale systeemkosten',
        'q_and_u': 'total_costs'
    },

    # Aandeel hernieuwbare energie op eindgebruik (totaal)
    # 'renewability': {},

    # Elektriciteitsopek uit hernieuwbare bronnen
    # 'total_renewable_electricity_produced': {
    #     'esdl_type': 'DoubleKPI',
    #     'name': 'Elektriciteitsopwek uit hernieuwbare bronnen',
    #     'q_and_u': 'energy_demand'
    # },

    # Aandeel hernieuwbare elektriciteit op eindgebruik
    'share_of_renewable_electricity': {
        'esdl_type': 'DoubleKPI',
        'name': 'Aandeel hernieuwbare elektriciteit op eindgebruik',
        'q_and_u': 'share_of_energy_demand'
    },

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
    'total_co2_emissions': {
        'esdl_type': 'DoubleKPI',
        'name': 'Reductie CO2-emissies t.o.v. startjaar',
        'q_and_u': 'co2_reduction'
    },

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
