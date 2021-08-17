# """
# Parser for CHP assets
# """

# from app.utils.exceptions import EnergysystemParseError, ETMParseError
# from .supply import SupplyParser

# class PowerPlantParser(SupplyParser):
#     """
#     Class to parse ESDL information about a single power plant asset and
#     translate it to the relevant ETM inputs.

#     The add_to_present parameter specifies whether the CHPs should be added to
#     the currently installed capacity (add_to_present=True) or whether the
#     currently installed capacity should be overwritten (add_to_present=False)
#     """

#     def __init__(self, energy_system, props, asset_type, sub_type='default', add_to_present=False, *args, **kwargs):
#         super().__init__(energy_system, props, *args, asset_type=asset_type, sub_type=sub_type, **kwargs)
#         self.__set_list_of_assets()
#         self.power = 0.


#     def parse(self):
#         """
#         Check the power to set the corresponding props.
#         """
#         self.set_props()

#         print()
#         print(self.asset_type)
#         print(self.sub_type)
#         print(self.power)


#     def update(self, scenario_id):
#         """
#         TODO
#         """


#     def __set_list_of_assets(self):
#         """
#         Get all instances of chp type and set the list.
#         """

#         try:
#             self.list_of_assets = get_all_instances_of_type(
#                 getattr(self.energy_system.esdl, self.asset_type)
#             )
#             # self.list_of_assets = self.energy_system.get_all_instances_of_type_and_attribute_value(
#             #     getattr(self.energy_system.esdl, self.asset_type),
#             #     'CHPType',
#             #     self.sub_type)

#         except AttributeError as att:
#             raise EnergysystemParseError(
#                 f'We currently do not support the asset {str(att).split()[-1]}'
#             ) from att


#     def set_props(self):
#         """
#         Check the total power of the given CHP type

#         Sets self.power and self.inputs
#         """
#         self.power = 0. # isn't this redundant?

#         for asset in self.list_of_assets:
#             for prop in self.props:
#                 # Calculate ETM input value based on value from ESDL asset
#                 etm_value = getattr(asset, prop['attribute']) * prop['factor']

#                 if prop['attribute'] == 'power':
#                     self.power += etm_value

#                 # Update ETM input value
#                 self.inputs[prop['input']] += etm_value
