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
        <port xsi:type="esdl:OutPort" id="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" name="OutPort" connectedTo="20a13b7c-d83b-44ca-ac19-226bc43426b8 b8e09069-3f2f-4df3-8819-691143d54f33 4222ed50-ed46-46f6-8f87-e99ecb3bc5e3 54a3ec53-a035-48c4-9ec6-d8e471dbf187 e63c65e3-55c5-40fb-82ae-7194421021e0 f159afda-28f2-477e-8e79-b847c3a718e9 78bfb221-77b7-42dd-a623-b8b672a97b79 a9e38c68-64ee-40fb-8505-3698156b8404 36e7b629-c670-4980-a9ea-8bb2bb1b16a8 1a3e8ce4-4fda-4424-b2cf-df20dc6aef84 375ba969-d155-4ff0-a478-935d0e1c5003 cbdcee75-815d-4610-b839-7e2f838194fa 5aa0fb8b-bcfc-46bb-a216-99e41614fa54 9f99e1f3-6d28-4d8b-9376-05614816091a 8d45a3c8-c845-40fb-9d27-68f6b268251f 384b3fce-d645-4359-8b17-ed1fc0f0aedf 7734343c-58be-4dac-a9b2-e7059e8438aa d8f0734b-f666-4673-88ab-b59a92c05c76 b6fdec26-1757-4d6c-a0fb-8fa50d4822cb c40195a0-22eb-48ff-8098-45f3073870fd edec1659-9a68-4e78-b372-6ed947565f3b f02571b6-2bd8-45ed-97d3-9e3c1d7b7ac5 716a2e82-1e24-44b9-8702-5bc754568fd8 11d2f458-2198-480c-aad8-9d4d01b633b1 e06cf64b-d82e-418f-92bf-5022340df976 977dcc74-511b-4c09-8e10-abcc46336619 9d177c22-f671-4588-80b6-3ff9cb6a804c 4d6a373b-6894-49c0-a870-29d449a54a3f 67a263d3-aeff-406c-a83d-c14d6647731b c7260545-5ea6-4144-9014-88fdfa9bc317 81f723e5-57a0-4514-a124-5c605e4a0e19 0158bd8c-5876-4cf2-906e-01ba4cd5cb4d 051f5cf0-6cda-4408-aa06-1a6a6e0d997b 586fe78d-ce77-4b0a-887f-ac7c00dc7155 ef7ae021-1b23-4b3b-b828-958d2934da11 afa6782e-035a-459c-b6bd-90ed0fc0bf2b e7bdc51e-08eb-4b05-a568-a6a85925266a 62abd1f8-3991-4d47-8c20-b8fed8ef62d3 ee8d0752-c54a-4f4c-922e-b686fb207a66 cbc83957-0cd9-4f0d-914d-b3945a4e2637 e5bb03d9-154c-4e87-a95e-50df6e81415d 6308d3be-5c81-4dd6-80ae-626e9a86a85d 6f7e6ec6-6a18-4a70-bd0e-035368e0476e"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="Heating_LT_network" id="d46918f3-e089-4475-a0f1-0eee3929d289" aggregated="true">
        <port xsi:type="esdl:InPort" id="76def700-f156-42fc-b0a0-39fe9a3445aa" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="e4fb34a3-1b80-4d50-96a2-9c79a5bd1627" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="Heating_MT_network" id="c1429f18-bc3a-4aec-8ab7-11705712e961" aggregated="true">
        <port xsi:type="esdl:InPort" id="ceaf5165-588e-4c53-824c-918d69d007a6" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="6249d32d-3d5b-4c41-9f89-8b8c89b9c123" name="OutPort" connectedTo="72eb7397-6b91-4090-a404-d57935cf3262 c2f46141-977b-4f5c-a554-9ab1d3787cfb 904fecbb-97f0-4598-a6f5-58149576fea3 4358aaf8-9d4f-4935-9d21-2b979274633c 70135aae-2577-4521-b6cc-a752c9440fcc ef3997a0-db6c-445b-bc69-ce8e26277045 64c4d15d-9f57-4680-86ff-3dc41854fab2 65f2e668-0a97-4ae4-92e3-1470c2263e4b c90cc323-b683-4dcf-aced-e384c7331d9b a7e0a723-94bd-4526-beae-970ca76d030e ef52f60d-9a41-4b51-b510-60cda907b0ef 18cebfb7-8581-4b11-8ca9-d788d680c681 01b829de-2c39-4f26-92ba-7abceff55e71 c77ace2d-33f4-47d3-8e5f-b5f0dcca4f6c 669c42c9-86ca-48a3-8a22-09ef03d59342 752cd72b-dc7f-4364-84e3-85c29fe67810 bf98bb24-3271-4969-b6b9-d1d6fc5bb44c 8be8e50e-22d7-4d26-bcac-8296271553d2 d31cb9a9-df17-4363-8680-02c666471b60 02935b3a-6b7a-45b5-aa1e-292a15679404 4b2db333-3b45-437a-8ad0-85dfc4783c67 31b1e78a-a7d6-4f1a-9cf0-779c7a7e0b96 23bdc300-8bd4-4b96-af60-e308ef90c831 fb082fa3-cd6c-474a-b186-3d43431e272c"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="424b6d01-fce6-408d-afd8-17b5eff20593" aggregated="true">
        <port xsi:type="esdl:OutPort" id="4a206b64-c043-4116-a7e8-687b975121d9" name="OutPort" connectedTo="4ab4d374-6dd3-4d06-a016-acfde7629260 80c7a083-ed63-4246-9bd4-63c8ac347a05 de15fcb1-d60a-4b2a-95a7-f3bd2e7c650a 4d34dc10-5586-4e39-83fa-1cb0b4c021c5 de2c273e-7b82-4d78-b85f-428dca9c18e8 4df77b1b-e63d-40b4-a180-4402c84b3afc b4c1aca9-af07-4a52-bb4f-53d22f630aa2 677a91dc-2119-46ed-b25a-ab2ea23fcb79 fc1a8579-f66c-45ef-bcd7-35343fd04c67 2aedd28e-7a5c-4569-8d42-bd631233a021 df34bbcf-0596-4e86-baf3-70e0a2fa02bb 06a6c35b-e3e2-4396-a8ee-e6356a016bf0 0fe7d82c-9bd0-4aab-82aa-b2a8f18f38d0 a78066fa-5379-4f5d-84b5-dfb989233014 a44e8ea5-7c37-4530-864e-486c489a5f38 32ecee60-e4b4-49b0-8314-f3d40ee0091e d4f76d58-668e-4add-92b9-a3478f0d6952 a2be482c-eb13-4d5f-9f38-03410bf30f67 484bc351-5679-4fb2-aa86-aec9117297cf d204ed4e-8327-4157-98c6-49f21bf2fc79 7ab334fa-bc93-4836-9cfa-3584b6e80ac7 52a762d4-4012-45ef-9762-2b82a2e9b030 e781d3d5-2803-4f58-b5ff-1555d2b30b33 694316e5-3853-4c15-896a-3a242d558ad0 dddfa9e8-15e9-4a83-9ea4-119d7c59030a 27c236c9-1ca8-49d4-a1c6-7ce44b2793b8 3d53fd44-a083-4f2f-bef6-32db5fcb3bb1 cb3c2f23-e35b-473d-b132-1dec48dcf149 ad8deefd-3efc-423e-9bc1-8b604541d29e 1bf0bb0a-2395-4cbf-9324-77f818886bc5 3a7358b6-e773-48b0-a451-131657993a8b 62782f0a-35ef-4b5b-99a7-f72aec369282 f641f752-a8df-49a5-b0bb-cff58aeaa0e9 a4c32c04-e8ea-428b-bb53-83cc8a066f7c 7664f38c-6f78-40eb-85cf-1d3dc073dd69 9e093fac-bcdd-44d6-84a5-f1f2cea8f689 a151f6e7-18d1-42c3-9891-2bac8e670c3e 25322a5a-ca07-4df4-8ae8-7e1a199ef5ee 006db8cb-66e4-4329-a052-0e997302c195 e060ae2e-a601-4d98-a824-f206ef4564a3 aa65b307-49ce-4463-b690-bb80f17c2381 8e82c6dd-a9a4-4c6f-80c9-31c72ef390b5 f49503fa-7442-4960-ac38-7b40152ea092"/>
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
            <port xsi:type="esdl:InPort" connectedTo="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" id="20a13b7c-d83b-44ca-ac19-226bc43426b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="3.0" id="06ba8565-c393-4ada-a073-0c5316778e9d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d18a2ad7-975e-40c2-ab8e-400123de235d" name="OutPort" connectedTo="66c18b5f-58e7-494a-acbc-86efebba8ed4"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="e085a1a7-d399-4b3d-84ed-365ae13f442e" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a206b64-c043-4116-a7e8-687b975121d9" id="4ab4d374-6dd3-4d06-a016-acfde7629260" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="944acc7e-40e0-4fda-9aa3-3afe12962e4d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="cb335d0a-d4a9-4922-a0b4-333befb1cbbe" name="OutPort" connectedTo="f099fbdb-a8fa-49aa-95b6-4c2e4aa54e97"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Woning vraag ruimteverwarming" id="7b6350b6-3cb9-47c6-958f-65dd8e23fdaa" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4c1d5cfe-7b91-49e5-9c73-2c3abe6b9022" id="fa83415d-5dbf-44b5-89fe-d2aa5bc83a6d" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a19b2e1d-7b15-475c-bf25-0049da8af5f2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Woning vraag tapwater" id="b7c917f6-3ba0-4703-a01e-0c6627ced5d8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4c1d5cfe-7b91-49e5-9c73-2c3abe6b9022 a367aaa1-480b-46cd-829a-bac362e54882" id="e1205904-d4da-4153-927e-fcf33815863f" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="40c0f48b-debe-4069-b1e3-df555cb2c6f6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Woning vraag elektrische apparaten" id="0ec8c0a8-1b7d-4773-b7ee-0651055426ba" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cb335d0a-d4a9-4922-a0b4-333befb1cbbe" id="f099fbdb-a8fa-49aa-95b6-4c2e4aa54e97" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="59f4f3be-0a12-4a02-a29d-2e69b5a587a9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="d0d3699d-8e1a-4618-b575-32c14b3f441b" aggregated="true">
            <port xsi:type="esdl:InPort" id="66c18b5f-58e7-494a-acbc-86efebba8ed4" name="InPort" connectedTo="d18a2ad7-975e-40c2-ab8e-400123de235d"/>
            <port xsi:type="esdl:OutPort" id="4c1d5cfe-7b91-49e5-9c73-2c3abe6b9022" name="OutPort" connectedTo="fa83415d-5dbf-44b5-89fe-d2aa5bc83a6d e1205904-d4da-4153-927e-fcf33815863f"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" floorArea="232015.0" id="c581dc4f-6e72-415b-8fdf-43c2b9de78e7" numberOfBuildings="229" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="dba024cb-0dd9-4278-8c12-a464cb31f7f8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" id="b8e09069-3f2f-4df3-8819-691143d54f33" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="d06415cf-6c39-4e05-a474-4d887e947667">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d006f066-cff1-419e-b937-809089da7cac" name="OutPort" connectedTo="beebaed7-345d-4bf0-a7e7-86e85b92a069"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="41bf0129-48bf-4425-9e57-2b2207e1114b" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a206b64-c043-4116-a7e8-687b975121d9" id="80c7a083-ed63-4246-9bd4-63c8ac347a05" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="6.0" id="f98dd3db-51d3-43c7-8e77-24a0aee55c6d">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="39204da7-d7eb-4094-b188-4ca76059716a" name="OutPort" connectedTo="c1c7db64-02d3-4803-b5a4-2cad0690bbcc 22b51f92-ce0b-4ce4-9fb8-beafb2045e3f"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="3b09833e-5b74-4515-977c-a7e982ae9827" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a367aaa1-480b-46cd-829a-bac362e54882" id="2b4f75af-658c-4200-8804-eb37dcb547c2" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="57c2461d-f3e7-4472-9e5d-a6d341f817ec">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="cd5fba8f-81be-4309-814e-8fe1572aaccc" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6e65b6f0-8bf3-4a05-b526-cd9e23e65424" id="c2c2fca7-7935-4c27-a5b5-c296b9d00249" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="3f4e6fbb-c6b7-43ee-aa3b-9860909af853">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="2ac73140-a7f3-4750-9531-d82f178216a3" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="39204da7-d7eb-4094-b188-4ca76059716a" id="c1c7db64-02d3-4803-b5a4-2cad0690bbcc" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="6.0" id="e6dc6792-d122-4339-a77f-fe8f4a62d2b5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="50824763-6270-4308-9c84-b2dc4664087c" aggregated="true">
            <port xsi:type="esdl:InPort" id="beebaed7-345d-4bf0-a7e7-86e85b92a069" name="InPort" connectedTo="d006f066-cff1-419e-b937-809089da7cac"/>
            <port xsi:type="esdl:OutPort" id="a367aaa1-480b-46cd-829a-bac362e54882" name="OutPort" connectedTo="2b4f75af-658c-4200-8804-eb37dcb547c2 e1205904-d4da-4153-927e-fcf33815863f"/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="250d8f32-0887-4fcd-b702-7cc44e3b86d1" aggregated="true">
            <port xsi:type="esdl:InPort" id="22b51f92-ce0b-4ce4-9fb8-beafb2045e3f" name="InPort" connectedTo="39204da7-d7eb-4094-b188-4ca76059716a"/>
            <port xsi:type="esdl:OutPort" id="6e65b6f0-8bf3-4a05-b526-cd9e23e65424" name="OutPort" connectedTo="c2c2fca7-7935-4c27-a5b5-c296b9d00249"/>
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
            <port xsi:type="esdl:InPort" connectedTo="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" id="4222ed50-ed46-46f6-8f87-e99ecb3bc5e3" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="3.0" id="95a0e294-8d38-4613-8a2b-45f62c3bd7b4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="681e8d86-5d7f-4c1a-ad8f-5b647b1fec59" name="OutPort" connectedTo="941c4189-877d-4726-bb9d-322bfe003db9"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="4196c66a-db46-4983-878b-e4947ad49d5e" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a206b64-c043-4116-a7e8-687b975121d9" id="de15fcb1-d60a-4b2a-95a7-f3bd2e7c650a" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="937d6a63-3b4f-47d4-88ba-d811f678cc5f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="51901228-8fa6-4c8b-b901-5c077fdb11dd" name="OutPort" connectedTo="f00d68fd-aaa4-4430-9f4a-e8442454cb05"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Woning vraag ruimteverwarming" id="de45391a-1894-4b23-b1be-6d4f2ba0f3a8" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d6381963-39df-4551-8e01-87df4d86c13b" id="6e269c8c-3710-42b9-b8bc-b647e86350a7" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="a392be4e-4013-46e1-bf37-cc6405a69997">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="HOT_TAPWATER" name="Woning vraag tapwater" id="d7f61619-ed2e-4cbb-9f85-81f7061bcc34" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d6381963-39df-4551-8e01-87df4d86c13b 0e6b9a71-4b41-4824-b9ab-689e9df0522e 28764568-12e2-4839-9f49-7f6087bf1b79 915b224b-b583-4f91-8caa-9d513177138b 2cb09922-883a-4302-ba2a-e68d332ff868" id="f461a107-aa2e-4ffd-a407-2052d641cdf3" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="1.0" id="bf9e58cc-4ece-4983-920a-fa6d686fa9d2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Woning vraag elektrische apparaten" id="97949bde-1eff-4b0c-8088-5f63760caef2" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="51901228-8fa6-4c8b-b901-5c077fdb11dd" id="f00d68fd-aaa4-4430-9f4a-e8442454cb05" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="2.0" id="67a27396-2a76-46f6-9803-137dc396a658">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="5e568980-c36b-4416-aa01-27e1e27d46e8" aggregated="true">
            <port xsi:type="esdl:InPort" id="941c4189-877d-4726-bb9d-322bfe003db9" name="InPort" connectedTo="681e8d86-5d7f-4c1a-ad8f-5b647b1fec59"/>
            <port xsi:type="esdl:OutPort" id="d6381963-39df-4551-8e01-87df4d86c13b" name="OutPort" connectedTo="6e269c8c-3710-42b9-b8bc-b647e86350a7 f461a107-aa2e-4ffd-a407-2052d641cdf3"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" name="aansl_hr_hg" floorArea="62814.0" id="9ffbee04-93e0-4c25-a654-902f33a022ca" numberOfBuildings="48" aggregated="true">
          <asset xsi:type="esdl:GConnection" name="Gas_connector" id="aa1b5f52-1a68-4d8f-a628-2b66a638e176" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="fcb8108f-1ad0-43f8-bfc4-c593a33854b7" id="54a3ec53-a035-48c4-9ec6-d8e471dbf187" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="7.0" id="42d387b5-0b24-46ba-930f-8d0fc6c3996f">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="e2c8ad15-cc42-4949-a6ef-54fde87b813b" name="OutPort" connectedTo="b88a14ca-1735-4bdd-b77e-aadf55ba5933"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="4f8a609c-d362-485f-a0be-35a6e5679448" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a206b64-c043-4116-a7e8-687b975121d9" id="4d34dc10-5586-4e39-83fa-1cb0b4c021c5" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="12.0" id="ac25a49b-62f0-472b-a51b-527779aac8e0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="05f66d0d-f70c-4451-944b-73aead955f4c" name="OutPort" connectedTo="4dea238c-b775-4817-ada5-cb6855cfbda8 70b1c7d1-34b8-4436-a47e-b599dd955c4d"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" type="SPACE_HEATING" name="Util vraag ruimteverwarming" id="235897a3-c917-4aeb-a739-cf4b43472790" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="0e6b9a71-4b41-4824-b9ab-689e9df0522e 28764568-12e2-4839-9f49-7f6087bf1b79 915b224b-b583-4f91-8caa-9d513177138b 2cb09922-883a-4302-ba2a-e68d332ff868" id="3716f9c5-f80b-4d8c-b310-8db7efdae3bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="7.0" id="ab7dc1af-c8a6-428e-9f0f-5128e1013161">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" name="Util vraag koude" id="e1f154f3-73f5-44a8-a7c1-a304eafc1f70" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a2bb0a74-e700-4eda-97d2-772b8a116b47" id="24d78975-bdbe-4a53-b6b2-aef778f4a6a1" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="4.0" id="4a33c8dc-d0f4-4ce3-843d-d7d1fa2380d2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" name="Util vraag elektrische apparaten" id="f80d428e-6b85-435f-a7fc-b0092fe314ef" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="05f66d0d-f70c-4451-944b-73aead955f4c" id="4dea238c-b775-4817-ada5-cb6855cfbda8" name="InPort">
              <profile xsi:type="esdl:SingleValue" value="11.0" id="2034343e-ca63-4dcd-ab83-a49751807277">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" name="Gas_heater" id="67cb573f-85a4-4493-86d9-bef575f58aad" aggregated="true">
            <port xsi:type="esdl:InPort" id="b88a14ca-1735-4bdd-b77e-aadf55ba5933" name="InPort" connectedTo="e2c8ad15-cc42-4949-a6ef-54fde87b813b"/>
            <port xsi:type="esdl:OutPort" id="0e6b9a71-4b41-4824-b9ab-689e9df0522e" name="OutPort" connectedTo="3716f9c5-f80b-4d8c-b310-8db7efdae3bb f461a107-aa2e-4ffd-a407-2052d641cdf3"/>
          </asset>
          <asset xsi:type="esdl:Airco" name="eAirco" id="844054ba-66f9-4751-81e4-a961ee58a126" aggregated="true">
            <port xsi:type="esdl:InPort" id="70b1c7d1-34b8-4436-a47e-b599dd955c4d" name="InPort" connectedTo="05f66d0d-f70c-4451-944b-73aead955f4c"/>
            <port xsi:type="esdl:OutPort" id="a2bb0a74-e700-4eda-97d2-772b8a116b47" name="OutPort" connectedTo="24d78975-bdbe-4a53-b6b2-aef778f4a6a1"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="UTILITY"/>
          </buildingTypeDistribution>
        </asset>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
