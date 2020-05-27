<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="06f3d0c4-32ea-4dd8-a934-bec20f1d8dcb" name="Vesta Resultaten PerPlanRegio">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="89dd3484-5336-4c0e-8d81-b9bbafcdd964">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="ea683747-347b-4612-859f-cd7ae5a0b5f6">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" id="energy_GJ_yr" multiplier="GIGA" unit="JOULE" physicalQuantity="ENERGY"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" id="cost_EURO_yr" multiplier="NONE" unit="EURO" physicalQuantity="COST"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" id="energy_GJ_yr_ha" multiplier="GIGA" unit="JOULE" physicalQuantity="ENERGY" perUnit="HECTARE"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" id="cost_EURO_TON" physicalQuantity="EMISSION" unit="GRAM"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" id="emission_TON_yr" multiplier="MEGA" unit="GRAM" physicalQuantity="EMISSION"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" name="y2030" id="c7de7e6e-cc2c-4589-972b-12c0252772bb" aggrType="PER_COMMODITY">
    <date xsi:type="esdl:InstanceDate" date="2030-01-01T00:00:00.000000"/>
    <area xsi:type="esdl:Area" id="46104458-82b8-4f20-b5b7-cc0fa11a39cb" name="NoordHollandZuid">
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631000">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="ccbe5adb-3757-494d-8e9d-7720c2b9b41b" aggregated="true">
          <port xsi:type="esdl:OutPort" id="4775effa-377e-4c5f-ac5a-898e7030153e" connectedTo="c9aa59c4-604c-4633-b065-3ae59fa0e13f" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="d092f1c0-ed38-4c7a-9311-08daa638883a" aggregated="true">
          <port xsi:type="esdl:OutPort" id="36aae99f-ad8e-4bf8-9e76-d74054f7b539" connectedTo="0fbf8a03-2f66-455a-bf2f-f2f7672f956b" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="a16293d8-a253-4706-8454-59a19c7639bf" aggregated="true" numberOfBuildings="233">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="4592b8e0-c2cc-4653-bf74-2b898cdd1a63" aggregated="true">
            <port xsi:type="esdl:InPort" id="c9aa59c4-604c-4633-b065-3ae59fa0e13f" connectedTo="4775effa-377e-4c5f-ac5a-898e7030153e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1bca9913-545c-4264-842b-ede2ce337112" value="46514.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b7a1d5ab-375e-4887-8832-5bf5b5f28708" connectedTo="9e0635db-e583-4ca5-bb36-7c3f144fe76a" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="000c7e28-c473-44d3-9848-2df8449ed1d7" aggregated="true">
            <port xsi:type="esdl:InPort" id="0fbf8a03-2f66-455a-bf2f-f2f7672f956b" connectedTo="36aae99f-ad8e-4bf8-9e76-d74054f7b539" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dc3ec86c-98d0-4e3d-ac6a-c1a3395ec047" value="101973.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8250e879-e29b-47bd-84fe-3a85fc2ef89a" connectedTo="d62e082b-bdd6-43bb-a8de-2aec2d623566" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="6a53a7b2-ef92-4902-a117-c05797cdff80" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="d95f02f0-cdb8-4441-a40b-e3f86da0c301" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="468ac5e5-b4da-45c6-9bd1-07a75e69c43a" value="46514.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="1cfe72d4-aef7-409c-b3f2-8d3c6882b842" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="ebeb753f-df0d-400b-84e0-afb84cbad367" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a797e989-7a6a-432f-b5b6-2673dd6866a8" value="1789.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="d9624a7f-a0ad-4e9b-b73a-85fee2851653" aggregated="true">
            <port xsi:type="esdl:InPort" id="dd097458-d33b-4f0c-bf7f-784b4bbf70b4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f94509d4-c405-468a-be2f-5dc037dc6bde" value="26835.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="634cdf08-b8cb-4192-b82f-a449858fa1d5" aggregated="true">
            <port xsi:type="esdl:InPort" id="72e64cb2-93ad-47e5-9439-807211d2fd59" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="664662fc-5cbd-4f61-b66f-f007be0a22b6" value="94817.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="fefd20f5-160c-40a7-bb1e-8ec46ea9d908" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="4e6f5f47-efa7-4b1a-a7a4-33e601cc6e3e" connectedTo="1af93801-7f26-4051-bb74-562033620a9e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="91bd3f90-b538-4dac-ab58-63e524d6462e" value="48303.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="5354bcdc-03fc-4666-a01e-72e1e2a8ad76" aggregated="true">
            <port xsi:type="esdl:InPort" id="d62e082b-bdd6-43bb-a8de-2aec2d623566" connectedTo="8250e879-e29b-47bd-84fe-3a85fc2ef89a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7490d3c8-2d48-4d78-9583-7c29ce934af6" value="94817.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="97283703-3325-4d0e-bd77-b14947d92a88" aggregated="true">
            <port xsi:type="esdl:InPort" id="9e0635db-e583-4ca5-bb36-7c3f144fe76a" connectedTo="b7a1d5ab-375e-4887-8832-5bf5b5f28708" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="1af93801-7f26-4051-bb74-562033620a9e" connectedTo="4e6f5f47-efa7-4b1a-a7a4-33e601cc6e3e" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="b0e33117-64df-4d71-b848-c562bb95536e">
          <kpi xsi:type="esdl:DoubleKPI" id="0cae4dc5-c42c-4e3b-b371-33b3fe1ad61b" value="2600.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6cf29031-4d3a-4a43-8b82-a50722a44a9e" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="157322fd-62c5-46f6-843e-e0afcec8fd47" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4ce07543-6940-421c-836b-fa635838ef86" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631001">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="14349721-3d1e-43ce-9af6-8c5708d07073" aggregated="true">
          <port xsi:type="esdl:OutPort" id="38ebbfea-d05b-46f2-9539-e4001b6a731c" connectedTo="f7f5028b-e5cd-4a7e-b9f3-b347b71fb6bf" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="3893557a-9350-41f2-bf83-e49bb928ec29" aggregated="true">
          <port xsi:type="esdl:OutPort" id="237abe77-329d-4ee6-8a92-e76267cb2a52" connectedTo="818c5274-f549-4929-a9fa-1eb7a2eecca0" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="6bc07968-e315-404c-a71e-bdaaecfc0442" aggregated="true" numberOfBuildings="50">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="594df0c0-0ce5-4cd4-87c2-44680ef52885" aggregated="true">
            <port xsi:type="esdl:InPort" id="f7f5028b-e5cd-4a7e-b9f3-b347b71fb6bf" connectedTo="38ebbfea-d05b-46f2-9539-e4001b6a731c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c03d8164-90ad-4c6f-8194-b65d8cdfcfc3" value="18468.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="1032fcbe-bcaa-4a89-9c12-209989e9fda7" connectedTo="6930052b-3d01-4751-8656-64186e3d9fbc" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="4d0bf7e2-8080-4e68-960b-31f425d12fca" aggregated="true">
            <port xsi:type="esdl:InPort" id="818c5274-f549-4929-a9fa-1eb7a2eecca0" connectedTo="237abe77-329d-4ee6-8a92-e76267cb2a52" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f537490b-a010-422b-97f9-6e71303c21ec" value="27216.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="99830f31-8f03-4313-9f0d-fb9719513c2f" connectedTo="6c5a2f0f-7887-4b43-b5ff-1fa0bf6f7e8f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="573ddd90-c4fb-4624-b675-a8fdc675675b" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bd5071c9-5599-41c3-bc52-46aa8a50ac4d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f7f32c6c-117f-4e19-b0a4-bdb7abd60f13" value="18954.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="9c75d188-0158-4c00-b796-78d63f43c744" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="611c712a-0159-48a2-9a72-2339f1e0f1d8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fece3323-4ebf-4041-aa9e-96d9c94c5266" value="486.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="658c696f-5902-48f7-856e-395210deafc0" aggregated="true">
            <port xsi:type="esdl:InPort" id="0abac76d-01bb-4486-bf47-31523b29dbb9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cca2487c-c0e1-4667-9e68-193c782b0ca5" value="7776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="e9ae3b5d-f6e1-40a6-acca-9d8faceb15a2" aggregated="true">
            <port xsi:type="esdl:InPort" id="ebd00bf8-bd07-43b9-92c7-0d63a082638c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e7e6b170-55e3-4885-9b55-73fef881a7a1" value="24786.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="09d55024-fd0b-4cb4-be6e-a81460a254fc" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="3d7ee088-b14a-4b60-8be3-0246e14f27cc" connectedTo="fed50c52-41b9-4d7a-b380-3f7365f69c3e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="18f72d77-95a5-45ed-981c-8e706af625c0" value="19440.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="94358f7f-80ed-46fc-ae64-82d6dfd754c9" aggregated="true">
            <port xsi:type="esdl:InPort" id="6c5a2f0f-7887-4b43-b5ff-1fa0bf6f7e8f" connectedTo="99830f31-8f03-4313-9f0d-fb9719513c2f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="91c641a5-bf1e-4b6a-8621-cc3f521def42" value="24786.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="1aa9010f-2ee2-49ee-9007-81e62ec03e0d" aggregated="true">
            <port xsi:type="esdl:InPort" id="6930052b-3d01-4751-8656-64186e3d9fbc" connectedTo="1032fcbe-bcaa-4a89-9c12-209989e9fda7" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="fed50c52-41b9-4d7a-b380-3f7365f69c3e" connectedTo="3d7ee088-b14a-4b60-8be3-0246e14f27cc" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="2d5f6441-39ec-417c-8b65-8f49485542ee">
          <kpi xsi:type="esdl:DoubleKPI" id="96ed04cb-43dc-402b-b4a0-89d19b06a073" value="1041.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8eca9d79-f064-46ae-bc26-667456b4bead" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="caa90b3f-a7da-479f-a269-1e320bc67a79" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="74d56608-154f-4479-be96-f893d00dc02b" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631105">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="84d5f04e-9163-44d3-a6e8-a03dbeb30419" aggregated="true">
          <port xsi:type="esdl:OutPort" id="5bc7b2c5-2111-4406-b96c-b28c212725f8" connectedTo="d3135818-4208-475d-9572-241b4fbe1293 7f8e6972-59c4-4f18-9da5-4303572875b0" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_MT_network" id="1a3eb147-c93c-4e58-8da8-7c0687658f8f" aggregated="true">
          <port xsi:type="esdl:InPort" id="3b0f386f-6e80-4fbe-a433-14fad2a7951b" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="c8612fac-7a2a-4f47-9b94-79ab27fce85c" connectedTo="e54c1f57-5ffc-49f6-8fb1-2f71d476fca5 04e7898b-1c44-40b3-beae-5240ce4faaa5" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="83ed543c-fa9c-4f5b-a666-d8ef5b34468c" aggregated="true">
          <port xsi:type="esdl:OutPort" id="1e835cf9-6047-40ad-b481-fb42c531861f" connectedTo="759f02ff-3d91-49f8-9c59-ef4a29633a40 10a16882-df6e-432f-b13e-227e377169b4" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a03_aansl_mt" id="a2a55716-20e2-4cb5-8f5e-022ac2efaf54" aggregated="true" numberOfBuildings="1046">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="f9e5c2d9-1b8b-4497-8bf5-98ee69051aba" aggregated="true">
            <port xsi:type="esdl:InPort" id="d3135818-4208-475d-9572-241b4fbe1293" connectedTo="5bc7b2c5-2111-4406-b96c-b28c212725f8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="083fa570-1063-4348-9cf1-073ee5cf8642" value="54930.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8c2b524c-cc6c-4a3d-bcaa-82de79128095" connectedTo="508f8add-b1e5-48ed-b1d5-3a1c1eac92a4" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="909fc9a7-9bdc-41d4-b939-d62a72fa0381" aggregated="true">
            <port xsi:type="esdl:InPort" id="759f02ff-3d91-49f8-9c59-ef4a29633a40" connectedTo="1e835cf9-6047-40ad-b481-fb42c531861f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="08c1c32f-76f6-47c3-b429-f2dd0d0411e4" value="274650.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8c497cb7-3d7d-4f15-8296-253d3aa9eede" connectedTo="35b02ca1-c78a-4df9-bc89-9ecd39824bff" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="cf697bd9-7416-4dec-9a03-983a221d44e1" aggregated="true">
            <port xsi:type="esdl:InPort" id="e54c1f57-5ffc-49f6-8fb1-2f71d476fca5" connectedTo="c8612fac-7a2a-4f47-9b94-79ab27fce85c" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="ef48ca76-d833-4c88-a8a0-6b4bee61aeb2" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="6453d289-a552-4868-9595-d805e7cf7cc7" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="dd7612c7-4281-49ba-a38d-fb2f44876535" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e198df64-d92a-4371-bd2c-71e99bce4d4e" value="175776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="1e7c870f-b163-4474-b14e-898aadd754fe" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="59c1c706-d6a7-4afa-b2ce-b96f930497f7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="01008fda-9975-46ed-abf1-5b67ae093ae4" value="10986.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="bf5e739c-586a-4e0b-86e2-54f91630a8ac" aggregated="true">
            <port xsi:type="esdl:InPort" id="f5fc6f25-2524-4934-bd01-52e82188f7e4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e254c71c-2527-4860-8915-4d3dc5c02419" value="82395.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="268e087d-afde-4b99-a757-7617578b7162" aggregated="true">
            <port xsi:type="esdl:InPort" id="539aa510-3499-43e4-b11b-8366bcaedeb3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0373c0c3-d0e6-4cee-a596-cec68f83d92e" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="ab6caf42-0285-471f-90e7-56984b18d401" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="4c34bdf5-8320-491a-83ce-c4f60bc4bb4c" connectedTo="27bf13a1-c1de-44e0-bd08-b41c4a0cd353" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="57a2eb9e-8d68-4123-99ad-0d759d975e9a" value="186762.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="d5486792-ee0a-464b-8bee-3973e94ee54f" aggregated="true">
            <port xsi:type="esdl:InPort" id="35b02ca1-c78a-4df9-bc89-9ecd39824bff" connectedTo="8c497cb7-3d7d-4f15-8296-253d3aa9eede" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b7f9da76-2206-4836-87a3-e0baa2545b4b" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="51449f93-58b7-404b-8ae2-073dc9c7f2ce" aggregated="true">
            <port xsi:type="esdl:InPort" id="508f8add-b1e5-48ed-b1d5-3a1c1eac92a4" connectedTo="8c2b524c-cc6c-4a3d-bcaa-82de79128095" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="27bf13a1-c1de-44e0-bd08-b41c4a0cd353" connectedTo="4c34bdf5-8320-491a-83ce-c4f60bc4bb4c" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a19_aansl_mt_restwarmte" id="edb6d306-d7ab-4f6a-ba7f-e4c40c8250fb" aggregated="true" numberOfBuildings="1046">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="941940b2-445c-40af-ae49-d8a569da73fe" aggregated="true">
            <port xsi:type="esdl:InPort" id="7f8e6972-59c4-4f18-9da5-4303572875b0" connectedTo="5bc7b2c5-2111-4406-b96c-b28c212725f8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="02dad9b4-9fc3-4e7a-bc2c-4124f07d27bc" value="54930.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="1c930394-1f71-4709-87d8-3fd975ca654d" connectedTo="af6c6949-34f3-4531-b3a4-f2b0b331a7a2" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="9ba1e598-01a1-4d45-b375-b50f5a780d2b" aggregated="true">
            <port xsi:type="esdl:InPort" id="10a16882-df6e-432f-b13e-227e377169b4" connectedTo="1e835cf9-6047-40ad-b481-fb42c531861f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b4a14250-99a0-4368-89d7-0f8cfe129956" value="274650.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d99ba64a-2564-43a8-82a7-9c6558f685f1" connectedTo="1fb59b4e-f15b-4d49-8417-284c417f4453" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="03f20da0-01fd-4f36-b190-2e0997493a2a" aggregated="true">
            <port xsi:type="esdl:InPort" id="04e7898b-1c44-40b3-beae-5240ce4faaa5" connectedTo="c8612fac-7a2a-4f47-9b94-79ab27fce85c" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="7d06e335-a4e8-4dee-acb3-3d886fbe75cf" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="29ec598a-8ef1-4d0d-b494-f61d546c9dac" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b2058bf7-5200-4652-bb58-43d3c3fc2b19" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="10e83eeb-6ada-475d-b4aa-8758d1a978ad" value="175776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="a15f6ba7-7aae-4478-92ff-7e153323086c" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="32e81432-7b01-4f86-9848-448567cf2705" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="782a5424-0555-4aab-84bd-1acff3a0e1e1" value="10986.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="4e0f92d0-8c53-43e3-89cf-68cddfc2c747" aggregated="true">
            <port xsi:type="esdl:InPort" id="4d9c8e19-e177-4708-83b5-5be9fcd6c72e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dac3ab10-6ec6-4008-a59b-4e33a1c564ec" value="82395.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="f1fc3cbc-0952-43f4-bac0-8c2e1284ebd3" aggregated="true">
            <port xsi:type="esdl:InPort" id="b898090b-bf47-444f-a067-8721c7d0b672" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="29cddc6d-c6eb-4b48-81ca-e66a969a1243" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="a321f124-178a-43ad-a131-614a2cf9156e" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="b4f3314e-0870-46aa-b23f-6427d73ea5ea" connectedTo="f8eaa466-7792-4a31-82be-ab8b85e9b4e7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f52ee0b7-fd33-44dc-b924-f9cac103d63a" value="186762.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="88dabbd0-badf-48aa-9827-19b0e6a54395" aggregated="true">
            <port xsi:type="esdl:InPort" id="1fb59b4e-f15b-4d49-8417-284c417f4453" connectedTo="d99ba64a-2564-43a8-82a7-9c6558f685f1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b77f9304-cefc-4c55-8445-215c9e8dd0a6" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="7223f4b8-a23f-4fe8-a06e-8dc96c22cf1e" aggregated="true">
            <port xsi:type="esdl:InPort" id="af6c6949-34f3-4531-b3a4-f2b0b331a7a2" connectedTo="1c930394-1f71-4709-87d8-3fd975ca654d" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="f8eaa466-7792-4a31-82be-ab8b85e9b4e7" connectedTo="b4f3314e-0870-46aa-b23f-6427d73ea5ea" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="e7bb6e22-717f-4e99-8fda-d175b18fa72c">
          <kpi xsi:type="esdl:DoubleKPI" id="3ce5a1bb-4a53-4b55-9c96-32604782a808" value="3008.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d969a459-00f9-4c6e-82e3-f2c3e50ada98" value="681380.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9c9e5fe0-88bf-4b8d-a46b-e9aa696064cf" value="94.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="49249b4c-b63f-40c1-a7e9-133a1a73db38" value="124.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631306">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="bc206b5e-e0b2-4f47-aa2c-92ae549869f3" aggregated="true">
          <port xsi:type="esdl:OutPort" id="2d0c4833-c59d-489a-be15-973a424cbd7b" connectedTo="adf41e9e-0a44-4500-ba6f-be2141dc1e6b" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="405aa522-f1fc-43d9-813e-a84057cfcf9c" aggregated="true">
          <port xsi:type="esdl:OutPort" id="6a321e4d-cc5a-4ce3-a51d-1cf16715385c" connectedTo="9fbaf614-adff-4a83-af44-67b67e6cb878" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="7f96ebd4-54aa-43ce-8822-a12dc2d77662" aggregated="true" numberOfBuildings="39">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="58d1bfa7-a2d7-486f-9423-80097ebe45a9" aggregated="true">
            <port xsi:type="esdl:InPort" id="adf41e9e-0a44-4500-ba6f-be2141dc1e6b" connectedTo="2d0c4833-c59d-489a-be15-973a424cbd7b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3b544d1d-efc7-4b09-80c2-3f418c14a91e" value="10004.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="51ef9ebd-16a3-49a8-a288-6efa2a3f1119" connectedTo="47b07234-450c-4e09-9a9e-8d9eec87778f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="753ddcac-0443-4b50-b224-19abbe9ee1cd" aggregated="true">
            <port xsi:type="esdl:InPort" id="9fbaf614-adff-4a83-af44-67b67e6cb878" connectedTo="6a321e4d-cc5a-4ce3-a51d-1cf16715385c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c8e63422-5baf-453c-8f75-3284fb01607b" value="7052.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="3debd785-0884-4ccb-9bab-bf02e1d715e8" connectedTo="706b064c-cae8-4c3d-a11b-33dd9ba896ed" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="6318285f-27fa-4d94-8da1-c01ad1224af9" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="c7dca955-f8d9-4c8b-86a5-5ec40693dc90" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="60c75d6b-c921-4af6-8080-20391f7e66c9" value="9840.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="bce23897-e80c-4e23-ae4c-0573fdc862bc" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="fbebec67-2c23-437a-b129-666962a79b16" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="51c38807-37cd-4e0d-be88-f51e7f506e77" value="328.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="df2673ee-033f-4b53-b2a3-d623e2015e05" aggregated="true">
            <port xsi:type="esdl:InPort" id="60eeffc9-0ade-4c70-b8fe-4746411d7412" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="34ac8906-4991-4e7c-8f61-593ced3318c5" value="3608.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="5bce693e-3d91-4ea4-913d-dd8919a428e5" aggregated="true">
            <port xsi:type="esdl:InPort" id="91ceebcb-4400-47e0-8aac-de3952d66a59" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1f455597-84bd-4055-a85f-e7ea22f7f619" value="5904.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="77bf2279-e99a-4b8a-897a-9da8d22f91f9" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="e61d85a1-d8e4-486b-b46a-0532538cb40e" connectedTo="332a88cf-a3f5-42f7-8f7d-ea021a7f7e2c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="55498b9d-5bb7-45bd-98cf-022364d6e5ef" value="10168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="316902b5-c1fe-488b-ba52-d433a83955e3" aggregated="true">
            <port xsi:type="esdl:InPort" id="706b064c-cae8-4c3d-a11b-33dd9ba896ed" connectedTo="3debd785-0884-4ccb-9bab-bf02e1d715e8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3ef4f364-a394-42d6-8cd4-bb745ff5b2ea" value="5904.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="1d8d712e-743e-46ca-a604-02fdbfdd2433" aggregated="true">
            <port xsi:type="esdl:InPort" id="47b07234-450c-4e09-9a9e-8d9eec87778f" connectedTo="51ef9ebd-16a3-49a8-a288-6efa2a3f1119" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="332a88cf-a3f5-42f7-8f7d-ea021a7f7e2c" connectedTo="e61d85a1-d8e4-486b-b46a-0532538cb40e" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="f89f53a2-6c04-4c14-b7bb-3b052010fe4e">
          <kpi xsi:type="esdl:DoubleKPI" id="68a23beb-78ac-41ff-a3f5-c94b06115b63" value="559.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1156e6b3-cf1c-4856-9a50-20d5601cbc99" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="763f9a9d-75bb-4e31-adbc-94f5ca9d2d29" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0ed711f6-af9f-4ddd-911f-f21c97749eb7" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631307">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="384a963c-71fe-40cb-bc4b-eb4d36429296" aggregated="true">
          <port xsi:type="esdl:OutPort" id="8d8a590f-f6d5-4e02-b4f4-cbd7511fcd79" connectedTo="7d48d8a9-7715-45e9-a288-0e605910f168 d34ca2a9-61e2-4299-9d8d-c9f6b01dcd08 6600fc79-52e3-4918-982d-fe830178c615" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_MT_network" id="307358c5-5ca4-4f13-8ae2-b78c4594a192" aggregated="true">
          <port xsi:type="esdl:InPort" id="9c8165c8-5f8e-48c3-9c39-85a5e60a0e53" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="9e95240d-0644-43c2-b4a9-52455f728a66" connectedTo="66ebff85-4d94-4e11-82d7-23094b51bc50 813fb281-272f-40fc-8b82-49bea22cda33 c562f009-e4e6-4c9a-9457-989eacebdf14" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="f5079d52-f385-4332-b26d-281e5ada46ae" aggregated="true">
          <port xsi:type="esdl:OutPort" id="400ca912-dfd3-43ef-ad17-5a0cd49dcf26" connectedTo="38cd64bb-9747-466c-b2b3-296816eb064b e57e7d59-2998-473d-aa1b-064e12f3d145 6891923c-c8f6-4884-a357-513f116295fc" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="b5d8ff35-39fe-4178-8160-aee6c144f1d0" aggregated="true" numberOfBuildings="11">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="a4962d07-5897-4745-b0b3-9b2ce8c1a4c0" aggregated="true">
            <port xsi:type="esdl:InPort" id="7d48d8a9-7715-45e9-a288-0e605910f168" connectedTo="8d8a590f-f6d5-4e02-b4f4-cbd7511fcd79" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a99db9f7-e6be-471b-81ed-b5fcc46bac5e" value="2793.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7b0ea6b1-5227-4405-bf10-3e4dc2256527" connectedTo="43ca09c0-2dbc-4abe-b647-e08eab36340d" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="397c4a6c-cda2-4209-bd4a-3520dc817307" aggregated="true">
            <port xsi:type="esdl:InPort" id="38cd64bb-9747-466c-b2b3-296816eb064b" connectedTo="400ca912-dfd3-43ef-ad17-5a0cd49dcf26" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8db7a5ca-d26e-4509-a7ab-cc7c63ed8f14" value="7847.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="976cb365-068b-4fc9-817a-9bc6dee5138b" connectedTo="28ea3bf5-6766-415a-ba9d-c624cf319282" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="f107a6d7-7293-4328-8048-c9b535591899" aggregated="true">
            <port xsi:type="esdl:InPort" id="66ebff85-4d94-4e11-82d7-23094b51bc50" connectedTo="9e95240d-0644-43c2-b4a9-52455f728a66" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="b2b5384a-a740-4da5-ada8-1fc731834c25" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="72e638e9-897a-41c5-9ec1-10b68acbe232" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7643f66f-8965-4360-888d-225b0cdbdb6c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="68d56a67-a3b2-48ef-a698-e617999f9d63" value="3059.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="4d671da9-4849-4edd-845a-1f5c9089a282" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4a013fb8-6043-423d-a790-6a812126bfd2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fbb52521-7c40-48da-b82f-a8563b768528" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="2ab198ec-4f99-4076-b45e-fcebb553aeb4" aggregated="true">
            <port xsi:type="esdl:InPort" id="eb0f2c39-5aeb-4e3f-9121-e2de56b79378" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f8734f74-882d-4429-a22a-41fa028ad307" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="3659aa63-d1de-4122-a2ca-ca1ba91409dd" aggregated="true">
            <port xsi:type="esdl:InPort" id="1fa009a4-9751-405c-83e2-935cc76963e4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a725b818-fc10-4065-827e-c4cb7c1c3489" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="0be66459-7e73-4670-95ba-771b4182f8c8" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="8d3fef52-8129-4499-b5a9-df9a4bdbc489" connectedTo="99bc1de2-63b8-47d0-b20e-1f7db9bba4d2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3e0f2081-0c8f-40f2-9aa8-8ece4b91373c" value="3192.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="8d5a501f-3322-4dab-938b-d9de8ec916cf" aggregated="true">
            <port xsi:type="esdl:InPort" id="28ea3bf5-6766-415a-ba9d-c624cf319282" connectedTo="976cb365-068b-4fc9-817a-9bc6dee5138b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8b2e5d11-1967-4134-84d5-bc0f3641dbb1" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="a924fb45-4018-4139-bd94-7362ed58236a" aggregated="true">
            <port xsi:type="esdl:InPort" id="43ca09c0-2dbc-4abe-b647-e08eab36340d" connectedTo="7b0ea6b1-5227-4405-bf10-3e4dc2256527" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="99bc1de2-63b8-47d0-b20e-1f7db9bba4d2" connectedTo="8d3fef52-8129-4499-b5a9-df9a4bdbc489" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a03_aansl_mt" id="2710a286-5706-46ec-8b9f-381eb0b23103" aggregated="true" numberOfBuildings="2">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="5403ed5b-a092-44a2-b8f5-d5565572cfa2" aggregated="true">
            <port xsi:type="esdl:InPort" id="d34ca2a9-61e2-4299-9d8d-c9f6b01dcd08" connectedTo="8d8a590f-f6d5-4e02-b4f4-cbd7511fcd79" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7f17a9f9-fd84-46d4-820f-21852c91ecb9" value="2793.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="477b1594-1d05-4388-8d7e-4f45e7b80308" connectedTo="809b416a-92df-4ab0-9553-bbcbe3f01aad" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="3a26e661-c7f4-4c42-b92c-beee4c0a7967" aggregated="true">
            <port xsi:type="esdl:InPort" id="e57e7d59-2998-473d-aa1b-064e12f3d145" connectedTo="400ca912-dfd3-43ef-ad17-5a0cd49dcf26" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dda9b10a-0e51-4ddb-920b-2e5f88494f7e" value="7847.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4ff5870c-5d43-4d60-ba73-9505fc3954da" connectedTo="2800b0cb-523b-467e-8169-8dcfde75f983" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="6cf342e5-e103-45c9-b697-880534966adc" aggregated="true">
            <port xsi:type="esdl:InPort" id="813fb281-272f-40fc-8b82-49bea22cda33" connectedTo="9e95240d-0644-43c2-b4a9-52455f728a66" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="524145c5-6e39-4d1a-946f-32f90e427e6f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="7dbc31bb-5175-4758-bad8-dbe0eff4a23e" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="49f31c24-fd79-475c-973d-06c08ce6d00e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="75287f55-ac79-49bb-8ba0-c1fa79c63b5b" value="3059.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="d9c2a61c-54a5-4b22-b84e-96d9f5868e74" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="585b84c2-bfda-4d0e-8c98-46d316e95da0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="27e6df99-aa26-469c-9365-a2a83221100c" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="2218093c-97af-4c62-bf7c-163d717c2371" aggregated="true">
            <port xsi:type="esdl:InPort" id="231606f6-fa35-4c16-82ef-062652d58711" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c75192c5-d5d6-4c20-957d-259a6ea039b3" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="833e2ffe-9708-46ad-9d48-8d74722da4d7" aggregated="true">
            <port xsi:type="esdl:InPort" id="c58c006d-488f-46ca-8608-6438761f4864" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a0620de1-3b2a-49c6-8486-3b1bf624f7c0" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="f738a749-0726-47fb-a9f6-d0619308961d" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="d6d30378-4cc6-456b-ab0c-2a7c6224f3a3" connectedTo="1ac479d2-262c-499e-876f-81bf9151696f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="927e3191-04cc-4fe9-af1b-50cf6ba4044d" value="3192.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="509097e4-4fe9-4627-a810-7b29f5096311" aggregated="true">
            <port xsi:type="esdl:InPort" id="2800b0cb-523b-467e-8169-8dcfde75f983" connectedTo="4ff5870c-5d43-4d60-ba73-9505fc3954da" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2a5cd23a-8336-4925-8a75-e09fae1b91e4" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="65a9fbd3-35a3-4aa3-b4c9-9901b29f16ab" aggregated="true">
            <port xsi:type="esdl:InPort" id="809b416a-92df-4ab0-9553-bbcbe3f01aad" connectedTo="477b1594-1d05-4388-8d7e-4f45e7b80308" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="1ac479d2-262c-499e-876f-81bf9151696f" connectedTo="d6d30378-4cc6-456b-ab0c-2a7c6224f3a3" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a19_aansl_mt_restwarmte" id="e0e29aba-96f5-41e9-a494-9c73ad739af8" aggregated="true" numberOfBuildings="2">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="3f4012f1-7fab-41c0-aa9f-b5f6d132fe96" aggregated="true">
            <port xsi:type="esdl:InPort" id="6600fc79-52e3-4918-982d-fe830178c615" connectedTo="8d8a590f-f6d5-4e02-b4f4-cbd7511fcd79" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a4afbe55-14c2-49bd-908c-1ac489408f34" value="2793.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e345c227-fde7-4f4e-8780-18550803bf73" connectedTo="2edbdc6d-a43a-4228-a734-c47537f74b8c" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="1a690960-d566-461f-ae22-46367a00f8ea" aggregated="true">
            <port xsi:type="esdl:InPort" id="6891923c-c8f6-4884-a357-513f116295fc" connectedTo="400ca912-dfd3-43ef-ad17-5a0cd49dcf26" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a7574382-e7a6-4971-8201-fa7fcf81932a" value="7847.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bbce2693-3fa3-4d8a-abb3-871cd9ca9834" connectedTo="fbe3ccaf-b93d-430c-a0d3-8b44a0455ae0" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="c6a48d64-ed0f-4a79-80e9-c9c8bd6531ce" aggregated="true">
            <port xsi:type="esdl:InPort" id="c562f009-e4e6-4c9a-9457-989eacebdf14" connectedTo="9e95240d-0644-43c2-b4a9-52455f728a66" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="a4eb9b3c-c8ce-425c-b19d-c6043ed47d73" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="0e26afb2-6ab6-40ba-b10f-5dcb4d097476" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="48c07c74-6c36-46f2-b4af-4f97647199c1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1fe68ae3-a8af-404c-9541-5ad4ff43987c" value="3059.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="de17e654-fcf5-4b92-a20a-8296999b8daf" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="eb90f406-543d-4bcf-8096-dca8e6fc8ec1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="caef0671-e7a1-4d81-8139-06f8c8f6fbe0" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="a0fcd0bc-da0e-46d2-9dbd-3dddcf3ebc44" aggregated="true">
            <port xsi:type="esdl:InPort" id="b53c22ec-91fa-4113-a62c-cf19bccba628" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="096a37c8-e906-4d2a-ba58-aebb2b903ac2" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="a0f066b9-a344-4f64-ad82-2e49e1cecd55" aggregated="true">
            <port xsi:type="esdl:InPort" id="9b341ce4-2cb4-4f41-9a3e-292d3cab6da6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b27d87b5-4c4f-4cbe-b305-12348f906f32" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="b27fd47b-a0e3-4d12-a204-7f2c803e54f6" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="0fac7bd6-bcd4-476f-a0d5-984e948ac48f" connectedTo="cfd24a56-2d26-4070-927a-cacb4d0164c6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="32a1d3ed-c5da-45ae-9a58-c0efcd6e968c" value="3192.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="e06724dc-81cb-4641-85b2-7a2eff98c6ec" aggregated="true">
            <port xsi:type="esdl:InPort" id="fbe3ccaf-b93d-430c-a0d3-8b44a0455ae0" connectedTo="bbce2693-3fa3-4d8a-abb3-871cd9ca9834" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="368029f9-bdb6-4b26-8afb-3c019f5350a3" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="081d838b-3d02-480b-9ca6-46d7849a2de3" aggregated="true">
            <port xsi:type="esdl:InPort" id="2edbdc6d-a43a-4228-a734-c47537f74b8c" connectedTo="e345c227-fde7-4f4e-8780-18550803bf73" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="cfd24a56-2d26-4070-927a-cacb4d0164c6" connectedTo="0fac7bd6-bcd4-476f-a0d5-984e948ac48f" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="b7400b6d-110a-455c-8b94-db8927fbc2d0">
          <kpi xsi:type="esdl:DoubleKPI" id="87cab6c8-1498-4e0c-a5b0-78a58051978d" value="172.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7844371d-6a50-4205-8ac0-edfd69a8b577" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="83ea5663-fe9f-4264-aa5b-6cfe11c96c2a" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="65cdc674-55e8-4f72-84af-a38f813239d8" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03633600">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="905b1a79-9a47-4de9-9d3e-665967700c11" aggregated="true">
          <port xsi:type="esdl:OutPort" id="6ea4ee58-807e-4972-8cb8-2c67be7a3a9c" connectedTo="bd52428d-5da8-4d85-b0ba-25d7010aff52" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="41ed99f6-c637-40f3-89d8-2de4fc0a0f13" aggregated="true">
          <port xsi:type="esdl:OutPort" id="e62ac2ae-c5d8-4f58-986c-46e20e850d1b" connectedTo="214af396-0539-490e-b1fb-4b2bdf363f35" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="fb658c48-c91e-45d3-857d-ea0829350c92" aggregated="true" numberOfBuildings="240">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="27464bfd-08b1-46b8-b222-e9483fad3da1" aggregated="true">
            <port xsi:type="esdl:InPort" id="bd52428d-5da8-4d85-b0ba-25d7010aff52" connectedTo="6ea4ee58-807e-4972-8cb8-2c67be7a3a9c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="08e57e0e-70be-4ef8-868e-1df6a1754c0a" value="21450.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="1656ec89-5f98-40b8-9616-cbe788a72244" connectedTo="3b203f41-bb9b-42b7-b02c-9b801059b967" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="7f08792b-6cbe-4f73-a131-964689e3d118" aggregated="true">
            <port xsi:type="esdl:InPort" id="214af396-0539-490e-b1fb-4b2bdf363f35" connectedTo="e62ac2ae-c5d8-4f58-986c-46e20e850d1b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="014d5a32-c675-44ee-a7cd-c08e36148ed5" value="25350.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e13792f9-53c2-4147-ad3e-5ccbcd165fc0" connectedTo="79f9d96b-1cf2-4340-8014-6c03a341db98" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="756d1b4f-8567-4383-b5d1-fc3caa956296" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="0d02713a-6c8f-496d-9efb-a34b8b5c17af" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e5c661bf-9c5a-4505-a9fb-4fb76fcb516f" value="19500.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="a2e2779c-4539-46d3-87b1-ae42c04c9cd3" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="45f8d108-bddb-4a22-b80e-eb8a0c00bb2c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cda28bd1-5cef-4ee1-864c-d36c9526645e" value="1950.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="84b1baa5-1bf1-4559-808e-469e5f0c87c1" aggregated="true">
            <port xsi:type="esdl:InPort" id="4b8c4790-4539-4ed8-acee-0155bc40e5f4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6ea6df9c-c5a7-4c31-bbf8-319545154a6f" value="8450.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="e10d329f-8eec-4a21-9529-442f2d2a922b" aggregated="true">
            <port xsi:type="esdl:InPort" id="f1a3d9f3-696c-4daf-a3a7-5d7162a60beb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="37e1fa3e-74b3-42e5-9d5c-87eb026a4900" value="22750.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="087497b3-de84-45af-a459-e80560dc185a" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="9edfab50-c3b5-49f9-ab89-e0268f56a4f0" connectedTo="e07c53ea-1adc-469e-9731-6d6b67c4d87e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d500868-07c0-4aed-a2df-b8b71841fc95" value="21450.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="59ce5cd1-db35-4ecb-b513-66c679d5f3e5" aggregated="true">
            <port xsi:type="esdl:InPort" id="79f9d96b-1cf2-4340-8014-6c03a341db98" connectedTo="e13792f9-53c2-4147-ad3e-5ccbcd165fc0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="917b4f76-67de-466b-a576-81e5c88ac48b" value="22750.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="e829bfd1-e133-4a13-bb5b-dd2577d9049e" aggregated="true">
            <port xsi:type="esdl:InPort" id="3b203f41-bb9b-42b7-b02c-9b801059b967" connectedTo="1656ec89-5f98-40b8-9616-cbe788a72244" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="e07c53ea-1adc-469e-9731-6d6b67c4d87e" connectedTo="9edfab50-c3b5-49f9-ab89-e0268f56a4f0" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="0b8713da-1773-49e5-ad09-c56350098061">
          <kpi xsi:type="esdl:DoubleKPI" id="bcdc438e-c016-4e9d-ad6b-5714de9baa50" value="1191.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="68da6272-2b3c-4c82-a297-ef4909f4aaff" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7489b777-2868-44eb-8e25-ea34362d60ec" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eaa84aa0-8e87-43b3-9785-713e6df93f6b" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03633601">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="4397c7db-b00e-4a19-a947-8e24796836d0" aggregated="true">
          <port xsi:type="esdl:OutPort" id="68778da3-6830-4508-8e28-92f1ef81c7cd" connectedTo="8c95ca23-fb78-4f6c-9d40-cab7b3afedcc 1beca094-7fc5-4701-9c9a-28d406ec091c" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_MT_network" id="411edd3c-ca34-472b-911c-c6a3cb097604" aggregated="true">
          <port xsi:type="esdl:InPort" id="5a66888e-1e18-4ee0-8e8e-d9e125de34be" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="1236ea93-1f2d-443e-80e7-b25e58654287" connectedTo="f589009c-fdec-4d9d-ab54-82d02900d5b0 b3333d53-4cce-4a16-ac48-f75dc5d85e4b" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="ad8f8a53-7cdb-4925-a602-6fad53042b31" aggregated="true">
          <port xsi:type="esdl:OutPort" id="47ff9f37-85bc-4f28-aa87-b656ca277af0" connectedTo="ac5c4143-8cf6-44cb-abaf-ab32c4ff019d fe1717a6-e353-42d3-969c-79aa7147c4c0" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a03_aansl_mt" id="25614935-0aa3-4e8b-909d-b158ca579565" aggregated="true" numberOfBuildings="105">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="8da69062-43d8-4a66-aa0b-aa5a304a7332" aggregated="true">
            <port xsi:type="esdl:InPort" id="8c95ca23-fb78-4f6c-9d40-cab7b3afedcc" connectedTo="68778da3-6830-4508-8e28-92f1ef81c7cd" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bbff4f70-497b-4333-bc3d-79263051b943" value="25776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="47b38b72-5ae4-4362-9912-f9e12aff6060" connectedTo="2c594f3e-edd6-4c58-8147-315de4ffcdea" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="89e4833a-9f35-42ab-b380-cb2ae12164ac" aggregated="true">
            <port xsi:type="esdl:InPort" id="ac5c4143-8cf6-44cb-abaf-ab32c4ff019d" connectedTo="47ff9f37-85bc-4f28-aa87-b656ca277af0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6638fc11-0fd6-4940-ae67-58d707e62f51" value="77328.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="12f34b8b-3204-4bfe-970a-42b312adf316" connectedTo="babf2214-6462-47c6-a525-cfd7316dbd42" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="1d0ef54b-b996-47d6-a957-a543dbd988d9" aggregated="true">
            <port xsi:type="esdl:InPort" id="f589009c-fdec-4d9d-ab54-82d02900d5b0" connectedTo="1236ea93-1f2d-443e-80e7-b25e58654287" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="8cac51a7-765f-4348-902e-0ceb32576d15" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="fb4beb49-c2f2-46f3-a9b3-baed4b648b74" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="89c08aad-e50d-4b74-a31d-dfd996a039fe" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6749f905-e7dd-4431-87bb-cea008d8c524" value="87352.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="ad49b0ab-4ddc-42d0-b6b6-0b3bbafff1b7" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="06437e03-0338-40e8-9a93-c6301a21941f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e0bbe909-29ac-4e5e-8f7b-671d347c814c" value="1432.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="45efc96d-f333-4e64-a3f1-2d17466ad9b7" aggregated="true">
            <port xsi:type="esdl:InPort" id="c6abe5b7-6c88-4021-8225-8bc5615ad71f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="02e42f3f-1721-4785-a90a-e088bcaf695d" value="21480.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="44b3880a-fae7-4b32-82a8-fa1885bc2621" aggregated="true">
            <port xsi:type="esdl:InPort" id="e4f19789-bc40-4dcc-b404-d1c1c5df49c6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0015e36a-eba4-4fde-bc5b-e4a448af1e26" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="8674c833-a70a-4787-8ef1-1125941478a6" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="9751908b-c9b5-49f7-9775-31e6813a2587" connectedTo="8ad4215d-5f68-49e7-8fa3-0a692ba487fe" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="711aebab-7a14-4219-89ea-7bbfaea580ba" value="88784.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="bdfa9d77-006d-460d-bd60-4af7ed162e0e" aggregated="true">
            <port xsi:type="esdl:InPort" id="babf2214-6462-47c6-a525-cfd7316dbd42" connectedTo="12f34b8b-3204-4bfe-970a-42b312adf316" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="addc2968-0962-4eb7-a2b5-c27e6aefe38c" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="18a8ebdd-b729-474c-ac45-bd80782850e6" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c594f3e-edd6-4c58-8147-315de4ffcdea" connectedTo="47b38b72-5ae4-4362-9912-f9e12aff6060" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="8ad4215d-5f68-49e7-8fa3-0a692ba487fe" connectedTo="9751908b-c9b5-49f7-9775-31e6813a2587" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a19_aansl_mt_restwarmte" id="a658f507-a8a4-4fe6-b936-0daa1902ff73" aggregated="true" numberOfBuildings="105">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="921d7088-2679-4d51-bcfc-122b5c1a1110" aggregated="true">
            <port xsi:type="esdl:InPort" id="1beca094-7fc5-4701-9c9a-28d406ec091c" connectedTo="68778da3-6830-4508-8e28-92f1ef81c7cd" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="42861ca6-1853-4c7f-9745-c9def67d621c" value="25776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4a16115d-1ce6-4d6d-b874-97075d5af2a0" connectedTo="8cbea8ed-d1fc-4e9f-af14-feb9f70ab46c" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="5af1b302-78fd-48af-86b9-b585ab578c50" aggregated="true">
            <port xsi:type="esdl:InPort" id="fe1717a6-e353-42d3-969c-79aa7147c4c0" connectedTo="47ff9f37-85bc-4f28-aa87-b656ca277af0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="34ced9c2-a884-42ac-a239-08bdff0c01dd" value="77328.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="a456fd71-058f-42ff-8f20-bb48bd53cc02" connectedTo="c251bb38-fd6e-4016-ba5c-17e368c95712" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="33fb1242-4481-44e0-b03b-5d1eb142a5b8" aggregated="true">
            <port xsi:type="esdl:InPort" id="b3333d53-4cce-4a16-ac48-f75dc5d85e4b" connectedTo="1236ea93-1f2d-443e-80e7-b25e58654287" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="0c8c0d7a-bf59-41e6-bdb4-29b596aa470f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="ff8f4af1-84a6-4413-a877-c757bda76bf0" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bae2e99f-3975-4595-8537-40c505cee005" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bd8f6743-ae2d-483d-8d0f-300d7f4445e7" value="87352.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="604466c7-6b02-424f-a95b-c10b410d0265" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="08e9cf77-8aa4-4aa7-b071-ad7191f4e18c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="33ab1b6f-938e-425c-a2dd-dd6f6ee1de6d" value="1432.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="4cab77b6-8fec-4df5-9128-b051bc4339c9" aggregated="true">
            <port xsi:type="esdl:InPort" id="bfee8985-0818-4984-aede-188a2b4ce05f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="aff6a3fe-91f4-40bc-96d7-6694beaf2b90" value="21480.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="aebeb610-09fd-4f93-8a5e-903a59d868fd" aggregated="true">
            <port xsi:type="esdl:InPort" id="0e06a4db-6aa1-4b80-ac47-84b8427d9abe" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b6094cda-6a65-4791-973c-652c2b0f9755" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="5b02525b-d88b-466b-9712-cc9e25261fa7" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="b24ab60f-3cc9-49b6-95be-61f033d3e2d3" connectedTo="eadf7dca-e435-42e0-8cb3-b03eba300a36" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1ccff792-ce98-47f2-a934-8ed595c48947" value="88784.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="51f8b85a-a2a9-41d3-a8b7-ad62c00e4db0" aggregated="true">
            <port xsi:type="esdl:InPort" id="c251bb38-fd6e-4016-ba5c-17e368c95712" connectedTo="a456fd71-058f-42ff-8f20-bb48bd53cc02" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5d6f14a9-cd31-45bf-b592-25e71cb2b6d5" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="414f5623-6fd1-45d9-8a0b-aaadcf17b247" aggregated="true">
            <port xsi:type="esdl:InPort" id="8cbea8ed-d1fc-4e9f-af14-feb9f70ab46c" connectedTo="4a16115d-1ce6-4d6d-b874-97075d5af2a0" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="eadf7dca-e435-42e0-8cb3-b03eba300a36" connectedTo="b24ab60f-3cc9-49b6-95be-61f033d3e2d3" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="61fd150a-30b4-41ae-91a0-f02e8fb3225a">
          <kpi xsi:type="esdl:DoubleKPI" id="e221c962-6835-4f05-8904-6d29f4dd61c5" value="1439.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="89c95bbd-0dd0-408e-8c48-a7eaff5e2dbc" value="507690.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0702943b-c64a-4976-bec3-e2752a029062" value="150.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="da0bcc6e-6a4e-4774-aea8-724a3af75660" value="355.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636601">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="773d5d6a-de47-49c4-a019-807d96df6837" aggregated="true">
          <port xsi:type="esdl:OutPort" id="66db376b-3b5d-4cb7-9e0b-cb63829a1865" connectedTo="54edc138-64a0-4b85-aafa-a9f2518538d8" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="f36968f3-8643-40a8-ae18-4ba178b51239" aggregated="true">
          <port xsi:type="esdl:OutPort" id="1c53b29a-44c3-4404-a185-3f76dd1d75c9" connectedTo="30594c5d-f7d0-4219-8929-ba1aa0c51529" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="4d7f486c-63e9-402d-8d09-e849a893c9ad" aggregated="true" numberOfBuildings="180">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="1d74a88a-c731-4612-8eab-664d57abd8c9" aggregated="true">
            <port xsi:type="esdl:InPort" id="54edc138-64a0-4b85-aafa-a9f2518538d8" connectedTo="66db376b-3b5d-4cb7-9e0b-cb63829a1865" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cedd41f9-117b-4c1f-abc4-777f2e8be794" value="9040.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b6203858-c981-45a7-8704-f0faf3d76850" connectedTo="5e42bf2b-24a7-49aa-a1d0-caf7336294ac" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="0ab3a9bd-6dc9-4a23-b8d3-c2c743b128b8" aggregated="true">
            <port xsi:type="esdl:InPort" id="30594c5d-f7d0-4219-8929-ba1aa0c51529" connectedTo="1c53b29a-44c3-4404-a185-3f76dd1d75c9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="611471a2-f7b9-4662-acb9-703e7ba16627" value="4746.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7cc8f216-fd63-47ea-8eb0-5002661d888c" connectedTo="71c1f1bf-46c3-47b5-a380-85d1d5a5b38a" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="2c62ce90-e027-4bf7-b6bf-8ea40ef22372" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="67327476-16db-42c3-9f38-e30fce4bd8b7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4dd9046f-b2ec-4439-ba84-8da358b8fbcf" value="7684.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="47fec042-f9fa-4d0b-ae00-b497978ce646" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9aef1ff8-0fd1-45b5-a0f9-bac00d294a23" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a9c9b9ad-90a6-4e5e-8ac8-d4c5a55f4c0b" value="1356.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="78d33c6e-b5c6-4ef8-b7f2-eb814070c4ad" aggregated="true">
            <port xsi:type="esdl:InPort" id="6d316d8f-fa3c-45ae-988c-2d2717491db3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2db2411d-490a-4edd-a3ca-d8a8dc79a80d" value="1356.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="7de553ca-5fb8-4492-82a1-58192a5a0ae9" aggregated="true">
            <port xsi:type="esdl:InPort" id="b11eaf98-9d0d-40d8-97d7-fe0ecccc94a0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6032c7ef-3b3e-40e0-924f-8ec8a67d4f80" value="4294.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="740330fd-651c-4330-8fca-be6c2875ab54" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="38c1b4df-7b42-412b-ae17-2f64e4959d5f" connectedTo="1859bdac-8e8a-4568-9b86-0e62720ae43c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d7874e61-f892-4b9c-a475-3a72103cc85d" value="9040.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="02189898-28db-4e73-9e58-65a042e49c96" aggregated="true">
            <port xsi:type="esdl:InPort" id="71c1f1bf-46c3-47b5-a380-85d1d5a5b38a" connectedTo="7cc8f216-fd63-47ea-8eb0-5002661d888c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="89df4eb3-cd2d-4782-a07a-7cce8acf23f0" value="4294.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="46be7789-2261-4915-b19e-463733002e6a" aggregated="true">
            <port xsi:type="esdl:InPort" id="5e42bf2b-24a7-49aa-a1d0-caf7336294ac" connectedTo="b6203858-c981-45a7-8704-f0faf3d76850" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="1859bdac-8e8a-4568-9b86-0e62720ae43c" connectedTo="38c1b4df-7b42-412b-ae17-2f64e4959d5f" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="eb4eb9ca-9ea1-4a46-881b-c21c440161aa">
          <kpi xsi:type="esdl:DoubleKPI" id="27c9c85d-4621-4a7e-90b2-952914456ccf" value="508.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5d2be085-2e0a-40af-b942-2bde76295aeb" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="74e5acb2-5393-4e51-b723-72f183c6e941" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ce5d4404-2054-4161-92ca-a125041abac7" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636602">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="5faede33-9644-42a9-acea-b4ee0bd67d11" aggregated="true">
          <port xsi:type="esdl:OutPort" id="4258fa9a-ab3f-4c96-87d0-ef2b73ac54b8" connectedTo="071e0f87-7e60-4858-beea-715c4cf059f4" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="0e74e234-899f-44ce-8b03-66d620417413" aggregated="true">
          <port xsi:type="esdl:OutPort" id="81d33fe2-0b6c-4281-9cc7-c13430f57144" connectedTo="33dbe128-ae16-452f-8f16-f391b49fea22" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="d35df226-704c-4dd0-96b4-5f6ccd64b256" aggregated="true" numberOfBuildings="553">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="45af4078-39f2-41f7-a79b-6c50545dcc57" aggregated="true">
            <port xsi:type="esdl:InPort" id="071e0f87-7e60-4858-beea-715c4cf059f4" connectedTo="4258fa9a-ab3f-4c96-87d0-ef2b73ac54b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6883f256-e495-40a1-ba74-6a4a2c711964" value="17949.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="345fc81a-a194-43fb-a037-fe0c987c580e" connectedTo="0fadf8ca-b883-4cdd-bda0-cbe7a98b2898" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="def254a4-8704-44fd-880d-a9a0d626f9ab" aggregated="true">
            <port xsi:type="esdl:InPort" id="33dbe128-ae16-452f-8f16-f391b49fea22" connectedTo="81d33fe2-0b6c-4281-9cc7-c13430f57144" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa6b20cd-3671-4ecf-a5e5-25b154db55a8" value="7527.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="542e032f-f761-423b-b653-a988f6131e57" connectedTo="3d572e7e-e49b-46f3-94c2-174651e2d013" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="32dee917-cad6-47a9-aa03-27532109d389" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="d683ee52-5cd0-4a7d-aff0-03da88958749" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2d0eadd4-a6bf-4490-9e65-30cea1b939b8" value="12159.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="4648a846-6644-493e-8cd6-29794222fc8e" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6df66aad-46a1-4378-958b-31844ea116a8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="37b34781-4f5f-44ed-8748-77a1f96274e6" value="4053.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="2fdeef30-c67c-49ba-aa72-6d0a2eeec526" aggregated="true">
            <port xsi:type="esdl:InPort" id="1a60c898-a9e6-48d9-8850-f6134d814096" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e347c223-0cef-482d-97e1-c1179c4cae73" value="579.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="ee0c7dad-e042-4513-9027-ca6aebc6844d" aggregated="true">
            <port xsi:type="esdl:InPort" id="1dd37768-0559-43dc-9667-d7bf54d5fee6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="81714b4a-ecbe-407d-b66e-aacfea7460ae" value="7527.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="055ba26c-c43b-435b-956d-72666f1a32d5" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="8e1dc797-79a1-4779-bbc9-b2ae2e1d2373" connectedTo="c1ed373a-471e-41a7-96ce-31b57298a857" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="06988a77-931b-4ef5-b32b-5d4cd6b47c11" value="16212.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="0a220d0e-c5e9-43bf-a447-20fb7fd3f202" aggregated="true">
            <port xsi:type="esdl:InPort" id="3d572e7e-e49b-46f3-94c2-174651e2d013" connectedTo="542e032f-f761-423b-b653-a988f6131e57" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="12d1214e-342b-4848-a5a1-54e8d29f8fda" value="7527.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="4d5d70e3-1bec-4d92-acd4-2d9ff1c9545a" aggregated="true">
            <port xsi:type="esdl:InPort" id="0fadf8ca-b883-4cdd-bda0-cbe7a98b2898" connectedTo="345fc81a-a194-43fb-a037-fe0c987c580e" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="c1ed373a-471e-41a7-96ce-31b57298a857" connectedTo="8e1dc797-79a1-4779-bbc9-b2ae2e1d2373" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="6aa12257-763a-4f7b-a145-163ba40896f6">
          <kpi xsi:type="esdl:DoubleKPI" id="0c1f6b60-498c-4b35-81b7-3015c1609f27" value="1002.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e220ae69-4cfa-4c1b-b7f5-159b561f2395" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="60c1875b-ef7a-47d3-a572-b305bae73415" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d4894cdf-9f18-4c66-85ab-1463f3a93d76" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03636604">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="a433156e-d3f8-4ba8-84cc-d4e9927b2207" aggregated="true">
          <port xsi:type="esdl:OutPort" id="8bc1f2bb-6bcf-48f2-b5b5-9a8de77a83be" connectedTo="9e68d4be-dfa4-414f-969e-23f7eedfd787" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="cd3ffd95-f261-4775-b4d0-db61974e4146" aggregated="true">
          <port xsi:type="esdl:OutPort" id="5476fbd6-33d8-4a4c-9a8a-b511b81c560d" connectedTo="40cec0be-fedd-4ddd-9615-4c344618892f" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="1541a9db-3d8a-403b-8485-25842554fba3" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="d48c83c7-46f2-4923-80c7-13ac0dce701f" aggregated="true">
            <port xsi:type="esdl:InPort" id="9e68d4be-dfa4-414f-969e-23f7eedfd787" connectedTo="8bc1f2bb-6bcf-48f2-b5b5-9a8de77a83be" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5f1a5b64-9647-41df-9591-51a936396fa7" value="132.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="2ec7555f-1b9f-40e7-a23a-3d517a10d789" connectedTo="f1274456-c811-4308-95c8-ff96f7853ba9" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="b70adaa2-529c-4171-8d59-ac072b0bb87a" aggregated="true">
            <port xsi:type="esdl:InPort" id="40cec0be-fedd-4ddd-9615-4c344618892f" connectedTo="5476fbd6-33d8-4a4c-9a8a-b511b81c560d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e6750ea4-e802-455f-87d8-220c10c51198" value="57.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="b21bbece-84db-4b0a-a315-afdf3ec90f0d" connectedTo="609c7dc6-6f72-4ad7-8686-c7ebdedd2ba7" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="4a529428-9b70-4075-ac30-4433fd7b66fe" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3610a114-7213-4895-81ee-3124a18c6423" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f66ea5a9-6f80-4dba-946c-d1664c5c2346" value="102.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="78852740-00ac-41c5-9fad-17e32b9fc1ba" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9a99c973-486f-4476-9834-2232ac1867c4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3231e4ff-eeb1-467b-8811-31be45b61d67" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="a9747b92-4880-40ec-a518-ef34af961e4d" aggregated="true">
            <port xsi:type="esdl:InPort" id="cad72394-f41c-4fc4-8904-e90904e7aa8f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3afd79d4-c30d-45b7-9b84-5632e59016c8" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="6ed1e748-9b5d-479e-b898-700d2025f531" aggregated="true">
            <port xsi:type="esdl:InPort" id="3141dd12-0d8a-44aa-8093-204c5a512415" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2c5d25f2-dc34-493f-abeb-cf608f92d6ac" value="54.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="18ded5ae-4a4c-4f71-b7a7-d4a8994306be" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="aa62fb17-7e57-400c-818b-1ea819c34491" connectedTo="1fe2cfbe-4264-4a8b-a23a-b0f0ad60f461" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c1ce0ff2-e9ab-4cea-8dcf-df1f69306435" value="126.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="74fc1320-21f6-4a8b-92d9-c0ae11661f3e" aggregated="true">
            <port xsi:type="esdl:InPort" id="609c7dc6-6f72-4ad7-8686-c7ebdedd2ba7" connectedTo="b21bbece-84db-4b0a-a315-afdf3ec90f0d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="06e1e30c-4138-4d55-a13b-a5a5890a0e9f" value="54.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="01ce1ac1-70d0-4b33-adcf-3c89477dda90" aggregated="true">
            <port xsi:type="esdl:InPort" id="f1274456-c811-4308-95c8-ff96f7853ba9" connectedTo="2ec7555f-1b9f-40e7-a23a-3d517a10d789" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="1fe2cfbe-4264-4a8b-a23a-b0f0ad60f461" connectedTo="aa62fb17-7e57-400c-818b-1ea819c34491" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="0f9b34f2-b6f9-493c-a00e-76d5041eafcc">
          <kpi xsi:type="esdl:DoubleKPI" id="f00d8c32-5427-4e88-83bb-93f27fb963b1" value="6.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ab56fcd0-5dd0-4e7d-a7f0-5ace6e0fdda0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cea75c6a-6eab-4b53-a965-2c6e53dc6e44" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fb13c90b-31f6-44b2-aec4-d8adab46cf67" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03637104">
        <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="3d0f60cc-ef48-4baf-957c-efc3ebc9e0f1" aggregated="true">
          <port xsi:type="esdl:OutPort" id="15a67d03-9fae-41d0-bab7-421f644dda9f" connectedTo="e9eb75e4-f7bd-44ba-aebe-d809d07658ac" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="6e9cbd77-aba6-4596-99b5-5e508a07a2b4" aggregated="true">
          <port xsi:type="esdl:OutPort" id="255673c5-da00-4e6f-a30c-df51aab96e64" connectedTo="b83e2ff6-9b0b-4af2-a885-2ac3f83e4586" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="a01_aansl_aardgas" id="9fa38b4a-87a6-478c-b3a8-8135533489c4" aggregated="true" numberOfBuildings="59">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="7e8924de-ec51-4af2-a88e-2f424ac740e1" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9eb75e4-f7bd-44ba-aebe-d809d07658ac" connectedTo="15a67d03-9fae-41d0-bab7-421f644dda9f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7ecb8ce4-db0c-4c50-b5d5-522bd26e3f3a" value="15325.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ab7ae8f0-54a5-463f-ae39-1d799e2ab779" connectedTo="16ac8253-7371-4978-9708-25662f231283" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="3f18b139-e18e-4df5-b9c1-f31b1a976420" aggregated="true">
            <port xsi:type="esdl:InPort" id="b83e2ff6-9b0b-4af2-a885-2ac3f83e4586" connectedTo="255673c5-da00-4e6f-a30c-df51aab96e64" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6e2120bd-0f37-40cb-b1d4-045481c12052" value="34941.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="0ca12a8b-d284-467c-91ef-7b01cf7659ee" connectedTo="e51d40e5-8bda-4d08-a84c-79e9670bf06c" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Ruimteverwarming" id="e3733c6c-3897-4ad0-851a-61e8518ebb93" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f2a3dd15-ee0a-45ad-935a-d2afcc0ff947" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9f375880-fce5-4eca-84ed-f021221a14fa" value="15938.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_Tapwater" id="4522b146-a02d-4464-a8e1-df9c534acce9" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="53b32cd2-99aa-4e28-8a2b-cfd37beafac9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="00329efd-9a5d-4666-bf05-a8a4a60f9cff" value="613.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Vraag_Koude" id="eaf50e81-79a7-4954-94b6-12b77674e4c2" aggregated="true">
            <port xsi:type="esdl:InPort" id="93406a6d-2c0e-4c2c-9c5b-c98633692f84" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="872b0775-cf00-4ae3-be58-95ef90791058" value="7969.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektrische_apparaten" id="2dbec4fb-1127-4d8b-b113-1b7ed4ee6ce2" aggregated="true">
            <port xsi:type="esdl:InPort" id="9fd07c0e-087a-4b19-a4a1-dc1bcc058fdb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="798ba6c0-17a7-46c1-b116-71877a89c78b" value="31876.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="Vraag_warmte_totaal" id="cd041d72-03dd-49e9-80e2-b106a2717b12" aggregated="true" type="SH_AND_HTW">
            <port xsi:type="esdl:InPort" id="cc643267-6168-44cc-930e-cda501696224" connectedTo="5421e0a3-525b-41bf-9e8a-387d6d9fa958" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0cbc34a7-9e68-4991-9647-7c7f6de22151" value="16551.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Vraag_elektriciteit_totaal" id="de8f880c-0788-42d2-9b1d-f947af88c475" aggregated="true">
            <port xsi:type="esdl:InPort" id="e51d40e5-8bda-4d08-a84c-79e9670bf06c" connectedTo="0ca12a8b-d284-467c-91ef-7b01cf7659ee" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="54893b28-9b9f-4013-816f-620dfd7e627b" value="31876.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="04263a2d-f49a-45c0-a89b-3c21738fbb68" aggregated="true">
            <port xsi:type="esdl:InPort" id="16ac8253-7371-4978-9708-25662f231283" connectedTo="ab7ae8f0-54a5-463f-ae39-1d799e2ab779" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="5421e0a3-525b-41bf-9e8a-387d6d9fa958" connectedTo="cc643267-6168-44cc-930e-cda501696224" name="OutPort"/>
          </asset>
        </asset>
        <KPIs xsi:type="esdl:KPIs" id="4d8f18bd-22ae-4a1b-9e18-128bf3be80ff">
          <kpi xsi:type="esdl:DoubleKPI" id="a00f65a2-a90d-4657-a7b8-da9a29766353" value="871.0" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b6c17bea-6652-4b75-aea6-2c335434d6f3" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="76536e61-0f95-400b-a50b-73d0472bd3ad" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="338e2bcd-c3b0-488f-ad91-8eb338196907" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
