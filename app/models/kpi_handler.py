'''Everything to do with KPIs'''

from esdl import esdl

from app.models.conversion_assets import kpis, quantities
from app.services.query_scenario import QueryScenario
from app.utils.exceptions import ETMParseError


class KPIHandler():
    '''
    Handler to add or update the ETM KPI's in the energy_system
    '''
    def __init__(self, energy_system, scenario_id):
        self.energy_system = energy_system
        self.scenario_id = scenario_id

    def add_quantity_and_units(self):
        """
        Energy System information can be used to globally define the quantity and
        units of this system, instead of defining them manually per KPI in each
        area: this fosters reuse (but is not necessary)
        """
        q_and_u = self.energy_system.get_quantity_and_units()

        for quantity, prop in quantities.items():
            if self.energy_system.has_object_with_id(quantity): continue

            q_and_u.quantityAndUnit.append(
                esdl.QuantityAndUnitType(
                    id=quantity,
                    physicalQuantity=prop['physicalQuantity'],
                    multiplier=prop['multiplier'],
                    perMultiplier=prop['perMultiplier'],
                    unit=prop['unit'],
                    perUnit=prop['perUnit'],
                    description=prop['description']
                )
            )

    def update(self):
        """
        Update the KPIs of the energy system based on ETM queries
        """

        if self.energy_system.area().KPIs:
            for kpi in self.energy_system.area().KPIs.kpi:
                # TODO@Roos: if KPI is unknown -> KeyError -> 500. Is that wanted behaviour?
                prop = kpis[kpi.id]
                metrics = self.get_metrics(*[gquery['gquery'] for gquery in prop['gqueries']])

                if prop['esdl_type'] == 'DistributionKPI':
                    for kpi_item in kpi.distribution.stringItem:
                        kpi.distribution.stringItem.remove(kpi_item)
                    self.__add_results_to_kpi_distribution(kpi, prop, metrics)
                else:
                    kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']

    def add_kpis(self, description=''):
        """
        Add KPIs to self.energy_system
        """
        self.energy_system.add_kpis(description=description)

        for prop in kpis.values():
            metrics = self.get_metrics(*[gquery['gquery'] for gquery in prop['gqueries']])
            kpi = self.__create_new_kpi(prop)

            if prop['esdl_type'] == 'DistributionKPI':
                kpi.distribution = esdl.StringLabelDistribution()
                self.__add_results_to_kpi_distribution(kpi, prop, metrics)
            else:
                kpi.value = metrics[prop['gqueries'][0]['gquery']]['future'] * prop['factor']

            self.energy_system.add_kpi(kpi)

    def get_metrics(self, *gqueries):
        '''Requests the metrics for the gqueries from the ETM'''
        query_result = QueryScenario.execute(self.scenario_id, *gqueries)

        if query_result.successful:
            return query_result.value

        raise ETMParseError.with_humanized_message(query_result.errors)

    def __create_new_kpi(self, prop):
        '''Sets up and returns a new KPI with the given id, based on the given properties'''
        return self.energy_system.create_kpi(
            prop['esdl_type'],
            prop['name'],
            self.energy_system.get_by_id_slow(prop['quantity'])
        )

    def __add_results_to_kpi_distribution(self, kpi, prop, metrics):
        ''' For all gqueries in the prop, add values to the kpi's distribution'''
        for gquery in prop['gqueries']:
            self.__add_value_to_kpi_distribution(
                kpi,
                metrics[gquery['gquery']]['future'] * prop['factor'],
                gquery['label']
        )

    def __add_value_to_kpi_distribution(self, kpi, value, label):
        '''Add the value to the kpi's ditribution'''
        if value == 0:
            return
        kpi.distribution.stringItem.append(
            esdl.StringItem(label=label, value=value)
        )

    def add_kpis_to_esdl(self, description='', top_level_area=True, top_level_name='ETM area'):
        """
        Add the ETM KPI's to the EnergySystem
        """
        if top_level_area:
            # TODO: default to scenario area code somehow
            if not self.energy_system.is_top_area(top_level_name):
                self.energy_system.add_top_level_area(top_level_name)


        # Add quantity and units to EnergySystemInformation
        self.add_quantity_and_units()

        # Add (empty) KPIs and targets and update KPIs based on ETM metrics
        self.add_kpis(description=description)
