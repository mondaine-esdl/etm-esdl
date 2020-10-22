<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="S4b_GG_B_HR_Havenstad" id="27ec0c8f-e1a4-44aa-8346-b7f589512c83">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="b79f8efb-6274-47ff-b276-f8040a351abd">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="de939742-fd60-4562-bbdb-4b1eafd1ef95">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr" multiplier="GIGA" physicalQuantity="ENERGY" unit="JOULE" perTimeUnit="YEAR"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cost_EURO_yr" multiplier="NONE" physicalQuantity="COST" unit="EURO" perTimeUnit="YEAR"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr_ha" perUnit="HECTARE" multiplier="GIGA" physicalQuantity="ENERGY" unit="JOULE" perTimeUnit="YEAR"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" multiplier="MEGA" unit="GRAM" physicalQuantity="EMISSION" id="cost_EURO_TON"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="emission_TON_yr" multiplier="MEGA" physicalQuantity="EMISSION" unit="GRAM" perTimeUnit="YEAR"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" aggrType="PER_COMMODITY" name="y2050" id="78f4261a-aeda-4277-b9e2-8b1b8d224201">
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000"/>
    <area xsi:type="esdl:Area" name="Havenstad" id="Havenstad">
      <asset xsi:type="esdl:GasNetwork" name="Gas_network" id="ce399513-f8c3-4571-b102-96433f2f32b1" aggregated="true">
        <port xsi:type="esdl:OutPort" id="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" name="OutPort" connectedTo="" />
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="Heating_LT_network" id="d46918f3-e089-4475-a0f1-0eee3929d289" aggregated="true">
        <port xsi:type="esdl:InPort" id="76def700-f156-42fc-b0a0-39fe9a3445aa" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="e4fb34a3-1b80-4d50-96a2-9c79a5bd1627" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="Heating_MT_network" id="c1429f18-bc3a-4aec-8ab7-11705712e961" aggregated="true">
        <port xsi:type="esdl:InPort" id="ceaf5165-588e-4c53-824c-918d69d007a6" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="6249d32d-3d5b-4c41-9f89-8b8c89b9c123" name="OutPort" connectedTo=""/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="424b6d01-fce6-408d-afd8-17b5eff20593" aggregated="true">
        <port xsi:type="esdl:OutPort" id="4a206b64-c043-4116-a7e8-687b975121d9" name="OutPort" connectedTo=""/>
      </asset>
      <area xsi:type="esdl:Area" id="bu03631000" scope="NEIGHBOURHOOD">
        <KPIs xsi:type="esdl:KPIs" id="a2d364d3-2765-4dbb-82e7-8e737a41d873">
          <kpi xsi:type="esdl:DoubleKPI" id="ba5aa3f4-1547-48b6-800b-78568c69a184" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="21ac9788-b531-487d-a86c-3f2711bde9c1" name="woning_nat_meerkost" value="4220037.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1869200a-7022-4742-8396-8215c9aead3a" name="woning_nat_meerkost_co2" value="846.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9cc61783-60c0-4181-8373-f3ec85910f95" name="woning_nat_meerkost_weq" value="258.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1c77fbaa-c8a5-457c-ae3a-f4aa5b808885" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9f2fe5c3-d6d2-4d91-90db-d1596d4b055e" name="util_nat_meerkost" value="4220037.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c9300149-9fb2-45de-92f1-df6b28a879a1" name="util_nat_meerkost_co2" value="846.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7d55ad4f-9bf3-4f63-80da-77621f72d928" name="util_nat_meerkost_weq" value="258.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" id="2d928918-8899-457f-bc25-a7216de533e8" numberOfBuildings="2574" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A" percentage="0.9998627975577965"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B" percentage="0.00013720244220347122"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="3d299512-3e39-4ee2-a6d8-f7debd1df4e1" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="20a13b7c-d83b-44ca-ac19-226bc43426b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="3.0" id="06ba8565-c393-4ada-a073-0c5316778e9d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d18a2ad7-975e-40c2-ab8e-400123de235d" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="e085a1a7-d399-4b3d-84ed-365ae13f442e" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4ab4d374-6dd3-4d06-a016-acfde7629260" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="944acc7e-40e0-4fda-9aa3-3afe12962e4d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="cb335d0a-d4a9-4922-a0b4-333befb1cbbe" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Woning vraag ruimteverwarming" id="7b6350b6-3cb9-47c6-958f-65dd8e23fdaa" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="fa83415d-5dbf-44b5-89fe-d2aa5bc83a6d" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a19b2e1d-7b15-475c-bf25-0049da8af5f2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Woning vraag tapwater" id="b7c917f6-3ba0-4703-a01e-0c6627ced5d8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="e1205904-d4da-4153-927e-fcf33815863f" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="40c0f48b-debe-4069-b1e3-df555cb2c6f6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Woning vraag elektrische apparaten" id="0ec8c0a8-1b7d-4773-b7ee-0651055426ba" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="f099fbdb-a8fa-49aa-95b6-4c2e4aa54e97" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="59f4f3be-0a12-4a02-a29d-2e69b5a587a9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="d0d3699d-8e1a-4618-b575-32c14b3f441b" aggregated="true">
            <port xsi:type="esdl:InPort" id="66c18b5f-58e7-494a-acbc-86efebba8ed4" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="4c1d5cfe-7b91-49e5-9c73-2c3abe6b9022" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" floorArea="232015.0" id="c581dc4f-6e72-415b-8fdf-43c2b9de78e7" numberOfBuildings="229" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="dba024cb-0dd9-4278-8c12-a464cb31f7f8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="b8e09069-3f2f-4df3-8819-691143d54f33" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="d06415cf-6c39-4e05-a474-4d887e947667">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d006f066-cff1-419e-b937-809089da7cac" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="41bf0129-48bf-4425-9e57-2b2207e1114b" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="80c7a083-ed63-4246-9bd4-63c8ac347a05" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="6.0" id="f98dd3db-51d3-43c7-8e77-24a0aee55c6d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="39204da7-d7eb-4094-b188-4ca76059716a" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="3b09833e-5b74-4515-977c-a7e982ae9827" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="2b4f75af-658c-4200-8804-eb37dcb547c2" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="57c2461d-f3e7-4472-9e5d-a6d341f817ec">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="cd5fba8f-81be-4309-814e-8fe1572aaccc" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="c2c2fca7-7935-4c27-a5b5-c296b9d00249" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="3f4e6fbb-c6b7-43ee-aa3b-9860909af853">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="2ac73140-a7f3-4750-9531-d82f178216a3" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="c1c7db64-02d3-4803-b5a4-2cad0690bbcc" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="6.0" id="e6dc6792-d122-4339-a77f-fe8f4a62d2b5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="50824763-6270-4308-9c84-b2dc4664087c" aggregated="true">
            <port xsi:type="esdl:InPort" id="beebaed7-345d-4bf0-a7e7-86e85b92a069" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="a367aaa1-480b-46cd-829a-bac362e54882" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="250d8f32-0887-4fcd-b702-7cc44e3b86d1" aggregated="true">
            <port xsi:type="esdl:InPort" id="22b51f92-ce0b-4ce4-9fb8-beafb2045e3f" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="6e65b6f0-8bf3-4a05-b526-cd9e23e65424" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
      </area>
      <area xsi:type="esdl:Area" id="bu03631001" scope="NEIGHBOURHOOD">
        <KPIs xsi:type="esdl:KPIs" id="7f4f8e4d-625a-4543-bcf3-8a7c1145bdc9">
          <kpi xsi:type="esdl:DoubleKPI" id="d1f047f2-de27-4d26-8d70-13ced283988c" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9d796f1a-2459-441c-b126-60c51897ae80" name="woning_nat_meerkost" value="839839.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="71af4e88-bda7-42d2-9ba2-8d54e687ce3c" name="woning_nat_meerkost_co2" value="616.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2ec05b87-6c6e-4cc7-a45b-be49562a1c9e" name="woning_nat_meerkost_weq" value="378.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b0740518-966b-41df-b6e3-498cf9afb049" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0acf9cbf-650f-4782-a137-5f3557b8cd6b" name="util_nat_meerkost" value="839839.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="99196d09-c291-4f54-9c9d-f6824e99dc04" name="util_nat_meerkost_co2" value="616.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d3f40df6-1aac-4602-b241-8a361f7a4758" name="util_nat_meerkost_weq" value="378.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" id="3e9b9003-0319-4ce9-94dd-1f423ab8b05e" numberOfBuildings="349" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A" percentage="1.0"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="41113097-3e2b-4a0f-b0a5-a3fb804948eb" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4222ed50-ed46-46f6-8f87-e99ecb3bc5e3" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="3.0" id="95a0e294-8d38-4613-8a2b-45f62c3bd7b4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="681e8d86-5d7f-4c1a-ad8f-5b647b1fec59" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="4196c66a-db46-4983-878b-e4947ad49d5e" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="de15fcb1-d60a-4b2a-95a7-f3bd2e7c650a" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="937d6a63-3b4f-47d4-88ba-d811f678cc5f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="51901228-8fa6-4c8b-b901-5c077fdb11dd" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Woning vraag ruimteverwarming" id="de45391a-1894-4b23-b1be-6d4f2ba0f3a8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="6e269c8c-3710-42b9-b8bc-b647e86350a7" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a392be4e-4013-46e1-bf37-cc6405a69997">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Woning vraag tapwater" id="d7f61619-ed2e-4cbb-9f85-81f7061bcc34" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="f461a107-aa2e-4ffd-a407-2052d641cdf3" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="bf9e58cc-4ece-4983-920a-fa6d686fa9d2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Woning vraag elektrische apparaten" id="97949bde-1eff-4b0c-8088-5f63760caef2" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="f00d68fd-aaa4-4430-9f4a-e8442454cb05" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="67a27396-2a76-46f6-9803-137dc396a658">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="5e568980-c36b-4416-aa01-27e1e27d46e8" aggregated="true">
            <port xsi:type="esdl:InPort" id="941c4189-877d-4726-bb9d-322bfe003db9" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="d6381963-39df-4551-8e01-87df4d86c13b" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" floorArea="62814.0" id="9ffbee04-93e0-4c25-a654-902f33a022ca" numberOfBuildings="48" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="aa1b5f52-1a68-4d8f-a628-2b66a638e176" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="54a3ec53-a035-48c4-9ec6-d8e471dbf187" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="7.0" id="42d387b5-0b24-46ba-930f-8d0fc6c3996f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e2c8ad15-cc42-4949-a6ef-54fde87b813b" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="4f8a609c-d362-485f-a0be-35a6e5679448" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4d34dc10-5586-4e39-83fa-1cb0b4c021c5" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="12.0" id="ac25a49b-62f0-472b-a51b-527779aac8e0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="05f66d0d-f70c-4451-944b-73aead955f4c" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="235897a3-c917-4aeb-a739-cf4b43472790" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="3716f9c5-f80b-4d8c-b310-8db7efdae3bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="7.0" id="ab7dc1af-c8a6-428e-9f0f-5128e1013161">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="e1f154f3-73f5-44a8-a7c1-a304eafc1f70" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="24d78975-bdbe-4a53-b6b2-aef778f4a6a1" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="4.0" id="4a33c8dc-d0f4-4ce3-843d-d7d1fa2380d2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="f80d428e-6b85-435f-a7fc-b0092fe314ef" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4dea238c-b775-4817-ada5-cb6855cfbda8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="11.0" id="2034343e-ca63-4dcd-ab83-a49751807277">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="67cb573f-85a4-4493-86d9-bef575f58aad" aggregated="true">
            <port xsi:type="esdl:InPort" id="b88a14ca-1735-4bdd-b77e-aadf55ba5933" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="0e6b9a71-4b41-4824-b9ab-689e9df0522e" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="844054ba-66f9-4751-81e4-a961ee58a126" aggregated="true">
            <port xsi:type="esdl:InPort" id="70b1c7d1-34b8-4436-a47e-b599dd955c4d" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="a2bb0a74-e700-4eda-97d2-772b8a116b47" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
      </area>
      <area xsi:type="esdl:Area" id="bu03631000" scope="NEIGHBOURHOOD">
        <KPIs xsi:type="esdl:KPIs" id="1e9e6f44-e4cf-442d-9b50-c797988215f7">
          <kpi xsi:type="esdl:DoubleKPI" id="c2bf248a-f692-48ff-a46f-49d078f04b5d" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="64828513-2752-4e4e-a557-1e05ac89b23d" name="woning_nat_meerkost" value="7103207.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="367cd0dd-3109-4bcb-a41a-32b943125eac" name="woning_nat_meerkost_co2" value="1425.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="04484cdf-27a9-4cf5-a9cd-9f2f03f4b142" name="woning_nat_meerkost_weq" value="434.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="462cf3d5-3a64-4f87-a2ac-55714760f481" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="87d7a908-5a33-45a8-9de8-37a2f10fd3d2" name="util_nat_meerkost" value="7103207.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="624eb649-2c5e-4c85-a2b7-2c274858ed35" name="util_nat_meerkost_co2" value="1425.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d21a2d34-b61a-4668-9fe9-1337d1aed14c" name="util_nat_meerkost_weq" value="434.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_ewp" id="ea8326cb-e5f1-4516-876e-cb8d4f5479a2" numberOfBuildings="14577" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A" percentage="0.9998627975577965"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B" percentage="0.00013720244220347122"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="cfaed087-a6be-4750-a760-a7019d9a8c67" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="1e18a7d2-aad8-4a14-b2ba-d596a0228c59" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="ac6cc5a5-53b5-4e59-92d9-251cfa58b964">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="6c2172e5-713f-4c8f-88b0-9d0fd3010ae6" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Woning vraag ruimteverwarming" id="a6b542c5-018e-41a4-9233-d8a2ca9ea799" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="f5e6d685-2f34-4455-ae86-d417bad71e00" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="21a1d407-e3ef-486b-b25b-4980d99c2886">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Woning vraag tapwater" id="306952fc-c5eb-4b5a-b1b1-c8dd55218ff1" aggregated="true">
            <port xsi:type="esdl:InPort" id="b7cf9667-d36e-4db6-af95-599a6798d8dc" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="f94b198d-048b-411e-8055-04d389908bca">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Woning vraag elektrische apparaten" id="77d5f805-5e2f-491b-b25c-cedfab1e4013" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="1a9004e7-bf6b-4bb1-b11b-a27729ad1c66" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="1085ac6e-8a77-467f-bc13-0e9d02acecc6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="6848c258-c04b-4ce4-8b65-59dc1d0e861f" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="d3d627d5-ecdb-4d97-bf22-a1dd1a90c29a" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="b800cf8f-e98f-457c-b725-17f49867b897" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_ewp" floorArea="232015.0" id="451de901-ec79-455e-bafc-095616c91f99" numberOfBuildings="229" aggregated="true">
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="50b86b8b-2069-4208-aadf-211d6eb1d0a8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="3b320a6e-53dc-4af6-86cc-a92265c07eb3" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="7.0" id="e26f51d2-0635-46a5-807f-7f1e5244cb4e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="6b2f65a4-e66f-4d3c-993d-87a2df962911" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="c639fe42-2f49-4745-ad16-b2dccb3eb69a" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="0a9e97aa-39d9-4ede-ab3f-7f5ac5e771d8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a487b5c2-5dc2-4d4c-83fe-cbe3735b1173">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="2bed810a-21a6-447b-8228-ab0e4be59523" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="a17c5e1d-b97c-4575-93f3-9b93eb9a3b78" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="5176c309-5c65-4ca0-bade-0106917999ae">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="30b35ba3-4a23-4e10-8bac-e8dfab3f1f48" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="a0cafe66-8d3f-489e-99cc-44cd26cc9671" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="6.0" id="2390b514-0a6a-4f3d-8dc7-8c8196a7805f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="36cdec40-4666-4682-8deb-388560c8edf4" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="89b23935-de13-46ac-bd2f-4086bddaaae3" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="67579dbf-8b56-4d0e-8f76-9c6b02ecb34e" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="599ad124-e746-46a7-8468-707e03e1824b" aggregated="true">
            <port xsi:type="esdl:InPort" id="bea388c7-e0e5-439a-8629-67e4f9b37c50" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="c362f189-fdc7-4b44-9ab3-395cc3459f5e" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
      </area>
      <area xsi:type="esdl:Area" id="bu03631100" scope="NEIGHBOURHOOD">
        <KPIs xsi:type="esdl:KPIs" id="68fbc46a-3771-4469-8741-8ab270ce681a">
          <kpi xsi:type="esdl:DoubleKPI" id="2e0379d3-63bd-4660-a38a-2e98a1c97203" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="97d10404-21cf-47ba-b232-9a6f3b75f621" name="woning_nat_meerkost" value="298767.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e8dcf6cd-1bc0-4916-a01e-100313d9b547" name="woning_nat_meerkost_co2" value="175.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="534ff40b-ed24-46bc-964e-7c82ce9be053" name="woning_nat_meerkost_weq" value="399.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="91ace3ca-78ae-4e8e-9e59-847f0a376ff1" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="emission_TON_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="18c5ff6d-1276-4987-8573-8b36cfa44633" name="util_nat_meerkost" value="298767.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a0bdeea9-6bbd-4924-aee1-d537e580e55d" name="util_nat_meerkost_co2" value="175.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_TON"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6915634c-1bbe-4d55-885e-377d09afdd21" name="util_nat_meerkost_weq" value="399.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="cost_EURO_yr"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_ewp" id="c4c0f847-2449-4d72-87a3-b3e8b42c58ca" numberOfBuildings="6" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="9d8e8845-4e59-4826-b65f-be95a0e1860e" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="638a0f88-a328-4beb-b0ff-f55aa2fd24db" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="3ed59341-9179-4e68-9420-fccfedb6847d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="f41ae1e3-6540-48fb-bb00-c7e49e65c381" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="0319497f-f354-4164-987b-21962d1a5d62" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="873ee026-0a5d-4ea4-8718-dc31832ba7c1" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="14.0" id="8c8c1790-0c61-47ab-8f07-46d86cb0369c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="71788360-50e8-48ad-a3ad-91dfb30871a6" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="c086488d-35e4-4918-9723-13ddb6e289fa" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba446a9d-8d89-4942-9c59-630ad35cb492" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="3b83ea47-eea8-4231-a7c4-397c6a0bf25c" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="ebd3e335-8de1-4b9d-9523-b9bcc4108487" aggregated="true">
            <port xsi:type="esdl:InPort" id="410ded46-415c-48f8-ad80-f090a76330e7" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="d23459c0-f0d4-4034-bf05-4363d8b3c3da" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="de028f70-fe5c-4815-8f16-d851565b003a" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="f284db11-7b11-40f0-a50c-89c0523adb3e" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="2c97f392-d5bf-4e2a-9a92-c28030980bdc" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_mt" id="3b64e86c-ce2e-4947-a26c-31d823fa5559" numberOfBuildings="2" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="adefd4b5-8629-45cc-8abc-381170cdb879" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="0e1b9e18-d5fb-48a5-b52c-892a2b92d941" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="5d16a654-fbcd-4ee2-8193-4884f33c3b72">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="76189d17-47af-4e3a-a638-698d13a04fb8" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="c9d9232a-a6e7-4d61-998b-faf34d9d37b2" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="7970e5ab-525c-45fe-87e3-860eeaee8014" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="14.0" id="f13f2c79-e46e-467c-962c-b838145c7f62">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ce207266-e3c1-406b-9cde-e98739d18eeb" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="bcd1df2e-31ca-4a10-9834-4c3deed84d76" aggregated="true">
            <port xsi:type="esdl:InPort" id="005dccb0-6840-43f1-b879-a8a595887576" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="e7708dcd-c497-490c-b0e9-27ccdd1ef016" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="2ae73d6c-b45d-47fc-8610-0e1a931fb7d6" aggregated="true">
            <port xsi:type="esdl:InPort" id="ee23c2c4-d1e0-42c1-9426-a15f3f314c1d" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="bb5d226a-61e1-4c2a-8aaf-337b3427c8c1" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="0d6d0f82-0c25-41c4-b738-91bb37aaf332" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="e09ea3fb-3370-4753-8c6f-95b064df8ee0" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="deca9c41-5c1d-4e86-baf2-9819cb621eee" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_mt_restwarmte" id="b5f6ea40-c8f5-4264-9819-a437147af3c2" numberOfBuildings="2" aggregated="true">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="966a6668-848b-4a57-8a69-e4df488f2864" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="d6f9625c-afe5-455a-a0ea-72a816b4307b" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="3919a4fd-649e-4483-bfa6-0963d8ae35cf">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="640f4e10-c081-433f-bbc1-4109eb7ddf97" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="ed1dc3c0-d1d8-4f14-bf2f-950281724bbe" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="661af296-3a40-44ae-aba6-43b2b1e76822" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="14.0" id="cf9aabff-6cb4-4479-988a-740c5b8bab21">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7ddd5b11-0ccb-4cb5-af2e-211d4b366e5f" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="5ae9bd8a-8ddc-433c-822b-f6bed1545b1d" aggregated="true">
            <port xsi:type="esdl:InPort" id="8689a8ae-7926-44d3-a1e3-cf2e9c39f30b" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="992cc047-9a16-4bef-9fb3-bc2212a3a416" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="6dbdbd97-55ce-44fe-b1b5-717e95655b51" aggregated="true">
            <port xsi:type="esdl:InPort" id="4a13a6b3-13f2-4ea2-bf5e-ca36e58ded08" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="c6939076-4664-4de3-8ca4-0400647b650c" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="6cbdf3cc-e644-43e3-90a4-c609c4d95d78" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="96ff5b84-cef8-46ec-a9bb-41e93be2558b" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="ff8d0926-43b2-404c-88b3-09e904e083ba" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_ewp" floorArea="96293.0" id="dcb77c96-bbc6-4538-8e82-96d2aac4a216" numberOfBuildings="62" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="f501d79d-be3c-4f0d-a122-4d6674028ce5" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="ebe267e7-33ee-4a68-be73-90118ad195eb" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="1f1f9ae6-d944-453b-b37d-5d1681d27c33">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="087c1a32-149e-4aba-80cb-e028681255b9" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="e0693f89-daab-4afc-99e3-73a6c51e5a88" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="119015ae-77f7-4077-9103-5fd53ef036ab" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="67.0" id="a75d18b6-a757-4096-b36e-76ac2360af49">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="dec360d6-8065-40f3-adcf-8ef48b0f7b74" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="df6f0a84-6d50-41c5-95d4-da7c1fdd1c83" aggregated="true">
            <port xsi:type="esdl:InPort" id="977a5a82-4678-484b-811d-f9ae6e56f841" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="2c77def4-b321-4bb9-aeeb-d401f86cf1c5" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="08ae33be-75ba-4419-aa5b-3b0be03aa386" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="b7655810-eaf3-4aac-8b7a-ea8b24532d71" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="28.0" id="853576a8-903c-4b8a-ab1b-d76e85b69649">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Util vraag tapwater" id="1171045e-94fe-4c65-8525-87e1a5e5bd0a" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4a5abcf5-cce7-4918-805c-31795c7a692b" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="6fed8473-45f0-4b27-af54-e1ff87b8749a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="846545bd-d1c1-48ac-9cde-cf50c42ebeb1" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="b42949f3-1c49-4667-bb34-1b0046cee399" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="18.0" id="9d70d0c4-d80e-45b9-97ed-cff1067f83e5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="92828329-37e8-4920-933a-6f6a6defb41b" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="0683a894-923b-45ec-af3c-c6d9f50867dd" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="56.0" id="57eb8297-e79c-40b8-932b-265f274871f6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="1f896e22-1685-4bd5-96f4-f6753fa10b90" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9cbba95-fd4b-4325-881f-464acf0e309d" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="90f79e5f-cc0d-4668-be18-fc453a66caa3" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="112638d1-e1ce-4c9e-b5f1-52abce388482" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="dfb887c7-0b4b-46d2-a807-2c506bcc0bf1" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="bca6cb9c-c320-4772-a426-c3fc05d930b7" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="f5ccb1b6-e12a-43ce-85c3-b80401668257" aggregated="true">
            <port xsi:type="esdl:InPort" id="554b9622-62cd-4346-b54f-89dac65e6abd" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="fdc4abff-26fe-403f-a2a6-2ae39947da80" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_mt" floorArea="96293.0" id="da628c4f-4f38-471b-a50f-58d6d8e933a6" numberOfBuildings="18" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="4fae2e8a-1a6a-43ef-9d3e-62b1566024f1" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="66d0b186-7378-4490-ab4d-ded9fd69aa5c" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a9708470-21f2-4673-9e81-ec9c0c3a22cc">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="7402f056-954e-41a0-853b-33379ccc65ee" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="878609a4-86fb-4e3c-a4d6-a949bd8c6d10" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="40a4e5d4-0d33-4f2a-bda8-66d46db06ce0" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="67.0" id="cabf4fa9-754d-4a16-a478-9a1f47befaa6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ca181b52-fb60-4d91-85b3-e9e78fd63d2e" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="2ea317ae-2aba-438a-907d-7b720a06636e" aggregated="true">
            <port xsi:type="esdl:InPort" id="f8e5d6e1-e0d3-487e-9172-0f9cf517ff35" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="01f9d724-9cfe-4c62-a98c-af59288c117f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="21593352-9b97-4485-99ff-0db88b3f466a" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="4f229b75-db17-488a-9e7b-41d162501998" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="28.0" id="88f65362-e255-4ea5-ac23-5eb46d40afaa">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Util vraag tapwater" id="e4f4e566-1407-4e4f-bcf3-c15dbf058772" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="812e325b-8dbc-4276-af8f-0b787820bbc7" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="2d67746b-5a16-4025-b003-1fd22c44d710">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="ac89d3fc-1392-4c45-8301-188cec7cd005" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="3b98bcd5-4d7b-4d8c-92a1-a43c1808b468" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="18.0" id="f4278def-aa8d-4788-9021-ada89fa3035c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="5cf310d9-d574-489c-b602-4c694d171ede" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="29b0e678-1135-41d9-af4e-3373fb1a29b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="56.0" id="2eefba3c-c9ae-4016-b0fd-9ad8f73d2d88">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="dccec821-7234-467d-9862-259f0238cb6c" aggregated="true">
            <port xsi:type="esdl:InPort" id="10adf57d-c017-4be3-aa55-c471f0f2f54d" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="dcffde69-6894-400a-8158-3c07cbcaa8aa" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="5a9dddd6-6383-4cda-bac6-f3219af83a85" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="0d316609-7547-4bd8-a117-53d95228382f" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="904cf85f-70ef-4665-a265-cc5efde74ee4" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="a9398a4f-dca9-46e8-8581-13a6ec0d8760" aggregated="true">
            <port xsi:type="esdl:InPort" id="1503be33-2844-43d3-b9c1-a524da2d16c4" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="3a1321d1-b2ea-4840-bba7-886dab294fec" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_mt_restwarmte" floorArea="96293.0" id="e49cb6e4-3b8f-487d-9ce6-21b1595aeb43" numberOfBuildings="18" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="dd24fedb-22db-460b-85ef-ecec1f8fc3c4" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="2a5b43a8-efce-4e9c-81ec-14a9240df63f" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="e568ef15-a3c0-492e-97a8-781732200d45">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bc3f3a63-b388-4fa5-ac61-9d426e7f45bf" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="fbe263a3-3d5d-4285-8c38-bd2ca8dc8c4a" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="cf165596-e059-4f5f-a31b-db7225bf0c66" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="67.0" id="9e38e2b0-f138-4a9d-ba6e-dd4243b2b35a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="f2acfba6-3a76-4284-9b26-ca7a559d8a55" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_mt_connector" id="bb1fab05-d2bc-4f1b-a655-24e132e670c9" aggregated="true">
            <port xsi:type="esdl:InPort" id="057a83a3-4683-4b15-8f70-e342e2cf48ac" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="efa3b453-d95c-48e9-b995-3f1e1f7ac776" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="34ecf0a6-79a1-4069-b4d6-e7a9ecfc2f8b" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="eddd46d0-73ee-4aa9-93f7-89de09121dfb" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="28.0" id="26faf9f1-6975-481c-96f9-639a99e37737">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Util vraag tapwater" id="c390f074-d989-43c4-b908-793784e3b529" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="5299f748-4e88-4484-b955-8c52a467703e" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="f3253f02-5e0e-4fc1-8b15-be6bad832e2b">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="1d64b9f9-75c6-419e-9340-af88344063e5" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="d867c0ce-6593-40b6-adf5-6396628fad3b" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="18.0" id="ca11cad6-33ad-48ec-bb76-8bfbffcb4e6d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="67db3516-3b25-486a-af60-8efdff9933be" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="" id="7f34379a-94c2-49ab-9eca-de4767a8d62e" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="56.0" id="ec98004b-469b-4056-9d22-78bee0826542">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="6982cad4-ebc5-4dd1-8e1a-d9863bdd7c51" aggregated="true">
            <port xsi:type="esdl:InPort" id="cca24457-a5ff-40af-a8c7-754de205dafd" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="734efa04-643f-4d87-b272-d4d4c7dea69a" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="c01c96fb-9eeb-4ddc-a19b-097a961f4696" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" id="cd06a4cd-cf20-4a43-ac11-37bdf3a2d41c" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="1cb1ea01-8c26-40e4-ad45-d18b1a31a10b" name="OutPort" connectedTo=""/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="c5a3d923-8eb4-43c7-ae92-a3cfd5043997" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d19470d-8350-4828-ae4a-4605a93f8a6f" name="InPort" connectedTo=""/>
            <port xsi:type="esdl:OutPort" id="7219a35f-228c-416f-bf36-dde7e4ac73fb" name="OutPort" connectedTo=""/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
