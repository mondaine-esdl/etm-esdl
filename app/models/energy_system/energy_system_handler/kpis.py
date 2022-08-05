'''Gathers all methods on EnergySystemHandler regarding KPIs'''
# pylint: disable=no-member
from esdl import esdl

def add_kpis(self):
    ''' Add KPIs object to Energy System '''
    # create new KPIs object
    kpis = esdl.KPIs(id='kpis', description='KPIs')
    self.area().KPIs = kpis

def create_kpi(self, kpi_type, kpi_id, name, q_and_u):
    ''' Create new KPI object '''
    return getattr(esdl, kpi_type)(
        id=kpi_id,
        name=name,
        quantityAndUnit=q_and_u
    )

def add_kpi(self, kpi):
    ''' Add KPI to KPIs object '''
    self.area().KPIs.kpi.append(kpi)

def get_kpi_by_id(self, kpi_id):
    ''' Returns a specific KPI by id, see also get_by_id for a faster method '''
    for kpi in self.area().KPIs.kpi:
        if kpi.id == kpi_id:
            return kpi

    return None

def get_kpi_by_name(self, name):
    ''' Returns a specific KPI by name '''
    for kpi in self.area().KPIs.kpi:
        if kpi.name == name:
            return kpi

    return None
