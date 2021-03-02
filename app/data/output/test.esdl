<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="S1a_B_LuchtWP_Hengelo" id="361dd5a1-2c41-410f-b5f7-0f1f67d72e40">
  <energySystemInformation id="energy_system_information">
    <quantityAndUnits id="quantity_and_units">
      <quantityAndUnit physicalQuantity="ENERGY" description="%" unit="PERCENT" id="share_of_energy_demand"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance id="2b8ffb1f-2274-412c-970e-7aec009e6cd1" name="y2050" aggrType="PER_COMMODITY">
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000+0000"/>
    <area id="Hengelo" name="Hengelo">
      <KPIs description="KPIs" id="kpis">
        <kpi xsi:type="esdl:DistributionKPI" id="source_of_electricity_production" name="Elektriciteitsmix">
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem value="35382.62134641764" label="Zon"/>
            <stringItem value="1105200.0" label="Afval"/>
            <stringItem value="1494533.5222757289" label="Import"/>
            <stringItem value="35382.62134641764" label="Zon"/>
            <stringItem value="23999.999999999975" label="Biogas"/>
            <stringItem value="1105200.0" label="Afval"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" value="251817701.05097052" name="Totale systeemkosten" id="total_costs"/>
        <kpi xsi:type="esdl:DoubleKPI" value="-15.725366577048593" name="Reductie CO2-emissies t.o.v. 1990" id="dashboard_reduction_of_co2_emissions_versus_1990"/>
        <kpi xsi:type="esdl:DoubleKPI" value="903.034901907901" name="CO2-emissies totaal" id="total_co2_emissions"/>
        <kpi xsi:type="esdl:DoubleKPI" id="merit_order_onshore_wind_turbines_capacity_in_merit_order_table" name="Opgesteld vermogen wind op land"/>
        <kpi xsi:type="esdl:DoubleKPI" value="1920.0" name="Vollasturen wind op land" id="merit_order_onshore_wind_turbines_full_load_hours_in_merit_order_table"/>
      </KPIs>
      <area id="bu01640000" scope="NEIGHBOURHOOD">
        <KPIs id="d214b483-e76c-4593-9861-3ae5e5e02bba">
          <kpi xsi:type="esdl:DoubleKPI" id="73bef7c1-518e-42ea-8757-0f10db7356dd" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1047645.0" name="woning_nat_meerkost" id="c15d548e-b81d-4262-95a5-48b3049c6796">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="238.0" name="woning_nat_meerkost_co2" id="4428ef29-28c6-409a-9f3f-942c49b0866a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="545.0" name="woning_nat_meerkost_weq" id="11a9b966-8208-4311-b3fd-b2ce523e053b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c0199561-d01a-47c6-b4ba-1cfb9729502e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1047645.0" name="util_nat_meerkost" id="353350af-a827-4d3e-9c88-49f5c3880ee0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="238.0" name="util_nat_meerkost_co2" id="54f73717-501f-4704-bc85-2d5b3d40ddb3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="545.0" name="util_nat_meerkost_weq" id="7daa5041-2e09-4f4e-9fe2-414ebb11fb61">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="686" id="1f0651f5-8f84-4d6e-a54b-7730346a75af" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.09766763848396501"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.902332361516035"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26352" lon="6.7963264"/>
          <asset xsi:type="esdl:EConnection" id="d4855348-df76-4311-9bc7-4ef006b0fb1d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="58cf9a1d-3086-426d-86c6-703e492970ae" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="7076f0ef-5d3b-4174-9066-2b495bdb260d" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c1f05bc1-288d-48cb-8863-a008f08a8e87 ce7aa586-dc68-4a89-bc65-f4af6fc12135" name="OutPort" id="9edba0b0-1e1f-4a3e-b555-fc79ca3b497f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6b23e554-8b5d-4270-807c-53f676c192f2" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="801f4223-e1ed-4563-99f7-2ae6c74107f9" name="InPort" connectedTo="0088b673-eb7c-4314-b485-0587ff53d622">
              <profile xsi:type="esdl:SingleValue" id="a95b9ca9-15aa-4b62-91a2-704c05b43e54" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cddf5cce-1204-4384-b937-f64bb830ebdf" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2f6f39ee-53ff-45c6-98eb-379a15a1fe2a">
              <profile xsi:type="esdl:SingleValue" id="2a81ca3e-13eb-4049-a9ee-f32fcd41ecf0" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4bac8d19-665e-44b6-8d85-fb937180350d" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c1f05bc1-288d-48cb-8863-a008f08a8e87" name="InPort" connectedTo="9edba0b0-1e1f-4a3e-b555-fc79ca3b497f">
              <profile xsi:type="esdl:SingleValue" id="7192854d-36be-4f61-bf4a-618c959266cf" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8cca0829-2080-4bd3-a1f3-686542b8be60" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9edba0b0-1e1f-4a3e-b555-fc79ca3b497f" name="InPort" id="ce7aa586-dc68-4a89-bc65-f4af6fc12135"/>
            <port xsi:type="esdl:OutPort" connectedTo="801f4223-e1ed-4563-99f7-2ae6c74107f9" name="OutPort" id="0088b673-eb7c-4314-b485-0587ff53d622"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="402" floorArea="160794.0" id="3abfc8eb-0dde-4225-92eb-affc6a7cc43b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.265550999999995" lon="6.7944058"/>
          <asset xsi:type="esdl:EConnection" id="2db4603e-bc30-4dec-8744-56d62e01e627" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bfbc9c7d-de6e-4ee5-957e-55d4b546122d" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="a500b585-4cf0-496b-963d-8748ee3c968a" value="43.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="17d07dac-e262-4ae3-a330-85eb7c7826ef 2c2aa764-dc3f-4aeb-b0b8-584caad35141 5a3157f7-d3bf-4876-804b-82ed77098f88" name="OutPort" id="b97426d9-92fd-428c-bc83-b1e50a4c5a37"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c0c617c6-ef94-48c0-892e-b818268268b0" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="bf2335ca-1da0-4bad-88ef-54b1b94d0309" name="InPort" connectedTo="1bf8da75-3bd0-4cab-ba83-4a25e2dd2d97">
              <profile xsi:type="esdl:SingleValue" id="0e38067e-8ac5-445b-bc0b-441578326d9e" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="90351c06-cfb0-4c85-902a-70d885ef5181" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="18ee9dd8-1857-459e-a96f-f453cb366b1b">
              <profile xsi:type="esdl:SingleValue" id="15db28c1-8a0c-4e5d-b9d7-72a9a89d52f3" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c49de5d8-6b20-4ef7-84c8-274896c0153b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="37ee2988-6c86-493c-8341-d52b7f0b6623" name="InPort" connectedTo="32e06ad8-16e9-45eb-bb4b-044b8e6651b1">
              <profile xsi:type="esdl:SingleValue" id="60a2418b-7cae-4724-bfa6-ffeb3d0d89b0" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="03d82ec1-65fa-48ee-9c4c-07286b1563ac" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="17d07dac-e262-4ae3-a330-85eb7c7826ef" name="InPort" connectedTo="b97426d9-92fd-428c-bc83-b1e50a4c5a37">
              <profile xsi:type="esdl:SingleValue" id="f419f46f-9bee-4cea-8034-c4557e9977b6" value="36.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3e333e88-b166-4506-acfd-f16b78fd0b25" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="b97426d9-92fd-428c-bc83-b1e50a4c5a37" name="InPort" id="2c2aa764-dc3f-4aeb-b0b8-584caad35141"/>
            <port xsi:type="esdl:OutPort" connectedTo="bf2335ca-1da0-4bad-88ef-54b1b94d0309" name="OutPort" id="1bf8da75-3bd0-4cab-ba83-4a25e2dd2d97"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="8f77aa1d-c45c-4812-bfbd-6842521946de" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="b97426d9-92fd-428c-bc83-b1e50a4c5a37" name="InPort" id="5a3157f7-d3bf-4876-804b-82ed77098f88"/>
            <port xsi:type="esdl:OutPort" connectedTo="37ee2988-6c86-493c-8341-d52b7f0b6623" name="OutPort" id="32e06ad8-16e9-45eb-bb4b-044b8e6651b1"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640001" scope="NEIGHBOURHOOD">
        <KPIs id="6bb04c91-525f-42a5-b5db-a3b8579fb833">
          <kpi xsi:type="esdl:DoubleKPI" id="272e1b7d-4157-4b77-a135-c80909708777" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="479118.0" name="woning_nat_meerkost" id="e34a03d2-923e-49be-bbe1-8a0199edfe9e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="219.0" name="woning_nat_meerkost_co2" id="709042c5-195b-457a-a42b-ced4ee778ce3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="525.0" name="woning_nat_meerkost_weq" id="dfac5a35-6043-4bb7-b25f-bbd8631ecd0f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="045937d7-93aa-4395-8971-4ac80d7aa8c1" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="479118.0" name="util_nat_meerkost" id="17868fc3-1179-48c4-b986-0093280562c7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="219.0" name="util_nat_meerkost_co2" id="c1499ab0-f9f5-4dac-989c-4b88e460d0ce">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="525.0" name="util_nat_meerkost_weq" id="090b371b-4f21-4803-a672-9c7073f48c7e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="476" id="2db3e825-e019-42ba-a531-f5debb5c5220" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.10504201680672269"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8949579831932774"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.263445000000004" lon="6.7857738"/>
          <asset xsi:type="esdl:EConnection" id="94bbe2b9-be3b-4a6d-beeb-6285f225249b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="50f584b9-27c6-4a96-bc17-f554ba2feb30" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="5e647947-125c-458c-b062-318c0c7cb35a" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="dea52d92-7678-490e-91f6-d6d2174dbc9d 440f525e-1a3b-4429-8bee-a7ac93cfb06a" name="OutPort" id="feab7ee0-7b52-43ab-8171-0c4a782c3fac"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a6f0f04f-5d66-4413-b4b6-4aee8047b01f" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3703c363-8e83-41fe-a6ca-e7a4ca863633" name="InPort" connectedTo="e266b1c9-f501-4e71-9e4f-74223291073d">
              <profile xsi:type="esdl:SingleValue" id="d405fa04-6f1c-4318-bf54-c7d65288adf7" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b01acb64-63a4-4ba1-b253-ae54cc1b622c" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="11a4038d-e038-4e2d-8f99-95c8c6ef619c">
              <profile xsi:type="esdl:SingleValue" id="6b184901-eca7-4314-9bd2-a2b77bae4163" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="514ff615-3671-4589-937a-6da18dd31570" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="dea52d92-7678-490e-91f6-d6d2174dbc9d" name="InPort" connectedTo="feab7ee0-7b52-43ab-8171-0c4a782c3fac">
              <profile xsi:type="esdl:SingleValue" id="73563969-c7ad-4444-b4d5-872ebf588f6c" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a7a60974-b93c-4347-b619-e0555bf02c4a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="feab7ee0-7b52-43ab-8171-0c4a782c3fac" name="InPort" id="440f525e-1a3b-4429-8bee-a7ac93cfb06a"/>
            <port xsi:type="esdl:OutPort" connectedTo="3703c363-8e83-41fe-a6ca-e7a4ca863633" name="OutPort" id="e266b1c9-f501-4e71-9e4f-74223291073d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="111" floorArea="56820.0" id="5f0e469c-d74a-4aa7-bb6f-6b04369f7ab3" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26497" lon="6.7857738"/>
          <asset xsi:type="esdl:EConnection" id="c102d53b-bb58-4c6f-9431-8b4a9665dc54" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e3110285-11c6-428b-a663-3f729c8db18a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="08fb06bc-4e7b-4b5a-a077-59c0fea63051" value="31.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="de53cded-61a3-49d0-9c00-b450b5265679 246fd6dd-971f-40d4-809d-023c57b18e75 3164e101-7ef3-4ab4-81f2-693f73e60cb3" name="OutPort" id="dbf8e957-395d-4ec9-9983-3d72d6975daa"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ae4b1cc1-28e6-4395-8aee-836c6d6c2f55" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="87969cea-803d-446e-9d2a-1c2f3da3e5ae" name="InPort" connectedTo="e873ab6d-a92a-443d-ac32-788011899ad6">
              <profile xsi:type="esdl:SingleValue" id="fef6f964-3112-4e5a-bfc0-7edf67a5508f" value="14.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="eb040855-5050-4250-a68b-634d3a638e1e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="0c7b009d-d599-4f92-9002-90f271ae1cb9" name="InPort" connectedTo="dd6b7753-2350-45dd-b8ce-c4622594853e">
              <profile xsi:type="esdl:SingleValue" id="927a7d56-2d0d-4667-8f11-449cbcd147ff" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9f85f8ce-fbcf-4598-b4af-564b1012ccdf" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="de53cded-61a3-49d0-9c00-b450b5265679" name="InPort" connectedTo="dbf8e957-395d-4ec9-9983-3d72d6975daa">
              <profile xsi:type="esdl:SingleValue" id="884b000c-d7e3-42bd-aa54-c7ae38f0dd55" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2a956aa0-baac-4476-8c8c-f3bd9970aa67" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="dbf8e957-395d-4ec9-9983-3d72d6975daa" name="InPort" id="246fd6dd-971f-40d4-809d-023c57b18e75"/>
            <port xsi:type="esdl:OutPort" connectedTo="87969cea-803d-446e-9d2a-1c2f3da3e5ae" name="OutPort" id="e873ab6d-a92a-443d-ac32-788011899ad6"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="a4e91a70-e4e6-45ca-9f41-15a9b3735ebd" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="dbf8e957-395d-4ec9-9983-3d72d6975daa" name="InPort" id="3164e101-7ef3-4ab4-81f2-693f73e60cb3"/>
            <port xsi:type="esdl:OutPort" connectedTo="0c7b009d-d599-4f92-9002-90f271ae1cb9" name="OutPort" id="dd6b7753-2350-45dd-b8ce-c4622594853e"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640002" scope="NEIGHBOURHOOD">
        <KPIs id="ab1b91e7-231f-4131-acb9-0468eca39d33">
          <kpi xsi:type="esdl:DoubleKPI" id="9c951ed1-6086-46e4-83d5-10cb2948917c" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="554991.0" name="woning_nat_meerkost" id="e1f4f706-6651-46ce-8f5a-5af78e5f3b10">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="woning_nat_meerkost_co2" id="341b70d3-e197-4f7e-9e44-c61735be1913">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="700.0" name="woning_nat_meerkost_weq" id="541e93c7-1573-4d35-9ec7-8b9a8659b692">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7fa0ff51-7e4d-4380-9df9-9b503bacc62d" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="554991.0" name="util_nat_meerkost" id="78187572-c298-4edc-b6ff-eec0ab92a6d3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="util_nat_meerkost_co2" id="1bbbdcfc-3e8a-41bd-b074-72f6f5689fd2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="700.0" name="util_nat_meerkost_weq" id="99d59170-aac6-497e-b0ea-c919b3785a67">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="572" id="9069ca0d-7dd9-4b79-84ed-6f2f0eb801d2" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.08741258741258741"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9125874125874126"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26688475" lon="6.80091375"/>
          <asset xsi:type="esdl:EConnection" id="7937b8c7-ffa9-484b-97e4-30a5249dba2c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f7fdbe37-9c09-49af-90e9-c9ed85f701ea" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="0b5f284a-1354-43d0-85ee-7afab2867dbe" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0cbad5e1-d0b6-4ebb-80f0-d01829791e82 0e69b7a5-b579-424d-8364-9260edb4cc16" name="OutPort" id="03be882d-3ca6-4d18-b16d-18208ef4a8d9"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9d1e2386-d929-4b7d-9ba3-9f97102ac6df" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9a608e0e-2144-46c7-86cd-1746dfe3aa43" name="InPort" connectedTo="095ce5f5-e53c-45e4-a03e-437590e43244">
              <profile xsi:type="esdl:SingleValue" id="055c6e0c-45c6-40fa-9878-f6fb625a4075" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d5844a5f-eda0-404c-8089-10e95b2e001f" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5b40c69c-3dbc-4fea-a928-82386d8854f1">
              <profile xsi:type="esdl:SingleValue" id="313bbd6e-5e1a-4e36-8d4d-b327d5485782" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6f596408-88de-435d-b171-b8b4743f2ccd" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0cbad5e1-d0b6-4ebb-80f0-d01829791e82" name="InPort" connectedTo="03be882d-3ca6-4d18-b16d-18208ef4a8d9">
              <profile xsi:type="esdl:SingleValue" id="15c7fbdc-0fff-428e-80b4-e52e7dfbad9a" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3d7773cb-6082-4db1-b219-934d0d4508f1" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="03be882d-3ca6-4d18-b16d-18208ef4a8d9" name="InPort" id="0e69b7a5-b579-424d-8364-9260edb4cc16"/>
            <port xsi:type="esdl:OutPort" connectedTo="9a608e0e-2144-46c7-86cd-1746dfe3aa43" name="OutPort" id="095ce5f5-e53c-45e4-a03e-437590e43244"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="116" floorArea="28684.0" id="a865e80c-239c-4ffa-b615-7e28c27617b0" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26314625" lon="6.7988775"/>
          <asset xsi:type="esdl:EConnection" id="ea7eca06-e6c4-4c8c-8078-e028f27f9b5d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7994dd57-85df-4190-b5b4-c97726e7f0ee" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="81fa793b-c0c2-4330-a61b-eb56c0eb0f4b" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="344e9962-8669-4f3a-9bf7-06aa22f9dd86 234e2f17-8e28-4463-87c9-750ae11f0b18 23a854ca-972a-47af-8a0f-34a5b84c2cfd" name="OutPort" id="bb5c0f60-6b79-4392-8163-0ba69b9f4af8"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="80689e4a-4684-4601-ac7f-b617a3883c19" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="2e8ea05c-f7f1-42e9-a488-a55547fa4d6d" name="InPort" connectedTo="10a0d916-3f2a-4793-9069-85520f59e485">
              <profile xsi:type="esdl:SingleValue" id="0cc004d1-5b8c-455c-b4f0-195b56a3f981" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="8f30d67f-9a9e-46f2-b324-b56a8fe1c219" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="51aaccc1-feef-4863-a559-89184cc768d1" name="InPort" connectedTo="eb0d3296-71f0-4d14-bb07-7dbdaf6d3e3d">
              <profile xsi:type="esdl:SingleValue" id="239fc62d-e79d-4466-a272-e933e11bf678" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b81aa822-845b-4152-9f43-ac050eab9110" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="344e9962-8669-4f3a-9bf7-06aa22f9dd86" name="InPort" connectedTo="bb5c0f60-6b79-4392-8163-0ba69b9f4af8">
              <profile xsi:type="esdl:SingleValue" id="d0e1e34b-58b6-4f90-8e93-6f836933c579" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5fffc540-5db1-41dd-96c4-d99a6d46ca8e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="bb5c0f60-6b79-4392-8163-0ba69b9f4af8" name="InPort" id="234e2f17-8e28-4463-87c9-750ae11f0b18"/>
            <port xsi:type="esdl:OutPort" connectedTo="2e8ea05c-f7f1-42e9-a488-a55547fa4d6d" name="OutPort" id="10a0d916-3f2a-4793-9069-85520f59e485"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="a25fa486-43ca-4574-a41e-37f387ad82d2" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="bb5c0f60-6b79-4392-8163-0ba69b9f4af8" name="InPort" id="23a854ca-972a-47af-8a0f-34a5b84c2cfd"/>
            <port xsi:type="esdl:OutPort" connectedTo="51aaccc1-feef-4863-a559-89184cc768d1" name="OutPort" id="eb0d3296-71f0-4d14-bb07-7dbdaf6d3e3d"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640100" scope="NEIGHBOURHOOD">
        <KPIs id="89b260eb-4e50-4bcc-a807-c096c46cef30">
          <kpi xsi:type="esdl:DoubleKPI" id="daf8e60a-9c79-4621-bdd9-d100e347e12c" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1091663.0" name="woning_nat_meerkost" id="666111d8-5760-4eb9-bbcb-60a0328b92cc">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="285.0" name="woning_nat_meerkost_co2" id="d9cb1a2e-e1c3-48d2-a7e8-763602ebd5a8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="574.0" name="woning_nat_meerkost_weq" id="025d152d-5caf-4f85-8c92-2deb20fe19f2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ee4a85cf-613d-4167-9af5-b9c72453c990" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1091663.0" name="util_nat_meerkost" id="8df46c80-04e0-4a1c-8f02-bd6b4449b038">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="285.0" name="util_nat_meerkost_co2" id="33dbc572-fb25-4634-9aee-0dd223864220">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="574.0" name="util_nat_meerkost_weq" id="524f0d5a-ec5f-4a51-a8d5-b67c841d5f18">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1727" id="d32a8297-a88a-46f0-aaa0-ada1bd5ff9ab" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.2368268674001158"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7631731325998842"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28131366666666" lon="6.789217333333333"/>
          <asset xsi:type="esdl:EConnection" id="0f1746a2-298f-46a5-9f4a-1916f0aaf89a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="20d4d350-1ca2-47be-8de3-6910fded11fc" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="96f88c43-343a-4076-9b12-5733192fb446" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="31ac6be3-b571-4f1d-a559-03b5c25dbd5b 7550735a-c61d-4cd0-bc6b-fc1d3ec15532" name="OutPort" id="296f639a-ce7d-43d6-b120-9f9e4a67a1de"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c862b99f-6907-41f8-b35d-fd76be3bea45" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="e2786f3b-84c2-4c69-b3d0-37edd0b99a8b" name="InPort" connectedTo="03768784-fb8e-40b0-ae92-8fe646847840">
              <profile xsi:type="esdl:SingleValue" id="10f3f4ea-006a-4ace-8a5e-2bf1c1aaedc9" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c0ebd362-2b47-46da-9c56-f0fd4bb5fe4e" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="828d92de-c796-49a1-90f0-8f5908f341a4">
              <profile xsi:type="esdl:SingleValue" id="453b71cb-ba54-437f-afa3-e6e9522db78a" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ee3fcd40-c98f-4bdb-a8a0-f020ee880c8d" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="31ac6be3-b571-4f1d-a559-03b5c25dbd5b" name="InPort" connectedTo="296f639a-ce7d-43d6-b120-9f9e4a67a1de">
              <profile xsi:type="esdl:SingleValue" id="672b61b2-d9cb-4802-8abc-0fda8200f294" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f8bae6d7-5dc2-45cb-9c30-8e00b68049d6" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="296f639a-ce7d-43d6-b120-9f9e4a67a1de" name="InPort" id="7550735a-c61d-4cd0-bc6b-fc1d3ec15532"/>
            <port xsi:type="esdl:OutPort" connectedTo="e2786f3b-84c2-4c69-b3d0-37edd0b99a8b" name="OutPort" id="03768784-fb8e-40b0-ae92-8fe646847840"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="318" floorArea="22717.0" id="342c7d68-c031-4f17-8c24-78c765c3ad33" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.277537333333335" lon="6.7938"/>
          <asset xsi:type="esdl:EConnection" id="00a77c73-945e-4913-a773-f80de50ca052" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="24670b92-c52b-4972-9ef8-abd0e968fc36" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="66f7d515-cf87-494b-8ade-23079c20064d" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="62fc1815-eac8-45f2-a8d1-9758c6e382b9 88301c4a-3816-436e-8fc7-736b4261e733 4ba318d8-8b17-4882-8a91-4dcde58630ea" name="OutPort" id="97461539-5b1f-4fe7-87c2-7c9c3fac58c4"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a437c16d-ffce-4781-b6a5-b2b29adb57eb" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="2e60b286-d057-4ff5-adf6-6679ba991ace" name="InPort" connectedTo="e4d5c114-cafb-408e-90c9-9a12d57338f8">
              <profile xsi:type="esdl:SingleValue" id="1f38e7f9-7eb2-4254-90cc-6915d0fe1f12" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="416af516-d898-421b-8fa7-2b7a069570d9" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="0fcf9e9b-9fb7-47c5-8f39-3bd6377e8904" name="InPort" connectedTo="45c1eb35-39a2-44a0-a524-f54f8567b0e4">
              <profile xsi:type="esdl:SingleValue" id="34b7d168-5492-4b7c-bdec-27d989b50f97" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="68793b09-a8a7-4f9c-b9d0-4bda71a10cfb" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="62fc1815-eac8-45f2-a8d1-9758c6e382b9" name="InPort" connectedTo="97461539-5b1f-4fe7-87c2-7c9c3fac58c4">
              <profile xsi:type="esdl:SingleValue" id="c5681b85-5a35-4aec-9191-ac7a82bbd09c" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8c5adced-ab0f-4e28-a263-6652632aad44" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="97461539-5b1f-4fe7-87c2-7c9c3fac58c4" name="InPort" id="88301c4a-3816-436e-8fc7-736b4261e733"/>
            <port xsi:type="esdl:OutPort" connectedTo="2e60b286-d057-4ff5-adf6-6679ba991ace" name="OutPort" id="e4d5c114-cafb-408e-90c9-9a12d57338f8"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="b1b233c1-188a-4fd1-ba6d-f12cae7226b6" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="97461539-5b1f-4fe7-87c2-7c9c3fac58c4" name="InPort" id="4ba318d8-8b17-4882-8a91-4dcde58630ea"/>
            <port xsi:type="esdl:OutPort" connectedTo="0fcf9e9b-9fb7-47c5-8f39-3bd6377e8904" name="OutPort" id="45c1eb35-39a2-44a0-a524-f54f8567b0e4"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640101" scope="NEIGHBOURHOOD">
        <KPIs id="c136f833-caca-4b1d-828a-28bd141441b7">
          <kpi xsi:type="esdl:DoubleKPI" id="d74b8725-a4f6-4304-8a6d-f16a70bae0fe" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1751177.0" name="woning_nat_meerkost" id="5357fade-da37-4dfe-9007-5156c7811c2e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="300.0" name="woning_nat_meerkost_co2" id="445c479f-4641-4f97-8f47-875928d9a64f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="712.0" name="woning_nat_meerkost_weq" id="589d3ebd-013d-449f-aae0-5c9a1a8646ba">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eb5062ce-e170-4ea9-8072-9758ad0b737e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1751177.0" name="util_nat_meerkost" id="0b863c10-c298-4be0-b5df-0e00eb104fd1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="300.0" name="util_nat_meerkost_co2" id="0ebb9d4b-3ca7-495b-9912-b691c476207a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="712.0" name="util_nat_meerkost_weq" id="33cacccf-97e6-4763-aebb-e95c0ee155ee">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1854" id="b3373387-2373-48c6-8a76-f22d35b56259" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.08522114347357065"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9147788565264293"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27297866666667" lon="6.80009825"/>
          <asset xsi:type="esdl:EConnection" id="1d3d0768-3fb4-4989-8524-d5b5d75d6c60" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba9ba009-e802-477f-9129-9e05f2e1abeb" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="37ab3912-1cbf-4cd9-a6bf-e37b292fca93" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="36568bb9-2e97-4121-9b3c-2cf59dacd811 a7cea22a-1bf5-4f6e-b894-cc5c3712a73a" name="OutPort" id="742e8298-164c-4596-820b-bf8b61340776"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="422ed166-61d3-4a42-86a2-4588fd1e4987" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="09a6ae6f-8454-4f20-88e0-71c5408ae0ce" name="InPort" connectedTo="690f65cf-3b73-4150-9a12-0d35ced727d7">
              <profile xsi:type="esdl:SingleValue" id="eaf7cc4c-894f-4775-90b3-df99e842cec5" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1329b2b1-5223-468b-b68b-396f07f76690" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="af7a9977-0f24-44fc-ba5f-a83ee25e2a49">
              <profile xsi:type="esdl:SingleValue" id="dc3d7210-8055-4f53-9b65-acba6938d2ac" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="46df1265-00fd-4da3-8733-5fdd0769f56e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="36568bb9-2e97-4121-9b3c-2cf59dacd811" name="InPort" connectedTo="742e8298-164c-4596-820b-bf8b61340776">
              <profile xsi:type="esdl:SingleValue" id="8a2f64b8-fd39-436c-8fdb-6ab90b3a7485" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="653d95b1-e3ee-48dd-8b4e-1c40562395dd" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="742e8298-164c-4596-820b-bf8b61340776" name="InPort" id="a7cea22a-1bf5-4f6e-b894-cc5c3712a73a"/>
            <port xsi:type="esdl:OutPort" connectedTo="09a6ae6f-8454-4f20-88e0-71c5408ae0ce" name="OutPort" id="690f65cf-3b73-4150-9a12-0d35ced727d7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="285" floorArea="78842.0" id="645de9ac-1200-4e49-81a3-bd5dc142160c" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26989633333333" lon="6.79242875"/>
          <asset xsi:type="esdl:EConnection" id="ee5389c0-1afa-42fc-be8f-8017824069e5" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="70f30e4c-7aab-44a5-be88-c100d67fc4fc" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="9acb122b-45ab-457e-8efc-04a391bfd39c" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c5c96e41-ecb2-41d3-8f95-8c576fe11e3a 54e1def4-31c4-41f9-bce3-daa621b432f8 1f24419d-bc49-4db0-9ed7-f865dcfd1953" name="OutPort" id="6e2c272f-8aed-433c-9e43-de2b535f478f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e4d37a4e-9d5d-43d3-818d-4561aa206201" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="72ce8b0f-4056-48ba-96e9-2e002e3d5745" name="InPort" connectedTo="cb83be5e-9573-41c5-96ef-e35d065f00df">
              <profile xsi:type="esdl:SingleValue" id="396f56b5-258a-4766-a2c0-85c49905b6b5" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="af01c0d5-f128-46d9-813f-85defd025f8e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="8fbd48c9-4b31-4cca-b1da-c73032aaa3a3" name="InPort" connectedTo="414316be-f2bf-4365-9731-1e43cde08ab6">
              <profile xsi:type="esdl:SingleValue" id="02aa3a71-d0a9-4e93-8089-a1ffab901a97" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1fd58cbe-a65b-4d95-ba1e-4d1e09be3e00" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c5c96e41-ecb2-41d3-8f95-8c576fe11e3a" name="InPort" connectedTo="6e2c272f-8aed-433c-9e43-de2b535f478f">
              <profile xsi:type="esdl:SingleValue" id="1797b776-d740-4700-8993-d6b009b484bd" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5c2fa3c6-986f-427b-b759-8bae8ff6c220" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6e2c272f-8aed-433c-9e43-de2b535f478f" name="InPort" id="54e1def4-31c4-41f9-bce3-daa621b432f8"/>
            <port xsi:type="esdl:OutPort" connectedTo="72ce8b0f-4056-48ba-96e9-2e002e3d5745" name="OutPort" id="cb83be5e-9573-41c5-96ef-e35d065f00df"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="883cc68a-f29f-4881-80f1-8a78ebccc7da" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6e2c272f-8aed-433c-9e43-de2b535f478f" name="InPort" id="1f24419d-bc49-4db0-9ed7-f865dcfd1953"/>
            <port xsi:type="esdl:OutPort" connectedTo="8fbd48c9-4b31-4cca-b1da-c73032aaa3a3" name="OutPort" id="414316be-f2bf-4365-9731-1e43cde08ab6"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640102" scope="NEIGHBOURHOOD">
        <KPIs id="ee06037c-b3a2-4736-b18d-e737b5b3cd65">
          <kpi xsi:type="esdl:DoubleKPI" id="607c4c4c-7f0b-47bc-a03e-83b4f07602ce" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1323806.0" name="woning_nat_meerkost" id="c5428f82-5649-4aab-841e-9f03de4f13bd">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="344.0" name="woning_nat_meerkost_co2" id="c67de7b5-4b71-4530-aa94-49de65585cbe">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="871.0" name="woning_nat_meerkost_weq" id="6a45e73a-c4d5-40a6-a45a-bac349983b9e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="40492e5a-a0d1-4073-8155-765cdcf0e294" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1323806.0" name="util_nat_meerkost" id="f40a86d2-b014-401c-b8d7-576a12df18a7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="344.0" name="util_nat_meerkost_co2" id="9acafb87-183f-4d9a-9cfd-caaf8f1f5ad2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="871.0" name="util_nat_meerkost_weq" id="2d04b22b-50d4-4672-9500-5bddd35314a4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1411" id="6f39606e-63bd-4d1e-a60f-f42cfefd54be" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.01559177888022679"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9844082211197732"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.274922000000004" lon="6.7821705"/>
          <asset xsi:type="esdl:EConnection" id="88799b75-e8e6-4d09-925a-3621de69ea3a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4a23102a-c0ea-46ca-89d1-fb4ac3f92835" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3b870ecf-595f-4a77-af49-fe12ac0c7d75" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="3c44a9c9-7056-42ac-8268-b2abc791b682 49c28b77-4f0f-4e73-88e0-cd8d60491f1c 1fcd71d0-969a-40e1-81a7-9a87149fc100" name="OutPort" id="11d12fbe-4260-40ff-8593-74ca1ac74102"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d4e677b8-2cf2-451b-9185-67525788070c" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="6c5ae0df-b72b-4e5b-afe1-e4c134dcb622" name="InPort" connectedTo="54e2975f-5a10-480c-babd-cf915038da14">
              <profile xsi:type="esdl:SingleValue" id="8d0b6647-d1a9-4e7a-a712-fa828713e2b1" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="24b3117b-a0b7-45db-95a7-e1f221e76d07" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3c226e05-d318-45c6-8a06-56ad0dc3ec60">
              <profile xsi:type="esdl:SingleValue" id="da04d8fc-a470-4aed-86c9-048e865f5bfb" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="45196aba-6b78-4554-af29-929f1427f577" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="3c44a9c9-7056-42ac-8268-b2abc791b682" name="InPort" connectedTo="11d12fbe-4260-40ff-8593-74ca1ac74102">
              <profile xsi:type="esdl:SingleValue" id="54a85dd0-6585-4b7e-a7a8-140bce4a269c" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="dabc5d5b-0bcf-4e1e-8ed3-756c39b74340" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="49c28b77-4f0f-4e73-88e0-cd8d60491f1c" name="InPort" connectedTo="11d12fbe-4260-40ff-8593-74ca1ac74102">
              <profile xsi:type="esdl:SingleValue" id="b33aee6f-bc8f-4320-a376-569e2541ebf2" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4dd80709-dde8-4102-b57a-328b386fed2b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="11d12fbe-4260-40ff-8593-74ca1ac74102" name="InPort" id="1fcd71d0-969a-40e1-81a7-9a87149fc100"/>
            <port xsi:type="esdl:OutPort" connectedTo="6c5ae0df-b72b-4e5b-afe1-e4c134dcb622" name="OutPort" id="54e2975f-5a10-480c-babd-cf915038da14"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="103" floorArea="14102.0" id="7bcb2536-494a-4817-a1d5-1d6c88b73a4e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.277703" lon="6.785709000000001"/>
          <asset xsi:type="esdl:EConnection" id="00ede1d1-7f23-48fc-8b04-b19a1f5368a6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="899d42da-e675-4918-8e89-9ebc6df1c807" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="a7bb4aa1-4355-4166-b807-023f9fa15ced" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="fb5c0c0d-c53f-420b-a50d-24df53325285 c338ca6c-9085-4f34-812b-7891c55b177b f30df629-d2e8-4b61-8a4a-92474c3e42d6" name="OutPort" id="edff0c2a-8287-450f-b544-0d4e762725d4"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="25d8b4c0-374f-4339-8127-56e34cc3d07b" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="ce77c257-0226-41f3-8e58-5888cc9f901a" name="InPort" connectedTo="c172edf9-074d-4e5a-9a52-635954383950">
              <profile xsi:type="esdl:SingleValue" id="286480a2-c485-4c7e-8e35-cc69a697e79c" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="afa29a52-8415-413b-9be8-57a8dc7112ad" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="08636493-9c2f-4669-955c-ba81a3674d27" name="InPort" connectedTo="84b3a66a-1071-4012-9224-6d46553396a2">
              <profile xsi:type="esdl:SingleValue" id="45efd521-1821-4212-ab87-4b906d06a30e" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="004fb549-77ca-479e-9e62-334e3b7f0b9e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="fb5c0c0d-c53f-420b-a50d-24df53325285" name="InPort" connectedTo="edff0c2a-8287-450f-b544-0d4e762725d4">
              <profile xsi:type="esdl:SingleValue" id="3d6ba2f5-527c-4fed-ae34-34cc9b640935" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4f2edccc-e5a9-443d-862a-38761ae3af2c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="edff0c2a-8287-450f-b544-0d4e762725d4" name="InPort" id="c338ca6c-9085-4f34-812b-7891c55b177b"/>
            <port xsi:type="esdl:OutPort" connectedTo="ce77c257-0226-41f3-8e58-5888cc9f901a" name="OutPort" id="c172edf9-074d-4e5a-9a52-635954383950"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="b07e968a-7815-459f-9a01-9aad982bb0a4" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="edff0c2a-8287-450f-b544-0d4e762725d4" name="InPort" id="f30df629-d2e8-4b61-8a4a-92474c3e42d6"/>
            <port xsi:type="esdl:OutPort" connectedTo="08636493-9c2f-4669-955c-ba81a3674d27" name="OutPort" id="84b3a66a-1071-4012-9224-6d46553396a2"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640103" scope="NEIGHBOURHOOD">
        <KPIs id="4bb19926-eafa-412f-806f-b86828830936">
          <kpi xsi:type="esdl:DoubleKPI" id="3a451f83-16c6-49c4-bab5-73cd804fbaba" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="153002.0" name="woning_nat_meerkost" id="3d4fb330-4d4a-4c0b-a062-2a70a2cf2777">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="386.0" name="woning_nat_meerkost_co2" id="7dadeb95-2b1b-4658-b5a6-1357836868b8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="892.0" name="woning_nat_meerkost_weq" id="b9c2963c-3586-4d35-890f-7bbe17f2be0d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="74ca517d-3965-4ff4-a917-880b727c82d4" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="153002.0" name="util_nat_meerkost" id="da842b45-7121-4d02-bb2d-513171c2dbcf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="386.0" name="util_nat_meerkost_co2" id="3029a2bc-a780-45e5-9410-9fcf86d83f9b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="892.0" name="util_nat_meerkost_weq" id="5bc0fbb9-e683-4263-8c41-1ddda1c68d79">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="28" id="04362616-57cd-4e39-8482-bc1bc51cd987" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.10714285714285714"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8928571428571429"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28003833333334" lon="6.8087646"/>
          <asset xsi:type="esdl:EConnection" id="3ccbc3cf-2bc1-4793-9d74-2af5f6eb7263" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="602e4880-46db-4bf0-8ec9-6fcb9cabbb43" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="f7770604-67cc-41b3-8eed-a588a07a2f0d" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="2a46ce6c-9cca-4bb6-8f3d-1e5a5dbc01b3 454249e1-911e-4d64-ac68-b5d9211c5052" name="OutPort" id="ef23aebf-31a1-4920-ac36-cb8ce265f1b1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="37ff9007-d98b-4c16-8172-7109ad37ff66" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="785d8318-dc5a-4206-be73-f7cd4cbf098a" name="InPort" connectedTo="54abf898-ff16-446f-9d56-f0af73149a66">
              <profile xsi:type="esdl:SingleValue" id="21ad30fd-388f-470d-be7e-3fe47b53b710" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e9a03a96-a894-4e55-a465-d21ef8e92dc4" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="945541fc-995e-4951-8e46-7b2fbc22ac19">
              <profile xsi:type="esdl:SingleValue" id="c23b63e6-17ea-419f-8640-7a1a1d139fc6" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="36fc1cdb-5f62-4144-8db6-1287c305e268" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2a46ce6c-9cca-4bb6-8f3d-1e5a5dbc01b3" name="InPort" connectedTo="ef23aebf-31a1-4920-ac36-cb8ce265f1b1">
              <profile xsi:type="esdl:SingleValue" id="e59b4319-9371-4ee8-a20e-1ae4003a5a23" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3442dae8-dd4c-4e38-8114-e37aa9947301" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ef23aebf-31a1-4920-ac36-cb8ce265f1b1" name="InPort" id="454249e1-911e-4d64-ac68-b5d9211c5052"/>
            <port xsi:type="esdl:OutPort" connectedTo="785d8318-dc5a-4206-be73-f7cd4cbf098a" name="OutPort" id="54abf898-ff16-446f-9d56-f0af73149a66"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="22" floorArea="18663.0" id="2852abd0-1bfc-4278-a02d-8e25a3ed1e28" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.281717666666665" lon="6.8105348"/>
          <asset xsi:type="esdl:EConnection" id="f3d1134e-95d9-45fc-8815-cfb1d93a64fa" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d3770bf4-1905-4525-aee0-03f7448fb4ea" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="50a924e6-2dcf-40da-a35a-4f3d745c8fde" value="57.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="ac8c3a97-ebd7-45d6-b611-c7b8b61fc0b2 7d6c77cf-01f8-4d69-bdee-e52614c09762 2c748411-361c-44ca-8cde-49b158120862" name="OutPort" id="4cd3da1d-a6e6-417a-9c2e-6b448422ca98"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="29fcbb67-f063-483a-bb7b-aefa722d7db9" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="73c46d64-e874-422e-876c-00c0a59aba08" name="InPort" connectedTo="f0cb3f1c-5c3e-4133-a82c-fc6f7a547e00">
              <profile xsi:type="esdl:SingleValue" id="60bfeff5-d1e1-4afb-be52-23cf4400826d" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4fa503a0-665e-47ba-b50f-be06a6e60ca0" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="3a878ae9-5250-403c-aa2e-ac4be1e3f877" name="InPort" connectedTo="d81b56ab-3a1a-4a30-bc19-c4d103720b5a">
              <profile xsi:type="esdl:SingleValue" id="df3ea227-d010-42b5-a6f9-685cb95cdd6f" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d070bb85-09b9-4f3f-a1c5-71a46b21e25e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ac8c3a97-ebd7-45d6-b611-c7b8b61fc0b2" name="InPort" connectedTo="4cd3da1d-a6e6-417a-9c2e-6b448422ca98">
              <profile xsi:type="esdl:SingleValue" id="f2b2d299-cbd0-44b6-b6ed-453bfd67cb32" value="50.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="216188f5-d00d-49f3-b80d-e099dd76ada8" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4cd3da1d-a6e6-417a-9c2e-6b448422ca98" name="InPort" id="7d6c77cf-01f8-4d69-bdee-e52614c09762"/>
            <port xsi:type="esdl:OutPort" connectedTo="73c46d64-e874-422e-876c-00c0a59aba08" name="OutPort" id="f0cb3f1c-5c3e-4133-a82c-fc6f7a547e00"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="a99ae895-c062-41f7-bb16-bf23aa18e14a" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4cd3da1d-a6e6-417a-9c2e-6b448422ca98" name="InPort" id="2c748411-361c-44ca-8cde-49b158120862"/>
            <port xsi:type="esdl:OutPort" connectedTo="3a878ae9-5250-403c-aa2e-ac4be1e3f877" name="OutPort" id="d81b56ab-3a1a-4a30-bc19-c4d103720b5a"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640200" scope="NEIGHBOURHOOD">
        <KPIs id="5bad33e0-22f7-4f02-84ea-890f8be7ef77">
          <kpi xsi:type="esdl:DoubleKPI" id="f2d66680-988a-4584-a5e1-1f5e239715cb" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1426972.0" name="woning_nat_meerkost" id="eeb6303d-f939-4214-b263-4172ad3c02c7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="311.0" name="woning_nat_meerkost_co2" id="d1b550d9-2c51-4f18-8d40-00723bd9993d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="639.0" name="woning_nat_meerkost_weq" id="b0d7f9bb-b0f8-47cb-9fd7-a62c4c5cac6b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="da6dadc3-1638-4717-803d-98bf0a2173f1" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1426972.0" name="util_nat_meerkost" id="7b6a7fbe-7b05-4e71-9251-76bf19d0e6f6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="311.0" name="util_nat_meerkost_co2" id="e18011fc-1d14-4c46-8103-6c5358a989b4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="639.0" name="util_nat_meerkost_weq" id="5d4d9a74-ed28-49a3-9e01-82b3fcb51db6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2044" id="fa29e8b1-e646-4820-a677-4e63bf9f519e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.20303326810176126"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7969667318982387"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.275363" lon="6.818809399999999"/>
          <asset xsi:type="esdl:EConnection" id="e136bf45-f6fd-47ff-9746-07819e078da2" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c532c2f8-2427-4e67-9fe6-14353e0a0fbb" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="9f9c1b57-0e99-48f6-b29a-80d24e5333e1" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="d6f93e5b-abb2-423f-a966-633954b5381d b004724e-d296-4120-95dd-a14f81066475 e184f25e-f8d7-484b-9588-a8da951a0755" name="OutPort" id="256e2e36-74cd-4848-8dc9-6d9fbd82656d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="489d36ae-30d1-42ff-a60d-845747ad1734" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="1022e352-e98d-409f-8359-41b93c016869" name="InPort" connectedTo="75d84ec7-6c7a-4643-810a-090e836aa7f7">
              <profile xsi:type="esdl:SingleValue" id="c6471452-bf1c-4065-aa21-2cd9332934b2" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="57af879e-4a79-4216-b65c-3e01e73c43b9" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="928df87e-5440-4563-a65a-30ebab36bab0">
              <profile xsi:type="esdl:SingleValue" id="c2574902-42de-4c11-b79f-6b114664112f" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5e50f8bf-b625-46f7-8eb1-6967a3a8a5ac" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="d6f93e5b-abb2-423f-a966-633954b5381d" name="InPort" connectedTo="256e2e36-74cd-4848-8dc9-6d9fbd82656d">
              <profile xsi:type="esdl:SingleValue" id="74fddca2-d295-4f8e-b930-900f0db9ad93" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="471a7890-4cf8-4b13-9a8c-94c811e448bb" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b004724e-d296-4120-95dd-a14f81066475" name="InPort" connectedTo="256e2e36-74cd-4848-8dc9-6d9fbd82656d">
              <profile xsi:type="esdl:SingleValue" id="972661d0-53ea-44a5-b24b-dd70141e5321" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9577ba4a-35bc-4aba-a1c3-4ebd4adde929" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="256e2e36-74cd-4848-8dc9-6d9fbd82656d" name="InPort" id="e184f25e-f8d7-484b-9588-a8da951a0755"/>
            <port xsi:type="esdl:OutPort" connectedTo="1022e352-e98d-409f-8359-41b93c016869" name="OutPort" id="75d84ec7-6c7a-4643-810a-090e836aa7f7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="415" floorArea="24700.0" id="4a68e880-7f7c-4c77-9e3e-0e74813c92eb" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.272159" lon="6.810376199999999"/>
          <asset xsi:type="esdl:EConnection" id="958c52c2-5a6a-4cbb-a00a-983190e30a63" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="df699f6a-31bb-454c-838d-15c55ea0a487" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="d95077b6-37b4-48ba-a046-9a72bea30f8f" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="e9f71430-1cf4-4eb0-803e-f1c449786cf2 2d0bbf08-6b92-4169-b63b-0f9ec0bdb946 c2394db6-25b0-49fd-8c9f-11553009d9f0" name="OutPort" id="aca62412-96c4-4b37-a600-26db439e1a17"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="03f1ee28-2fbd-4fc0-be3c-232af6fb2950" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="214b4b39-2c01-4347-8446-001f28bf0207" name="InPort" connectedTo="2ad7f345-07e9-4490-a8b8-0f5f9d67a2c7">
              <profile xsi:type="esdl:SingleValue" id="141bb144-371a-4e7d-bcd5-e857ee70f333" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="e8452c04-0ea7-491f-93e6-250117f64cb5" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="aeb2ab7a-0655-48db-9e19-ffc9ebdc5227" name="InPort" connectedTo="0b961fb9-ebf5-4a33-aa15-b5ea584953b6">
              <profile xsi:type="esdl:SingleValue" id="710808a0-0e23-4c71-9a7c-0617e39169e5" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5b8f03d1-f5b6-4041-967b-dd052407df79" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9f71430-1cf4-4eb0-803e-f1c449786cf2" name="InPort" connectedTo="aca62412-96c4-4b37-a600-26db439e1a17">
              <profile xsi:type="esdl:SingleValue" id="a11ae08b-c4d5-4b7e-9f44-b92b93c67ae7" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f9f2ef3f-e2e4-44cd-8538-74df889539c2" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="aca62412-96c4-4b37-a600-26db439e1a17" name="InPort" id="2d0bbf08-6b92-4169-b63b-0f9ec0bdb946"/>
            <port xsi:type="esdl:OutPort" connectedTo="214b4b39-2c01-4347-8446-001f28bf0207" name="OutPort" id="2ad7f345-07e9-4490-a8b8-0f5f9d67a2c7"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="47cc8c1e-82a0-431a-9be2-e7481c392bca" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="aca62412-96c4-4b37-a600-26db439e1a17" name="InPort" id="c2394db6-25b0-49fd-8c9f-11553009d9f0"/>
            <port xsi:type="esdl:OutPort" connectedTo="aeb2ab7a-0655-48db-9e19-ffc9ebdc5227" name="OutPort" id="0b961fb9-ebf5-4a33-aa15-b5ea584953b6"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640201" scope="NEIGHBOURHOOD">
        <KPIs id="13e69101-e45b-4e58-9b43-d002ed0d8a4b">
          <kpi xsi:type="esdl:DoubleKPI" id="42263452-6422-4a72-8ef0-6e9bb8e20a38" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="914583.0" name="woning_nat_meerkost" id="7eb5820b-fec2-4847-9912-7c67c46d5efe">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="325.0" name="woning_nat_meerkost_co2" id="28419feb-dffb-4531-bcbb-ff09354fe45d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="851.0" name="woning_nat_meerkost_weq" id="1d336acb-5411-42a4-86c7-19c73065e766">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0ed7f569-d118-4c04-958b-6d16a26805d0" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="914583.0" name="util_nat_meerkost" id="f9e14898-8dbc-4f27-b4cd-e7055741c408">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="325.0" name="util_nat_meerkost_co2" id="bf6fe548-35d0-4d3a-861b-4ef562dc899a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="851.0" name="util_nat_meerkost_weq" id="575e46b3-5c2f-4420-97fd-a207f1591748">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="919" id="24903904-7740-4599-b02d-bce5fe6a03df" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.1305767138193689"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8694232861806311"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.268953749999994" lon="6.805422999999999"/>
          <asset xsi:type="esdl:EConnection" id="ca19c603-a488-4428-9c1e-1e29037e91e3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="83d4d212-f090-47cf-b41c-215a25de29b3" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="f163d61a-47ae-4d41-bd6a-eb5b5c23ac3b" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="2129fb8e-39ac-465c-8536-08723bbb1e2e b6fdffee-6636-4c38-8101-4bde998e390e ff75f1d3-f03c-497e-988f-81e992158282" name="OutPort" id="6f6ae58e-d155-4488-8e8b-20d8fdbef600"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="24060c52-4131-4472-a87b-2f172f7e2118" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3adf26c4-3961-4635-9e57-1b0af504c680" name="InPort" connectedTo="ce87187b-fed7-4f18-9695-6f8a09ada6a5">
              <profile xsi:type="esdl:SingleValue" id="cd50a2ad-e967-4c05-a426-8f7b80931f8a" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="224dc13b-c869-4390-bd90-cdd45ddb17fb" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7f857f19-4589-4773-a23c-ddb2abc3569d">
              <profile xsi:type="esdl:SingleValue" id="4b97f482-2e19-4089-afe6-fe99f49e2446" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2c4d593a-2a91-4bd5-a0e3-16326a75e41d" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="2129fb8e-39ac-465c-8536-08723bbb1e2e" name="InPort" connectedTo="6f6ae58e-d155-4488-8e8b-20d8fdbef600">
              <profile xsi:type="esdl:SingleValue" id="444556ad-6a48-4517-9b28-9e6a95c27f5b" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="50b9fd04-3dd0-4634-8d65-b7feb69f0d87" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b6fdffee-6636-4c38-8101-4bde998e390e" name="InPort" connectedTo="6f6ae58e-d155-4488-8e8b-20d8fdbef600">
              <profile xsi:type="esdl:SingleValue" id="d5387966-a991-4ecc-8a45-69786007c392" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="15722d1d-7797-4f81-a6e2-1fa5e292521e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6f6ae58e-d155-4488-8e8b-20d8fdbef600" name="InPort" id="ff75f1d3-f03c-497e-988f-81e992158282"/>
            <port xsi:type="esdl:OutPort" connectedTo="3adf26c4-3961-4635-9e57-1b0af504c680" name="OutPort" id="ce87187b-fed7-4f18-9695-6f8a09ada6a5"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="114" floorArea="20232.0" id="051f9ebe-9245-4aec-aac2-983d3647c732" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2668275" lon="6.8080555"/>
          <asset xsi:type="esdl:EConnection" id="ac47aff1-a3e7-4f88-97f9-0e759516d0be" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a4ec155a-192f-42c1-b2ca-f4ac08b02832" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1a12991e-db96-4060-a61b-d6c795fc9ab1" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0665499f-1888-4f0a-a576-43bd292213bd 07881e2f-e271-48ba-a5a7-00c513adae55 4e182c26-b50e-4521-8008-7509ced246f6" name="OutPort" id="fd2e1440-7d57-49d1-9f58-c093c2dc18dc"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="672daf4a-ed63-4f30-91cc-d26e5b959d42" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="0a3d0d81-748d-436a-855f-eb690ebc6c28" name="InPort" connectedTo="e8492152-fba9-4f11-9d97-f381721c1443">
              <profile xsi:type="esdl:SingleValue" id="cabc737b-4307-443e-b149-e4d933479d31" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0431498a-f00c-4106-95b0-69f31f8146c2" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="f9fb6d8a-ebda-49f8-9fd2-ac15f465fe74" name="InPort" connectedTo="de627fc6-2d8b-41c8-8335-e5a9eb69f633">
              <profile xsi:type="esdl:SingleValue" id="7d7f1585-2493-41bd-bdcd-2e2812aff486" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d15c2c3f-94b7-44ec-8c6f-e022d1c8ffc2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0665499f-1888-4f0a-a576-43bd292213bd" name="InPort" connectedTo="fd2e1440-7d57-49d1-9f58-c093c2dc18dc">
              <profile xsi:type="esdl:SingleValue" id="d37186f9-1e9c-4d3e-90d3-c016d8b5546a" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="15d8789d-7de1-40b7-be3e-5dc1cf98aeea" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="fd2e1440-7d57-49d1-9f58-c093c2dc18dc" name="InPort" id="07881e2f-e271-48ba-a5a7-00c513adae55"/>
            <port xsi:type="esdl:OutPort" connectedTo="0a3d0d81-748d-436a-855f-eb690ebc6c28" name="OutPort" id="e8492152-fba9-4f11-9d97-f381721c1443"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="cb71aba1-5f91-47f7-8ff5-fe7040159b28" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="fd2e1440-7d57-49d1-9f58-c093c2dc18dc" name="InPort" id="4e182c26-b50e-4521-8008-7509ced246f6"/>
            <port xsi:type="esdl:OutPort" connectedTo="f9fb6d8a-ebda-49f8-9fd2-ac15f465fe74" name="OutPort" id="de627fc6-2d8b-41c8-8335-e5a9eb69f633"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640202" scope="NEIGHBOURHOOD">
        <KPIs id="7bf86336-94ec-4447-a2a2-001b7be5e019">
          <kpi xsi:type="esdl:DoubleKPI" id="6a3c3ce7-4820-4251-a3a5-33e6243ef268" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="893261.0" name="woning_nat_meerkost" id="6f0da0a9-93bf-432e-92d4-322ffd8f7c0a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="337.0" name="woning_nat_meerkost_co2" id="8d7b3351-22b7-4434-b0fa-cc7bd6738057">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="702.0" name="woning_nat_meerkost_weq" id="0d1d3ae2-5212-4aac-8f8f-32ddaaa1575c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f9d9a156-c8c4-4eda-856d-7e133fe5986f" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="893261.0" name="util_nat_meerkost" id="6f7cda65-a188-4138-865a-ceced8209dc9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="337.0" name="util_nat_meerkost_co2" id="eb9efe1a-eaf0-48fe-97e4-4930308a3d4a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="702.0" name="util_nat_meerkost_weq" id="23f2405e-6bf0-449e-bba2-789221f411b7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1184" id="c790dcda-c03d-4ed0-b381-e1b19220db13" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.03462837837837838"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9653716216216216"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.270571000000004" lon="6.812774"/>
          <asset xsi:type="esdl:EConnection" id="6f6b8940-a999-4bbe-86b1-2f252f2c5897" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1997bfbd-da83-4adf-8e22-b12468fc7597" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="2b654c7c-fd78-4e49-856f-9a2e6737a072" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="08287680-5024-4ada-922a-f6eaf715cc3b 5db9a062-99b0-4f53-b647-353c34744537 0839430b-fe03-4a45-82a9-2b3ae9b839ee" name="OutPort" id="6539c173-4a3d-4689-9072-298a1bf0c26e"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7fce1cc2-92f7-4d51-b676-67faa92d1000" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="0052d2aa-ecfc-42b8-8b95-c5bf6758390e" name="InPort" connectedTo="48146183-20ab-4b51-8b83-24fc492ba7d8">
              <profile xsi:type="esdl:SingleValue" id="436d0e61-9f9b-4de5-8dc7-e0fb06d53e1c" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a7b973d6-b22b-4dfa-8c9f-7da89c1e8c2e" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8f5932d1-6072-4f72-88b8-b83df0aff315">
              <profile xsi:type="esdl:SingleValue" id="272e0aa5-0feb-4bd3-8fd2-7ceab91c7d7c" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c1d13874-6aa1-48a8-925f-b52988b461a2" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="08287680-5024-4ada-922a-f6eaf715cc3b" name="InPort" connectedTo="6539c173-4a3d-4689-9072-298a1bf0c26e">
              <profile xsi:type="esdl:SingleValue" id="5b0023a6-088c-40fe-8a97-ced159c36079" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="43252983-5612-45b6-bf77-01e44fa2fe13" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="5db9a062-99b0-4f53-b647-353c34744537" name="InPort" connectedTo="6539c173-4a3d-4689-9072-298a1bf0c26e">
              <profile xsi:type="esdl:SingleValue" id="50afbb1c-4c29-49de-afb7-22290f8f1b3a" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="02431726-8355-41cc-a4c2-64be88d8d619" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6539c173-4a3d-4689-9072-298a1bf0c26e" name="InPort" id="0839430b-fe03-4a45-82a9-2b3ae9b839ee"/>
            <port xsi:type="esdl:OutPort" connectedTo="0052d2aa-ecfc-42b8-8b95-c5bf6758390e" name="OutPort" id="48146183-20ab-4b51-8b83-24fc492ba7d8"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="151" floorArea="11597.0" id="c20ba507-75d4-420c-a3f7-3d96d08a40f6" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.270571000000004" lon="6.815109"/>
          <asset xsi:type="esdl:EConnection" id="54a89f2a-28d3-427e-919a-d82e9fd57f22" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="84744d1b-bbc8-4f10-aa1d-fa8915e020d0" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="84b654cd-0bc0-475f-8323-3e5e1ddd17f0" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c2e89979-44ab-4814-a65c-114cf35e89f7 5e004448-5cc9-4672-b8f4-07c3091ee1d4 13ac0a45-afdf-43e1-ac18-6a91a3ca89a3" name="OutPort" id="a8d46710-0d10-48b1-9d17-9d230803dc12"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="68a982b1-6ec8-4439-81d9-2745800750f0" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="d7a2d92a-f2ba-475b-a7de-e5bc9e394a3a" name="InPort" connectedTo="4b83893a-b229-4022-a0c6-fd04a49ce5f9">
              <profile xsi:type="esdl:SingleValue" id="2c87b314-df01-4610-afd8-1072b37a3da1" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="7e650574-9276-48d6-bb7b-be0e4ba11a7a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="3eefdb8c-f862-4a07-80d1-2589e186175d" name="InPort" connectedTo="e8ce3b0a-d2f3-4c31-a24e-3eed8ea7cb5a">
              <profile xsi:type="esdl:SingleValue" id="215ccf3f-a8a0-4792-8d0b-840ff44fe573" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="69460f26-0d9a-412d-b298-63d78d3cd2b4" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c2e89979-44ab-4814-a65c-114cf35e89f7" name="InPort" connectedTo="a8d46710-0d10-48b1-9d17-9d230803dc12">
              <profile xsi:type="esdl:SingleValue" id="239f3787-bfe8-4bfe-8e94-f4451b237844" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="cd453299-40fb-4472-b26d-81170a0f6fd7" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a8d46710-0d10-48b1-9d17-9d230803dc12" name="InPort" id="5e004448-5cc9-4672-b8f4-07c3091ee1d4"/>
            <port xsi:type="esdl:OutPort" connectedTo="d7a2d92a-f2ba-475b-a7de-e5bc9e394a3a" name="OutPort" id="4b83893a-b229-4022-a0c6-fd04a49ce5f9"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="fc2a0c4a-7edd-4ac9-8017-0ddfba768b75" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a8d46710-0d10-48b1-9d17-9d230803dc12" name="InPort" id="13ac0a45-afdf-43e1-ac18-6a91a3ca89a3"/>
            <port xsi:type="esdl:OutPort" connectedTo="3eefdb8c-f862-4a07-80d1-2589e186175d" name="OutPort" id="e8ce3b0a-d2f3-4c31-a24e-3eed8ea7cb5a"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640203" scope="NEIGHBOURHOOD">
        <KPIs id="28c093ea-dd74-4334-9691-2e3cee88b6a5">
          <kpi xsi:type="esdl:DoubleKPI" id="b5ee8435-09a4-4395-9029-c66deb190625" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="315163.0" name="woning_nat_meerkost" id="129c9ad3-cda2-43fc-9255-dafa7ef85f0e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="218.0" name="woning_nat_meerkost_co2" id="6ac8a7ec-2d7c-48f8-bdf9-35246ca7be8e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="353.0" name="woning_nat_meerkost_weq" id="2a8ef136-56a0-416d-8052-f4e8f23f896d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0130ee50-4f35-4b3b-8797-1bfbb64629be" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="315163.0" name="util_nat_meerkost" id="26f952ea-ba5d-48f5-90cb-7f7d9231ed53">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="218.0" name="util_nat_meerkost_co2" id="3af5924c-cd4b-468d-8791-b20581e00da5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="353.0" name="util_nat_meerkost_weq" id="bdd1a807-6a2b-4345-9510-a3706c4672f5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="854" id="b8d96bcd-c358-4f9c-9f8c-eb065a843124" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.5667447306791569"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.4332552693208431"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.271016333333336" lon="6.8176380000000005"/>
          <asset xsi:type="esdl:EConnection" id="01365488-c280-468f-a0e0-0615801f11d9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="92235252-9320-4a4b-a9c7-64d3ad6187b2" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="06337f49-1d6d-4f24-a526-5b82d5773764" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="102307ec-a24e-493b-bc2d-967b948ffac5 b4db1f28-2813-4d75-9fce-9e280531a2ad" name="OutPort" id="4dbc73ff-4eda-4ea7-b889-95ea5143d304"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f72849fc-485b-4c5d-b3eb-7f040fc374ff" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="acdde800-a93d-4c8b-b0ce-813029b47cfe" name="InPort" connectedTo="0a22b583-4dc3-4a79-afc4-0222a13ecf14">
              <profile xsi:type="esdl:SingleValue" id="b907210a-98a1-4714-97f5-e867210c42d7" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="04f5437a-0b30-47c8-adfe-a57ec39e6fb0" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="63b6885c-45b0-4015-986c-ccf9ad5475b9">
              <profile xsi:type="esdl:SingleValue" id="fe4747ea-52f4-4bfa-8ba7-ceafcaaad26f" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="79186dfc-4440-4958-973d-a25edb91c3ce" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="102307ec-a24e-493b-bc2d-967b948ffac5" name="InPort" connectedTo="4dbc73ff-4eda-4ea7-b889-95ea5143d304">
              <profile xsi:type="esdl:SingleValue" id="5329d9d9-5ca2-4fdb-8e12-a13d6a9fd03b" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f91d5951-0d24-4fe5-84a4-1c0fe6491b93" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4dbc73ff-4eda-4ea7-b889-95ea5143d304" name="InPort" id="b4db1f28-2813-4d75-9fce-9e280531a2ad"/>
            <port xsi:type="esdl:OutPort" connectedTo="acdde800-a93d-4c8b-b0ce-813029b47cfe" name="OutPort" id="0a22b583-4dc3-4a79-afc4-0222a13ecf14"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="106" floorArea="5009.0" id="16184534-aa64-4c79-b7c5-66b93785114e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27301966666666" lon="6.819547"/>
          <asset xsi:type="esdl:EConnection" id="fa1eb39d-92fd-40ee-9c9f-d44e31965462" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1d7ab356-5017-471c-9211-e93b1b404d7f" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1b518698-74e6-47ee-b593-aac32904d664" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c7f3050f-2062-4699-afe3-783b568b92ab 9477344b-314f-4176-a236-4f5f19355e10 885bfddb-9316-4cc3-b47a-f19620f6721a" name="OutPort" id="7422b614-9586-4bd4-ab8b-521a380bfc12"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="56198290-4503-4120-9b82-29db79a8f699" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="6bc6bdf7-0267-43ca-9031-cf7a601b4643" name="InPort" connectedTo="db71a9fa-c95f-4fa5-a026-b6f1e1ac39d2">
              <profile xsi:type="esdl:SingleValue" id="36b901f8-04aa-44a6-927c-db7bea90e086" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="70897676-52e8-4cfe-ab44-c7aca3878ca5" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="72b1659d-5641-4301-9269-1e357f606f4c" name="InPort" connectedTo="76c750c1-049b-4312-809e-1fd923ce7429">
              <profile xsi:type="esdl:SingleValue" id="c6cffb8e-6825-4580-8398-e3197118c9e2" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1ac37418-f970-4df0-8f06-2b95475951ba" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c7f3050f-2062-4699-afe3-783b568b92ab" name="InPort" connectedTo="7422b614-9586-4bd4-ab8b-521a380bfc12">
              <profile xsi:type="esdl:SingleValue" id="ffe2aa46-e583-44b7-b502-4e1ab630f64c" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="cabec24c-dc6d-4dcf-bc46-1f9c9481fa4f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="7422b614-9586-4bd4-ab8b-521a380bfc12" name="InPort" id="9477344b-314f-4176-a236-4f5f19355e10"/>
            <port xsi:type="esdl:OutPort" connectedTo="6bc6bdf7-0267-43ca-9031-cf7a601b4643" name="OutPort" id="db71a9fa-c95f-4fa5-a026-b6f1e1ac39d2"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="bc12d8c8-7d1e-4262-821b-ade92409a034" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="7422b614-9586-4bd4-ab8b-521a380bfc12" name="InPort" id="885bfddb-9316-4cc3-b47a-f19620f6721a"/>
            <port xsi:type="esdl:OutPort" connectedTo="72b1659d-5641-4301-9269-1e357f606f4c" name="OutPort" id="76c750c1-049b-4312-809e-1fd923ce7429"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640204" scope="NEIGHBOURHOOD">
        <KPIs id="b8a5b18f-910b-4669-b065-b8195af0234f">
          <kpi xsi:type="esdl:DoubleKPI" id="f834b422-e2e4-4c06-a289-91b43d59a642" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="30874.0" name="woning_nat_meerkost" id="5df7ae6e-8c36-455e-b0c3-8ac15f593416">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="158.0" name="woning_nat_meerkost_co2" id="9c631007-d3a2-4fc8-aef6-f03253d459c8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="325.0" name="woning_nat_meerkost_weq" id="baac1533-c5b3-42b5-889e-cb45d21759a7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="786258ac-46ca-4d45-be2b-a99202ea6868" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="30874.0" name="util_nat_meerkost" id="4f3c1c5b-01f8-48b9-82c0-e3c6c5f2e9de">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="158.0" name="util_nat_meerkost_co2" id="1516d8cf-de1d-4598-9468-1669300659ab">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="325.0" name="util_nat_meerkost_weq" id="185a726e-3911-4b08-85af-1dadd3a1aaec">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="73" id="6bb5fe2c-4fc9-457e-a90f-ee4ce9f21464" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.8082191780821918"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.1917808219178082"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27397866666667" lon="6.8277280000000005"/>
          <asset xsi:type="esdl:EConnection" id="361b5d87-17f8-4e48-acd3-f7d031ab2996" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="09e3613d-c808-49a6-91cd-5ae322425068" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="7aa6eada-51cd-4bb5-8877-dd0e5743d22a" value="14.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="63f3f6cc-275d-4edc-9e5e-0ee505879898 d94348c4-589f-4956-bf4d-7c0f06fccef0" name="OutPort" id="64c7ba69-c251-48d5-8b18-94cdad9f20be"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a78a318b-1e85-4795-9a67-73bbe9c12e89" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="a08b461f-f69b-4b3f-bb00-35af4b0c79bf" name="InPort" connectedTo="b7bf8c9d-82fd-43d9-aac7-7262c0b8cd20">
              <profile xsi:type="esdl:SingleValue" id="970a4db4-efef-4c92-9b53-712b73f3f001" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="414a6945-228b-4390-8fb2-caff69fbbe35" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fee5ddd3-cab0-49bf-a060-aa8e0affc43f">
              <profile xsi:type="esdl:SingleValue" id="6e419633-6d62-4bad-99bc-4b5c562ca3c7" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="75a500cd-2736-4da4-99f2-8cc54f3595df" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="63f3f6cc-275d-4edc-9e5e-0ee505879898" name="InPort" connectedTo="64c7ba69-c251-48d5-8b18-94cdad9f20be">
              <profile xsi:type="esdl:SingleValue" id="d3935b60-424c-4c31-812f-02dbada8e76e" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b38dcad3-e833-4fef-ac34-62ed3debfdd2" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="64c7ba69-c251-48d5-8b18-94cdad9f20be" name="InPort" id="d94348c4-589f-4956-bf4d-7c0f06fccef0"/>
            <port xsi:type="esdl:OutPort" connectedTo="a08b461f-f69b-4b3f-bb00-35af4b0c79bf" name="OutPort" id="b7bf8c9d-82fd-43d9-aac7-7262c0b8cd20"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="8" floorArea="2858.0" id="c5b54efc-e842-4f4b-a931-011456c3dbc9" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27397866666667" lon="6.8237596"/>
          <asset xsi:type="esdl:EConnection" id="91239fb1-5209-45c2-92da-d830d3a58596" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="2a33802d-555c-401e-91ab-d6083063edf0" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="312c669f-0d32-4fad-8d43-c284b6780b87" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="d6fb8bdc-80c1-4951-9af0-ad498ddc0c96 e46ecd82-710e-40af-811a-b9e6fea284b8 ddf197b8-278b-4c89-98da-58b9010e226d" name="OutPort" id="5ca99312-1c79-4ff6-b695-65414efd350d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2eef8327-d4ae-4643-a56e-eada42595ba5" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="39bffd6b-fb0c-4fb5-83f3-2b8c654767c2" name="InPort" connectedTo="276dab2f-3929-4748-bb88-4da90514963c">
              <profile xsi:type="esdl:SingleValue" id="fb1cae89-47e5-40d9-a50e-f278d72ee1ae" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1f95b880-654e-4cd3-af72-ff0d38417df0" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8fe8e743-6325-4566-9e4c-4ca837e755d5">
              <profile xsi:type="esdl:SingleValue" id="19b4e67f-7ef3-4a86-9830-7c59825cf2aa" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="6eea5616-80d7-4aab-a4c4-c87cca2a25b6" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="f6328cdf-ffc0-4dc5-9f82-3598caaa63e6" name="InPort" connectedTo="ca2cb876-2194-447d-84e6-06f9b7dcdd50">
              <profile xsi:type="esdl:SingleValue" id="c0278bcf-cc38-4f2a-b191-1d00a901bffc" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="038f94f9-2fad-4ae9-84ea-ddb1fd257d6d" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d6fb8bdc-80c1-4951-9af0-ad498ddc0c96" name="InPort" connectedTo="5ca99312-1c79-4ff6-b695-65414efd350d">
              <profile xsi:type="esdl:SingleValue" id="deeb7e8b-1561-40da-aa6d-3d61c43ba93f" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3ef7e7a1-9a6c-4c80-9721-d34b5267978f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5ca99312-1c79-4ff6-b695-65414efd350d" name="InPort" id="e46ecd82-710e-40af-811a-b9e6fea284b8"/>
            <port xsi:type="esdl:OutPort" connectedTo="39bffd6b-fb0c-4fb5-83f3-2b8c654767c2" name="OutPort" id="276dab2f-3929-4748-bb88-4da90514963c"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="9a0a2b46-08c3-42f9-866b-cb9c6e14354b" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5ca99312-1c79-4ff6-b695-65414efd350d" name="InPort" id="ddf197b8-278b-4c89-98da-58b9010e226d"/>
            <port xsi:type="esdl:OutPort" connectedTo="f6328cdf-ffc0-4dc5-9f82-3598caaa63e6" name="OutPort" id="ca2cb876-2194-447d-84e6-06f9b7dcdd50"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640300" scope="NEIGHBOURHOOD">
        <KPIs id="682cfefa-7fd5-4a2c-adec-d608e6ae1b0e">
          <kpi xsi:type="esdl:DoubleKPI" id="09f73e2d-3bb1-40b2-9faa-fe5b459c8f3d" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="485341.0" name="woning_nat_meerkost" id="27950ba3-5eb8-4aab-852b-99213546167f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="251.0" name="woning_nat_meerkost_co2" id="d1baa555-bc0d-492d-bbe7-36fddb03193a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="509.0" name="woning_nat_meerkost_weq" id="44cfffb6-44eb-4835-b2be-86fd555c6b0c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="dd1fc33d-28c8-4b13-9e35-b73d1e8f988c" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="485341.0" name="util_nat_meerkost" id="b3492b98-741e-4282-90f2-c0fbb40be33f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="251.0" name="util_nat_meerkost_co2" id="a37bb3ea-37f3-4b90-a5a4-25c66a35fbba">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="509.0" name="util_nat_meerkost_weq" id="284e9205-4c6a-43fb-9df5-6e064d636de6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="926" id="fc3440da-3bef-48c3-96b9-21e906bd01bc" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.032397408207343416"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9676025917926566"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28796833333333" lon="6.8382548"/>
          <asset xsi:type="esdl:EConnection" id="38a477d3-7386-434f-840a-2933e02684b5" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="97c55b93-9ec8-4947-bedd-f712bf68fbca" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1edad25b-4bd9-46fd-a6a3-32a8483cb0b8" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="597fcaca-d9a6-431f-9467-b7a4c0dd6a1d ea0d42ba-229b-4919-bbc1-51d5b4d7ec31 a5c341c4-1714-499f-b2a8-f48fb2dfbece" name="OutPort" id="de54b7fa-7b7b-43dd-b6d4-90494a3cf0f9"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="60eda8d1-7689-4292-9d8b-d902a916938c" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="1bb18df8-0fb2-458d-99b4-ab61e04f9ec4" name="InPort" connectedTo="de399e26-8bd1-4f04-8297-dd85ec6cfb25 118f7559-3171-418c-b8b8-57aea41816b4">
              <profile xsi:type="esdl:SingleValue" id="bda1e80b-2b7b-449a-91a0-292b0eef2e14" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="003792cf-0e74-4cf6-82af-0847f7c56ecc" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3386567a-e423-419c-816f-fed2ed15bd89">
              <profile xsi:type="esdl:SingleValue" id="5b5d5fc8-dd1f-4be6-8526-53d1e6f642b8" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6ae72cbf-48b9-4a31-a55d-40d69f8c6748" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="597fcaca-d9a6-431f-9467-b7a4c0dd6a1d" name="InPort" connectedTo="de54b7fa-7b7b-43dd-b6d4-90494a3cf0f9">
              <profile xsi:type="esdl:SingleValue" id="d5f2bfbe-a575-473c-bb9d-ebb3709e8bf6" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="56f625fb-d45e-4529-a9e7-e5ab0d144c0f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ea0d42ba-229b-4919-bbc1-51d5b4d7ec31" name="InPort" connectedTo="de54b7fa-7b7b-43dd-b6d4-90494a3cf0f9">
              <profile xsi:type="esdl:SingleValue" id="a3a058d5-368f-4d12-9f5f-9c448283c332" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5212cf84-16bc-4552-8832-7f607ca190ac" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="de54b7fa-7b7b-43dd-b6d4-90494a3cf0f9" name="InPort" id="a5c341c4-1714-499f-b2a8-f48fb2dfbece"/>
            <port xsi:type="esdl:OutPort" connectedTo="1bb18df8-0fb2-458d-99b4-ab61e04f9ec4" name="OutPort" id="de399e26-8bd1-4f04-8297-dd85ec6cfb25"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="10" floorArea="3636.0" id="4a6acac3-d3ad-400a-b6de-9ff5f0f48f10" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28796833333333" lon="6.8446176"/>
          <asset xsi:type="esdl:EConnection" id="060606e5-4977-487d-ae27-a03c7af1634f" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9138dc5a-eaf3-4a88-931a-e0dd527bf2e4" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="0c52b106-c971-4d25-b0b3-e04ec67c6323" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="652128ee-a427-49b5-960b-4d15a929e4f8 64a13531-bf5d-40f0-9d81-c8aee38bb74a" name="OutPort" id="a27825c5-e200-493d-a1b6-0ca0f7338903"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e199ac71-d997-447d-9728-56863da0a2ee" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="652128ee-a427-49b5-960b-4d15a929e4f8" name="InPort" connectedTo="a27825c5-e200-493d-a1b6-0ca0f7338903">
              <profile xsi:type="esdl:SingleValue" id="90baa99e-8723-49d7-aa87-8515960721a8" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="83df1852-07dd-4041-b739-a6df255237ad" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a27825c5-e200-493d-a1b6-0ca0f7338903" name="InPort" id="64a13531-bf5d-40f0-9d81-c8aee38bb74a"/>
            <port xsi:type="esdl:OutPort" connectedTo="1bb18df8-0fb2-458d-99b4-ab61e04f9ec4" name="OutPort" id="118f7559-3171-418c-b8b8-57aea41816b4"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640301" scope="NEIGHBOURHOOD">
        <KPIs id="33e37dd5-b2c7-4f22-b844-c5ddc021d590">
          <kpi xsi:type="esdl:DoubleKPI" id="6296eb96-6686-4467-9b36-a5fc0eb078f0" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="216978.0" name="woning_nat_meerkost" id="e6274818-e9b8-46bc-9ce2-b9bea4e40911">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="244.0" name="woning_nat_meerkost_co2" id="0dc5bb47-84ef-4144-b30e-4e6aa082f349">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="695.0" name="woning_nat_meerkost_weq" id="4e368641-1e90-452c-86ef-ebf953e14c14">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="59c31f25-1824-47c4-b0a6-a2d16d8b0b74" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="216978.0" name="util_nat_meerkost" id="5a55b849-8bb3-4ae8-93c5-a9cfe4d83df0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="244.0" name="util_nat_meerkost_co2" id="ea9e6d3c-a98f-4acd-b6a0-7d9bf30171e7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="695.0" name="util_nat_meerkost_weq" id="90c9c21e-c090-4009-9172-93b32a337f77">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="278" id="ae0aa6fb-faeb-421b-9ab2-30a9ae006ecb" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.014388489208633094"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9856115107913669"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28006966666667" lon="6.8182789999999995"/>
          <asset xsi:type="esdl:EConnection" id="43a766ae-08b8-4987-a98f-626ab96081bc" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="137ef476-a6f6-4570-89ec-a8a95ceeb423" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="4505e73e-d2f1-432d-a96b-5636ddecd4ed" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="7b34c7c1-8ff3-4f03-bcf5-685904c4f4f8 9d294a54-d4e5-4ab2-bcdf-b08ecdad1fc1 86e9e602-b9a5-4580-aacc-4e2f6af30675" name="OutPort" id="cfb8d3cd-44da-4208-a739-a0fbedc0f91c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="25614dfb-6ca9-4688-9545-0b9b1f01e52d" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="d4d57219-f517-411b-ac38-edb14460b788" name="InPort" connectedTo="17edfcad-8606-4eb4-8a21-78dd2e09e039">
              <profile xsi:type="esdl:SingleValue" id="2d3a7f6b-12b3-49d8-9d36-134eaf4cffd8" value="33.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f6991f0b-7f42-4ea7-9142-3dfa9838eec4" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="997a6ca6-ed31-4a25-be1f-d997618168cc">
              <profile xsi:type="esdl:SingleValue" id="742a5c47-b546-4bf3-8bf5-27db8fcf75f6" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3e4fb08a-0188-4bc6-9d38-a30833e6db61" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="7b34c7c1-8ff3-4f03-bcf5-685904c4f4f8" name="InPort" connectedTo="cfb8d3cd-44da-4208-a739-a0fbedc0f91c">
              <profile xsi:type="esdl:SingleValue" id="4c218497-aab9-4f8b-aec5-2d6ae091f517" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a6d91007-9643-49b2-bba8-2db9acdff419" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d294a54-d4e5-4ab2-bcdf-b08ecdad1fc1" name="InPort" connectedTo="cfb8d3cd-44da-4208-a739-a0fbedc0f91c">
              <profile xsi:type="esdl:SingleValue" id="e91d3eb0-3219-45e1-847e-5e77decd2656" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4320b7bd-a820-4d7f-a444-f8f01c271611" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cfb8d3cd-44da-4208-a739-a0fbedc0f91c" name="InPort" id="86e9e602-b9a5-4580-aacc-4e2f6af30675"/>
            <port xsi:type="esdl:OutPort" connectedTo="d4d57219-f517-411b-ac38-edb14460b788" name="OutPort" id="17edfcad-8606-4eb4-8a21-78dd2e09e039"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="10" floorArea="4473.0" id="2787fa16-7779-4dbe-8165-77de7a5df444" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28006966666667" lon="6.824624999999999"/>
          <asset xsi:type="esdl:EConnection" id="0f427911-4d2f-479d-ad9f-e6fbe0670c34" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="2eb367f5-9292-489b-a2a4-b5c208d926cf" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="8e1039f7-6ea3-4694-b951-1151f5f60859" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="2f832ed9-508f-49ca-85e2-d451779bc4fd e9923198-04dc-43b9-a1d2-767e3a285ea2 ca686a9c-0c8d-4916-bb16-5c146033a5d0" name="OutPort" id="5492e908-3c8c-489e-a7ba-9840f1155389"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8d57c0a6-bc8c-47f4-b44d-c503d2e306b9" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="2d44394c-233a-429a-bcd7-974d778ab93e" name="InPort" connectedTo="1b08809c-22e1-4550-a285-f481d4607976">
              <profile xsi:type="esdl:SingleValue" id="11726477-0184-417d-9749-0f9bcd8e1e48" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b4a56db2-b227-4e94-8816-5158282d2e07" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="2fb4ad3b-b566-465d-bf33-c540520af4dc" name="InPort" connectedTo="2906399e-26f8-4b52-9ed5-87f36df02b8a">
              <profile xsi:type="esdl:SingleValue" id="63234cb7-96fc-43e6-b208-8ff3ce88e5ac" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ab9d9e6e-94d8-4d26-be07-f8203b34faf2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2f832ed9-508f-49ca-85e2-d451779bc4fd" name="InPort" connectedTo="5492e908-3c8c-489e-a7ba-9840f1155389">
              <profile xsi:type="esdl:SingleValue" id="e2d85710-f39c-47d8-a4ab-cb3fdb41c05a" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b3efffbe-6ef4-4618-873a-73889545031b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5492e908-3c8c-489e-a7ba-9840f1155389" name="InPort" id="e9923198-04dc-43b9-a1d2-767e3a285ea2"/>
            <port xsi:type="esdl:OutPort" connectedTo="2d44394c-233a-429a-bcd7-974d778ab93e" name="OutPort" id="1b08809c-22e1-4550-a285-f481d4607976"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="b5fe6ad6-1ebe-43f4-8f63-86ab74a61004" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5492e908-3c8c-489e-a7ba-9840f1155389" name="InPort" id="ca686a9c-0c8d-4916-bb16-5c146033a5d0"/>
            <port xsi:type="esdl:OutPort" connectedTo="2fb4ad3b-b566-465d-bf33-c540520af4dc" name="OutPort" id="2906399e-26f8-4b52-9ed5-87f36df02b8a"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640302" scope="NEIGHBOURHOOD">
        <KPIs id="b5a2775a-0302-4ed3-afd0-42a5bc4e99aa">
          <kpi xsi:type="esdl:DoubleKPI" id="81576277-e399-4e69-ac4c-2db5f1674259" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="293307.0" name="woning_nat_meerkost" id="0cd1b71c-4db6-4db0-ae40-16fe4ed40577">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="262.0" name="woning_nat_meerkost_co2" id="0815ecb4-a8b4-46ef-8df5-e21a61c031f9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="519.0" name="woning_nat_meerkost_weq" id="424eb2e3-8824-4e83-92af-fd59a8b29ee4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="99239df4-5f85-429e-8771-bc8b27247fbb" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="293307.0" name="util_nat_meerkost" id="f82b3fbf-13e4-4747-a891-02631b064bb8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="262.0" name="util_nat_meerkost_co2" id="1e35de34-b01a-42c1-a728-65d917e6d5aa">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="519.0" name="util_nat_meerkost_weq" id="0602f1ef-3b0c-46c9-8b37-16a0b7714077">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="559" id="9801ce2c-c0f9-4c7b-9860-52bcad467f8c" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.017889087656529516"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9821109123434705"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.278587" lon="6.8345928"/>
          <asset xsi:type="esdl:EConnection" id="2d583e56-0431-4534-a026-fcc871391ea6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c730c8ad-a02e-41ff-b06b-4ea6631d6f10" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3db45d1f-8b29-4fa1-a0af-fb4f25113813" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="98ee18be-624a-43ba-8fdb-226649c25126 25b980b7-407c-42c3-8305-50ee87f5743d 9704c7de-23a0-44b3-acf0-f3604823474d" name="OutPort" id="4137f1d2-ce04-492f-9fc3-7491087a8533"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d27c9ac8-e0c4-448b-b19e-fe98dedea9f7" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="47f599ae-fdcb-4b38-8103-2d5fd078d24e" name="InPort" connectedTo="50af3113-1401-4c09-9bff-21aab65717df a826c3b2-5439-491f-a67c-e45fa13200a9">
              <profile xsi:type="esdl:SingleValue" id="5cf74d45-bb67-444d-841f-4d679252996d" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4aaad25b-6247-4309-8190-cd4f4e3de15b" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f7422545-ba23-48de-9ec8-1a1bea390b40">
              <profile xsi:type="esdl:SingleValue" id="1c56f9ff-9c88-4630-8e4e-e77a8132d3f7" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ea2b4278-2a38-46c7-9f8e-54c63c064ec7" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="98ee18be-624a-43ba-8fdb-226649c25126" name="InPort" connectedTo="4137f1d2-ce04-492f-9fc3-7491087a8533">
              <profile xsi:type="esdl:SingleValue" id="492f1626-5ccf-4e26-ac18-7ecdc3c2d988" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="bc4190d6-551a-439c-88a2-7a660218a33d" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4137f1d2-ce04-492f-9fc3-7491087a8533" name="InPort" id="25b980b7-407c-42c3-8305-50ee87f5743d"/>
            <port xsi:type="esdl:OutPort" connectedTo="47f599ae-fdcb-4b38-8103-2d5fd078d24e" name="OutPort" id="50af3113-1401-4c09-9bff-21aab65717df"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="8" floorArea="812.0" id="94e3099d-aaf5-483c-a4de-c3724dfe02d9" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28072" lon="6.8345928"/>
          <asset xsi:type="esdl:HeatPump" id="35ff7e63-009b-4038-83a7-5275b9ca22cd" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4137f1d2-ce04-492f-9fc3-7491087a8533" name="InPort" id="9704c7de-23a0-44b3-acf0-f3604823474d"/>
            <port xsi:type="esdl:OutPort" connectedTo="47f599ae-fdcb-4b38-8103-2d5fd078d24e" name="OutPort" id="a826c3b2-5439-491f-a67c-e45fa13200a9"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640303" scope="NEIGHBOURHOOD">
        <KPIs id="4b535041-1043-465c-b744-dcd12b54a9c1">
          <kpi xsi:type="esdl:DoubleKPI" id="66c919f6-b4a8-4ea8-9675-11ce3154d690" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="250716.0" name="woning_nat_meerkost" id="6bd929f3-76f3-4890-8218-b28fba847962">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="251.0" name="woning_nat_meerkost_co2" id="1c0d678b-990d-4019-919a-4cff29ce8309">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="494.0" name="woning_nat_meerkost_weq" id="2081ceb8-7728-44dd-8e12-8606adbb9193">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="322c2ea7-5358-4810-950b-538024e8f654" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="250716.0" name="util_nat_meerkost" id="f7a4a007-1c23-4198-89f0-fc29d2fbdad8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="251.0" name="util_nat_meerkost_co2" id="453306f6-ff30-4899-aae0-0df3ade5c17c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="494.0" name="util_nat_meerkost_weq" id="2ee5a7a5-b264-4853-a781-e107381a33e9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="497" id="d21240ea-324e-400a-80d2-38d97e4cd0d1" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.004024144869215292"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9959758551307847"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28652233333333" lon="6.8223346"/>
          <asset xsi:type="esdl:EConnection" id="666ba1a5-1433-4695-8f52-4cfd176f99e7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1886a8cf-ef5b-473d-9a2b-982d9259bc92" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b43189f3-8e00-49c7-bb70-51a58984e558" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="50e0fccb-6e6b-4338-8362-efbddc5748f9 c5f794d3-f687-49b2-b141-a38e61105250" name="OutPort" id="ec9679ef-2398-4d5f-98a5-96a24fda28b4"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9406b2f2-6ee1-4cbc-ad96-674e53aa9025" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="126004b4-1bee-4c8c-b10f-b1b103542ed2" name="InPort" connectedTo="5f3f3578-d7d8-4694-b896-2ee54faf1fde">
              <profile xsi:type="esdl:SingleValue" id="d15b505b-99d2-49f6-8ea5-15858deff6f7" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="99d268dc-0763-4395-86fa-c119fa7a0518" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e983970d-6f38-43f8-9e06-6dbd8c84350c">
              <profile xsi:type="esdl:SingleValue" id="d22a4d08-87a9-4947-8a2f-15fa61bbb9bf" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f82304d8-319d-4f32-8f3b-0b63439a0d4a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="50e0fccb-6e6b-4338-8362-efbddc5748f9" name="InPort" connectedTo="ec9679ef-2398-4d5f-98a5-96a24fda28b4">
              <profile xsi:type="esdl:SingleValue" id="db60aab9-ff63-4203-9a5b-c4c19ccd58cb" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="704f7c50-ae4e-4ca7-8497-094410bd8495" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ec9679ef-2398-4d5f-98a5-96a24fda28b4" name="InPort" id="c5f794d3-f687-49b2-b141-a38e61105250"/>
            <port xsi:type="esdl:OutPort" connectedTo="126004b4-1bee-4c8c-b10f-b1b103542ed2" name="OutPort" id="5f3f3578-d7d8-4694-b896-2ee54faf1fde"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="6" floorArea="1423.0" id="73ebed3e-5716-4898-9280-dc2edfd0b2ed" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28478066666667" lon="6.825994199999999"/>
          <asset xsi:type="esdl:EConnection" id="99d8954e-8bb9-4bcc-b5a1-2a84dd3f6000" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0d706260-7999-4538-9572-54cffec9c815" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="101435aa-d8d9-476f-a1ac-4167dceccaf0" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="7f7ce1db-2f78-4b0a-b946-5e543ed08945 5d6359ee-d1da-4a79-8790-c3cbde0eadc7" name="OutPort" id="8f4e6574-154c-4e7f-af15-39ed5cab05c1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="32a61d25-0420-41ac-87e7-b301ccb2db36" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="6084566a-7143-4308-be6f-9f97402ba72e" name="InPort" connectedTo="a55cd67d-f182-41c9-84a7-4b99473cd6a0">
              <profile xsi:type="esdl:SingleValue" id="ac6abbce-c215-462a-8677-39a086d8edbf" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="2f880e9a-eff8-4010-b6ea-b20d341fe551" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="a74e2b8c-a70a-4b7e-bd66-235ceff69370" name="InPort" connectedTo="52bef68c-91b6-4eaf-8fa4-503088c7dd20">
              <profile xsi:type="esdl:SingleValue" id="2494f3a3-c904-43ab-82cd-a482a5346cdc" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="fbaa4da3-f630-47cc-8b8c-29b6c00a5892" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8f4e6574-154c-4e7f-af15-39ed5cab05c1" name="InPort" id="7f7ce1db-2f78-4b0a-b946-5e543ed08945"/>
            <port xsi:type="esdl:OutPort" connectedTo="6084566a-7143-4308-be6f-9f97402ba72e" name="OutPort" id="a55cd67d-f182-41c9-84a7-4b99473cd6a0"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="79448bc3-2791-459f-910f-184206dcaaff" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8f4e6574-154c-4e7f-af15-39ed5cab05c1" name="InPort" id="5d6359ee-d1da-4a79-8790-c3cbde0eadc7"/>
            <port xsi:type="esdl:OutPort" connectedTo="a74e2b8c-a70a-4b7e-bd66-235ceff69370" name="OutPort" id="52bef68c-91b6-4eaf-8fa4-503088c7dd20"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640304" scope="NEIGHBOURHOOD">
        <KPIs id="c602229a-e8d6-4ce3-accb-f7a39d6934a5">
          <kpi xsi:type="esdl:DoubleKPI" id="6b4644f9-0407-4169-b740-2cc5d4903b78" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="469590.0" name="woning_nat_meerkost" id="0377582c-86c1-44bd-9b6a-6b8e4503b478">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="293.0" name="woning_nat_meerkost_co2" id="63e43c79-a6ad-43e7-b9f6-02ab785e2360">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="527.0" name="woning_nat_meerkost_weq" id="324ecdf6-fc00-4af1-94f3-0d74b56e89fa">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="aa57a07a-5dc4-4733-96f0-aae8fe6f36e3" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="469590.0" name="util_nat_meerkost" id="696f921c-fd5d-44e4-98d6-0faf1496a9ea">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="293.0" name="util_nat_meerkost_co2" id="524c7d52-f482-4630-85be-6e3eefa319d5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="527.0" name="util_nat_meerkost_weq" id="5284500d-2a2f-45ab-8c2d-2201ee1a4870">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="725" id="aea58fdc-57dc-44fe-8ea3-b5166c6e6aec" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.06344827586206897"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9365517241379311"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.284151333333334" lon="6.8289458000000005"/>
          <asset xsi:type="esdl:EConnection" id="bdc89a47-675b-48a0-8087-2c6748cd0277" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="dee8545b-7533-4410-98ed-161edb49ba8d" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="62ecc1d0-eda1-4e7a-8e1a-100a6caea7cf" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="d284653d-a685-42c3-b9fd-18a8b234c88e 234e01fe-ad93-4415-9b95-4065b54bcecd" name="OutPort" id="62bbdb49-3e97-4b1b-b63b-1973d196fe03"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0df92fec-8882-4baf-8031-741059e848b0" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="d853cfbc-d4eb-480e-a88e-35bea44d0fb3" name="InPort" connectedTo="56cf0c6c-6881-4719-843d-e0aaeb5e6909">
              <profile xsi:type="esdl:SingleValue" id="b9422fba-aace-478d-bfd0-f0209915fb33" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="88ed59c3-da3f-45ef-8321-0172b8da6cd8" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9f5499b0-7196-43c6-96c3-2d37c910ce92">
              <profile xsi:type="esdl:SingleValue" id="8f82f5d5-a4a9-4750-8546-18b66da178b3" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a78bf588-8310-4150-b41a-35f23d87d05b" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d284653d-a685-42c3-b9fd-18a8b234c88e" name="InPort" connectedTo="62bbdb49-3e97-4b1b-b63b-1973d196fe03">
              <profile xsi:type="esdl:SingleValue" id="7dc3b367-8b29-458a-a3ba-60ea0ffc0435" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="52d41f5e-14ac-4337-a70a-7362e75ebecc" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="62bbdb49-3e97-4b1b-b63b-1973d196fe03" name="InPort" id="234e01fe-ad93-4415-9b95-4065b54bcecd"/>
            <port xsi:type="esdl:OutPort" connectedTo="d853cfbc-d4eb-480e-a88e-35bea44d0fb3" name="OutPort" id="56cf0c6c-6881-4719-843d-e0aaeb5e6909"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="58" floorArea="21553.0" id="e5dc2e6f-0b9a-475b-b49a-888fa3226319" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.286065666666666" lon="6.8266524"/>
          <asset xsi:type="esdl:EConnection" id="b0c6f084-ed11-400c-8ae4-d156c482a545" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f6b3429f-be0a-489f-ab5f-c8c5a96927ff" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b7b62a57-64d9-4e7c-8b58-5cd0a4039005" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="f51a4596-08a3-49de-bad5-6bb0c92fa9e3 6616785d-c0e4-4ea6-8f2b-20dad9c64e0d 621844e6-babf-4295-8e90-d9dc02efe2f3" name="OutPort" id="c29d87e2-f143-4715-9a14-30699a729ad3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="884c6044-05b0-42e2-9772-efade6e284bd" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d5de012-2866-4ad6-8271-03b9be3613d7" name="InPort" connectedTo="c0902a77-b895-47e0-acad-56eef0d4f701">
              <profile xsi:type="esdl:SingleValue" id="2c552aa2-ee91-48d7-84aa-05c4187c18a4" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d14517f2-2096-4e91-b597-49b0a7ba86f2" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="637e4916-1b0e-415c-9592-c5cf61b74508" name="InPort" connectedTo="7be099dc-67a4-4226-950e-3c64203a4548">
              <profile xsi:type="esdl:SingleValue" id="7fd1918f-4de2-4159-b5f3-fb7208291564" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="365c0a28-ee92-4cbc-bb06-399c8eb0ca2d" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f51a4596-08a3-49de-bad5-6bb0c92fa9e3" name="InPort" connectedTo="c29d87e2-f143-4715-9a14-30699a729ad3">
              <profile xsi:type="esdl:SingleValue" id="aefd18d2-1b85-4764-aff7-55ae7d92182f" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="158a3328-415d-4eca-85b1-ab32c38fe8ea" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c29d87e2-f143-4715-9a14-30699a729ad3" name="InPort" id="6616785d-c0e4-4ea6-8f2b-20dad9c64e0d"/>
            <port xsi:type="esdl:OutPort" connectedTo="9d5de012-2866-4ad6-8271-03b9be3613d7" name="OutPort" id="c0902a77-b895-47e0-acad-56eef0d4f701"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="6e79fb3c-e5cb-4e7c-aab1-cbb3d4871f98" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c29d87e2-f143-4715-9a14-30699a729ad3" name="InPort" id="621844e6-babf-4295-8e90-d9dc02efe2f3"/>
            <port xsi:type="esdl:OutPort" connectedTo="637e4916-1b0e-415c-9592-c5cf61b74508" name="OutPort" id="7be099dc-67a4-4226-950e-3c64203a4548"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640305" scope="NEIGHBOURHOOD">
        <KPIs id="2e07dcfb-83a3-499c-9326-f07ed46a7d06">
          <kpi xsi:type="esdl:DoubleKPI" id="52037c9a-26ef-4f33-b517-2f8b593d6545" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="247774.0" name="woning_nat_meerkost" id="bc5d0c48-622b-49b9-9487-5c0fe760bf1e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="253.0" name="woning_nat_meerkost_co2" id="e6cd355d-7530-4fa6-824e-ded37d1f1207">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="547.0" name="woning_nat_meerkost_weq" id="54bab26b-0854-4efa-8bde-641080d7c8b4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7ea6fc84-c619-4bb4-a803-cb20ff698b74" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="247774.0" name="util_nat_meerkost" id="4bea9585-a6fa-4b9d-83f0-fdcb1604d5c1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="253.0" name="util_nat_meerkost_co2" id="d0629ac4-3a2f-4e5f-b272-71ac0cf0aa93">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="547.0" name="util_nat_meerkost_weq" id="24ada081-70f0-499b-aac4-c02a9b3d6f2b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="453" id="2490d439-e9d0-4e2a-9e3f-b74e03bff040" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28100533333333" lon="6.8376664"/>
          <asset xsi:type="esdl:EConnection" id="ffa96de4-ed20-42c8-8c71-a64ea3fbce96" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b00a4264-f5c4-4102-bbcf-e7e0e5ac975e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="6fdcb342-5f9a-4ff4-938c-52d643eae62f" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="bae69a10-b68e-49de-afd0-77bde946ed62 c0e87c05-dbb9-4dc1-908a-d327379838d5 e7ebf77b-7921-46e0-a02e-cb015c61f87f 218d4632-940d-4f2f-88bc-e402ec5940fc" name="OutPort" id="1c9e74b5-06c2-4f77-a204-05afd92968c1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b22701b7-0d41-4b41-b1c8-1ba312a60924" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="23289a9b-000e-4229-8daa-d679dd8ef21c" name="InPort" connectedTo="0fe47147-5eab-4c3b-ba8e-368f46a7717f eec9a5f9-6041-473c-9109-0de3654504ae">
              <profile xsi:type="esdl:SingleValue" id="f16d95ec-0d29-4b71-9adb-fce7827e3a2e" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="65016f73-24b2-4142-85dd-162e8491d22e" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ffa52357-1870-4414-8392-0bc561ee672f">
              <profile xsi:type="esdl:SingleValue" id="97ec745a-ddda-4481-b042-09ae67f7df05" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="25db4abf-0737-43ad-a89e-c25bfa4956f8" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="bae69a10-b68e-49de-afd0-77bde946ed62" name="InPort" connectedTo="1c9e74b5-06c2-4f77-a204-05afd92968c1">
              <profile xsi:type="esdl:SingleValue" id="5ed7e40f-a660-4504-bd86-885e8d7ee5ff" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1cada5d1-2ea3-4aad-b78b-2167dcc048a5" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c0e87c05-dbb9-4dc1-908a-d327379838d5" name="InPort" connectedTo="1c9e74b5-06c2-4f77-a204-05afd92968c1">
              <profile xsi:type="esdl:SingleValue" id="7d893cec-271f-4b96-bc22-3f27714fadff" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0e48ff3d-fa13-4e7b-b8ea-8c5d2f5d2f6f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1c9e74b5-06c2-4f77-a204-05afd92968c1" name="InPort" id="e7ebf77b-7921-46e0-a02e-cb015c61f87f"/>
            <port xsi:type="esdl:OutPort" connectedTo="23289a9b-000e-4229-8daa-d679dd8ef21c" name="OutPort" id="0fe47147-5eab-4c3b-ba8e-368f46a7717f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="31.0" id="ac1ad83b-1f10-4926-88a9-394a0886c5c4" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28100533333333" lon="6.8358306"/>
          <asset xsi:type="esdl:HeatPump" id="c79deb7d-51f1-423f-99eb-d2f0c9dc8c13" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1c9e74b5-06c2-4f77-a204-05afd92968c1" name="InPort" id="218d4632-940d-4f2f-88bc-e402ec5940fc"/>
            <port xsi:type="esdl:OutPort" connectedTo="23289a9b-000e-4229-8daa-d679dd8ef21c" name="OutPort" id="eec9a5f9-6041-473c-9109-0de3654504ae"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640306" scope="NEIGHBOURHOOD">
        <KPIs id="87ce4380-98a8-451d-8426-5b79e75dd8de">
          <kpi xsi:type="esdl:DoubleKPI" id="e9d608a9-8246-48d5-a84f-e5569cb6f3c8" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="344462.0" name="woning_nat_meerkost" id="140ef5f2-cc2d-4c2e-a77f-af474789de7e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="240.0" name="woning_nat_meerkost_co2" id="11a09754-2df3-44c9-9d75-9cbad39e8bbd">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="540.0" name="woning_nat_meerkost_weq" id="42b1c1fd-103e-4c90-9644-a324808b1bfa">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f3a1beb7-8496-4d66-9938-0406fa7fd680" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="344462.0" name="util_nat_meerkost" id="19c829d7-b2c5-49f3-8729-b28c886dac5b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="240.0" name="util_nat_meerkost_co2" id="8b61a634-68d4-4e24-90b2-2d82db57c095">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="540.0" name="util_nat_meerkost_weq" id="656f94ee-aca5-4cf4-9606-f1ffa12d87e2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="634" id="5083e8cf-8302-4df5-b886-a846ae6ae18c" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.006309148264984227"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9936908517350158"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28995666666667" lon="6.8317483333333335"/>
          <asset xsi:type="esdl:EConnection" id="691f3b71-949f-4052-ac20-311a77296124" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4d5951d5-b2b6-4331-bec0-2f369d2a157a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="061a9891-a5ec-4a51-a02f-462dce4e6200" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0c22f41f-d64a-41ac-898e-d8de568fe145 a19cb157-0594-4014-b024-0019c860c899 f7b6638a-91b1-4ce3-b8de-b077c7c01ccb 355fc594-c57e-425d-acb4-73b920cc9633" name="OutPort" id="57a7f126-d5ca-4e2d-b634-fba4ca21b36d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="29b7c4e2-fe05-400e-8968-b3109b36b1a3" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="7c4f1c5a-4f37-4c3a-ac2e-dbb81dc82cbc" name="InPort" connectedTo="b2b10695-f81c-4d5b-8e57-50b171f601ca 282ff65a-49a2-49a6-9ca6-96500ce17288">
              <profile xsi:type="esdl:SingleValue" id="da0e8d9a-458b-4e30-bb43-2a74973bd4a6" value="27.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="58d0d223-fb9a-4e17-90a1-15829dabbe76" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="80eebccb-0cfa-410a-8381-ccfdf8219ead">
              <profile xsi:type="esdl:SingleValue" id="04e35dbc-7ebf-4178-8b08-0165a5e0158c" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="84aec74e-92ea-4ce5-9601-8f500b40da7b" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="0c22f41f-d64a-41ac-898e-d8de568fe145" name="InPort" connectedTo="57a7f126-d5ca-4e2d-b634-fba4ca21b36d">
              <profile xsi:type="esdl:SingleValue" id="07fee6fb-e6b3-485e-8fb9-f4dd0808c429" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c112eb0f-9dbd-4fc5-8da2-59ea9f0ab08c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a19cb157-0594-4014-b024-0019c860c899" name="InPort" connectedTo="57a7f126-d5ca-4e2d-b634-fba4ca21b36d">
              <profile xsi:type="esdl:SingleValue" id="6cd95edb-0e4d-412a-bbaf-deddbb020ef8" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c13f5ba6-3e33-4b65-9a62-71793919d6ed" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="57a7f126-d5ca-4e2d-b634-fba4ca21b36d" name="InPort" id="f7b6638a-91b1-4ce3-b8de-b077c7c01ccb"/>
            <port xsi:type="esdl:OutPort" connectedTo="7c4f1c5a-4f37-4c3a-ac2e-dbb81dc82cbc" name="OutPort" id="b2b10695-f81c-4d5b-8e57-50b171f601ca"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="10" floorArea="494.0" id="989f2e17-af94-4138-ad84-0b7152cd0dd4" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.29273933333333" lon="6.834529166666667"/>
          <asset xsi:type="esdl:HeatPump" id="60947864-8c37-4226-9241-e918d3cef953" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="57a7f126-d5ca-4e2d-b634-fba4ca21b36d" name="InPort" id="355fc594-c57e-425d-acb4-73b920cc9633"/>
            <port xsi:type="esdl:OutPort" connectedTo="7c4f1c5a-4f37-4c3a-ac2e-dbb81dc82cbc" name="OutPort" id="282ff65a-49a2-49a6-9ca6-96500ce17288"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640307" scope="NEIGHBOURHOOD">
        <KPIs id="d2fc2207-d0c8-4da2-82b1-eef6517cb282">
          <kpi xsi:type="esdl:DoubleKPI" id="6a088fdf-1b17-40c4-9efe-b97e0e5a915a" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="402052.0" name="woning_nat_meerkost" id="3a53264e-1b8b-42f2-ada9-8638999ac693">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="255.0" name="woning_nat_meerkost_co2" id="9d48c809-1616-4bba-bd5c-bfc3e687043e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="561.0" name="woning_nat_meerkost_weq" id="9f0f7f92-6b0c-4ddc-831f-ea302bed143a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="43b278b6-1d05-4c17-b134-e7f5973758e3" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="402052.0" name="util_nat_meerkost" id="8c701bee-b363-4a59-9caf-a20d3485591d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="255.0" name="util_nat_meerkost_co2" id="7e6774b3-6bfd-41a3-9bc5-a4a8f31199ab">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="561.0" name="util_nat_meerkost_weq" id="12a9ce59-97ed-42c3-9fa0-10ba267f437a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="687" id="e174c8af-3119-4bd2-8d75-74fa1d391e0e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.018922852983988356"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9810771470160117"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28668833333334" lon="6.8354610000000005"/>
          <asset xsi:type="esdl:EConnection" id="93303eae-2e8f-4c20-ad19-c5de515e649e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3684acf6-9211-496a-9028-ce1909e3ef62" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="dee0502d-0d24-46f1-a5bd-30e6bf29d3aa" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="bb65f39b-b07c-4e50-831c-3403bd7e8a9f a9e4bc2b-4bf7-45b4-a449-4f0defbb46a8 6a950de3-d745-410f-bfdb-0f0af003428f" name="OutPort" id="a531410b-bc29-45f1-b39a-69dd321a5d78"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f42bbb2a-7dca-43bf-9ce4-60d89d4ed4a8" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="464d1da0-0a0e-436d-9551-cacf4c7f6643" name="InPort" connectedTo="45ae6ac9-698b-435a-94c9-8590e3ddbd75">
              <profile xsi:type="esdl:SingleValue" id="bd1f6f9b-dc38-4c69-ac27-5f51353f57a4" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cf08a050-b62a-49f6-9510-a0d935ace5f2" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="25f02307-0935-4646-a6ab-162566ed9812">
              <profile xsi:type="esdl:SingleValue" id="176a58f5-54d7-4cbf-8551-cacf6cc570f8" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f42c4a76-22ae-48c3-8c6c-c6ee53ea2022" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="bb65f39b-b07c-4e50-831c-3403bd7e8a9f" name="InPort" connectedTo="a531410b-bc29-45f1-b39a-69dd321a5d78">
              <profile xsi:type="esdl:SingleValue" id="f9b5f024-0e8d-499c-a965-af80470edfa8" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fe03d219-3ee0-4cde-9e01-3004ef19f9f1" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a9e4bc2b-4bf7-45b4-a449-4f0defbb46a8" name="InPort" connectedTo="a531410b-bc29-45f1-b39a-69dd321a5d78">
              <profile xsi:type="esdl:SingleValue" id="d91e8187-c38a-4a53-a5f1-b7b84d02f6d3" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="51dbf658-5ebb-4ab3-95a9-4b4a955e824b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a531410b-bc29-45f1-b39a-69dd321a5d78" name="InPort" id="6a950de3-d745-410f-bfdb-0f0af003428f"/>
            <port xsi:type="esdl:OutPort" connectedTo="464d1da0-0a0e-436d-9551-cacf4c7f6643" name="OutPort" id="45ae6ac9-698b-435a-94c9-8590e3ddbd75"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="16" floorArea="3930.0" id="2ddac421-a145-43d4-aee0-c5dd4ebc61c2" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28668833333334" lon="6.8328880000000005"/>
          <asset xsi:type="esdl:EConnection" id="8a0351e9-c8e1-4c59-91fb-220386248773" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="19c6b539-4977-4370-a4db-df9c5e4a0a22" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="6c96d1e0-89f0-4a76-955c-3e7bde090e76" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="70aee261-1373-4c39-ab8b-e8c52083da1f e5f82fc5-3afe-4e2f-b206-e5129da91e8f" name="OutPort" id="a75f4a4d-492d-4726-bdf3-22232b2407ef"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1aef3c83-edba-4043-8597-59b0f583aa3c" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="50d011d1-5da4-4a26-aa86-159b783881ba" name="InPort" connectedTo="6f3efec2-19df-4893-8366-0ef1f592a45f">
              <profile xsi:type="esdl:SingleValue" id="188cbfc4-85a2-4f98-b1e3-1d3feba4f17e" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9799ac2c-2fb0-402d-a473-1ebe1889ced1" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="70aee261-1373-4c39-ab8b-e8c52083da1f" name="InPort" connectedTo="a75f4a4d-492d-4726-bdf3-22232b2407ef">
              <profile xsi:type="esdl:SingleValue" id="49823dfc-5c76-4075-979b-a0ff713da0af" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2569ece0-28fe-4d75-b1f9-e05bba2a4e48" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a75f4a4d-492d-4726-bdf3-22232b2407ef" name="InPort" id="e5f82fc5-3afe-4e2f-b206-e5129da91e8f"/>
            <port xsi:type="esdl:OutPort" connectedTo="50d011d1-5da4-4a26-aa86-159b783881ba" name="OutPort" id="6f3efec2-19df-4893-8366-0ef1f592a45f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640308" scope="NEIGHBOURHOOD">
        <KPIs id="79bec5f8-4e50-4a11-8372-ebb39ff8c62e">
          <kpi xsi:type="esdl:DoubleKPI" id="6897b133-00a8-4c8c-a882-f5c7e86f38c0" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="233868.0" name="woning_nat_meerkost" id="05641205-b096-4537-9a6d-edea962fd559">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="240.0" name="woning_nat_meerkost_co2" id="f4593788-3488-4659-840c-a772d3d24222">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="469.0" name="woning_nat_meerkost_weq" id="2e9363d5-7561-48e1-8120-320e050a839e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="dc7944ad-f998-461f-93d8-6a3d9dc89de2" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="233868.0" name="util_nat_meerkost" id="d668a4d4-ee34-471a-bd9b-674dd14fd4ce">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="240.0" name="util_nat_meerkost_co2" id="752cead7-a504-4db0-9b48-adb2cd645c88">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="469.0" name="util_nat_meerkost_weq" id="11e3f69f-ead4-4cab-8a23-7f50ceca9c03">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="498" id="f01cc181-5c0d-4d10-a3cf-dd30bea579dd" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.10441767068273092"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8955823293172691"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28464866666667" lon="6.8424572"/>
          <asset xsi:type="esdl:EConnection" id="61e1b770-38fc-466a-aaab-dc05b0477d07" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba2aff44-336c-4c92-913b-6148437c152a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="2ae1aee4-4a8e-478a-b4a5-04172421a2c5" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="b7231127-9489-49d6-a9b3-b128a81c7cbe eaad8aca-69cd-4c5e-8f27-014669b12052 34c20382-862e-45df-ad74-439ebff8fb14" name="OutPort" id="a7f11578-28b3-4964-8787-f97bb1c6da0d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a069d340-bdb1-4b35-bdd2-09637d7d2b5d" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="20266292-0ac4-417b-849e-8b6771775205" name="InPort" connectedTo="6172a4bc-4883-4eec-bf53-46460b7d90ff ab3d8e32-78e1-41dd-b9e6-cfb7c4c5d4c3">
              <profile xsi:type="esdl:SingleValue" id="840574b4-41b7-4574-8b48-be2a964ded3e" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8f015aa9-da4e-47c0-a4a8-591bcbca7c78" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2de01fc7-3eea-4dae-b92b-0ea64e4597bf">
              <profile xsi:type="esdl:SingleValue" id="4623f699-5461-4c0f-91fa-9d94710e5dcd" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="551c9bc5-b436-44f6-89e4-c4c1ade4c7d8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b7231127-9489-49d6-a9b3-b128a81c7cbe" name="InPort" connectedTo="a7f11578-28b3-4964-8787-f97bb1c6da0d">
              <profile xsi:type="esdl:SingleValue" id="90fd9ae9-cf56-41c7-a5f7-ea9e7d143fed" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="504facaa-dffb-4fad-addd-506f192463ce" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a7f11578-28b3-4964-8787-f97bb1c6da0d" name="InPort" id="eaad8aca-69cd-4c5e-8f27-014669b12052"/>
            <port xsi:type="esdl:OutPort" connectedTo="20266292-0ac4-417b-849e-8b6771775205" name="OutPort" id="6172a4bc-4883-4eec-bf53-46460b7d90ff"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="26.0" id="048649ad-970e-40a0-a355-649a436995b0" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28464866666667" lon="6.8402338"/>
          <asset xsi:type="esdl:HeatPump" id="b726172b-0de8-4d2c-af46-229772ac73d9" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a7f11578-28b3-4964-8787-f97bb1c6da0d" name="InPort" id="34c20382-862e-45df-ad74-439ebff8fb14"/>
            <port xsi:type="esdl:OutPort" connectedTo="20266292-0ac4-417b-849e-8b6771775205" name="OutPort" id="ab3d8e32-78e1-41dd-b9e6-cfb7c4c5d4c3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640309" scope="NEIGHBOURHOOD">
        <KPIs id="cec63367-7000-4dc6-84ba-a37be62a4fb0">
          <kpi xsi:type="esdl:DoubleKPI" id="7e9a4bf5-d44f-4352-a8b2-b7987b522ab4" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="46458.0" name="woning_nat_meerkost" id="8f26338c-dd91-44b3-b3a3-6ef891de27f5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="164.0" name="woning_nat_meerkost_co2" id="fb87719d-bfad-47ba-ad29-d632fce2cba0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="290.0" name="woning_nat_meerkost_weq" id="4543a967-514a-4ddb-a0a2-2fc03679b819">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7b34325e-0158-417e-a82e-e915aea393a8" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="46458.0" name="util_nat_meerkost" id="970bcbe7-b4af-45ba-8213-c756f4d3bede">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="164.0" name="util_nat_meerkost_co2" id="8d010c56-5671-4cc2-952f-1a5d77f87244">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="290.0" name="util_nat_meerkost_weq" id="a24887e4-2661-45ae-8651-6599354fd7dc">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="34" id="bb4ebaab-6392-476a-aa25-9334f759ea09" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.058823529411764705"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9411764705882353"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2838605" lon="6.8493238000000005"/>
          <asset xsi:type="esdl:EConnection" id="a18acdfe-9098-48a9-80d4-4e2acd42087b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="968fe406-4096-4e96-aad1-ce2c537c4c72" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="9538c764-d86d-4138-8409-eb0c56134a71" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="a8ff3d27-d596-4527-bb5a-93febe2ee3b0 570c6031-92c2-4b2e-b7ba-96b9fb91e924" name="OutPort" id="bde6e9d4-0e50-4b2e-bcd1-0575a6d95405"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f26ece8d-829a-4d61-950a-b9081cd547ff" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9344436b-578e-435c-8688-b6a402088705" name="InPort" connectedTo="b056aeb2-c67c-4711-94b2-7b409153e3df">
              <profile xsi:type="esdl:SingleValue" id="628c41e8-460c-49e2-9e66-95b8a5994ac9" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b01f574f-7c9d-4160-8768-050bb9cc1693" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6ec246d5-d3b0-45ef-941b-c808c7f9ee70">
              <profile xsi:type="esdl:SingleValue" id="904785bb-478e-454d-a30e-48055a7ac89b" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a33b566a-1a0e-42c9-82a2-3da64ad1b27a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a8ff3d27-d596-4527-bb5a-93febe2ee3b0" name="InPort" connectedTo="bde6e9d4-0e50-4b2e-bcd1-0575a6d95405">
              <profile xsi:type="esdl:SingleValue" id="fa7b1770-913e-4a09-b8b5-5a3d410f4e98" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4b99bf94-76e0-4805-bb34-4a24ff83be28" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="bde6e9d4-0e50-4b2e-bcd1-0575a6d95405" name="InPort" id="570c6031-92c2-4b2e-b7ba-96b9fb91e924"/>
            <port xsi:type="esdl:OutPort" connectedTo="9344436b-578e-435c-8688-b6a402088705" name="OutPort" id="b056aeb2-c67c-4711-94b2-7b409153e3df"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="39" floorArea="16425.0" id="6877f5ac-221c-40cc-a8e0-cf90b7b7a716" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28083275" lon="6.8429174"/>
          <asset xsi:type="esdl:EConnection" id="2ed543ff-cbd0-4e60-b1ed-8c5846e73d03" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="17185ae9-19fc-488b-9638-6bcc4f9c5211" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="61e6c312-8939-414a-887d-04f4778adb21" value="35.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="a7215a3b-4dc5-4e79-8a06-8ada814da75f cf21435b-1e24-4019-9192-e02e784f233d b2c370ee-2355-48e6-89dd-37586895ac7c" name="OutPort" id="9e655fa9-d7bd-4e1d-8e47-9c760b85cd27"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="58d0c71c-c7a4-4f82-946e-9a1845cd6db8" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="2e30b477-b973-47be-81fc-f11f49a72f2f" name="InPort" connectedTo="ecc03586-3eea-4d31-8b13-9b346ec13a63">
              <profile xsi:type="esdl:SingleValue" id="772ac68e-4de7-4337-96ac-fce99050124a" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="30ba323d-1172-4314-b68f-f1548764acae" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="ac91dc47-aa72-4131-93f7-91e5ac7a0d47" name="InPort" connectedTo="a416d68c-43f7-482b-b37c-254ec78cde9d">
              <profile xsi:type="esdl:SingleValue" id="9674d697-7f0c-47a3-a1a4-63850858bc91" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="795445aa-61a8-4640-be27-cbb3f6e7dfef" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a7215a3b-4dc5-4e79-8a06-8ada814da75f" name="InPort" connectedTo="9e655fa9-d7bd-4e1d-8e47-9c760b85cd27">
              <profile xsi:type="esdl:SingleValue" id="d1e9e5f7-45d9-426f-801a-593c4bfdbf18" value="28.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d2f16f26-5b81-4a19-98a7-39e02bcec45d" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9e655fa9-d7bd-4e1d-8e47-9c760b85cd27" name="InPort" id="cf21435b-1e24-4019-9192-e02e784f233d"/>
            <port xsi:type="esdl:OutPort" connectedTo="2e30b477-b973-47be-81fc-f11f49a72f2f" name="OutPort" id="ecc03586-3eea-4d31-8b13-9b346ec13a63"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="f884af77-ed44-46e1-8221-c9b0c3db358a" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9e655fa9-d7bd-4e1d-8e47-9c760b85cd27" name="InPort" id="b2c370ee-2355-48e6-89dd-37586895ac7c"/>
            <port xsi:type="esdl:OutPort" connectedTo="ac91dc47-aa72-4131-93f7-91e5ac7a0d47" name="OutPort" id="a416d68c-43f7-482b-b37c-254ec78cde9d"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640400" scope="NEIGHBOURHOOD">
        <KPIs id="b43db425-0e4f-4b62-a50d-2fe280e75579">
          <kpi xsi:type="esdl:DoubleKPI" id="a83565d1-ac13-468e-b491-1e4e0f1a3427" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="443636.0" name="woning_nat_meerkost" id="3b43cd58-f0d9-4ffa-8efc-8a277779b01b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="355.0" name="woning_nat_meerkost_co2" id="6166c3e1-fed0-4ba5-8788-2ed8e113a3d2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="782.0" name="woning_nat_meerkost_weq" id="1754d231-5cba-401e-a43f-82787a67b1c6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c44d7db3-2220-4343-b278-5eb97f4e88f0" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="443636.0" name="util_nat_meerkost" id="08053f07-fc34-4fba-b654-105b09f3ecb3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="355.0" name="util_nat_meerkost_co2" id="7278d8fc-12c3-43fe-a0e0-ff6637571e8f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="782.0" name="util_nat_meerkost_weq" id="12e92563-dbe3-4d33-8b62-ff9baa0d40e4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="531" id="c9163abd-d640-4d11-b385-61bcbe7c87b1" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.054613935969868174"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9453860640301318"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26933833333333" lon="6.822680999999999"/>
          <asset xsi:type="esdl:EConnection" id="549bc2c1-2735-4de8-8dbf-0ff5893914d2" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0239d0e4-0aa6-45e2-9f1e-e4ac55007e93" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="c967e518-661c-4c74-a1e6-e1807f3a395b" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="8328fbe4-47ab-422b-b818-5343dadf3481 23b24092-988a-47f0-884a-9e520239f9cb 338bb061-6361-436a-bf25-946b9b41f8b6" name="OutPort" id="edb72180-54a0-4c69-ba72-ba0f5a81aade"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6a36adc4-6331-4aaf-a266-505d48fc6680" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="4afe930b-ee16-4acf-bfdc-dfc456e6d6fb" name="InPort" connectedTo="dad28593-6b49-4314-8a73-c82088a434ac">
              <profile xsi:type="esdl:SingleValue" id="24ffe26e-0e8a-4855-b3ff-9428ed738cb9" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e86cd0e8-a039-49ac-bb95-725d908b4456" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="88adb8fc-05ce-4308-827f-82432980a5ff">
              <profile xsi:type="esdl:SingleValue" id="e97b61ec-e99a-4ab8-a79c-4ec0227d2c94" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ab73d38c-71df-48bd-a267-d9de44bf601d" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="8328fbe4-47ab-422b-b818-5343dadf3481" name="InPort" connectedTo="edb72180-54a0-4c69-ba72-ba0f5a81aade">
              <profile xsi:type="esdl:SingleValue" id="66ab3d16-f82b-4a9a-8a0e-0abae5b30172" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4955ec30-f20f-494b-bcd0-13eae1b59948" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="23b24092-988a-47f0-884a-9e520239f9cb" name="InPort" connectedTo="edb72180-54a0-4c69-ba72-ba0f5a81aade">
              <profile xsi:type="esdl:SingleValue" id="60fc937b-1ea0-4e05-8dde-cf444d0ef625" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6824bbf6-1f4c-4c02-b05e-9d26b8ad7a3b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="edb72180-54a0-4c69-ba72-ba0f5a81aade" name="InPort" id="338bb061-6361-436a-bf25-946b9b41f8b6"/>
            <port xsi:type="esdl:OutPort" connectedTo="4afe930b-ee16-4acf-bfdc-dfc456e6d6fb" name="OutPort" id="dad28593-6b49-4314-8a73-c82088a434ac"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="145" floorArea="4677.0" id="92ff98ce-1ac8-4343-8052-a2169a63e70b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26790866666666" lon="6.825583"/>
          <asset xsi:type="esdl:EConnection" id="6d9df9bc-3c59-4d50-9c2d-467b06f6db09" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3d0b83a7-4c42-46f7-b063-224b6a58d504" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b82835bd-9ee1-4a2f-880c-6a119a802b66" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="25afac89-f6c6-450c-89ff-616849fec3f7 c4880e65-503e-4903-9f8b-dd4b608f79c9 aa72461c-05d4-4746-9da6-962c8bbe486f" name="OutPort" id="b887e015-5b1a-4165-bac4-5407c5d49f3e"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5f0d9fa6-d899-4f8f-a191-d8e5cec16ecc" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="7f22cf2c-7a8a-46b6-8885-2eab883deff6" name="InPort" connectedTo="09197a61-6ffd-44e0-bf9b-6a1819cb32d8">
              <profile xsi:type="esdl:SingleValue" id="4a157d79-433e-450f-8f5d-12e09ff1a7e7" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c634a6a9-720d-41bb-9415-6e5e6b48deca" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="790ade54-c296-421e-b448-c32de8abbf32" name="InPort" connectedTo="66010c2c-13ed-4010-bc59-93a8cc8e0dab">
              <profile xsi:type="esdl:SingleValue" id="1be26f8b-2345-4ed5-b731-647b789d8d10" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3a9c2c7a-163e-4c0d-abec-0592e379d7f1" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="25afac89-f6c6-450c-89ff-616849fec3f7" name="InPort" connectedTo="b887e015-5b1a-4165-bac4-5407c5d49f3e">
              <profile xsi:type="esdl:SingleValue" id="37273063-9499-4b0f-bd99-ba09919aed21" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0c9f8c41-70c1-4cc6-9766-93e5a8a3a52a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="b887e015-5b1a-4165-bac4-5407c5d49f3e" name="InPort" id="c4880e65-503e-4903-9f8b-dd4b608f79c9"/>
            <port xsi:type="esdl:OutPort" connectedTo="7f22cf2c-7a8a-46b6-8885-2eab883deff6" name="OutPort" id="09197a61-6ffd-44e0-bf9b-6a1819cb32d8"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="43a41c55-e9fc-4d44-a13a-a4fbbfe70358" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="b887e015-5b1a-4165-bac4-5407c5d49f3e" name="InPort" id="aa72461c-05d4-4746-9da6-962c8bbe486f"/>
            <port xsi:type="esdl:OutPort" connectedTo="790ade54-c296-421e-b448-c32de8abbf32" name="OutPort" id="66010c2c-13ed-4010-bc59-93a8cc8e0dab"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640401" scope="NEIGHBOURHOOD">
        <KPIs id="b8f1cec6-33a5-49bf-aaa5-e7ba113e6e5d">
          <kpi xsi:type="esdl:DoubleKPI" id="1be21f86-007a-4749-9621-4f67a949a588" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1018633.0" name="woning_nat_meerkost" id="7530556c-f4f2-43e2-84a1-021001a949e7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="309.0" name="woning_nat_meerkost_co2" id="97687219-0ee6-4372-9efe-6cb1d3367a0e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="706.0" name="woning_nat_meerkost_weq" id="21112b31-c62d-4cf4-aa68-c16345d56379">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="01a500ab-5fc0-4eeb-b8c3-3f6a8b419208" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1018633.0" name="util_nat_meerkost" id="0487eebf-878b-463d-b5bc-328d7df6407f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="309.0" name="util_nat_meerkost_co2" id="75d1eeb2-da8c-4a2a-a993-832b84d6bd2f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="706.0" name="util_nat_meerkost_weq" id="4406494f-8f69-4d6a-b0d6-8f8444437024">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1102" id="8df4a504-f8a4-4cde-9fe3-d0cae1558afa" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.05353901996370236"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9464609800362976"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.259017666666665" lon="6.8150635"/>
          <asset xsi:type="esdl:EConnection" id="4503a37d-df02-41ad-95b3-bed62aa8029b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4c7a0966-26f8-468e-9ea3-bd82fb6f1fbc" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="e8dd5050-7605-47c9-81e4-820cb2a36ead" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="ad0ca8be-1644-4e66-812d-d6aa8c126760 70e391cf-88ea-4308-ad19-2cbeb23473c8 79b2cc78-a25b-4060-9d5d-6501ac6b36fc" name="OutPort" id="d57301c1-f949-4028-9291-c58897c674b3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="694d984f-65e5-425e-b542-dc795524a1ad" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="bb333df2-1d1d-4b05-8ab0-e0c27772d435" name="InPort" connectedTo="ae0cd32b-d9d1-4d86-a459-d03301cc81d2">
              <profile xsi:type="esdl:SingleValue" id="4024d4a1-38c9-408a-8248-5756ee69a1a0" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="04af0a20-f56f-435c-b328-c3e0c2b014f1" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="021ec9ab-8a17-4314-ab3d-9209f353c4fd">
              <profile xsi:type="esdl:SingleValue" id="d0148f10-f53c-4796-a371-fc7d23dc06eb" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="91996789-bcc1-48a9-b15f-2a3ab2ec6fd6" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="ad0ca8be-1644-4e66-812d-d6aa8c126760" name="InPort" connectedTo="d57301c1-f949-4028-9291-c58897c674b3">
              <profile xsi:type="esdl:SingleValue" id="2cb7dc20-7646-4afa-a7d2-fb05cdbd7a98" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="905ebd45-2786-41e0-bbb9-ff5aa395c088" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="70e391cf-88ea-4308-ad19-2cbeb23473c8" name="InPort" connectedTo="d57301c1-f949-4028-9291-c58897c674b3">
              <profile xsi:type="esdl:SingleValue" id="12464b67-deb5-413f-8854-f0a00cb84eb1" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3e1cb6ca-e838-4cb0-8e30-6e84541c716f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d57301c1-f949-4028-9291-c58897c674b3" name="InPort" id="79b2cc78-a25b-4060-9d5d-6501ac6b36fc"/>
            <port xsi:type="esdl:OutPort" connectedTo="bb333df2-1d1d-4b05-8ab0-e0c27772d435" name="OutPort" id="ae0cd32b-d9d1-4d86-a459-d03301cc81d2"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="257" floorArea="44417.0" id="1abb15aa-3eae-41f1-bbbf-ca215ef828a8" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.262275333333335" lon="6.804277"/>
          <asset xsi:type="esdl:EConnection" id="566bbdb3-3c82-4884-91a5-470b9e3ae325" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="04bfc084-ee05-4dbf-92f9-2456449ce85a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="61f176cd-ba0c-45b2-9b86-cbab13123113" value="12.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="cf18a3a6-06dc-4b96-98ea-31092750ec1a efa2450f-775a-455a-86fa-b0a3b45bd236 8c653c58-8e90-4804-acf4-c0d9dd849def" name="OutPort" id="5d2f8f11-ede4-43c6-a634-fd9469164160"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9942a749-46a4-4845-a9da-5b5fc371633d" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="cb476ee4-dcef-4302-a135-7aea6ea4cb30" name="InPort" connectedTo="665a1598-4d8c-48d8-8421-6edf4aa4daf9">
              <profile xsi:type="esdl:SingleValue" id="161393d7-b56e-4357-bca1-fce2663c569f" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="e9c8be88-f7b1-449e-9bf8-057c85917064" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="a6723338-7c69-434e-a048-a27ef4533c8b" name="InPort" connectedTo="77501766-91bd-4b0b-a17d-498cecef55af">
              <profile xsi:type="esdl:SingleValue" id="7d8b4c02-3b31-41ea-9dcd-9cbf5fce35a1" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c5ff59bf-08e9-4122-82b6-75a8a6b34724" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="cf18a3a6-06dc-4b96-98ea-31092750ec1a" name="InPort" connectedTo="5d2f8f11-ede4-43c6-a634-fd9469164160">
              <profile xsi:type="esdl:SingleValue" id="2ed30665-59ef-42e3-ae85-0efe225ea3b2" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b280ea2f-f07b-438d-bbba-f38f4aefe535" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5d2f8f11-ede4-43c6-a634-fd9469164160" name="InPort" id="efa2450f-775a-455a-86fa-b0a3b45bd236"/>
            <port xsi:type="esdl:OutPort" connectedTo="cb476ee4-dcef-4302-a135-7aea6ea4cb30" name="OutPort" id="665a1598-4d8c-48d8-8421-6edf4aa4daf9"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="27247b6f-431c-4a5e-ad11-52cc787f7b34" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5d2f8f11-ede4-43c6-a634-fd9469164160" name="InPort" id="8c653c58-8e90-4804-acf4-c0d9dd849def"/>
            <port xsi:type="esdl:OutPort" connectedTo="a6723338-7c69-434e-a048-a27ef4533c8b" name="OutPort" id="77501766-91bd-4b0b-a17d-498cecef55af"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640402" scope="NEIGHBOURHOOD">
        <KPIs id="e4f44d34-6b25-46da-97e9-f452952fcbe1">
          <kpi xsi:type="esdl:DoubleKPI" id="d552df56-0843-45d1-ba76-de0dee5d9709" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="876068.0" name="woning_nat_meerkost" id="47219685-922a-455a-bf96-5ec3aa71e188">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="303.0" name="woning_nat_meerkost_co2" id="68713340-af31-4ce1-a170-fd50462830b4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="749.0" name="woning_nat_meerkost_weq" id="14c67b10-1d69-4c26-afa4-117402bc9bc8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6ad4e130-9902-435e-89e7-04d355cd14a0" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="876068.0" name="util_nat_meerkost" id="b08cda19-24bb-45c8-8124-055c6cad19bf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="303.0" name="util_nat_meerkost_co2" id="6f183c3e-564b-4644-86b0-f7fcbf0fb5a6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="749.0" name="util_nat_meerkost_weq" id="da2e87d1-6c22-46f8-a09b-54ed600f702f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1109" id="20025fe1-f40b-4f68-aeb4-890e8e792ba9" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.04508566275924256"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9549143372407575"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.257342" lon="6.820790000000001"/>
          <asset xsi:type="esdl:EConnection" id="c5125f4d-fc0b-4bf5-8b3b-d53fe76f38b8" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ab1d0d7a-de93-49e5-9613-f378ca333ec9" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="41c9ba74-2240-43eb-b0be-a9e38f321bf2" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="5b74a92b-d9c1-495c-a2d0-d4695daddf8b 8518e2bc-e2d9-4428-b465-8b0aa0fd1a87 8f723a09-79af-4652-b07a-9a84b6c7de5d" name="OutPort" id="9942d900-7459-4620-b6ea-c59d3d55719a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d553233c-e738-40b3-b2cd-1e514db5d741" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="162ee0a4-82bc-4fb3-9817-77fdb9fae104" name="InPort" connectedTo="acad3757-14bc-4aee-8226-845f30e529e0">
              <profile xsi:type="esdl:SingleValue" id="52339b94-2d56-4959-bc75-a05fd35b57f5" value="28.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2e069903-2199-40a5-9191-3097af56fdaf" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="23acdbf3-3a12-4925-8b61-a139d6875329">
              <profile xsi:type="esdl:SingleValue" id="20cd3e11-b3d6-463a-8971-1c329841c32c" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="98257c94-96f9-41c9-ae81-60498ee944c5" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="5b74a92b-d9c1-495c-a2d0-d4695daddf8b" name="InPort" connectedTo="9942d900-7459-4620-b6ea-c59d3d55719a">
              <profile xsi:type="esdl:SingleValue" id="ba45afa4-aadf-418c-aee9-02855a20c9a0" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="200a457a-c03b-4978-bde3-86999fb92d0e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8518e2bc-e2d9-4428-b465-8b0aa0fd1a87" name="InPort" connectedTo="9942d900-7459-4620-b6ea-c59d3d55719a">
              <profile xsi:type="esdl:SingleValue" id="7167e6ba-db9c-42d1-9300-c9dc9ba8bcb9" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="cd1ce3a4-ce94-4971-9582-52b716f8a041" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9942d900-7459-4620-b6ea-c59d3d55719a" name="InPort" id="8f723a09-79af-4652-b07a-9a84b6c7de5d"/>
            <port xsi:type="esdl:OutPort" connectedTo="162ee0a4-82bc-4fb3-9817-77fdb9fae104" name="OutPort" id="acad3757-14bc-4aee-8226-845f30e529e0"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="100" floorArea="7935.0" id="d39a3b98-e90d-4f2a-913e-ae7d5f055aa7" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.259785" lon="6.8252385"/>
          <asset xsi:type="esdl:EConnection" id="72b89ad0-8eb7-40dc-b26b-65b073705cbb" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="fe3e2d79-db8a-49ad-b979-bc290c702972" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="08cc1a9f-ad85-408e-b30e-fa83df13e9e8" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="235895f3-095e-4ddd-b130-fe489752d6e6 867f194d-aef3-4dd1-9c7c-381cff0378cc ad937602-67f2-48bb-bffd-ccb0ecbff17a" name="OutPort" id="ede1eda6-7d78-4427-82bd-ffbf2218c5e3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d732fa81-3604-4a3d-a947-7785b5ba12f6" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="83eca748-075d-415f-89bc-22fdbb318fb6" name="InPort" connectedTo="04207bad-e3ad-4d56-b299-2d3e2dcaa993">
              <profile xsi:type="esdl:SingleValue" id="e0088cdb-8951-4f75-b013-03fdaecad983" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d409d316-c100-4b5d-9603-ff1b4eed5591" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="93b066a0-8695-4ebd-9955-84191a87f386" name="InPort" connectedTo="b5df6b53-a4a4-4310-8d7c-ee34e6f768f2">
              <profile xsi:type="esdl:SingleValue" id="4ef1ba09-cb62-4729-aa30-bfe7d2c57b2c" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="289336e1-5b4c-4db7-9e69-4ee388c1f97e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="235895f3-095e-4ddd-b130-fe489752d6e6" name="InPort" connectedTo="ede1eda6-7d78-4427-82bd-ffbf2218c5e3">
              <profile xsi:type="esdl:SingleValue" id="5bce9e7c-3121-4af8-8bbb-9e5f68462c7d" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d10c4e39-1aad-46c9-be16-f9b95dbdfc6d" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ede1eda6-7d78-4427-82bd-ffbf2218c5e3" name="InPort" id="867f194d-aef3-4dd1-9c7c-381cff0378cc"/>
            <port xsi:type="esdl:OutPort" connectedTo="83eca748-075d-415f-89bc-22fdbb318fb6" name="OutPort" id="04207bad-e3ad-4d56-b299-2d3e2dcaa993"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="cb5fcec6-ac92-405a-8e41-3009d5fad2ee" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ede1eda6-7d78-4427-82bd-ffbf2218c5e3" name="InPort" id="ad937602-67f2-48bb-bffd-ccb0ecbff17a"/>
            <port xsi:type="esdl:OutPort" connectedTo="93b066a0-8695-4ebd-9955-84191a87f386" name="OutPort" id="b5df6b53-a4a4-4310-8d7c-ee34e6f768f2"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640403" scope="NEIGHBOURHOOD">
        <KPIs id="2cd7a677-3efa-443e-8dd5-e12f7c6440ff">
          <kpi xsi:type="esdl:DoubleKPI" id="881e49a2-2c90-4a32-826e-c55c91187ffd" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1519851.0" name="woning_nat_meerkost" id="2d879fd9-0c21-4788-b08d-6e693b39879f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="387.0" name="woning_nat_meerkost_co2" id="e51459cb-e9ca-4b53-ad40-1d9986ed24ad">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="741.0" name="woning_nat_meerkost_weq" id="602d25b6-47c4-469d-91a5-a6c978a9a7f4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7daedd1f-bdfd-4bc1-a2e5-3edffd948c69" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1519851.0" name="util_nat_meerkost" id="265b077f-0557-4587-b326-2cd389109d04">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="387.0" name="util_nat_meerkost_co2" id="740f1a8e-519f-4573-859b-648b685d8a48">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="741.0" name="util_nat_meerkost_weq" id="fd77adca-cbbb-417e-acaf-e397b923f091">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1641" id="8da0ae8d-eb50-48f9-9a56-0b57125a7d29" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.0030469226081657527"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9969530773918343"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26626066666667" lon="6.8211390000000005"/>
          <asset xsi:type="esdl:EConnection" id="afdfafb7-61ec-4413-b052-708760099a43" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9a142ef1-1af1-4ceb-852c-bf5c9bbd1ca4" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="eac19f77-3936-4067-8807-6f88e2fd98c5" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="f8f21c64-52f3-4291-850d-2fbc79e66bb5 84c8827c-d870-42f8-9fc6-d462b8b6b248 14506bdf-c624-43c4-8ae7-efe82fee0274" name="OutPort" id="5b08e92c-5e1f-42d2-a57f-eaf68430474c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5131ada2-bdec-4c12-8cbe-8ba0ca3ebe72" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="25ec39ed-09d0-4c21-8588-df0a9241e323" name="InPort" connectedTo="85f3ca36-3bac-4f81-904f-9b7f039d4308">
              <profile xsi:type="esdl:SingleValue" id="ef10d040-8290-4240-b07c-4b21c182378b" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="21390004-be41-4ddf-a6a8-3dad8bed6718" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fde79b23-fc6b-4ed0-89f0-8d507421c4f1">
              <profile xsi:type="esdl:SingleValue" id="8fb92fdf-ec5a-4b8c-b969-1f4b6f2c5116" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="37af4cf8-1f3c-4aa6-8729-550d1ab1af40" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="f8f21c64-52f3-4291-850d-2fbc79e66bb5" name="InPort" connectedTo="5b08e92c-5e1f-42d2-a57f-eaf68430474c">
              <profile xsi:type="esdl:SingleValue" id="2d5bd3c2-3675-456c-81b3-4716a5b0ba09" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4457b32d-8a66-49eb-8429-5455d293d5df" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="84c8827c-d870-42f8-9fc6-d462b8b6b248" name="InPort" connectedTo="5b08e92c-5e1f-42d2-a57f-eaf68430474c">
              <profile xsi:type="esdl:SingleValue" id="e8f811ce-4fb4-4b9a-847b-dbaafa269462" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="855273da-8e01-493d-8163-eb6c10ef5a6d" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5b08e92c-5e1f-42d2-a57f-eaf68430474c" name="InPort" id="14506bdf-c624-43c4-8ae7-efe82fee0274"/>
            <port xsi:type="esdl:OutPort" connectedTo="25ec39ed-09d0-4c21-8588-df0a9241e323" name="OutPort" id="85f3ca36-3bac-4f81-904f-9b7f039d4308"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="341" floorArea="53221.0" id="a528ff52-5e77-42f9-bed2-ffebf554e4a0" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26626066666667" lon="6.8159135"/>
          <asset xsi:type="esdl:EConnection" id="76cb02e4-3039-4161-ad40-bd914659f670" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="53e97b37-174d-4bed-92d1-22604bf0a84b" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b33a6b51-e89b-44c6-bcb7-f0ff30ee7df3" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0b51b5c3-6096-4a78-9474-e386f0500ed8 0d2318f0-ac51-4d16-b4b2-e8c6eb5cef6b fb9b941f-bad7-456e-b44d-fa2f1ae75287" name="OutPort" id="c07e18fc-280e-41bb-807f-1af2412337d1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="fe8d8080-31fe-4492-b322-0092c8098d8b" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="420b6a27-3309-45b4-be7f-ff4bfa32b326" name="InPort" connectedTo="38899fbb-1bb9-4e9c-b6f7-0b56af307e06">
              <profile xsi:type="esdl:SingleValue" id="bd34a973-e255-4bd3-9372-04b68f40e645" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="dc6f6748-2db6-408d-afe0-5e53e9973938" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="22ad4a93-dea6-49b4-970c-6c1e2bfaa992" name="InPort" connectedTo="feb41350-9d7a-4f8b-9f32-5c7d157d6b93">
              <profile xsi:type="esdl:SingleValue" id="d7b1b737-6b2b-44fe-a9a7-4225dc4fab50" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c3087015-8f89-4644-ac75-d7c164254b3e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0b51b5c3-6096-4a78-9474-e386f0500ed8" name="InPort" connectedTo="c07e18fc-280e-41bb-807f-1af2412337d1">
              <profile xsi:type="esdl:SingleValue" id="90692c3a-259b-416c-92df-fafa80787fc8" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4d7d8dba-b690-406e-a646-9680bea783bb" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c07e18fc-280e-41bb-807f-1af2412337d1" name="InPort" id="0d2318f0-ac51-4d16-b4b2-e8c6eb5cef6b"/>
            <port xsi:type="esdl:OutPort" connectedTo="420b6a27-3309-45b4-be7f-ff4bfa32b326" name="OutPort" id="38899fbb-1bb9-4e9c-b6f7-0b56af307e06"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="1d3f8444-0712-48be-82d9-97fad132f90f" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c07e18fc-280e-41bb-807f-1af2412337d1" name="InPort" id="fb9b941f-bad7-456e-b44d-fa2f1ae75287"/>
            <port xsi:type="esdl:OutPort" connectedTo="22ad4a93-dea6-49b4-970c-6c1e2bfaa992" name="OutPort" id="feb41350-9d7a-4f8b-9f32-5c7d157d6b93"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640500" scope="NEIGHBOURHOOD">
        <KPIs id="dba68db2-9a4d-47b3-9db6-b0de3bdaf470">
          <kpi xsi:type="esdl:DoubleKPI" id="12e143d8-356f-4516-acc5-3d12f0c9f4d7" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="19919.0" name="woning_nat_meerkost" id="eedbacc5-cff1-45b1-8736-8813397db66c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="166.0" name="woning_nat_meerkost_co2" id="47519777-54c6-45e4-b511-1ba105438685">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="248.0" name="woning_nat_meerkost_weq" id="39678df6-b1d1-476c-b1bc-2bc695c0a2ff">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f693211d-d1d8-4ef0-bb21-600ff7846337" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="19919.0" name="util_nat_meerkost" id="dfd96e6d-2b58-4dbc-ada1-e0c801cdc4a6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="166.0" name="util_nat_meerkost_co2" id="adc0fdb4-2215-41fe-8be4-5b44389d4f91">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="248.0" name="util_nat_meerkost_weq" id="c733973f-1da6-435c-abeb-ce5175bc3121">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2" id="50e05e5c-0ae9-4f61-9dd1-1d8bb0872695" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.245564333333334" lon="6.795955"/>
          <asset xsi:type="esdl:EConnection" id="91fa7ec5-88d5-4b6f-9e75-afe64b49342b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="abe5a55a-faa5-45dd-a7ae-59313cc008a0" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="a885f3e4-eb9e-4b12-a5e6-edd3c52b4ed5" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c50bee80-ad09-4e4e-a6b9-23ce35fb6ec5" name="OutPort" id="77330e9c-f8e0-43f1-a0a7-b0d7002222ea"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6a7be507-4c42-4268-af75-c6d513569799" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9613343a-9ab7-4bcb-a7be-90bef245b6fc" name="InPort" connectedTo="af18764b-3f2b-444d-91a6-cfa02aa314d0">
              <profile xsi:type="esdl:SingleValue" id="d0beb38a-6315-4b7e-85f3-008fd7d8ff3a" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d337bcda-4354-4309-a1f8-de2187ae2838" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="77330e9c-f8e0-43f1-a0a7-b0d7002222ea" name="InPort" id="c50bee80-ad09-4e4e-a6b9-23ce35fb6ec5"/>
            <port xsi:type="esdl:OutPort" connectedTo="9613343a-9ab7-4bcb-a7be-90bef245b6fc" name="OutPort" id="af18764b-3f2b-444d-91a6-cfa02aa314d0"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="8" floorArea="10185.0" id="d06a8b17-07a5-46f9-82fd-3e434ef89645" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.24333266666667" lon="6.792044000000001"/>
          <asset xsi:type="esdl:EConnection" id="a1b6a2ff-dd3c-4026-96a8-10b706574524" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cd3f4600-9176-4216-a063-84c4b49f5c5b" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="74e6a1df-bf8c-4d76-bd81-d795365c5ece" value="34.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="f26b7784-4320-4316-b548-302afded0030 ba2b852f-b49e-492c-89cc-2b9dca91ec14 adb711d1-d8c6-4fa6-b681-9c35dd18847a" name="OutPort" id="50c3a602-e6cb-470a-84da-e5087f4d639f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9e5a4ea4-0d74-445d-9491-f5e2ec379998" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="844bd2e1-2a74-4a00-bf41-285e120a660c" name="InPort" connectedTo="91e71c00-dd7e-45c2-aa7e-86ba01ea6505">
              <profile xsi:type="esdl:SingleValue" id="0f3bd411-52ed-45d4-8a4e-16ac1d689edd" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="6c62d07d-7cce-4320-be62-d9abbcefdadb" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="dee164e4-e468-4f16-adf4-3607d6e58168" name="InPort" connectedTo="4d91cb92-f9f4-489b-82b1-b1037e9fc0e2">
              <profile xsi:type="esdl:SingleValue" id="8ee8eb91-70eb-4add-adc6-7b47a144009a" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3c8601e8-533f-4582-b8a4-9dd57786d706" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f26b7784-4320-4316-b548-302afded0030" name="InPort" connectedTo="50c3a602-e6cb-470a-84da-e5087f4d639f">
              <profile xsi:type="esdl:SingleValue" id="bb05458e-d911-4d76-a2a6-505b48a97310" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="98178b9a-ea62-4ef0-a945-e63a2da0fdbc" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="50c3a602-e6cb-470a-84da-e5087f4d639f" name="InPort" id="ba2b852f-b49e-492c-89cc-2b9dca91ec14"/>
            <port xsi:type="esdl:OutPort" connectedTo="844bd2e1-2a74-4a00-bf41-285e120a660c" name="OutPort" id="91e71c00-dd7e-45c2-aa7e-86ba01ea6505"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="66a20412-71f4-49d1-8675-02b4993202b2" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="50c3a602-e6cb-470a-84da-e5087f4d639f" name="InPort" id="adb711d1-d8c6-4fa6-b681-9c35dd18847a"/>
            <port xsi:type="esdl:OutPort" connectedTo="dee164e4-e468-4f16-adf4-3607d6e58168" name="OutPort" id="4d91cb92-f9f4-489b-82b1-b1037e9fc0e2"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640501" scope="NEIGHBOURHOOD">
        <KPIs id="45921472-ed91-4383-91eb-bb7b9181fd72">
          <kpi xsi:type="esdl:DoubleKPI" id="6439a97e-62bb-452e-bb51-43e03c3667f5" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1253944.0" name="woning_nat_meerkost" id="b46c0643-546b-4f30-a3db-9ec6b58488db">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="woning_nat_meerkost_co2" id="385c8fb9-937a-431c-a407-031376f11543">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="571.0" name="woning_nat_meerkost_weq" id="2a3abe13-dc82-4e9f-a191-c8c647e988cf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ce015cee-ef5d-4234-9142-e8fc63e2c93f" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1253944.0" name="util_nat_meerkost" id="ce9db994-3479-429a-9334-0aec464ac33d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="util_nat_meerkost_co2" id="5ca40ec9-9969-4fce-9eab-f170cd81b91f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="571.0" name="util_nat_meerkost_weq" id="65d608d4-fde3-47a0-aada-595860039270">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1916" id="2630f542-46b2-477c-bce9-8e10a922bc3f" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.21555323590814196"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.784446764091858"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.255052" lon="6.797028"/>
          <asset xsi:type="esdl:EConnection" id="60ce4782-c1cb-4c9e-806a-b105c6f7436e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a4d9eaff-3ec2-40c3-8a42-0f4027a44cdc" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="6136bbd9-90a5-4288-8ae2-4183478b77df" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="f3fe7465-f53b-435a-a25a-9b8b87e91875 d3750d20-f533-44f6-bb24-6a50b7f7f8ff" name="OutPort" id="6494cdf4-aac2-4d6e-b49e-4f43282c6823"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="519dcc66-8c1e-44f3-b9dd-eb28f4dc8fc1" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="862640a4-adc1-456d-bf27-d73bb581a783" name="InPort" connectedTo="72a03195-2c6a-4774-b44d-8ad5f3bbce35">
              <profile xsi:type="esdl:SingleValue" id="3c704d08-ac5b-4bf6-80d2-def35c760a2f" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="11603f06-6f6a-4ffe-98d5-c94c60d41f36" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ea2b288e-f74c-4938-a59d-37ff3378a512">
              <profile xsi:type="esdl:SingleValue" id="22ca8a51-0f5c-4bb0-a006-3154a9ca3cfb" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="21afb4ed-6b09-4e2a-9825-2c39b5a289db" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f3fe7465-f53b-435a-a25a-9b8b87e91875" name="InPort" connectedTo="6494cdf4-aac2-4d6e-b49e-4f43282c6823">
              <profile xsi:type="esdl:SingleValue" id="415d2971-52f9-4783-8f5f-336f3247a2f5" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="14d89cf0-08da-43d7-81d9-4a9270a1defe" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6494cdf4-aac2-4d6e-b49e-4f43282c6823" name="InPort" id="d3750d20-f533-44f6-bb24-6a50b7f7f8ff"/>
            <port xsi:type="esdl:OutPort" connectedTo="862640a4-adc1-456d-bf27-d73bb581a783" name="OutPort" id="72a03195-2c6a-4774-b44d-8ad5f3bbce35"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="154" floorArea="36615.0" id="25d8b5eb-7ab5-4c65-9900-a1da8430632b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.255052" lon="6.80064"/>
          <asset xsi:type="esdl:EConnection" id="83b0884a-0566-48bd-b609-3d7bc69cac0e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7e321c13-6860-48e6-9e56-b6a918cebebf" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="c7dad920-0cdc-4429-970b-8efa2b5ccdff" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="5026c135-9236-458d-a5f9-b2382362e890 f349f658-c244-4c15-8229-b10644bac2c2 57c9a463-058c-4da8-975c-141692bf9dc4" name="OutPort" id="629beeec-3b6d-439a-9691-989703a82f8f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="204a2f31-d2ce-45b6-85f3-869cf37e9a0d" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="b3a6bf9c-a76e-43e0-9f1c-8df123db894c" name="InPort" connectedTo="b39ddd13-5ec9-4b25-94a3-51fed8328361">
              <profile xsi:type="esdl:SingleValue" id="4cdc5cef-06e0-41a1-a9c6-e495ff5969b2" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3fd10c26-1865-4375-829b-02ddabc72336" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="63456145-a018-4570-8c5b-796efca55381" name="InPort" connectedTo="4f38d015-9555-4666-afab-af5b299ae33b">
              <profile xsi:type="esdl:SingleValue" id="e297acac-17d1-439e-87ff-1e5a469344f0" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="49c4a877-ad12-43f9-b222-1cdfa2e552b2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="5026c135-9236-458d-a5f9-b2382362e890" name="InPort" connectedTo="629beeec-3b6d-439a-9691-989703a82f8f">
              <profile xsi:type="esdl:SingleValue" id="8632b2de-0039-473f-a96b-9f792f881a45" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="084f4de0-0a60-4a31-82e8-2e3b77d03f9e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="629beeec-3b6d-439a-9691-989703a82f8f" name="InPort" id="f349f658-c244-4c15-8229-b10644bac2c2"/>
            <port xsi:type="esdl:OutPort" connectedTo="b3a6bf9c-a76e-43e0-9f1c-8df123db894c" name="OutPort" id="b39ddd13-5ec9-4b25-94a3-51fed8328361"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="54860695-3a2b-4ced-9c75-cb38318de2e2" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="629beeec-3b6d-439a-9691-989703a82f8f" name="InPort" id="57c9a463-058c-4da8-975c-141692bf9dc4"/>
            <port xsi:type="esdl:OutPort" connectedTo="63456145-a018-4570-8c5b-796efca55381" name="OutPort" id="4f38d015-9555-4666-afab-af5b299ae33b"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640502" scope="NEIGHBOURHOOD">
        <KPIs id="95087f0d-39d3-4b20-a9f0-0cc6aa5a7053">
          <kpi xsi:type="esdl:DoubleKPI" id="d420f5bf-141b-4df1-b2c1-482ee3360beb" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="529194.0" name="woning_nat_meerkost" id="1c49c27e-d06f-4618-b67a-26770c1c0445">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="291.0" name="woning_nat_meerkost_co2" id="016c9e5e-9031-4066-af2b-3c1a8471ef32">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="686.0" name="woning_nat_meerkost_weq" id="1e44ab14-7d7b-4dd1-bb30-6b1aaf038cef">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="089b1af1-d511-4b96-96b2-0c6ecaa183de" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="529194.0" name="util_nat_meerkost" id="34a88cd6-7330-4b58-8f47-aa0950ec8252">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="291.0" name="util_nat_meerkost_co2" id="96c58096-c641-426c-8565-dd048e841a01">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="686.0" name="util_nat_meerkost_weq" id="460e8a1a-a607-49a3-b9a1-39f49723846f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="721" id="74476bbf-cd99-4e3a-b448-b3abd8669b11" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.20527045769764216"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7947295423023578"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.252138" lon="6.798375"/>
          <asset xsi:type="esdl:EConnection" id="12b627e3-1876-4e08-9861-6b53a4e1b266" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="86c0c5d9-e3fc-4796-93f0-7809a69b443f" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="8e2554a7-dc12-4381-a9f7-21dde1776a55" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c7f126c3-dd87-4a55-ad07-91817c6a7859 837ef0c9-1b51-4b79-9867-912e36393c6e e9be4756-6e3b-45d0-bd91-615d5964bbf4" name="OutPort" id="e11eddf8-32bf-4ea0-ba1f-4c3bc0665766"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5e158f0f-f010-424f-b08d-c55790f7c32e" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="c26fdd65-8553-46ea-9ca7-0ceb88514adb" name="InPort" connectedTo="92f7e458-5ec1-4e0e-b835-3faed1314ccd">
              <profile xsi:type="esdl:SingleValue" id="eaa71792-a0ec-4e9a-9e50-61d188603c57" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f44fa6f6-857e-49e4-9905-f5cc5aa2c29c" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f0ad927a-3e6f-4f25-b146-2cb2048f68d3">
              <profile xsi:type="esdl:SingleValue" id="d6c94593-4ce0-4ef8-96ee-f7657ae1b57a" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9aff6fd2-c372-4a3b-adad-902e8518d59c" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c7f126c3-dd87-4a55-ad07-91817c6a7859" name="InPort" connectedTo="e11eddf8-32bf-4ea0-ba1f-4c3bc0665766">
              <profile xsi:type="esdl:SingleValue" id="c8c143b8-16b9-48c0-819d-9f790f74f6b4" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a051262b-77a7-46dd-9d46-93fc60575328" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="837ef0c9-1b51-4b79-9867-912e36393c6e" name="InPort" connectedTo="e11eddf8-32bf-4ea0-ba1f-4c3bc0665766">
              <profile xsi:type="esdl:SingleValue" id="9ba3392e-8d5c-413a-863b-2eb40bef673b" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b6fbe944-4dd1-4b9f-8492-96675a489aa0" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e11eddf8-32bf-4ea0-ba1f-4c3bc0665766" name="InPort" id="e9be4756-6e3b-45d0-bd91-615d5964bbf4"/>
            <port xsi:type="esdl:OutPort" connectedTo="c26fdd65-8553-46ea-9ca7-0ceb88514adb" name="OutPort" id="92f7e458-5ec1-4e0e-b835-3faed1314ccd"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="92" floorArea="6619.0" id="bd4ce05b-4e1e-4ab7-beae-d00ff3db1606" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.252138" lon="6.794659"/>
          <asset xsi:type="esdl:EConnection" id="b13b9374-eff6-4595-83c1-4ab8f317620d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4f8809c3-e732-4e18-8237-3c0b72d0abcd" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="4e2ccfec-df6c-4d31-87cf-7cefaf46909a" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="200843dd-ff21-4488-aee4-0219be66477b a8aa825e-1bb4-4371-88c3-4548bd76897a 7fce71dd-c48c-4995-b1ca-6107e18ec522" name="OutPort" id="e75fb6fb-7ca4-48f9-a7df-d5cc7b5370b7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ac358aa6-40fc-417b-a3a0-7bee00aa30b0" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="0a8c24b3-8bc1-4abc-82c8-c9620c29a787" name="InPort" connectedTo="0bd890a4-0435-4f45-bb4c-0987c79aaf38">
              <profile xsi:type="esdl:SingleValue" id="5eb80b35-fe35-4147-81e2-a65076d7ce51" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0552edfc-3123-40e4-974a-2614c2a7b79e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="420340b9-8654-4605-93c4-87cfa763cf43" name="InPort" connectedTo="5eabe857-edd9-4aa4-8d3e-8701c53abb4d">
              <profile xsi:type="esdl:SingleValue" id="1583ff1f-82a1-439f-8d65-98cf4961a2e8" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="397bf239-f904-4a9e-859c-e757b05e0c26" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="200843dd-ff21-4488-aee4-0219be66477b" name="InPort" connectedTo="e75fb6fb-7ca4-48f9-a7df-d5cc7b5370b7">
              <profile xsi:type="esdl:SingleValue" id="a12b87af-1326-4c1d-9f82-6abc5cc8c3cf" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9fd5c9ab-2faf-4354-bd7f-41e773ba9435" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e75fb6fb-7ca4-48f9-a7df-d5cc7b5370b7" name="InPort" id="a8aa825e-1bb4-4371-88c3-4548bd76897a"/>
            <port xsi:type="esdl:OutPort" connectedTo="0a8c24b3-8bc1-4abc-82c8-c9620c29a787" name="OutPort" id="0bd890a4-0435-4f45-bb4c-0987c79aaf38"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="c138780d-653c-476d-86b4-91f52116518d" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e75fb6fb-7ca4-48f9-a7df-d5cc7b5370b7" name="InPort" id="7fce71dd-c48c-4995-b1ca-6107e18ec522"/>
            <port xsi:type="esdl:OutPort" connectedTo="420340b9-8654-4605-93c4-87cfa763cf43" name="OutPort" id="5eabe857-edd9-4aa4-8d3e-8701c53abb4d"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640503" scope="NEIGHBOURHOOD">
        <KPIs id="64307d51-209c-4676-a6f2-117c44490414">
          <kpi xsi:type="esdl:DoubleKPI" id="a4013d44-69a2-4aec-acdb-a4647c7adeb8" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="61149.0" name="woning_nat_meerkost" id="1b45c29f-7e75-4dbf-92b6-29d6cd6e16a2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="209.0" name="woning_nat_meerkost_co2" id="d4dc29e8-299d-4ef9-92ce-815e0ee5745a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="310.0" name="woning_nat_meerkost_weq" id="95c52f5f-4716-4bfe-856f-9337283c31be">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ab0287e1-13e6-4ea1-a9ab-386afd2213c2" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="61149.0" name="util_nat_meerkost" id="58d3ebf1-2039-4226-bbf3-8d001ccc3f46">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="209.0" name="util_nat_meerkost_co2" id="1d32449c-5d8d-4ad3-a43c-5fb5312ff820">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="310.0" name="util_nat_meerkost_weq" id="37b66be4-9242-4670-bff8-79c7217cbbf5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="26" id="45ed7c14-da5b-4d51-94f8-ea75e2152282" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.07692307692307693"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9230769230769231"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.248560999999995" lon="6.7953341428571425"/>
          <asset xsi:type="esdl:EConnection" id="489ae756-0d9d-41b6-aae7-23f5ce42f13d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="2015c97c-b7ec-46ac-b423-1421f5adfc4a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="75515c94-1cb5-4608-b5b8-1179f4de63e4" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="6278f598-7b5f-4242-b120-1c9818655897 670e14cd-6cbd-421e-8140-e165706883c8" name="OutPort" id="6140f1b7-e3fa-4613-9b27-2cd88ee75d5a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="be5e0f10-f4c6-44e0-88ee-b9a0239471ca" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="14a18bb7-8703-462b-8379-111c47bc3944" name="InPort" connectedTo="b897e27f-84f4-4340-b562-7f418291086c">
              <profile xsi:type="esdl:SingleValue" id="985d9ce1-0a20-4224-99a7-4d52fb238cd7" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3a0547b6-f475-4a7d-ad09-c909ffaff094" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a199e417-c431-4e0a-9902-ddf0d1e66d33">
              <profile xsi:type="esdl:SingleValue" id="54e16f5e-b44a-437a-962c-20857e400586" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bc2ef0c4-eddd-4a05-b9fc-8f99d29bf4c2" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6278f598-7b5f-4242-b120-1c9818655897" name="InPort" connectedTo="6140f1b7-e3fa-4613-9b27-2cd88ee75d5a">
              <profile xsi:type="esdl:SingleValue" id="299be518-8b89-4a96-b7c1-a45b17ac7fa3" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="44eefe16-9212-4bbd-8686-92306fd7fd1e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6140f1b7-e3fa-4613-9b27-2cd88ee75d5a" name="InPort" id="670e14cd-6cbd-421e-8140-e165706883c8"/>
            <port xsi:type="esdl:OutPort" connectedTo="14a18bb7-8703-462b-8379-111c47bc3944" name="OutPort" id="b897e27f-84f4-4340-b562-7f418291086c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="33" floorArea="22280.0" id="dd75c665-3d66-4517-93eb-2ac1d7719146" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.248560999999995" lon="6.797444857142858"/>
          <asset xsi:type="esdl:EConnection" id="37949b8b-5be2-4e13-ad11-b52601c4316c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="43b358eb-8122-418b-982d-283532a09fb2" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="fd965ff3-aa69-4cbf-a50a-a1d05b6a3c1d" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="7fca7b70-cc63-45d7-80a7-96940475cc6a aebd2de5-b560-4de1-bc15-cf80cb41f309 ceabc510-428a-481b-bbbb-0e0962b9fddc" name="OutPort" id="e575ca88-13d5-4eff-a34f-4d830ad9b495"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e6c59fb8-b314-4a2f-927c-407aaa39a387" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="31a594eb-1ca9-4e91-84e6-77ab1b53819b" name="InPort" connectedTo="1d2353a4-d043-45fc-aa24-4e18b376b93b">
              <profile xsi:type="esdl:SingleValue" id="1d464cd6-1fdb-446b-b5de-5f0f4061b765" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b9734432-18f3-4085-8d05-e33589b085b5" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="f201a006-95d1-4b98-86ad-bd0938f866b0" name="InPort" connectedTo="8f7559c3-4795-4d5a-9915-649afcc3253a">
              <profile xsi:type="esdl:SingleValue" id="09e8ef02-7d1f-4403-887d-178dd40e29b9" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="177ef09e-d13b-495c-a9ff-88f19d75633f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7fca7b70-cc63-45d7-80a7-96940475cc6a" name="InPort" connectedTo="e575ca88-13d5-4eff-a34f-4d830ad9b495">
              <profile xsi:type="esdl:SingleValue" id="cee5ef35-c58f-47c6-b6c8-fa69464208de" value="14.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b5e27a25-e1f8-40e9-adaf-b4071865ec3c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e575ca88-13d5-4eff-a34f-4d830ad9b495" name="InPort" id="aebd2de5-b560-4de1-bc15-cf80cb41f309"/>
            <port xsi:type="esdl:OutPort" connectedTo="31a594eb-1ca9-4e91-84e6-77ab1b53819b" name="OutPort" id="1d2353a4-d043-45fc-aa24-4e18b376b93b"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="dfe882a6-81bd-4fd1-a336-adf215283bbf" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e575ca88-13d5-4eff-a34f-4d830ad9b495" name="InPort" id="ceabc510-428a-481b-bbbb-0e0962b9fddc"/>
            <port xsi:type="esdl:OutPort" connectedTo="f201a006-95d1-4b98-86ad-bd0938f866b0" name="OutPort" id="8f7559c3-4795-4d5a-9915-649afcc3253a"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640504" scope="NEIGHBOURHOOD">
        <KPIs id="7cdbb258-6162-477a-9140-fa8beac8620e">
          <kpi xsi:type="esdl:DoubleKPI" id="0b649a81-d397-4a48-b60e-2e111f2a1eb6" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289559.0" name="woning_nat_meerkost" id="0955c842-46f5-4f32-a7f6-68ce77a9784b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="285.0" name="woning_nat_meerkost_co2" id="e94b29e1-0252-48ec-9c86-33c49626f2c3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="461.0" name="woning_nat_meerkost_weq" id="8ff00760-5a9f-4f41-8025-7f1791d958c6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="30cfb273-8390-4bab-85b4-dd62296bb608" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289559.0" name="util_nat_meerkost" id="c12273f5-0c8f-4128-a612-89a2151797b7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="285.0" name="util_nat_meerkost_co2" id="9d14e010-5d00-4b00-961b-c5392359eb33">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="461.0" name="util_nat_meerkost_weq" id="8a79b26f-5d61-4a8c-8192-bbef4915dae3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="551" id="134ea641-cc49-45b5-aedc-6df1264b3448" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.25045372050816694"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7495462794918331"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2551545" lon="6.802978749999999"/>
          <asset xsi:type="esdl:EConnection" id="9d9109ff-f343-4d25-b61a-c38fcf5d5656" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="83f691fd-7f3d-488d-af18-4ceec9ad6b70" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="dbfa9fae-1978-42fd-9cc4-1e29bbba08a9" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="8322742e-d900-41cc-a088-990cee1f9640 ef21b610-bfab-4609-85d8-1c1ca9a6ae1e" name="OutPort" id="6f62cf24-069e-4a13-8b96-73c3641b1e90"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4fbf3167-1796-4052-90d6-99ba419bc1f3" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="f7341d7f-1720-4f10-aea9-0b16253d0356" name="InPort" connectedTo="3a83a95e-60a2-437e-82db-58b3ca9cad35">
              <profile xsi:type="esdl:SingleValue" id="34d79e87-ed12-4514-8cbf-bef76d984ecb" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="453d5aaf-7c72-412c-a5e4-568b0790d795" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a600a76f-a14c-4a9b-936b-49f29d0b23de">
              <profile xsi:type="esdl:SingleValue" id="8cf21a51-a603-4aae-8a51-43cb625a79da" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4c853607-310c-48f5-8ca9-7af500e07823" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8322742e-d900-41cc-a088-990cee1f9640" name="InPort" connectedTo="6f62cf24-069e-4a13-8b96-73c3641b1e90">
              <profile xsi:type="esdl:SingleValue" id="c6fa2391-a22d-48e7-81dd-999b16934eb0" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="90339977-28dc-42d7-ae7a-53d2bfdd684f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6f62cf24-069e-4a13-8b96-73c3641b1e90" name="InPort" id="ef21b610-bfab-4609-85d8-1c1ca9a6ae1e"/>
            <port xsi:type="esdl:OutPort" connectedTo="f7341d7f-1720-4f10-aea9-0b16253d0356" name="OutPort" id="3a83a95e-60a2-437e-82db-58b3ca9cad35"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="40" floorArea="9952.0" id="7faf2581-d9fc-4d40-a464-bf7882e1979a" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25734925" lon="6.802978749999999"/>
          <asset xsi:type="esdl:EConnection" id="a9e59e01-d97a-43dd-8a3d-679d0ed81ab7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b31b7cff-50c8-4095-a251-dc9210b7671a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="7463f165-d4db-4ee1-bc46-097111b9229a" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="ad662c1a-dc25-499a-aa77-c8314eb8f6cf c12a00e7-fb81-4e26-8775-e5de6489ac0a 837f1728-a514-45e4-b618-05fec5a565da" name="OutPort" id="95c06814-6927-4367-864f-067ccfd6cf83"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8e6a8614-ec8d-4386-8fbb-3b5e67ac94ec" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3443c1ad-c2e5-4108-a279-a0c2fa45504f" name="InPort" connectedTo="f18dbab9-022a-4acb-9551-fccbe7f70bb5">
              <profile xsi:type="esdl:SingleValue" id="76fd66fc-d40b-4cc0-9185-2e7ccd1c92c2" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3c72fe7e-10ed-4cdc-9216-ce663d1e7ff0" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="13fdfa93-4993-4410-aeda-9f366d3af9ba" name="InPort" connectedTo="10394424-e9c3-43c6-b39f-e1f9c9d0debf">
              <profile xsi:type="esdl:SingleValue" id="9af06f9e-a679-41bf-b088-927d8d644616" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6ab50544-1c31-44fe-968f-7b3f5007c4f4" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ad662c1a-dc25-499a-aa77-c8314eb8f6cf" name="InPort" connectedTo="95c06814-6927-4367-864f-067ccfd6cf83">
              <profile xsi:type="esdl:SingleValue" id="80de905e-7138-4cb3-8e89-b8288771c36f" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="ec502fe3-0ff8-4740-84fd-180a5b72ceb8" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="95c06814-6927-4367-864f-067ccfd6cf83" name="InPort" id="c12a00e7-fb81-4e26-8775-e5de6489ac0a"/>
            <port xsi:type="esdl:OutPort" connectedTo="3443c1ad-c2e5-4108-a279-a0c2fa45504f" name="OutPort" id="f18dbab9-022a-4acb-9551-fccbe7f70bb5"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="6d521446-3c99-4caf-9ec7-4d40dc56d9c4" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="95c06814-6927-4367-864f-067ccfd6cf83" name="InPort" id="837f1728-a514-45e4-b618-05fec5a565da"/>
            <port xsi:type="esdl:OutPort" connectedTo="13fdfa93-4993-4410-aeda-9f366d3af9ba" name="OutPort" id="10394424-e9c3-43c6-b39f-e1f9c9d0debf"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640505" scope="NEIGHBOURHOOD">
        <KPIs id="d8461620-06f8-4ac2-af16-8f4623ac6c11">
          <kpi xsi:type="esdl:DoubleKPI" id="38397965-308c-47e4-aad1-38bc6dd5b82f" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="364851.0" name="woning_nat_meerkost" id="fb3b802a-81b8-418f-899f-f064af8da65c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="278.0" name="woning_nat_meerkost_co2" id="b875fa36-010e-4528-a5ec-283af08fb052">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="624.0" name="woning_nat_meerkost_weq" id="a177b70a-fedc-4580-ad81-10fd7d8a8c0f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9d4aa17d-76bb-488b-803d-75ac697a784f" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="364851.0" name="util_nat_meerkost" id="746d1707-5c0c-43ce-9417-16ccff458220">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="278.0" name="util_nat_meerkost_co2" id="415e4852-b0d3-4a58-a0a0-fde78926ceb2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="624.0" name="util_nat_meerkost_weq" id="98d27b97-12e8-4f77-b429-3897a97bd6ba">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="476" id="bae62651-211b-4612-a095-470a1bfe2ac5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.1869747899159664"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8130252100840336"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.252271" lon="6.806773"/>
          <asset xsi:type="esdl:EConnection" id="5db6b281-a20c-4bfc-ab38-db94498c7b8c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="29f68fd5-7ab2-4b8f-b4bc-c332aa3afeca" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="dc086d83-599e-46ce-9e10-510b7cf8bd51" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="423157d7-4a63-46e8-9204-918372aff03b 8f0f6132-a6e0-48bc-aac0-64763caccb2e 78b030c7-6567-47f4-9707-63d86e5b2625" name="OutPort" id="befd59d3-c3e6-4f8d-9159-6dd5b34310c1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e34c02ab-d9bb-4f8c-bfaf-862e95dc04b0" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="4adce909-0a44-402c-8562-37c20910c021" name="InPort" connectedTo="10d61904-3645-41fe-87c7-808128d01b07">
              <profile xsi:type="esdl:SingleValue" id="1ea33857-2a14-4035-a2cb-38035308ec43" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="993971a1-e9b6-4c30-97a1-c5511c5396a0" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="96bbd993-8329-4726-8c11-d478628593bf">
              <profile xsi:type="esdl:SingleValue" id="5186ac33-3362-47db-85be-6e6e89552874" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9e007673-fe2b-49b9-b1c3-410f808afaca" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="423157d7-4a63-46e8-9204-918372aff03b" name="InPort" connectedTo="befd59d3-c3e6-4f8d-9159-6dd5b34310c1">
              <profile xsi:type="esdl:SingleValue" id="05cc19a2-eff9-4093-b584-e9a3e1429b49" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="23c97640-4760-411f-abac-41ce27ba998a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8f0f6132-a6e0-48bc-aac0-64763caccb2e" name="InPort" connectedTo="befd59d3-c3e6-4f8d-9159-6dd5b34310c1">
              <profile xsi:type="esdl:SingleValue" id="fcccfd57-4eb9-4b94-8348-3c5fad497cb6" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="bad6a3f2-c87f-4460-be93-25352505cf31" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="befd59d3-c3e6-4f8d-9159-6dd5b34310c1" name="InPort" id="78b030c7-6567-47f4-9707-63d86e5b2625"/>
            <port xsi:type="esdl:OutPort" connectedTo="4adce909-0a44-402c-8562-37c20910c021" name="OutPort" id="10d61904-3645-41fe-87c7-808128d01b07"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="34" floorArea="14187.0" id="3494c737-b65a-4aa6-9b22-995547a541f3" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.248782" lon="6.806773"/>
          <asset xsi:type="esdl:EConnection" id="554e2a30-cf65-4880-96ef-c07d4beae428" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="98372487-bc15-47f6-9c83-fe927aa15d86" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="be1000a2-5dd4-4d28-b1b8-7f1f56103ae1" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="df20828a-b5d3-4ca2-a420-aa83d0be7b93 4f6021a3-9b4c-4349-972a-1a67da42676a 57955d0e-e8ed-4fcd-8164-7899408cc8c6" name="OutPort" id="3b013f96-2818-4bbc-843b-b5da348865ab"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="56cae2f7-98b2-4d1f-b5bf-e2d807574ddb" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="915c42f1-87db-4027-9057-edd48697ae32" name="InPort" connectedTo="1f36c0b3-4b8f-499f-8f8e-78911a1f3be2">
              <profile xsi:type="esdl:SingleValue" id="3c12bf76-882e-4ede-8f52-ebe7873b6204" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="cc819508-c858-4515-b904-027169076363" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="7bb88467-e571-494f-aba9-af5d1938dc6a" name="InPort" connectedTo="b24dfeb7-6111-4d38-8fcb-96415660f99c">
              <profile xsi:type="esdl:SingleValue" id="a364c918-006c-40ce-a218-c1adbd75e260" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3e0a078b-85cf-4aed-b5f7-27f60500f7e4" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="df20828a-b5d3-4ca2-a420-aa83d0be7b93" name="InPort" connectedTo="3b013f96-2818-4bbc-843b-b5da348865ab">
              <profile xsi:type="esdl:SingleValue" id="b7bb6bc6-ee7b-420f-93c9-ff992b1e1612" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="29588a56-370f-4742-b5c6-5e00e37204f5" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3b013f96-2818-4bbc-843b-b5da348865ab" name="InPort" id="4f6021a3-9b4c-4349-972a-1a67da42676a"/>
            <port xsi:type="esdl:OutPort" connectedTo="915c42f1-87db-4027-9057-edd48697ae32" name="OutPort" id="1f36c0b3-4b8f-499f-8f8e-78911a1f3be2"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="0c79c143-e512-4b0d-87e5-b8275c52727b" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3b013f96-2818-4bbc-843b-b5da348865ab" name="InPort" id="57955d0e-e8ed-4fcd-8164-7899408cc8c6"/>
            <port xsi:type="esdl:OutPort" connectedTo="7bb88467-e571-494f-aba9-af5d1938dc6a" name="OutPort" id="b24dfeb7-6111-4d38-8fcb-96415660f99c"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640506" scope="NEIGHBOURHOOD">
        <KPIs id="6d30f2bb-08c9-4522-9106-dd5b7983e2e8">
          <kpi xsi:type="esdl:DoubleKPI" id="6156f5e5-9ef5-48d9-b49d-43b9e25ec0f4" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="10350.0" name="woning_nat_meerkost" id="ab4e547a-c3b3-482a-b626-70ed75ec3352">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="204.0" name="woning_nat_meerkost_co2" id="aec9c3b5-c5b0-4187-ba9f-2e0b2e7ec43e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="845.0" name="woning_nat_meerkost_weq" id="52e9041e-9a1b-478f-9365-4993d1252cbb">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="edbcb2fe-6541-4f3c-86b4-bc3a6c37517e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="10350.0" name="util_nat_meerkost" id="00f1c561-e9ba-4c45-a69a-767a36af3a71">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="204.0" name="util_nat_meerkost_co2" id="132e06d0-932f-4047-92a6-d45e3d68cd97">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="845.0" name="util_nat_meerkost_weq" id="8c55477b-1d46-4b09-a801-18220fe9bba0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="7" id="8f643e46-b601-4fde-bba7-230cea26a02e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.23607366666667" lon="6.7926015"/>
          <asset xsi:type="esdl:EConnection" id="c62dbb40-b386-45f9-942f-a73b3b13aab7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f21e39c8-387b-4fe2-aa4d-0144cb724855" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="6601614a-9ec8-4ddb-9b16-95716c2afafd" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="a3460613-40c0-4f37-9ed9-332a7c8972d5 ba18d640-49b9-425c-8566-29cbd787604b 650db06a-46b6-4c30-b3ae-4ff9dca0c5a4" name="OutPort" id="e231ebf4-c960-438b-af56-60b0cabaa2c8"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="03a80d09-a4e2-4ca8-8e0f-7cc2bf5c3f23" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9589e248-4f29-40b0-ad9a-24b5aa25a07c" name="InPort" connectedTo="f7482080-98f5-43cd-9312-21d47a7d27fa">
              <profile xsi:type="esdl:SingleValue" id="5c0223a4-e89a-485a-8090-1acfceffd29f" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="368bc9d0-f38a-48c7-85d9-8717766e930b" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5f992da6-3b92-4c4d-985b-99adc1ec835e">
              <profile xsi:type="esdl:SingleValue" id="b50b0d7b-b21c-410c-998b-792ba492ce7d" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="947d9b7a-b248-44e0-8de1-e2f917e74362" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="a3460613-40c0-4f37-9ed9-332a7c8972d5" name="InPort" connectedTo="e231ebf4-c960-438b-af56-60b0cabaa2c8">
              <profile xsi:type="esdl:SingleValue" id="a7f3e450-a7f3-45f2-8cbd-b7f670de1b55" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4d19bb05-7242-4a8e-9cf0-e34840c90d79" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba18d640-49b9-425c-8566-29cbd787604b" name="InPort" connectedTo="e231ebf4-c960-438b-af56-60b0cabaa2c8">
              <profile xsi:type="esdl:SingleValue" id="03dcda39-3c96-490e-a20b-524c895a6077" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="37f208a2-907d-4aeb-99f5-3d61adc477ad" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e231ebf4-c960-438b-af56-60b0cabaa2c8" name="InPort" id="650db06a-46b6-4c30-b3ae-4ff9dca0c5a4"/>
            <port xsi:type="esdl:OutPort" connectedTo="9589e248-4f29-40b0-ad9a-24b5aa25a07c" name="OutPort" id="f7482080-98f5-43cd-9312-21d47a7d27fa"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="4" floorArea="682.0" id="b0386b3f-0d52-4d12-b9b6-e257c57dd741" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.23607366666667" lon="6.796673999999999"/>
          <asset xsi:type="esdl:EConnection" id="93b0e97a-cabd-4365-be0a-ef56cd6fce0d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b18f0a1e-9086-4b4b-8f98-759728dae65d" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1a6507e8-3af3-49b4-aa72-1050d902189f" value="30.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="b86b56e9-c62f-4648-87bb-3e1a535af722 24b9207d-d5a7-439e-b076-df4928ef161e c4095ec8-4046-4963-a12e-954c2eb2dd79" name="OutPort" id="e89060a5-43da-427c-a298-7b0d1484db1e"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3d7ae92f-e40d-409c-84ed-cda1a9084aa7" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="fe0056c2-2284-40f2-89d1-a636c836b469" name="InPort" connectedTo="eae59e01-7b89-49f1-ba8a-a892db0a57ea">
              <profile xsi:type="esdl:SingleValue" id="36539022-1f3d-4333-819b-117205e3799d" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d321f3e7-8a59-4370-9ae0-9da9f6ab28fc" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="d5bf2ae1-e61a-4915-b37f-942a8707c198" name="InPort" connectedTo="ea7d6106-4e27-4889-8d48-473f8cef86d4">
              <profile xsi:type="esdl:SingleValue" id="c5f89c1f-e2b2-4653-aadb-c01b46d21943" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c13b0f6c-c742-465e-85b6-36792563aca9" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b86b56e9-c62f-4648-87bb-3e1a535af722" name="InPort" connectedTo="e89060a5-43da-427c-a298-7b0d1484db1e">
              <profile xsi:type="esdl:SingleValue" id="a5c4092d-c3a0-44bd-9071-6947e713ebeb" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="65f0a0a6-f462-4e17-90de-2a902e49022e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e89060a5-43da-427c-a298-7b0d1484db1e" name="InPort" id="24b9207d-d5a7-439e-b076-df4928ef161e"/>
            <port xsi:type="esdl:OutPort" connectedTo="fe0056c2-2284-40f2-89d1-a636c836b469" name="OutPort" id="eae59e01-7b89-49f1-ba8a-a892db0a57ea"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="934fd951-9040-4dd2-a2d5-8d26891dac36" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e89060a5-43da-427c-a298-7b0d1484db1e" name="InPort" id="c4095ec8-4046-4963-a12e-954c2eb2dd79"/>
            <port xsi:type="esdl:OutPort" connectedTo="d5bf2ae1-e61a-4915-b37f-942a8707c198" name="OutPort" id="ea7d6106-4e27-4889-8d48-473f8cef86d4"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640600" scope="NEIGHBOURHOOD">
        <KPIs id="067b480b-8c04-4f29-805b-c17636ec4085">
          <kpi xsi:type="esdl:DoubleKPI" id="a4e9b022-8010-4ad2-8a17-45744c1e6c29" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="571011.0" name="woning_nat_meerkost" id="dc1006a5-dbb7-44b2-8812-69d77dd10f09">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="414.0" name="woning_nat_meerkost_co2" id="ee0d1df4-2518-4f61-99a2-cd229f865857">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="505.0" name="woning_nat_meerkost_weq" id="e2ddad0d-63f1-4026-b8ac-717d9c9ebff9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="365cd971-6671-42d3-bc4e-d6707ae9dd9e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="571011.0" name="util_nat_meerkost" id="d597b70f-1b0e-4eda-b6b1-75dc6cb109a1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="414.0" name="util_nat_meerkost_co2" id="6fc5fd42-46b1-4a87-b2d4-4a7484c0ca2e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="505.0" name="util_nat_meerkost_weq" id="fbf80261-23ab-4b76-850b-291ca6dad2f8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="26" id="37d87afe-f732-46c8-8f64-174521a29c84" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.038461538461538464"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9615384615384616"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.245063333333334" lon="6.782388"/>
          <asset xsi:type="esdl:EConnection" id="411a8473-a746-4966-bfbd-81cdffbbc717" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="39d03bea-c9c9-4593-8cf5-30f3842d541c" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="a9c5b7b4-bb6c-450e-9358-a7869278339b" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="57444ca9-9b91-4585-a3d5-520adcc2d483" name="OutPort" id="a220565b-bc7a-4dd4-804a-0fe243f25e67"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="34a983f3-0a78-4536-a60a-16e462f95be9" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="cd8ab970-0df5-4fcc-8922-a6a38b1d8184" name="InPort" connectedTo="11f893f3-7b70-4433-bd15-5b9eece977ab">
              <profile xsi:type="esdl:SingleValue" id="494dbc72-fcdf-4a4b-b41c-402b0bd646b4" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="394eaf10-7a57-4ad9-b036-2b99acd0f855" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="a220565b-bc7a-4dd4-804a-0fe243f25e67" name="InPort" id="57444ca9-9b91-4585-a3d5-520adcc2d483"/>
            <port xsi:type="esdl:OutPort" connectedTo="cd8ab970-0df5-4fcc-8922-a6a38b1d8184" name="OutPort" id="11f893f3-7b70-4433-bd15-5b9eece977ab"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="124" floorArea="143588.0" id="42bc059d-4cb5-4a35-ac24-da2961096161" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.245063333333334" lon="6.769408"/>
          <asset xsi:type="esdl:EConnection" id="94c5af55-2abe-4036-8c5c-7a8512a50f2e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a542d388-3dcc-435b-845d-b6f729fb2e40" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3a2946fd-7ea5-4cef-a25b-5edbb0d2c386" value="32.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="37c7a2fd-3c97-4a83-ba75-7d71892c724d fea56719-3482-407e-ad28-73aacdfe5126 b83acf45-2a09-4cbc-9b98-54902b1b7819" name="OutPort" id="f377b713-99a0-4b9a-ab06-4d026cd0e7af"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9004bb49-73f1-4b1e-9586-fa5109ac2d0b" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="68722b08-965b-444d-b075-40e880eec8ff" name="InPort" connectedTo="7e0793cd-a2f7-4aa4-95fc-2e44fa8191c9">
              <profile xsi:type="esdl:SingleValue" id="b0a258c4-dbef-4d2d-b386-8c18978cfe7b" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4ded8590-815e-49d9-aa64-e842cf67ebc9" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a0c888e1-8640-4d6a-b0cf-5e30b58f4ad2">
              <profile xsi:type="esdl:SingleValue" id="6e0e0e4b-8996-4570-90c6-169d3bac15f2" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="bacccbf1-5d94-4bf8-842b-6127d199568f" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c6b75bd-6eb2-4620-9274-226b6534e6a7" name="InPort" connectedTo="beceb38a-f72b-4c68-8a86-99e4acded321">
              <profile xsi:type="esdl:SingleValue" id="6e9a379f-0cf9-4630-8848-9663a51c7c27" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="61c07d09-b709-4df3-a9ea-cb0b83dc9500" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="37c7a2fd-3c97-4a83-ba75-7d71892c724d" name="InPort" connectedTo="f377b713-99a0-4b9a-ab06-4d026cd0e7af">
              <profile xsi:type="esdl:SingleValue" id="bae30385-a4c0-4808-aae4-fa25ac97cc4d" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="027005d2-0eb7-4164-9caf-0e74ec868e7c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f377b713-99a0-4b9a-ab06-4d026cd0e7af" name="InPort" id="fea56719-3482-407e-ad28-73aacdfe5126"/>
            <port xsi:type="esdl:OutPort" connectedTo="68722b08-965b-444d-b075-40e880eec8ff" name="OutPort" id="7e0793cd-a2f7-4aa4-95fc-2e44fa8191c9"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="d7ad5ef4-cc01-43d6-8752-827ced9ae095" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f377b713-99a0-4b9a-ab06-4d026cd0e7af" name="InPort" id="b83acf45-2a09-4cbc-9b98-54902b1b7819"/>
            <port xsi:type="esdl:OutPort" connectedTo="2c6b75bd-6eb2-4620-9274-226b6534e6a7" name="OutPort" id="beceb38a-f72b-4c68-8a86-99e4acded321"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640601" scope="NEIGHBOURHOOD">
        <KPIs id="34c9163e-e9b1-4e78-8bed-853527d8328b">
          <kpi xsi:type="esdl:DoubleKPI" id="efdc344a-d2b5-4af4-95a2-b8fef1dff739" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1707363.0" name="woning_nat_meerkost" id="d4803d71-c964-43bb-aee5-b5303c7851ae">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="338.0" name="woning_nat_meerkost_co2" id="aa262a58-1750-44bf-a3ab-0a4a0babf8b5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="742.0" name="woning_nat_meerkost_weq" id="40ad7c35-6c8d-492a-8ccc-98328adc4e23">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="448540ca-283a-47f5-81d5-cd23836b0ffc" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1707363.0" name="util_nat_meerkost" id="4933d339-931c-493a-89e1-78f3df81d017">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="338.0" name="util_nat_meerkost_co2" id="c07a2b27-8146-4b81-9b17-4faa47a35547">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="742.0" name="util_nat_meerkost_weq" id="c8ff384b-cde9-472a-a2d8-a77eb4e501ce">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="957" id="256821ae-0a4e-4924-a8d1-d9ac7c0247e8" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.07628004179728318"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9237199582027168"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25965466666666" lon="6.7890305"/>
          <asset xsi:type="esdl:EConnection" id="91a13b65-87b3-4c1f-b1d9-222705184191" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4d0c7486-cb70-42ce-a4b2-9a5fa39e8ebe" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="c71cb818-889a-4922-9afe-562885eae740" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="96849703-b6d4-45c9-833b-f50cd4e791b8 e7c7a746-4461-48e9-9ee8-a4bc4af6eee3" name="OutPort" id="f52b6a04-d5e3-4731-93ae-f2bf29fa424a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="877fc194-fb11-4335-b5f0-4c2995e5bf32" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="58df84c6-bacc-4e51-8a64-af8b6021cfff" name="InPort" connectedTo="a5011ae4-60ad-4f19-95b3-f147c3233f28">
              <profile xsi:type="esdl:SingleValue" id="ee189a73-fa35-4b4d-bbf4-2add56633805" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="27978596-4865-4829-a4d0-305f89b142f7" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8ca299eb-3743-4fc3-94d7-06e87136063e">
              <profile xsi:type="esdl:SingleValue" id="dfcfa8cd-23f2-4940-a915-84fae55332bb" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1ce4245d-fc8f-47cc-a48b-15a0aa1be161" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="96849703-b6d4-45c9-833b-f50cd4e791b8" name="InPort" connectedTo="f52b6a04-d5e3-4731-93ae-f2bf29fa424a">
              <profile xsi:type="esdl:SingleValue" id="463c88a7-05f1-4754-9d94-574fd3155638" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3a5cbb7e-d547-4f42-9b61-8841211f6ed0" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f52b6a04-d5e3-4731-93ae-f2bf29fa424a" name="InPort" id="e7c7a746-4461-48e9-9ee8-a4bc4af6eee3"/>
            <port xsi:type="esdl:OutPort" connectedTo="58df84c6-bacc-4e51-8a64-af8b6021cfff" name="OutPort" id="a5011ae4-60ad-4f19-95b3-f147c3233f28"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="159" floorArea="174864.0" id="f7369dd3-1f02-496d-954d-b67f1566c219" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.257043333333336" lon="6.7890305"/>
          <asset xsi:type="esdl:EConnection" id="290461cf-f45a-443a-b326-c097995eb439" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a698111e-c5d3-46d5-8fe1-f2ed7539b457" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="ff5793d8-d54e-4280-9a6a-a19f8547b115" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="4ff5a6e4-40cc-4f85-88f7-5a9b9bbb9447 e37a5e0c-c74e-4e81-8bd4-29acb8610901 952d9784-5b5d-4a26-96f0-5ab35ce5b399" name="OutPort" id="c4b2a995-59e8-497b-9485-6a2314f1c186"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7d7523fd-b6a0-4453-851a-12f86ba40c56" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9a8e9a95-8e5b-4ad5-bfe1-d93719078dca" name="InPort" connectedTo="bbd2fab4-6596-4583-92aa-1ffd79b83c73">
              <profile xsi:type="esdl:SingleValue" id="08d90fc0-24f4-4c79-a606-e73413974c80" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8ef6356e-7ced-4a9e-8736-8aa84882ebf5" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="495202ca-c6fb-484a-894f-97131fc394b4">
              <profile xsi:type="esdl:SingleValue" id="9923aa5b-8fa0-4f91-bffe-3837d76a34bb" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c5fd468e-ad20-4500-9978-40bc1a5c3139" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="b0a553d2-1780-42dc-901b-ccbf24e6d32c" name="InPort" connectedTo="0ac29972-601a-4d80-9919-e81f96f27909">
              <profile xsi:type="esdl:SingleValue" id="c7e3e409-cc01-490a-9a22-40063375c1a5" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4ea4aff5-04b1-44e4-8f91-c94fc778c409" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="4ff5a6e4-40cc-4f85-88f7-5a9b9bbb9447" name="InPort" connectedTo="c4b2a995-59e8-497b-9485-6a2314f1c186">
              <profile xsi:type="esdl:SingleValue" id="b396f36d-47fd-4c32-954f-fee766d1cafc" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a2184640-4664-4b92-96ea-f62e54891018" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c4b2a995-59e8-497b-9485-6a2314f1c186" name="InPort" id="e37a5e0c-c74e-4e81-8bd4-29acb8610901"/>
            <port xsi:type="esdl:OutPort" connectedTo="9a8e9a95-8e5b-4ad5-bfe1-d93719078dca" name="OutPort" id="bbd2fab4-6596-4583-92aa-1ffd79b83c73"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="fc930b70-0378-47b7-a0cc-52248da9f06f" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c4b2a995-59e8-497b-9485-6a2314f1c186" name="InPort" id="952d9784-5b5d-4a26-96f0-5ab35ce5b399"/>
            <port xsi:type="esdl:OutPort" connectedTo="b0a553d2-1780-42dc-901b-ccbf24e6d32c" name="OutPort" id="0ac29972-601a-4d80-9919-e81f96f27909"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640602" scope="NEIGHBOURHOOD">
        <KPIs id="a2f32dd8-74c3-4237-af94-779b53e1c4e4">
          <kpi xsi:type="esdl:DoubleKPI" id="bfcae746-d36a-4fba-b2f2-e06efb8617c6" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1300094.0" name="woning_nat_meerkost" id="e2fbea26-dc88-42eb-9a46-06b20998b034">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="316.0" name="woning_nat_meerkost_co2" id="639c6c79-57b8-4597-8c20-2c60f417788e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="764.0" name="woning_nat_meerkost_weq" id="1f2bb557-8b6d-4202-823a-b4ebb526901c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b5b3e727-f8a5-4117-b454-318f77dcdb83" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1300094.0" name="util_nat_meerkost" id="9ab49351-67b0-4498-996d-91e37f6aae81">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="316.0" name="util_nat_meerkost_co2" id="73f4650d-e589-4b54-a60e-c9c88d082a36">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="764.0" name="util_nat_meerkost_weq" id="5a3bfa75-980f-4ec4-8532-b361f0c57c66">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1499" id="50a4fe9d-85a5-495f-9b61-3a714573ab79" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.04136090727151434"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9586390927284857"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.255206333333334" lon="6.7865168"/>
          <asset xsi:type="esdl:EConnection" id="5217712a-28e1-4857-b34f-0627391f4ab4" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bd5fe8bf-ac27-4309-a381-5b5243166d36" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="c2a961bd-2cda-491f-8525-31ec47b48cf5" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="438d7e6a-daaf-4717-b805-0d370de011dd ea385673-2c39-4950-98ea-418785cf3899 7c5e0801-c832-4318-b9c7-ff712fe2e020" name="OutPort" id="1438f81d-0828-4c23-8ede-86387cf64026"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f53e4f25-1818-4f16-8a25-663b294899fd" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="f68e2d2e-625e-4964-84b9-90f1de628b99" name="InPort" connectedTo="1bd70c3d-2fe2-44fe-a3f8-8ca95723c78a">
              <profile xsi:type="esdl:SingleValue" id="16305de0-3412-4796-bb58-aeedbaacde96" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4d81f007-8e87-4e2a-86c8-7869c35c52ec" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e563cf6d-8a09-43aa-b4d5-f23fa33fa59b">
              <profile xsi:type="esdl:SingleValue" id="e0d2078d-811d-4ba0-8a7a-55f27967e197" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d2397739-7650-437d-a935-e9336e252f15" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="438d7e6a-daaf-4717-b805-0d370de011dd" name="InPort" connectedTo="1438f81d-0828-4c23-8ede-86387cf64026">
              <profile xsi:type="esdl:SingleValue" id="ff928054-45e8-4a12-b376-fe8f8723b179" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b14fe1ef-f673-46c5-b4db-9606c68b2b07" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ea385673-2c39-4950-98ea-418785cf3899" name="InPort" connectedTo="1438f81d-0828-4c23-8ede-86387cf64026">
              <profile xsi:type="esdl:SingleValue" id="cf1c1eff-7391-41e1-9f75-65651b4268ab" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="18ed11d9-7159-4f1a-8632-d3811cdacff9" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1438f81d-0828-4c23-8ede-86387cf64026" name="InPort" id="7c5e0801-c832-4318-b9c7-ff712fe2e020"/>
            <port xsi:type="esdl:OutPort" connectedTo="f68e2d2e-625e-4964-84b9-90f1de628b99" name="OutPort" id="1bd70c3d-2fe2-44fe-a3f8-8ca95723c78a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="209" floorArea="26229.0" id="c60445f0-15fc-4277-8c88-baa58b8e3694" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25288466666667" lon="6.7750202"/>
          <asset xsi:type="esdl:EConnection" id="efab2ac6-b4d5-4e2d-a12c-d04fb84878ac" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7be7bad5-b91e-4011-a3bb-239eefbbab4c" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="5e0ed4ee-6cea-4635-8b06-d469f2010bcb" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="140f4901-791e-40a8-9d05-3e44d9f5c87e a245646c-5a43-4a64-9e0b-270ffcd3d4c6 c72766b9-ded0-429c-8f0f-2d201beaa924" name="OutPort" id="81c990a5-8f73-4c96-83a7-abb6955ba3a5"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6f8f098b-9191-42d4-b9a4-c88aa1926138" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="ec7608f0-355b-4fb2-aee1-728b4de63569" name="InPort" connectedTo="4b1bf5d5-2c02-4cee-a880-bc8cb3e700a7">
              <profile xsi:type="esdl:SingleValue" id="8c6efab4-40b4-47c0-b2f5-25af832d0254" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="ae00e890-77f5-48e9-87e4-808f63036d37" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="e373b099-5e5c-408c-9562-116d033fc310" name="InPort" connectedTo="71d1df75-e917-4cd1-8ce5-be334cbf8cba">
              <profile xsi:type="esdl:SingleValue" id="78834833-dd3b-457f-a16a-822508e2a164" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f1341e54-470c-45d0-ae33-165a24b4d8d7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="140f4901-791e-40a8-9d05-3e44d9f5c87e" name="InPort" connectedTo="81c990a5-8f73-4c96-83a7-abb6955ba3a5">
              <profile xsi:type="esdl:SingleValue" id="acf5442d-2c79-41de-a095-5cdb434ada68" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0724a99c-965b-4a42-920a-9bbdf35ecdbc" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="81c990a5-8f73-4c96-83a7-abb6955ba3a5" name="InPort" id="a245646c-5a43-4a64-9e0b-270ffcd3d4c6"/>
            <port xsi:type="esdl:OutPort" connectedTo="ec7608f0-355b-4fb2-aee1-728b4de63569" name="OutPort" id="4b1bf5d5-2c02-4cee-a880-bc8cb3e700a7"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="3f25d3af-1013-467b-95a0-4c089c57b234" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="81c990a5-8f73-4c96-83a7-abb6955ba3a5" name="InPort" id="c72766b9-ded0-429c-8f0f-2d201beaa924"/>
            <port xsi:type="esdl:OutPort" connectedTo="e373b099-5e5c-408c-9562-116d033fc310" name="OutPort" id="71d1df75-e917-4cd1-8ce5-be334cbf8cba"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640603" scope="NEIGHBOURHOOD">
        <KPIs id="beef3c21-11a9-4be5-8058-5aeb241e2311">
          <kpi xsi:type="esdl:DoubleKPI" id="53478460-847c-4944-abec-febe5223c142" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="105034.0" name="woning_nat_meerkost" id="b0137c5d-ad16-4d4a-a48e-7a03b46184e6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="306.0" name="woning_nat_meerkost_co2" id="777e62df-6568-4b3a-99b0-2cde08d49340">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="612.0" name="woning_nat_meerkost_weq" id="888ca0b5-35b1-40a1-a255-bdff75474c63">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e9e55203-20f6-4805-b54d-35465cb2a2ba" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="105034.0" name="util_nat_meerkost" id="f4cefd13-9b72-445a-99b3-9a3a37caafa3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="306.0" name="util_nat_meerkost_co2" id="8be4f0b9-b445-449a-adab-e7ffb039b0d3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="612.0" name="util_nat_meerkost_weq" id="71f2cca3-0b11-4b95-9e22-234bfc5ff8b1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="11" id="5fd62dba-ea78-4934-b590-9bda130f3dd7" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.250522000000004" lon="6.7750433333333335"/>
          <asset xsi:type="esdl:EConnection" id="b4135420-8ad5-4218-8a54-921946556c99" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ac14d6c8-8147-4816-ad21-d94fb1f1fe9e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="9d2e523d-ed7c-4bc8-8539-719201fd0ef6" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="2956ef9c-e23a-4078-8fb8-3901130f2e21 e47bead7-b22d-462c-8e73-951a221ddcdf" name="OutPort" id="2879bd69-1e32-459e-9bde-6d00cfe0de1f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bc525433-188a-4b67-84b8-bbdd8188d607" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3d103d37-24bd-4b81-b1a6-7ee9a48ee939" name="InPort" connectedTo="6347570f-9d1f-45b3-b6e1-b782b7e991b5">
              <profile xsi:type="esdl:SingleValue" id="eb9231e0-f067-43a9-a929-4bc3243f90f6" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3995aedf-f7c8-4874-9ad8-422838be8adf" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c98e5794-78c6-4301-948b-8d6eae5e506c">
              <profile xsi:type="esdl:SingleValue" id="fcba508a-a625-4f6c-95f7-5fe8642169a7" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3c51aa7e-cd68-4324-b83e-4acd8e361220" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2956ef9c-e23a-4078-8fb8-3901130f2e21" name="InPort" connectedTo="2879bd69-1e32-459e-9bde-6d00cfe0de1f">
              <profile xsi:type="esdl:SingleValue" id="c7b09c19-4fe4-4d6a-914d-6576682efa55" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="68f561e0-d445-463c-9804-e55702e18303" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2879bd69-1e32-459e-9bde-6d00cfe0de1f" name="InPort" id="e47bead7-b22d-462c-8e73-951a221ddcdf"/>
            <port xsi:type="esdl:OutPort" connectedTo="3d103d37-24bd-4b81-b1a6-7ee9a48ee939" name="OutPort" id="6347570f-9d1f-45b3-b6e1-b782b7e991b5"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="48" floorArea="20875.0" id="cea2f7fb-a654-493d-b41a-2870e0ef9288" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.250522000000004" lon="6.782205666666666"/>
          <asset xsi:type="esdl:EConnection" id="aeb0360e-25ad-436d-9fb3-353d99536320" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7ea76c92-6273-4fe2-9fa7-acf0b8397694" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="0de294a8-5d32-439a-a1e1-0f6173596abe" value="36.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="df382a5e-27c5-4e67-a5b4-3e8a12e9f9ba f15df58c-a209-4295-96d0-fa06b9c9cde7 e6512015-d032-4907-a7de-7af07acc4f64" name="OutPort" id="78948b44-fd3b-4b4d-aa35-f51e600748cb"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7fbe4aad-1276-4d93-b656-a6d81dbaba11" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="45002c64-82c5-48c8-906f-fbf8ae8e6099" name="InPort" connectedTo="3d9b30e3-b91e-4bac-b7aa-233ee26a4664">
              <profile xsi:type="esdl:SingleValue" id="0554fd38-5938-42ef-90cb-a5d37c16b4af" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6f97022a-ff99-42d8-9a82-8f8a5b291f5b" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="10bf6ca4-6110-4cfa-9dfa-1c0375ad4624">
              <profile xsi:type="esdl:SingleValue" id="a61c7734-8807-496c-b544-9d8424608c78" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="8d0dff00-ee3f-4994-b460-0e9d86264723" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="7f0b62de-d931-48ce-8ca0-da2eb68f4597" name="InPort" connectedTo="ab0455d0-151d-47ea-9f61-e2fdfd999293">
              <profile xsi:type="esdl:SingleValue" id="7d2d26f5-9a50-4abb-914e-bfcacb874920" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="536fe5e4-ff34-49de-b791-2072957cfa90" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="df382a5e-27c5-4e67-a5b4-3e8a12e9f9ba" name="InPort" connectedTo="78948b44-fd3b-4b4d-aa35-f51e600748cb">
              <profile xsi:type="esdl:SingleValue" id="c236fc31-3350-4fa2-a9fe-a4fcba261a4e" value="29.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="dddda3e1-39ba-4b68-aa49-11777ecf328c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="78948b44-fd3b-4b4d-aa35-f51e600748cb" name="InPort" id="f15df58c-a209-4295-96d0-fa06b9c9cde7"/>
            <port xsi:type="esdl:OutPort" connectedTo="45002c64-82c5-48c8-906f-fbf8ae8e6099" name="OutPort" id="3d9b30e3-b91e-4bac-b7aa-233ee26a4664"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="30ddede7-428e-4c8c-9bc5-195ad704aba6" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="78948b44-fd3b-4b4d-aa35-f51e600748cb" name="InPort" id="e6512015-d032-4907-a7de-7af07acc4f64"/>
            <port xsi:type="esdl:OutPort" connectedTo="7f0b62de-d931-48ce-8ca0-da2eb68f4597" name="OutPort" id="ab0455d0-151d-47ea-9f61-e2fdfd999293"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640604" scope="NEIGHBOURHOOD">
        <KPIs id="7fc50266-1507-4004-b36b-02c40693eda1">
          <kpi xsi:type="esdl:DoubleKPI" id="00a43922-d375-4299-93b2-867c902580ed" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1652686.0" name="woning_nat_meerkost" id="ad99c3e9-4e02-4b1c-b9fd-7c0d763becea">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="302.0" name="woning_nat_meerkost_co2" id="901750bd-21f2-45cd-be47-c094da439aa3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="683.0" name="woning_nat_meerkost_weq" id="883d133e-ed6f-4755-b660-8df59aa02e6b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ca34c422-ba19-4a34-a8bb-a90cea5bd0d1" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1652686.0" name="util_nat_meerkost" id="a2e686eb-6eba-4b93-b658-bba5538dd4e6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="302.0" name="util_nat_meerkost_co2" id="848bb11b-1e5e-4697-bda3-d99636c4f80e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="683.0" name="util_nat_meerkost_weq" id="2ba00ffd-de18-4824-b5b8-e353b55456bb">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2266" id="8856baab-e3b6-4fbe-b3d5-1bdfa27fad5b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.04589585172109444"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9541041482789056"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25847533333333" lon="6.774792199999999"/>
          <asset xsi:type="esdl:EConnection" id="02235882-5fbd-4533-aedd-0189efe5ce74" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cce6ac92-87de-4337-a44f-f801bd302e0f" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="4cda4554-298a-429f-bdcf-44dcfe693d7e" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="b6a7339a-4710-4433-a4fb-30fe6b89ba08 f2474cca-6ea9-4d08-82e3-8e773cd9662f f501eb6f-713d-4ba0-9a35-1426503da376" name="OutPort" id="79913d4c-7bd9-4d2f-b4b1-f8bb246420f2"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f6ec563e-71ef-4836-b02e-f5713c21496f" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="22fa52c8-4750-4991-a493-22f04a4085d9" name="InPort" connectedTo="5b12b7f4-1d97-43da-a5c8-b61c649b6d27">
              <profile xsi:type="esdl:SingleValue" id="ef43f88b-f9a9-4661-9e01-ea77d15ed2ca" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="fa886395-b99f-4050-acec-2c04f64e7fd9" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="76cdb08b-c92b-4d94-a151-47916f5bf3b4">
              <profile xsi:type="esdl:SingleValue" id="4af8e101-ec05-4217-830c-adf73b4658c1" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4f8deb02-9ae2-4d63-a952-49a57aff30e9" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="b6a7339a-4710-4433-a4fb-30fe6b89ba08" name="InPort" connectedTo="79913d4c-7bd9-4d2f-b4b1-f8bb246420f2">
              <profile xsi:type="esdl:SingleValue" id="bf52f603-1ea7-42f8-9a22-169c78d803c4" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="649a0e27-6bda-4f43-be12-e969371b5c80" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f2474cca-6ea9-4d08-82e3-8e773cd9662f" name="InPort" connectedTo="79913d4c-7bd9-4d2f-b4b1-f8bb246420f2">
              <profile xsi:type="esdl:SingleValue" id="2f2a7954-929c-4d6e-a11d-ceda5f93e2fd" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9b76979c-3dea-4888-8b80-10c44c29f180" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="79913d4c-7bd9-4d2f-b4b1-f8bb246420f2" name="InPort" id="f501eb6f-713d-4ba0-9a35-1426503da376"/>
            <port xsi:type="esdl:OutPort" connectedTo="22fa52c8-4750-4991-a493-22f04a4085d9" name="OutPort" id="5b12b7f4-1d97-43da-a5c8-b61c649b6d27"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="254" floorArea="20111.0" id="257157f9-2d81-4fc8-8078-96fb3953c866" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25847533333333" lon="6.7553318"/>
          <asset xsi:type="esdl:EConnection" id="bd4e312e-9eb6-4e10-a55d-847f0f57f0bb" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ac4eef6f-177e-4067-aec1-44465b6fd102" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="36d4ae74-f02f-48c2-a29e-28e4cebe706b" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="25c9a80b-b30c-4af8-bc5a-76636a16f9da c78645ea-2e1e-4b3c-aa32-45e0316ced93 27e43354-edf5-42f0-9d3c-5a8f17f7df06" name="OutPort" id="6e66f39a-80c4-422f-bb67-0326c0782b98"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="42fa4d54-b095-444d-87da-48cd232e011b" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="841d522b-159e-4375-ada6-2e929c5b3b8b" name="InPort" connectedTo="8f7c08b5-113c-40ab-9f46-90229c253d13">
              <profile xsi:type="esdl:SingleValue" id="169d8763-47d4-4721-94ac-8606a8807c37" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="8f263c48-f9e8-4010-874c-8b3f4e7e8d8c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="d17c58e4-0fff-4339-9740-7ddc89a85014" name="InPort" connectedTo="844df0b5-7b96-4f7a-9158-c87ff63f2bfe">
              <profile xsi:type="esdl:SingleValue" id="50c59a3a-7f38-4ad6-8999-a38d2dd1bf81" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="9370e905-cbac-4542-96f3-3b10342ee8b2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="25c9a80b-b30c-4af8-bc5a-76636a16f9da" name="InPort" connectedTo="6e66f39a-80c4-422f-bb67-0326c0782b98">
              <profile xsi:type="esdl:SingleValue" id="81522105-4f91-45f5-bd94-aa04ba3fdff5" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5fab309c-5b63-4bcc-8e38-a765bbe6ec40" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6e66f39a-80c4-422f-bb67-0326c0782b98" name="InPort" id="c78645ea-2e1e-4b3c-aa32-45e0316ced93"/>
            <port xsi:type="esdl:OutPort" connectedTo="841d522b-159e-4375-ada6-2e929c5b3b8b" name="OutPort" id="8f7c08b5-113c-40ab-9f46-90229c253d13"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="d3e2be13-55e1-42d4-aa2c-1023ca845305" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="6e66f39a-80c4-422f-bb67-0326c0782b98" name="InPort" id="27e43354-edf5-42f0-9d3c-5a8f17f7df06"/>
            <port xsi:type="esdl:OutPort" connectedTo="d17c58e4-0fff-4339-9740-7ddc89a85014" name="OutPort" id="844df0b5-7b96-4f7a-9158-c87ff63f2bfe"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640605" scope="NEIGHBOURHOOD">
        <KPIs id="45073221-1158-4095-87fa-437f4c8bb555">
          <kpi xsi:type="esdl:DoubleKPI" id="d45f7e8f-09b8-4d9a-8dd5-ccd71c191e86" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="301672.0" name="woning_nat_meerkost" id="172c945e-3771-43d4-b82c-d173022c35bc">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="319.0" name="woning_nat_meerkost_co2" id="72c2d10e-4155-4c36-9378-540da32f4a1e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="812.0" name="woning_nat_meerkost_weq" id="9788c2b4-24f9-4622-9b85-f46bfb1e06e0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="efbb8a00-c05a-4921-b575-30c020d86ae9" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="301672.0" name="util_nat_meerkost" id="efb8c5b9-6a29-4819-b620-6e1a0f7399ce">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="319.0" name="util_nat_meerkost_co2" id="82aed18b-4562-4374-b3f2-23738cc3894d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="812.0" name="util_nat_meerkost_weq" id="332b5a42-9019-4ba7-b79e-ee1b01d3803c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="338" id="377d1bb5-73da-40da-afba-5b89cde2fa5a" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.026627218934911243"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9733727810650887"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25250166666667" lon="6.758928"/>
          <asset xsi:type="esdl:EConnection" id="780dbbc4-2e42-497a-b710-d5e9d3a42be6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9abc8f8a-6dca-440d-827c-33bbf22e2556" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="e350f421-351b-4dcb-b24a-f3f521eb6299" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="6e56117f-eb4d-4d78-831e-d9add6924b7a 0ad82c48-572c-4df3-966e-14e1b3e3da07 0ef944a1-9695-4be2-a324-8dc964e2c72c" name="OutPort" id="2998a6e9-f4a3-4afd-9f83-9b9b74b00bd5"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b012be81-8570-44db-931d-6f9f2ef1df48" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3682d28a-3813-4505-9d82-784ee429ed57" name="InPort" connectedTo="56b55c19-7ec0-4e93-a44c-3fcf59ac61a9">
              <profile xsi:type="esdl:SingleValue" id="0924e2b6-73cd-4648-813f-0183aea62132" value="27.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b6a5c247-d2e6-4a4c-912e-530d675447e9" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2259d6ef-4830-4f8c-a9ce-7c9731cbcf24">
              <profile xsi:type="esdl:SingleValue" id="e66549b6-0379-499a-82fa-af4b5dd3a294" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="787df4c6-36be-4571-8cfb-55cf20983f42" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="6e56117f-eb4d-4d78-831e-d9add6924b7a" name="InPort" connectedTo="2998a6e9-f4a3-4afd-9f83-9b9b74b00bd5">
              <profile xsi:type="esdl:SingleValue" id="e16ad2c4-1126-4131-a3ce-74a033309101" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="66b69dcc-7540-4bbf-8369-02c210aa655c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0ad82c48-572c-4df3-966e-14e1b3e3da07" name="InPort" connectedTo="2998a6e9-f4a3-4afd-9f83-9b9b74b00bd5">
              <profile xsi:type="esdl:SingleValue" id="d131ba5e-7818-4f90-a7ca-8c51fa9150a4" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="ec3fbcc0-f8f8-4f7a-98e9-23d984a71b9e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2998a6e9-f4a3-4afd-9f83-9b9b74b00bd5" name="InPort" id="0ef944a1-9695-4be2-a324-8dc964e2c72c"/>
            <port xsi:type="esdl:OutPort" connectedTo="3682d28a-3813-4505-9d82-784ee429ed57" name="OutPort" id="56b55c19-7ec0-4e93-a44c-3fcf59ac61a9"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="68" floorArea="4386.0" id="976061c1-0a82-4678-9d9e-3f1c5293d0dd" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.25486433333333" lon="6.7680620000000005"/>
          <asset xsi:type="esdl:EConnection" id="116a54e6-cba8-41ca-a25c-26b26ba4dfd3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="83315e84-95db-44e2-972f-25bc44d88ace" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b22e9bf3-00b7-464c-9409-8d004d20d609" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="4161a60e-444e-46c8-8a50-79cbbca45832 f27522eb-9a91-4797-b0da-8bd207048054 14523830-c75e-431c-a8dc-3a953574f7a2" name="OutPort" id="4da46930-1d39-4fd1-b77c-880d4641fac1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d3d5d7e8-8fdf-4810-9ef5-328c532057d2" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="f7abecc0-6312-4df0-9b11-8e5c2b5a2fe0" name="InPort" connectedTo="f559fa0c-1946-43d1-a04e-56f84c83e3e0">
              <profile xsi:type="esdl:SingleValue" id="5c4e7a79-1043-4aef-9cef-b81b7e9dc286" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="e3f1bfc7-2432-48a0-8eef-e2ddc9ffeb4c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="1f5f03e0-8a33-40f8-8fa9-ee9d6b0ba5b6" name="InPort" connectedTo="8185313d-6e8d-46df-887a-688890bdba65">
              <profile xsi:type="esdl:SingleValue" id="6ee5d837-6850-4c60-99b1-cd8dba1204bc" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="989c7761-3b7d-47a0-aa7a-0b721507f562" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="4161a60e-444e-46c8-8a50-79cbbca45832" name="InPort" connectedTo="4da46930-1d39-4fd1-b77c-880d4641fac1">
              <profile xsi:type="esdl:SingleValue" id="381c050a-5f00-4ca8-af01-28fccf6620e1" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="70a051ca-fe14-484d-be6e-4e4135f9aa62" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4da46930-1d39-4fd1-b77c-880d4641fac1" name="InPort" id="f27522eb-9a91-4797-b0da-8bd207048054"/>
            <port xsi:type="esdl:OutPort" connectedTo="f7abecc0-6312-4df0-9b11-8e5c2b5a2fe0" name="OutPort" id="f559fa0c-1946-43d1-a04e-56f84c83e3e0"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="e2c76378-1f67-4f48-911f-d06eeee6707f" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4da46930-1d39-4fd1-b77c-880d4641fac1" name="InPort" id="14523830-c75e-431c-a8dc-3a953574f7a2"/>
            <port xsi:type="esdl:OutPort" connectedTo="1f5f03e0-8a33-40f8-8fa9-ee9d6b0ba5b6" name="OutPort" id="8185313d-6e8d-46df-887a-688890bdba65"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640606" scope="NEIGHBOURHOOD">
        <KPIs id="99db2dcb-76e6-47fb-9970-00fa7af4747e">
          <kpi xsi:type="esdl:DoubleKPI" id="24edd97b-570b-4f9a-ba1d-7eade5609ef2" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="22644.0" name="woning_nat_meerkost" id="ced580fd-60b9-4aae-addd-ec6b02f7bc8b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="153.0" name="woning_nat_meerkost_co2" id="7d83b286-2bf3-43b9-a5cf-28c1cc214d81">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="185.0" name="woning_nat_meerkost_weq" id="64823000-1814-47fd-bfd9-00f150339ca4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bfe786fa-5460-4171-b35a-d5d1450bcbad" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="22644.0" name="util_nat_meerkost" id="4073998c-75ed-4e1a-bcec-d2e657fc1f25">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="153.0" name="util_nat_meerkost_co2" id="5774079c-8103-42e4-9f65-832c9f7949ef">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="185.0" name="util_nat_meerkost_weq" id="c74892b8-9a3f-4344-b19a-830bd9b5145b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" id="9621a2d4-ed72-4cd6-8367-61bfb9bfa70a" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.242539666666666" lon="6.764624"/>
          <asset xsi:type="esdl:EConnection" id="ff5c224b-0208-4ed4-8d36-9d217175e77b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c794a293-e068-46cd-a6c2-ff38a21f117e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="44781eb6-cb1e-4b12-b001-f2db10e66054" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="1575a0ae-134a-45cc-870c-35a304006c8f" name="OutPort" id="8159eb98-7042-4611-bef5-badffd347649"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bbe820b3-ca11-4521-b3e2-046757c07702" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="fe9aae9a-485f-42f8-a793-0a6380ccded0" name="InPort" connectedTo="2eade2d6-501f-4724-8d2e-f853048cfc07">
              <profile xsi:type="esdl:SingleValue" id="feaca87a-84a6-4a6e-b8fe-ba8db66f0ff7" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5812dc29-2fa4-4297-8136-fb1acf896ef7" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8159eb98-7042-4611-bef5-badffd347649" name="InPort" id="1575a0ae-134a-45cc-870c-35a304006c8f"/>
            <port xsi:type="esdl:OutPort" connectedTo="fe9aae9a-485f-42f8-a793-0a6380ccded0" name="OutPort" id="2eade2d6-501f-4724-8d2e-f853048cfc07"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="20" floorArea="15506.0" id="ca8ae25b-2165-46b8-99fc-f97dcedcab21" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.24678133333334" lon="6.75788"/>
          <asset xsi:type="esdl:EConnection" id="989b1ed4-0b5e-4b18-93c6-2d255efca639" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="6e8c2f88-cd9f-4b65-9f78-03f85ad15460" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="dd85b6b5-27c2-4fa6-8eb1-9761ba0f3925" value="40.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="5cecdf5d-33f0-4a85-9b54-7d9d5924ae51 5de01cfd-2306-4b6c-b3d2-a7e4c06315a8 afceee3f-2a39-45fc-8897-d55b63bbb76b" name="OutPort" id="ed7e6aab-fa82-471e-aacb-d7d3d37ecf79"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a7fa1813-4f7d-4b04-8de4-e27b6e0fe007" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="4331370e-0e59-4d20-89f8-2ef382a12138" name="InPort" connectedTo="1d575093-fa56-4372-9396-041e8a2b6c3c">
              <profile xsi:type="esdl:SingleValue" id="42240c19-b228-4222-97d3-85bcf958adae" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e76640f1-cd0a-4aff-9551-cabab70dbc40" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="df38cf1c-1e76-401b-aa52-d3ac7a991306">
              <profile xsi:type="esdl:SingleValue" id="322455d7-32f4-4926-ae5f-6c6f83779576" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="657efdbf-f0a2-4389-a2eb-ef82324beb43" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="fb9635c2-88fc-4bf4-8174-9995788f1f6f" name="InPort" connectedTo="04098ced-fb6c-4bb9-8d10-cb247ada9fbf">
              <profile xsi:type="esdl:SingleValue" id="90c1580b-d675-4bd1-8c39-cb9c6ba8391b" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ce6992a3-5425-4abb-b97a-f85ed0618613" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="5cecdf5d-33f0-4a85-9b54-7d9d5924ae51" name="InPort" connectedTo="ed7e6aab-fa82-471e-aacb-d7d3d37ecf79">
              <profile xsi:type="esdl:SingleValue" id="3df33edb-3c00-46d5-93a1-e482ac5e8317" value="32.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c507deb5-2ad0-4fe0-8be4-098711a59bd2" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ed7e6aab-fa82-471e-aacb-d7d3d37ecf79" name="InPort" id="5de01cfd-2306-4b6c-b3d2-a7e4c06315a8"/>
            <port xsi:type="esdl:OutPort" connectedTo="4331370e-0e59-4d20-89f8-2ef382a12138" name="OutPort" id="1d575093-fa56-4372-9396-041e8a2b6c3c"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="fa0546aa-7517-442e-944b-7826b6fbb296" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="ed7e6aab-fa82-471e-aacb-d7d3d37ecf79" name="InPort" id="afceee3f-2a39-45fc-8897-d55b63bbb76b"/>
            <port xsi:type="esdl:OutPort" connectedTo="fb9635c2-88fc-4bf4-8174-9995788f1f6f" name="OutPort" id="04098ced-fb6c-4bb9-8d10-cb247ada9fbf"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640700" scope="NEIGHBOURHOOD">
        <KPIs id="50816a7c-b996-4de6-bd20-6b7f1eb45959">
          <kpi xsi:type="esdl:DoubleKPI" id="53b56e12-3bc6-42c7-a3cb-73f0ccc1022f" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="407083.0" name="woning_nat_meerkost" id="b84eb489-b543-46f1-a746-e2630634facb">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="228.0" name="woning_nat_meerkost_co2" id="c2a2c38d-611e-4f2a-a4ca-831fece4d976">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="322.0" name="woning_nat_meerkost_weq" id="6c29a2bc-fff6-46aa-ba04-7b4c02373468">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="60e0ed6a-2247-485d-8604-8f22d8a0c15e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="407083.0" name="util_nat_meerkost" id="84f594cf-2144-47b4-abc4-8e173b1194c1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="228.0" name="util_nat_meerkost_co2" id="d99463bf-bca6-4199-aff0-a67ab29ee9c6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="322.0" name="util_nat_meerkost_weq" id="d0930851-a496-4236-a369-75e5098d12e4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="53" id="00bda2bb-7f3d-4d95-837c-43790015e387" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.11320754716981132"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8867924528301887"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28281325" lon="6.7730084999999995"/>
          <asset xsi:type="esdl:EConnection" id="dcda6484-694d-4eae-8557-03559c7a3466" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1c453021-6d11-4bfb-a01b-f030d6527b2e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1802e47c-2c90-4474-9801-79f65deb636d" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0a14b17e-060b-4718-a55c-e0d7d02a1266" name="OutPort" id="8223e15f-43a7-4f83-8dd6-aa830c11115b"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ff251908-eb9b-49cf-bf1e-36ff84878f76" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="defbeeac-ff85-430a-a4cf-d329a61ec457" name="InPort" connectedTo="da80510f-e602-4d2d-91c8-08058f46f7fa">
              <profile xsi:type="esdl:SingleValue" id="9af9ad6a-9879-4527-9c8d-3fbe6b2cca9f" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e79f93e2-dd6e-4733-8aac-3906006627ab" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8223e15f-43a7-4f83-8dd6-aa830c11115b" name="InPort" id="0a14b17e-060b-4718-a55c-e0d7d02a1266"/>
            <port xsi:type="esdl:OutPort" connectedTo="defbeeac-ff85-430a-a4cf-d329a61ec457" name="OutPort" id="da80510f-e602-4d2d-91c8-08058f46f7fa"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="183" floorArea="157402.0" id="164ff226-f22d-4f45-a32a-6aa7a94caf3d" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27413575" lon="6.77854325"/>
          <asset xsi:type="esdl:EConnection" id="3015ff61-44e7-4f65-86f7-d009eac9f17d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ff8127c7-9568-40f9-8e7a-d882cf354798" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="0b140dbc-54e1-4a2d-8d21-0066757c375b" value="57.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="e701ae2e-bd9e-4d6c-826a-8a4dddabaded 7c9cd3c4-5353-4842-9754-7f7d6143afdc 844438b0-7fc2-4d87-b021-ce19ef14268d" name="OutPort" id="16b9ecfc-7f61-4c04-9751-e85a87abe5c7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a17df295-f31f-4c87-a1fb-11296ef440e4" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="97e88db4-9bb1-4c3f-b700-d2b0d5242dd0" name="InPort" connectedTo="991f1b2a-86ad-4eb1-8e8e-5cbf9458811c">
              <profile xsi:type="esdl:SingleValue" id="73b9bfca-574d-41a3-a3fc-4092749599fb" value="21.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a2465d88-7e22-499f-9aa4-cdb4c4b5a597" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="8bc82e1d-58d7-4fda-ae20-4a3e334c1e9c" name="InPort" connectedTo="659ef85b-b92f-4931-9103-cb9048246ddb">
              <profile xsi:type="esdl:SingleValue" id="1b2deec3-6c33-4197-85b4-6f07cd31c238" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="dcd0353b-e2b5-4bcc-bc45-57c051cb0d67" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e701ae2e-bd9e-4d6c-826a-8a4dddabaded" name="InPort" connectedTo="16b9ecfc-7f61-4c04-9751-e85a87abe5c7">
              <profile xsi:type="esdl:SingleValue" id="50ce41c1-ba1d-496f-9947-1e88d4c2f0d5" value="49.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8195bf7c-ac71-4270-bdfd-fb106af78cd8" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="16b9ecfc-7f61-4c04-9751-e85a87abe5c7" name="InPort" id="7c9cd3c4-5353-4842-9754-7f7d6143afdc"/>
            <port xsi:type="esdl:OutPort" connectedTo="97e88db4-9bb1-4c3f-b700-d2b0d5242dd0" name="OutPort" id="991f1b2a-86ad-4eb1-8e8e-5cbf9458811c"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="3e3e4908-32f9-4994-81c1-1991cec0c8c9" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="16b9ecfc-7f61-4c04-9751-e85a87abe5c7" name="InPort" id="844438b0-7fc2-4d87-b021-ce19ef14268d"/>
            <port xsi:type="esdl:OutPort" connectedTo="8bc82e1d-58d7-4fda-ae20-4a3e334c1e9c" name="OutPort" id="659ef85b-b92f-4931-9103-cb9048246ddb"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640701" scope="NEIGHBOURHOOD">
        <KPIs id="390d1bcc-8f44-4325-a5c0-2fa290278380">
          <kpi xsi:type="esdl:DoubleKPI" id="82cbd0be-899b-40e7-a25e-c9ae017c8d7d" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1190713.0" name="woning_nat_meerkost" id="9d506a06-d241-4223-a672-bb9dd2002dc7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="woning_nat_meerkost_co2" id="5055cbc5-cfb2-4e79-a7a3-fdd9e0609f6f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="699.0" name="woning_nat_meerkost_weq" id="efb21a03-1acd-4275-affa-fb8e7abcea11">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0e063aac-b3a9-431c-8229-609c3111946b" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1190713.0" name="util_nat_meerkost" id="145748ff-e442-45f2-8545-bea0bdd79ff1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="289.0" name="util_nat_meerkost_co2" id="dd0264de-371a-48da-a211-c5fad2049528">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="699.0" name="util_nat_meerkost_weq" id="57c3a96a-27ad-44a1-9bde-53777fc5dfe2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="800" id="c5bb92cc-2a08-4313-8fb6-4dde8df9be8c" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.16375"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.83625"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2638625" lon="6.7666509999999995"/>
          <asset xsi:type="esdl:EConnection" id="41f3ad18-a8d5-4288-8bfe-84e4f613b1c9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3117a758-20e8-440c-8b77-202a0ff63c00" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="9a632ce1-e280-46c1-a13f-f278d7dc6617" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="aca5ce0c-877a-4f87-9e32-55c44e35022e 1ae460ca-27e4-42ba-8ba9-5d3148adf070" name="OutPort" id="d0256ed5-6461-46e2-81d1-4bca17b60a6c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b13184fc-ad34-41a2-b76a-e73b3d284342" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="073b422d-2f77-4477-9424-e22189c27746" name="InPort" connectedTo="5d0f2262-c15f-4a3e-98c5-65492c0ab81d">
              <profile xsi:type="esdl:SingleValue" id="891244c0-ed89-4588-a2eb-d0449e21561d" value="12.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c74df7a8-d2ad-4cba-85da-487ad4e2b4c1" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="4308a3a0-9e62-47c6-9d83-6506692800ab">
              <profile xsi:type="esdl:SingleValue" id="37696ce6-5fca-4f12-918a-0a26a44fe8da" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ed92abde-9e65-40f4-a6a7-093ea4555281" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="aca5ce0c-877a-4f87-9e32-55c44e35022e" name="InPort" connectedTo="d0256ed5-6461-46e2-81d1-4bca17b60a6c">
              <profile xsi:type="esdl:SingleValue" id="bd2c6d81-5da3-4950-8187-0deb25278a42" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c8c46829-73eb-47ba-babc-072fda35cb6f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d0256ed5-6461-46e2-81d1-4bca17b60a6c" name="InPort" id="1ae460ca-27e4-42ba-8ba9-5d3148adf070"/>
            <port xsi:type="esdl:OutPort" connectedTo="073b422d-2f77-4477-9424-e22189c27746" name="OutPort" id="5d0f2262-c15f-4a3e-98c5-65492c0ab81d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="157" floorArea="117327.0" id="df494fa6-01f7-4e0d-833b-53cf4373d537" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2638625" lon="6.772541"/>
          <asset xsi:type="esdl:EConnection" id="6876fef8-86c7-4c3e-bedb-e69824ebbb75" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b84f781e-02e1-4056-adc5-242ef0722984" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="afee7818-6a2f-4dd2-aaf7-a32f665757a2" value="22.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="6de0bb9f-33bf-4e00-b63b-6a282bfbe798 099b04b8-8549-4b2d-b634-35c2da99fa88 6f078f75-634f-4ff0-95dc-c6eca3afe0e0" name="OutPort" id="4a790a4c-1824-44ad-8ca5-9e50fc1ddd0b"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="911c2851-59b1-4bca-8fe4-e723774b5d64" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="e8da2bd3-6a75-440a-b572-4caea6c8a428" name="InPort" connectedTo="50f3a7e6-562b-417e-9e1d-b2a1082e70bb">
              <profile xsi:type="esdl:SingleValue" id="fa296589-4c5a-47de-9ac4-472dc8d3475b" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b8c1f8d6-2372-4b8d-b778-f2a7cca74ff6" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="debcf4b7-008e-4dfa-b7af-10fc174e4efb">
              <profile xsi:type="esdl:SingleValue" id="029fa17c-c1b7-49e7-ba73-f0d7aaa6dedb" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b2855d24-384d-4717-903c-68ebc670c548" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="b63977ea-5dc7-4a28-9a60-04f93ea1ab8a" name="InPort" connectedTo="250ee9c2-f58b-4f1f-8190-f662bd0e2618">
              <profile xsi:type="esdl:SingleValue" id="e0d42520-8b92-451b-982f-16bf6fc8d144" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8b2a41a5-a218-48fa-b58a-0c891ff1db89" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6de0bb9f-33bf-4e00-b63b-6a282bfbe798" name="InPort" connectedTo="4a790a4c-1824-44ad-8ca5-9e50fc1ddd0b">
              <profile xsi:type="esdl:SingleValue" id="f6f791c0-d3a0-4ec9-b42c-930fc9b1d178" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c6d5e9a7-3588-473f-888c-732af2d5c730" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a790a4c-1824-44ad-8ca5-9e50fc1ddd0b" name="InPort" id="099b04b8-8549-4b2d-b634-35c2da99fa88"/>
            <port xsi:type="esdl:OutPort" connectedTo="e8da2bd3-6a75-440a-b572-4caea6c8a428" name="OutPort" id="50f3a7e6-562b-417e-9e1d-b2a1082e70bb"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="00f7ae73-1515-449e-9292-79b7c598c2d4" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="4a790a4c-1824-44ad-8ca5-9e50fc1ddd0b" name="InPort" id="6f078f75-634f-4ff0-95dc-c6eca3afe0e0"/>
            <port xsi:type="esdl:OutPort" connectedTo="b63977ea-5dc7-4a28-9a60-04f93ea1ab8a" name="OutPort" id="250ee9c2-f58b-4f1f-8190-f662bd0e2618"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640702" scope="NEIGHBOURHOOD">
        <KPIs id="7b671341-5465-4779-9b77-7864d6788a33">
          <kpi xsi:type="esdl:DoubleKPI" id="e0ef7ff3-41e4-4996-b091-ae364eac9f42" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="863784.0" name="woning_nat_meerkost" id="a6598af5-122d-44b6-8fae-ffe39df24c12">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="295.0" name="woning_nat_meerkost_co2" id="cdc9a07a-d67a-44a1-a012-deba666bc5a3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="674.0" name="woning_nat_meerkost_weq" id="1ad998b8-67b0-4c0e-a8cb-d9be7941da06">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d4bd57a1-0aee-4012-a532-5c6aba6cb4eb" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="863784.0" name="util_nat_meerkost" id="eb49cd92-321e-4055-a4b7-9c2051257aed">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="295.0" name="util_nat_meerkost_co2" id="ef85c986-d551-459f-8e84-4a53619abcfb">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="674.0" name="util_nat_meerkost_weq" id="986a1e19-2118-441f-a74d-004829671ef2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1123" id="9b01fec4-ec32-4cd9-9e24-c862496bfc60" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.04363312555654497"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.956366874443455"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.271887666666665" lon="6.7681755"/>
          <asset xsi:type="esdl:EConnection" id="8c27a4d5-e9f1-44a0-8c52-c12cfe1e8ef1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="173e37de-feab-40dc-9424-764474965784" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="45c5a1e5-2930-4b0a-87d2-9cd5aee76651" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="3a9a4de5-7166-4cac-9d45-c1e915236556 16f60e6f-c642-4715-aa1b-be3b4290e9ef f9367b4b-bfd0-4624-898a-fb3c16c02635" name="OutPort" id="1394f669-81a7-4f5b-bbc9-4449ae7c3c0a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0e48df14-a6b4-4d94-acde-131e4ae34dd7" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="5e7825d7-7231-404a-b71b-84023e2acf24" name="InPort" connectedTo="93a33ca5-7174-467e-bf1c-e7b8f771501c">
              <profile xsi:type="esdl:SingleValue" id="5869b972-0be0-4fcb-a76a-25a261123031" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="20fef23c-9d72-42d8-8c3d-5a5066aafc6b" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="89e2ac87-c78b-4ef4-b86d-9fb05e24c3fa">
              <profile xsi:type="esdl:SingleValue" id="70c99798-11f2-4970-8751-ae14178babe7" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="97e04cd0-6b18-44aa-9e84-3b72334c5bee" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="3a9a4de5-7166-4cac-9d45-c1e915236556" name="InPort" connectedTo="1394f669-81a7-4f5b-bbc9-4449ae7c3c0a">
              <profile xsi:type="esdl:SingleValue" id="f01e983f-7cf4-4afe-9e0b-f60432ed5799" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ca14e794-12c1-4c7e-bb8e-83acb1d8a46a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="16f60e6f-c642-4715-aa1b-be3b4290e9ef" name="InPort" connectedTo="1394f669-81a7-4f5b-bbc9-4449ae7c3c0a">
              <profile xsi:type="esdl:SingleValue" id="259fcf2f-7932-4939-b44a-ac2b751be104" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="7ea9dc59-522e-4c00-bb09-b047a813650f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1394f669-81a7-4f5b-bbc9-4449ae7c3c0a" name="InPort" id="f9367b4b-bfd0-4624-898a-fb3c16c02635"/>
            <port xsi:type="esdl:OutPort" connectedTo="5e7825d7-7231-404a-b71b-84023e2acf24" name="OutPort" id="93a33ca5-7174-467e-bf1c-e7b8f771501c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="176" floorArea="20713.0" id="5ce41596-7ec6-43f2-a3ae-b0d82f0e48d6" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.268697333333336" lon="6.772486000000001"/>
          <asset xsi:type="esdl:EConnection" id="a4514619-082e-40f2-b73f-234ae56bbf32" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bd3d68f4-895d-4096-84d7-4aa1c8ab5f5f" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="258d646a-8bab-47a2-83de-61855764c4ca" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="26e10813-f4ae-4100-a1bc-166a1a3b710d 1f8c8686-784c-4b08-82fd-daa243f91a89 d109ccd7-78f9-411b-a6c4-5c3bf938b361" name="OutPort" id="c67cabc8-4ce7-42b0-9d76-4e9b072e8858"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="71489a48-19b4-4ac0-8b5d-c1918652dd35" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="32d20f27-863c-4b57-ab47-a3462cee1354" name="InPort" connectedTo="c9f1a28a-ecc8-4219-8a51-5ee3763789ff">
              <profile xsi:type="esdl:SingleValue" id="4939032b-08d8-440e-94ae-9f35d72a9eb8" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="23d297f7-25b1-43b6-a696-8625deaa3428" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="4ea2cb45-910c-4557-8028-4292a41a862f" name="InPort" connectedTo="0c1225e2-e03e-4d88-8142-14403bc2279b">
              <profile xsi:type="esdl:SingleValue" id="ff633862-0305-48da-9147-60fbfb8037c0" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="48413ba8-5fe1-4657-b906-d86668913290" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="26e10813-f4ae-4100-a1bc-166a1a3b710d" name="InPort" connectedTo="c67cabc8-4ce7-42b0-9d76-4e9b072e8858">
              <profile xsi:type="esdl:SingleValue" id="1c162240-ebce-4c7c-8f52-535b8feef468" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="86f9ad1e-410d-4318-8f5f-e2460c1a411c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c67cabc8-4ce7-42b0-9d76-4e9b072e8858" name="InPort" id="1f8c8686-784c-4b08-82fd-daa243f91a89"/>
            <port xsi:type="esdl:OutPort" connectedTo="32d20f27-863c-4b57-ab47-a3462cee1354" name="OutPort" id="c9f1a28a-ecc8-4219-8a51-5ee3763789ff"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="c1a4181f-8ba8-468f-9a90-19ee6bba0a61" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c67cabc8-4ce7-42b0-9d76-4e9b072e8858" name="InPort" id="d109ccd7-78f9-411b-a6c4-5c3bf938b361"/>
            <port xsi:type="esdl:OutPort" connectedTo="4ea2cb45-910c-4557-8028-4292a41a862f" name="OutPort" id="0c1225e2-e03e-4d88-8142-14403bc2279b"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640703" scope="NEIGHBOURHOOD">
        <KPIs id="daaeaa7b-0d41-4a7a-a4fb-34cdcb6e73df">
          <kpi xsi:type="esdl:DoubleKPI" id="6ef5cb12-4b9a-4b6a-9bee-d42a1586f4ae" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="955273.0" name="woning_nat_meerkost" id="78e95d16-58a4-4612-9bde-c496f6206060">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="263.0" name="woning_nat_meerkost_co2" id="334b070f-6460-4843-b3b3-1cb32aa0f68e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="521.0" name="woning_nat_meerkost_weq" id="27c19069-7926-4fef-b0a5-b02187bd9073">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9668ea1e-ccb2-4aa4-b58c-735da5b10247" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="955273.0" name="util_nat_meerkost" id="1c6885c9-5b90-45ff-a1f0-56e058d474ec">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="263.0" name="util_nat_meerkost_co2" id="36c7a97f-4960-40a5-aa55-b78a73bc8118">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="521.0" name="util_nat_meerkost_weq" id="b700b1a2-f99f-43a9-8bf4-512d900c6ade">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1499" id="1fe40653-1abd-41a9-a06d-fb0b7f00391b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.1310344827586207"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8689655172413793"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.26721225" lon="6.78993775"/>
          <asset xsi:type="esdl:EConnection" id="672e3b08-61de-407c-b818-501286611d68" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c6c919e1-86ae-48f8-84db-c5299330a012" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="a97fa108-65b5-457b-8492-1d69c52dc53e" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="d74ea6e7-ad11-4a89-b0fe-86f01fbb7ea6 a828f2be-d167-4d7a-8724-0d17df6de073" name="OutPort" id="47e121b8-d70d-42a2-8fb1-804eadb22886"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="68722198-1640-4fbd-835f-917db689d627" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="98bc7ccd-4347-488b-9534-251d1aa5f2fc"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="5815ca03-041b-4aa0-b7ff-d41bc6c486a5"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="fdf93274-8f06-4046-a4a3-9b7b225c7993" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="ae04ca72-eaaf-4ccc-9fd9-2906f4e4c9aa" name="InPort" connectedTo="34bc2c22-aee0-433b-af99-74d06f99fec9">
              <profile xsi:type="esdl:SingleValue" id="5c8bddb6-8594-4cc9-b59c-38a33e54438a" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="10b624be-f197-45e6-bbbe-29e82d0e41e5" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="26116f9d-7bc5-4267-87a6-abe38cc81ff6">
              <profile xsi:type="esdl:SingleValue" id="18a02026-3148-4dba-9334-e90ee6331980" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8310987a-b909-4582-8a4b-c37f2eeccec3" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d74ea6e7-ad11-4a89-b0fe-86f01fbb7ea6" name="InPort" connectedTo="47e121b8-d70d-42a2-8fb1-804eadb22886">
              <profile xsi:type="esdl:SingleValue" id="053c12d3-d833-4eee-a53e-856a4013928f" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="67a544df-adf6-42e8-9edd-4472233323dd" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="47e121b8-d70d-42a2-8fb1-804eadb22886" name="InPort" id="a828f2be-d167-4d7a-8724-0d17df6de073"/>
            <port xsi:type="esdl:OutPort" connectedTo="ae04ca72-eaaf-4ccc-9fd9-2906f4e4c9aa" name="OutPort" id="34bc2c22-aee0-433b-af99-74d06f99fec9"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="96" id="34c2dc03-30a1-4a48-b42b-a712bbfe9082" name="aansl_mt" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.1310344827586207"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8689655172413793"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2691085" lon="6.784516"/>
          <asset xsi:type="esdl:EConnection" id="04c7d71f-aa76-470e-962f-ce0d23b32d32" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a0111c1b-6e8c-46bd-a49b-6ed0bb94fd48" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="cb409576-4c42-4adb-91db-e6af0070df66" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="8b51f9c8-f974-4584-aa95-ae2c17a2d207 57a0f846-e209-4ab0-a23a-46a914369edd" name="OutPort" id="29fa46cd-38fc-4639-ac45-f80e2c98e967"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="3d6420a4-ad3c-4b16-bc15-25fe46dc1641" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="b390df46-445f-4088-bdc6-e1c9d6cae47d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="a631fd0f-f741-4f3b-a7e0-a58502f71e62"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4e090d12-6c44-41aa-8533-27a2e65e1190" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="313f40f1-56c2-4b8b-a279-cbe534a4720b" name="InPort" connectedTo="388b0eeb-2c7c-4904-b036-65e336dd67c1">
              <profile xsi:type="esdl:SingleValue" id="ed6e831f-8539-4ec1-915d-22b1dfb83461" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e1a85736-c081-4677-8f88-b0755b178491" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="77d3f2b2-1832-4f43-a0ce-7c47c4675a20">
              <profile xsi:type="esdl:SingleValue" id="fa945564-9e65-40d3-9467-400909db48f6" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="331b2c72-5052-42a6-90a9-03d0330ea65f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8b51f9c8-f974-4584-aa95-ae2c17a2d207" name="InPort" connectedTo="29fa46cd-38fc-4639-ac45-f80e2c98e967">
              <profile xsi:type="esdl:SingleValue" id="b0648dac-4f4b-4040-bab8-450baebd223c" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2ce579a2-3eb0-4a1a-ac92-063a96d07f29" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="29fa46cd-38fc-4639-ac45-f80e2c98e967" name="InPort" id="57a0f846-e209-4ab0-a23a-46a914369edd"/>
            <port xsi:type="esdl:OutPort" connectedTo="313f40f1-56c2-4b8b-a279-cbe534a4720b" name="OutPort" id="388b0eeb-2c7c-4904-b036-65e336dd67c1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="96" id="f7bce3ab-0eaf-40b9-8c27-36ce48c752a6" name="aansl_mt_restwarmte" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.1310344827586207"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8689655172413793"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2691085" lon="6.77909425"/>
          <asset xsi:type="esdl:EConnection" id="30112e77-2bbc-47dc-a4c5-a784ef3a11d4" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="6f083b73-605b-4cc1-8e0e-76ef0b818c4a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="927069b6-8ca3-45ae-9792-c52ddceb9b0e" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="8de87399-8bf2-4b5f-b307-362a61b8d629 9a59bf68-f0a1-4897-be01-946326f783a0" name="OutPort" id="b7e92765-df9d-4848-839a-b5939208cbd3"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="a40a1b9b-bf8a-49a6-828c-a4e10f015fd9" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="c04f6f71-b257-4d5c-b490-dd3ee5f9694b"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="46e406af-a9fb-4af1-96e0-8de3c243c160"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a1239a22-ff5f-4356-88e0-a05fdca868b3" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="584cc941-8806-47f2-88c2-f1809e19de97" name="InPort" connectedTo="111ac861-d02b-4434-8c34-0f39a7e442ac">
              <profile xsi:type="esdl:SingleValue" id="451ecb4d-96c1-463f-8a87-0c62e254f826" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="809dbc8b-8f1d-4704-a383-bfbd1230118c" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0bbbd961-a0bd-409e-b651-ce938802b5ef">
              <profile xsi:type="esdl:SingleValue" id="518ff7a3-2377-4073-9931-7114149d2e87" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="59f6cabc-7025-48b2-ae45-df29a06dbe77" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8de87399-8bf2-4b5f-b307-362a61b8d629" name="InPort" connectedTo="b7e92765-df9d-4848-839a-b5939208cbd3">
              <profile xsi:type="esdl:SingleValue" id="648e7d69-0048-4196-8f1c-84417122012e" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b80dfef1-7dbe-4817-be88-af997896c8af" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="b7e92765-df9d-4848-839a-b5939208cbd3" name="InPort" id="9a59bf68-f0a1-4897-be01-946326f783a0"/>
            <port xsi:type="esdl:OutPort" connectedTo="584cc941-8806-47f2-88c2-f1809e19de97" name="OutPort" id="111ac861-d02b-4434-8c34-0f39a7e442ac"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="214" floorArea="31238.0" id="c227584b-296a-4a1a-b4c6-f9ca08fa279f" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2691085" lon="6.788130499999999"/>
          <asset xsi:type="esdl:EConnection" id="495b4ccc-2fd9-4f99-a95d-b7c7a73e8fec" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="8b14fb57-072c-4134-91fc-fab09b6d2d78" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="cf8afeb7-bbb0-4f65-9885-d9d900423330" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="eca194b3-f4fe-4b0c-89d9-b8a7a145c500 b0cd150c-7d16-4d88-bf93-74df2ae20f03 c4473dff-d07f-4adf-b1b5-891cb8301a4f" name="OutPort" id="bcf1dc41-dcbd-460d-97d1-da3df57bdd33"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="6194513c-750d-4fc9-b9ed-29ee9841f524" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="65edb903-13b0-4c1b-b1ff-b03d80a57562"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="bc158b67-c13c-46aa-84dd-e5d52367e10c"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="09d7b87c-3de2-4980-9942-1d62f0b939d5" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="5ebb1b26-afaf-429e-9fa4-0cb16a42b98e" name="InPort" connectedTo="ab756e7f-d554-4109-bea4-d6183cef5666">
              <profile xsi:type="esdl:SingleValue" id="436bcfd9-11a4-4308-958d-21f5973c03ae" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="38683c41-6213-42e2-ba4f-73a2234fb2a8" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="92097a55-4176-4e99-85bc-9e69cab75b97" name="InPort" connectedTo="4c3652d4-cfe7-40e3-ae8e-d70371850efc">
              <profile xsi:type="esdl:SingleValue" id="eaae8145-2f4c-445e-a4d3-bd116dc6e092" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="92c27c1b-cb00-4233-8717-24f037bef183" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="eca194b3-f4fe-4b0c-89d9-b8a7a145c500" name="InPort" connectedTo="bcf1dc41-dcbd-460d-97d1-da3df57bdd33">
              <profile xsi:type="esdl:SingleValue" id="955d54a9-5641-4125-a362-8d76e13bf57f" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6468bcfe-b06d-4f60-88b3-29a6c83b5b4b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="bcf1dc41-dcbd-460d-97d1-da3df57bdd33" name="InPort" id="b0cd150c-7d16-4d88-bf93-74df2ae20f03"/>
            <port xsi:type="esdl:OutPort" connectedTo="5ebb1b26-afaf-429e-9fa4-0cb16a42b98e" name="OutPort" id="ab756e7f-d554-4109-bea4-d6183cef5666"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="11f21f86-bd41-44a2-b31d-d1584dd44278" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="bcf1dc41-dcbd-460d-97d1-da3df57bdd33" name="InPort" id="c4473dff-d07f-4adf-b1b5-891cb8301a4f"/>
            <port xsi:type="esdl:OutPort" connectedTo="92097a55-4176-4e99-85bc-9e69cab75b97" name="OutPort" id="4c3652d4-cfe7-40e3-ae8e-d70371850efc"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="14" floorArea="31238.0" id="95be6e30-ef1e-4e54-81a3-afe490f4f886" name="aansl_mt" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.271004749999996" lon="6.780901500000001"/>
          <asset xsi:type="esdl:EConnection" id="4caf4b81-3e2e-4625-b510-78a607e2fdb1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7ca0f137-8050-4ccf-adcb-6afeab40db9e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="d36d3b86-a8f1-4434-88e1-eedcd3b16778" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="505dc9c1-30c3-4d74-8016-5264cca18f3d 626013c8-e673-451b-a59a-5168cf95a561 87f55325-d143-4441-bc02-933bd1bc67ae" name="OutPort" id="52b6d659-3303-4aaf-89b0-d9577ed37c8f"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="7ba22ca7-0f27-4495-876e-d40bfae58ec9" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="f3716b3b-ec70-4e45-b69d-855d90492eb8"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="3ae60970-2528-4ab4-9e1c-f67f1379abcc"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5869c6f3-be43-4785-9a3c-19719a98b120" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="c2f8cc8a-1e98-4513-8474-ed26b45c833b" name="InPort" connectedTo="f1d719bc-8e2d-4a19-9be3-04ad127899ef">
              <profile xsi:type="esdl:SingleValue" id="2e53384d-ae6c-418f-9387-211bf53d66a2" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="8e774282-1aac-4155-8dc3-b834a9840676" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="782356a1-e923-4bc4-bdfa-ea5ac4a0c0b4" name="InPort" connectedTo="a51d5d5e-4b8f-4c3e-9737-94dae973e065">
              <profile xsi:type="esdl:SingleValue" id="2321d1f8-ca9a-4e29-807a-9e8647494d35" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f8d066d5-4699-4252-a23e-bd534d58e78a" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="505dc9c1-30c3-4d74-8016-5264cca18f3d" name="InPort" connectedTo="52b6d659-3303-4aaf-89b0-d9577ed37c8f">
              <profile xsi:type="esdl:SingleValue" id="c1e7903a-bf7e-40e3-a33a-526dfaa2f1bc" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d7ea270d-362f-458d-a87f-f3df0a267f9c" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="52b6d659-3303-4aaf-89b0-d9577ed37c8f" name="InPort" id="626013c8-e673-451b-a59a-5168cf95a561"/>
            <port xsi:type="esdl:OutPort" connectedTo="c2f8cc8a-1e98-4513-8474-ed26b45c833b" name="OutPort" id="f1d719bc-8e2d-4a19-9be3-04ad127899ef"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="a1cea2c0-7846-49bd-b80f-867ae8c6bf68" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="52b6d659-3303-4aaf-89b0-d9577ed37c8f" name="InPort" id="87f55325-d143-4441-bc02-933bd1bc67ae"/>
            <port xsi:type="esdl:OutPort" connectedTo="782356a1-e923-4bc4-bdfa-ea5ac4a0c0b4" name="OutPort" id="a51d5d5e-4b8f-4c3e-9737-94dae973e065"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="14" floorArea="31238.0" id="5eaa80e3-2338-4873-ab28-cd1feb1cb63b" name="aansl_mt_restwarmte" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2691085" lon="6.78270875"/>
          <asset xsi:type="esdl:EConnection" id="1b24a5b5-49d8-4815-a8f7-ec042667c910" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="af6e41a0-62eb-4497-9aed-2b06d1751d39" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="8bffcb4e-edd7-4485-9753-822f561397bc" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="04f44f01-812e-4f17-8a73-4146e8d91869 5e3c58a2-72c0-49b2-b9e3-2a47de95a51d 5538853a-3f60-47c8-8586-8decfb4c79da" name="OutPort" id="7fd59ceb-e591-497c-a627-37fbe2eafcc0"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="1f5c7c30-d068-4b56-92ff-37ff5ebb415e" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="03b16548-bdfe-4a54-8881-944aafb8ba19"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="d18b0de8-06e9-4666-8a1f-61c9c7532c89"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="65124bf9-f185-460d-8ca6-a2cb35072e23" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="97fdc6b1-1619-4ca6-98bd-41687d3ffce8" name="InPort" connectedTo="309713d0-d7e4-47f7-a319-4a3abfe49c8d">
              <profile xsi:type="esdl:SingleValue" id="1e35c468-ae6d-48c3-ba07-6ae7691bc5a7" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a4aa45e4-36a5-451d-9359-c729d8c11c5e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="f87a8918-c9ce-479a-9970-f27806a4fa28" name="InPort" connectedTo="2c935099-adf7-4be1-abb6-a22e3260ca99">
              <profile xsi:type="esdl:SingleValue" id="f37c5ee7-346a-4a91-b872-e899cfb657a7" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="cfd1538b-9c09-4229-87c5-d58daebfcc68" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="04f44f01-812e-4f17-8a73-4146e8d91869" name="InPort" connectedTo="7fd59ceb-e591-497c-a627-37fbe2eafcc0">
              <profile xsi:type="esdl:SingleValue" id="d2b95cd9-fdb6-461e-824b-8a5d5ae0195f" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f2281081-bcc3-4841-8dd1-8aef125bc28e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="7fd59ceb-e591-497c-a627-37fbe2eafcc0" name="InPort" id="5e3c58a2-72c0-49b2-b9e3-2a47de95a51d"/>
            <port xsi:type="esdl:OutPort" connectedTo="97fdc6b1-1619-4ca6-98bd-41687d3ffce8" name="OutPort" id="309713d0-d7e4-47f7-a319-4a3abfe49c8d"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="cce5447c-71f5-4ac3-8fb8-5ab098dae5ca" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="7fd59ceb-e591-497c-a627-37fbe2eafcc0" name="InPort" id="5538853a-3f60-47c8-8586-8decfb4c79da"/>
            <port xsi:type="esdl:OutPort" connectedTo="f87a8918-c9ce-479a-9970-f27806a4fa28" name="OutPort" id="2c935099-adf7-4be1-abb6-a22e3260ca99"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640704" scope="NEIGHBOURHOOD">
        <KPIs id="bfa92128-741b-4b94-b42d-85f6f188afab">
          <kpi xsi:type="esdl:DoubleKPI" id="32d1d8e3-2fdc-4fd7-acf6-db4a708e6c87" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="137053.0" name="woning_nat_meerkost" id="81b12afc-f422-42dc-9213-2352cc4c0e31">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="70.0" name="woning_nat_meerkost_co2" id="de9ee6af-0764-4b1b-bd5c-38a1d8b34b98">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="145.0" name="woning_nat_meerkost_weq" id="25df7852-d5e8-41f3-961f-dc9c94cba42f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bf1fce51-a207-46ca-9dbc-2e457c009691" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="137053.0" name="util_nat_meerkost" id="b45a403f-18d4-4607-99f1-987a61f08fce">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="70.0" name="util_nat_meerkost_co2" id="24fee756-0c6f-4ed5-a614-976167689fb7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="145.0" name="util_nat_meerkost_weq" id="f0082b75-ce64-41bd-8b17-0d73fcaaf159">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="152" floorArea="122504.0" id="19f8fb00-9179-432b-888c-5bd80f8c249d" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.285819333333336" lon="6.775975666666667"/>
          <asset xsi:type="esdl:EConnection" id="46094344-7236-45a5-b51c-36162887e882" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="90ee6ada-c453-4650-8be0-22ac047eedcb" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="bab40bba-74d8-445f-8a5a-055f913b1a4f" value="63.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="457c027d-1a2f-441f-9030-83c45eaf1ede 66fb9155-e4c9-4e54-8b48-c8c9acf7206d 5f4d9daa-e749-43e5-80b5-076c268be48c" name="OutPort" id="3c2020c8-62da-4740-9073-ccfa8da9f013"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d190e78d-8be5-418c-a1f8-4454a40c7344" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="1d0dac9e-2ddc-4580-a2fd-7fc030ab19db" name="InPort" connectedTo="c2d57536-a8c4-46b2-abea-1aa77c2395fd">
              <profile xsi:type="esdl:SingleValue" id="0c9a23b8-06b3-4b21-9af4-20b60353480b" value="35.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d79134bb-6eb7-45cf-a00c-33c94d1efd8d" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f1d6f8da-7ebd-44b7-a6cc-617f24f1cc51">
              <profile xsi:type="esdl:SingleValue" id="a5d1dafb-8182-4a4b-b0f3-36da3f293fc5" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="ca3f77b7-f555-44c3-a637-60798dff2282" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="ad95da18-1383-4efb-936e-042357f0e729" name="InPort" connectedTo="d2d1c0e4-0201-4217-8f63-bb0088746a81">
              <profile xsi:type="esdl:SingleValue" id="191e502b-1832-42b8-a66d-8b22f09a53da" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="df46f191-f3d7-46c7-9eb9-c833f3027ca7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="457c027d-1a2f-441f-9030-83c45eaf1ede" name="InPort" connectedTo="3c2020c8-62da-4740-9073-ccfa8da9f013">
              <profile xsi:type="esdl:SingleValue" id="a3d2c9bb-7df2-4fb2-beb5-7f70aea77dd7" value="47.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f731b720-dd57-4fd9-af53-b140091a0028" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3c2020c8-62da-4740-9073-ccfa8da9f013" name="InPort" id="66fb9155-e4c9-4e54-8b48-c8c9acf7206d"/>
            <port xsi:type="esdl:OutPort" connectedTo="1d0dac9e-2ddc-4580-a2fd-7fc030ab19db" name="OutPort" id="c2d57536-a8c4-46b2-abea-1aa77c2395fd"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="2dc3c434-e5a0-4442-af65-b8f1fd5ef566" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3c2020c8-62da-4740-9073-ccfa8da9f013" name="InPort" id="5f4d9daa-e749-43e5-80b5-076c268be48c"/>
            <port xsi:type="esdl:OutPort" connectedTo="ad95da18-1383-4efb-936e-042357f0e729" name="OutPort" id="d2d1c0e4-0201-4217-8f63-bb0088746a81"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640705" scope="NEIGHBOURHOOD">
        <KPIs id="493ded9b-6813-485e-8807-e98bb9546ab9">
          <kpi xsi:type="esdl:DoubleKPI" id="a9533c07-da2d-4be9-9b83-bc130374f728" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="91830.0" name="woning_nat_meerkost" id="97a19fda-a91b-4579-90d1-05efe024b777">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="140.0" name="woning_nat_meerkost_co2" id="2dd191fb-2ce6-4837-80d0-306f573a20cc">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="246.0" name="woning_nat_meerkost_weq" id="5bbdca1b-96f6-4403-99ea-c21fbd54860e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9ee2406f-679d-42dd-a9f2-ffe093781465" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="91830.0" name="util_nat_meerkost" id="a8ee08d7-2434-4171-b23b-177ccc0519c9">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="140.0" name="util_nat_meerkost_co2" id="bc9ab85b-d5d7-44e3-bc44-16592f0c9a92">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="246.0" name="util_nat_meerkost_weq" id="ef8cce0b-3aa1-4d3b-93cb-a0f32c4ee47a">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="173" floorArea="48597.0" id="191965ec-d260-462c-8c9b-c04718386d46" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2921625" lon="6.7854244"/>
          <asset xsi:type="esdl:EConnection" id="ef96ee7c-654a-4051-be2d-ede29c078ade" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="776cae6d-d2b4-4d97-835d-018b02d3505c" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="d6784c90-23fc-452c-b647-d6d3793747f1" value="63.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="eaeba0f8-885c-4d0f-b239-9ff079126c8e 27b9fb5c-6731-49a7-b304-af46178be0bd 2a367794-8567-4e0f-bcba-e7d4a5bdcf16 443ab2e9-1394-482d-9048-f124adaf23f1" name="OutPort" id="f25ce1c4-13c7-4f3b-9406-9d3d9c45cd72"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a469fb76-ddb6-4155-91b7-a24a16c427a9" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="a61c4f83-b358-4069-8776-325062823736" name="InPort" connectedTo="e837c6c8-a2c2-4876-9905-0c1ccb114758 7385def7-1c52-47d8-a773-59ecb26c880c">
              <profile xsi:type="esdl:SingleValue" id="f054b547-4745-4fd7-9d06-a6638301b951" value="30.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7d9b6c32-b4de-4440-a6e5-908897a75026" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="748ad0b0-638e-40c1-8198-f45782828749">
              <profile xsi:type="esdl:SingleValue" id="48746382-6618-4100-85e3-2200967569ff" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b6703d73-422f-41ea-acf2-eeb543ab3cbc" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="2158cabc-8d1e-433a-9dfe-f78e84d48cf1" name="InPort" connectedTo="aac24a93-4d83-4119-99ef-52f503585d95">
              <profile xsi:type="esdl:SingleValue" id="f67a64c1-e6e0-4455-bd29-ff21cba39189" value="15.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="00e68283-7321-4fdf-a5d3-cd43cd8cb3bd" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="eaeba0f8-885c-4d0f-b239-9ff079126c8e" name="InPort" connectedTo="f25ce1c4-13c7-4f3b-9406-9d3d9c45cd72">
              <profile xsi:type="esdl:SingleValue" id="76c1a70c-1ebf-4dea-b5f9-67b623361c80" value="50.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="26672195-455a-4083-812f-106fc559e2a3" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f25ce1c4-13c7-4f3b-9406-9d3d9c45cd72" name="InPort" id="27b9fb5c-6731-49a7-b304-af46178be0bd"/>
            <port xsi:type="esdl:OutPort" connectedTo="a61c4f83-b358-4069-8776-325062823736" name="OutPort" id="e837c6c8-a2c2-4876-9905-0c1ccb114758"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="a91b32ba-61f8-4696-a892-d8f3df19f1cd" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f25ce1c4-13c7-4f3b-9406-9d3d9c45cd72" name="InPort" id="2a367794-8567-4e0f-bcba-e7d4a5bdcf16"/>
            <port xsi:type="esdl:OutPort" connectedTo="2158cabc-8d1e-433a-9dfe-f78e84d48cf1" name="OutPort" id="aac24a93-4d83-4119-99ef-52f503585d95"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640706" scope="NEIGHBOURHOOD">
        <KPIs id="7ab85ba2-4ace-4fc2-9de2-2f8bfc61577d">
          <kpi xsi:type="esdl:DoubleKPI" id="97ee60ad-64d7-4003-a91c-2009254f283c" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="134482.0" name="woning_nat_meerkost" id="758ab46a-6196-4b9d-ada9-94583413c86e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="206.0" name="woning_nat_meerkost_co2" id="d6ba45d7-93a7-4ee7-8e13-b54ed3ba5f55">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="225.0" name="woning_nat_meerkost_weq" id="13a811c4-42e0-4259-a835-fa8c25dcd370">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7e5b39a7-10ab-4729-9a1e-2a10d55a42b6" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="134482.0" name="util_nat_meerkost" id="defea12b-5e09-494f-ac22-98d38e297186">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="206.0" name="util_nat_meerkost_co2" id="bf9e0fb6-72dd-48a7-9cda-767e88c14c4b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="225.0" name="util_nat_meerkost_weq" id="f1b69c77-0504-42df-aaa7-b1f00aafc2ac">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2" id="f6dc41e0-06a1-42c8-8e6c-50d48f9aa718" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.286623666666664" lon="6.764615285714285"/>
          <asset xsi:type="esdl:HeatPump" id="3dba4aee-00e2-4f7e-bfc5-f7a376273d03" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f25ce1c4-13c7-4f3b-9406-9d3d9c45cd72" name="InPort" id="443ab2e9-1394-482d-9048-f124adaf23f1"/>
            <port xsi:type="esdl:OutPort" connectedTo="a61c4f83-b358-4069-8776-325062823736" name="OutPort" id="7385def7-1c52-47d8-a773-59ecb26c880c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="16" floorArea="77602.0" id="4e94025c-0d91-4eda-bcd5-447da816790d" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.286623666666664" lon="6.761191428571428"/>
          <asset xsi:type="esdl:EConnection" id="dc565102-a6d6-4a2b-a00d-43842fd4ff63" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3dc1fc36-c8ec-4ea1-a0af-650625a48537" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="d3d1921a-f46b-42f6-9838-c2f803936f3c" value="80.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="3af8094e-5768-4750-b00d-b963b46d43ec f47e83ad-864b-40ba-8d96-338fc7b1c00d 3e9ecbac-0d8f-49cc-9862-c58b89cb47f4" name="OutPort" id="cf15ddae-c66b-40b9-ad71-30d6d795ab68"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="14e03ec5-c826-43dc-952f-eac65fbaaf61" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="da304a39-a39f-4557-a010-f51b7a02e6d2" name="InPort" connectedTo="c241ce4e-5c24-467f-ac9a-f02fe7ab4245">
              <profile xsi:type="esdl:SingleValue" id="7a2b816d-681d-42e0-b416-5f1281b9561e" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a8efa469-c31e-408d-be53-46cbe4915807" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="571f0150-abe8-442c-8205-a10a57a4d34a">
              <profile xsi:type="esdl:SingleValue" id="90dc2eda-9c24-434e-9fe6-b2877cb4f2be" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="f2e3360f-9b92-4338-817b-2dbf8585afea" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="0dd49e67-cebb-4e62-883e-50ecc2bb7ed7" name="InPort" connectedTo="f1db9b34-4f06-4dc6-8aa1-34d3401022c1">
              <profile xsi:type="esdl:SingleValue" id="353349a3-c456-45ae-b88d-9c3cdbfdc8b2" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="22f5f2a4-1002-476a-9d4a-e74bdc3c07a7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3af8094e-5768-4750-b00d-b963b46d43ec" name="InPort" connectedTo="cf15ddae-c66b-40b9-ad71-30d6d795ab68">
              <profile xsi:type="esdl:SingleValue" id="8279d2b2-91aa-47b7-ad9e-b19543710a04" value="72.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="af200ebf-066e-4afa-ac0a-68a44d267b83" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cf15ddae-c66b-40b9-ad71-30d6d795ab68" name="InPort" id="f47e83ad-864b-40ba-8d96-338fc7b1c00d"/>
            <port xsi:type="esdl:OutPort" connectedTo="da304a39-a39f-4557-a010-f51b7a02e6d2" name="OutPort" id="c241ce4e-5c24-467f-ac9a-f02fe7ab4245"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="c5e73bb5-6828-4521-9cc5-82c9e26d1baf" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cf15ddae-c66b-40b9-ad71-30d6d795ab68" name="InPort" id="3e9ecbac-0d8f-49cc-9862-c58b89cb47f4"/>
            <port xsi:type="esdl:OutPort" connectedTo="0dd49e67-cebb-4e62-883e-50ecc2bb7ed7" name="OutPort" id="f1db9b34-4f06-4dc6-8aa1-34d3401022c1"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640800" scope="NEIGHBOURHOOD">
        <KPIs id="7aefdcd5-3837-4e44-940e-9acf5347adb0">
          <kpi xsi:type="esdl:DoubleKPI" id="31d0fd41-cec4-4630-bf5d-79ce0dabbc53" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="308808.0" name="woning_nat_meerkost" id="0e5ca536-b051-4fb7-b174-8eddf6283c7c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="124.0" name="woning_nat_meerkost_co2" id="8f1a6d4b-8ca1-4662-996d-f45cf323d0c5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="282.0" name="woning_nat_meerkost_weq" id="d8da503c-b40d-4fc2-aca9-fdf4135d112e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ee6a6f1f-2d6e-49cc-b91f-ab03ddc712a9" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="308808.0" name="util_nat_meerkost" id="753ef7d9-0a9b-4622-b590-e24d1999d86f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="124.0" name="util_nat_meerkost_co2" id="04062e4c-3a54-4779-87cd-cd011ec730ab">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="282.0" name="util_nat_meerkost_weq" id="7608de3f-6332-4464-a90e-d720c6f8cf5b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="995" id="07e6cda8-ff74-446c-b50f-f01caaa790d5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.053266331658291456"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9467336683417086"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28503766666667" lon="6.8139237999999995"/>
          <asset xsi:type="esdl:EConnection" id="c7a4db0a-051a-4ce0-a45e-afd4d7f14e7e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ad1b3d53-f059-4bca-b6f5-8c8937729c18" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="235b7f20-1aaa-4324-a328-5e0e71073dbe" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="19cf37c1-bc00-44d2-8f45-4ff1d90ecaac edd4957d-6438-4689-a4b5-cf523f79ea9c" name="OutPort" id="e6e84c75-75fb-4b93-92bc-5f2a2384a862"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="48a57b68-1604-4b12-9d34-a2820ad221ff" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="69bb449e-8df3-420d-ad2a-fdbc86415633" name="InPort" connectedTo="81d2dbc1-7fb4-4328-9d5b-8321c1419e03">
              <profile xsi:type="esdl:SingleValue" id="1e30f6ac-641b-482a-99c9-916c0a0cb29b" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cc78dd72-f06c-425f-96d9-6a1d3fba0d64" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="91eeaab9-bc81-4bf8-83a9-2fa9f16c7996">
              <profile xsi:type="esdl:SingleValue" id="cc96cd52-1398-497e-8825-3f2987b231da" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f6913d99-fcdb-441e-82a7-27811c84848d" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="19cf37c1-bc00-44d2-8f45-4ff1d90ecaac" name="InPort" connectedTo="e6e84c75-75fb-4b93-92bc-5f2a2384a862">
              <profile xsi:type="esdl:SingleValue" id="793faff6-07c3-48d2-9238-3df4743ca1c2" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="29975f1e-4012-428f-b461-27443eade66a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e6e84c75-75fb-4b93-92bc-5f2a2384a862" name="InPort" id="edd4957d-6438-4689-a4b5-cf523f79ea9c"/>
            <port xsi:type="esdl:OutPort" connectedTo="69bb449e-8df3-420d-ad2a-fdbc86415633" name="OutPort" id="81d2dbc1-7fb4-4328-9d5b-8321c1419e03"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="25" floorArea="12860.0" id="856f0345-9163-4c1b-b225-f964cc113c87" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28503766666667" lon="6.8179554"/>
          <asset xsi:type="esdl:EConnection" id="f5f6844e-f57c-4ab8-b123-93b1e74233f1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7b4f43b9-2da1-4457-8de5-fd00f78493ca" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3a6b960c-6e13-47c3-95e9-9e94f5ddb058" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="401f6d46-0c0b-4f32-b9c8-91a5019e2248 07900364-c16d-4d8e-b67d-14382439b148 dffad2b5-b9c4-4be9-87ef-289040315aa5" name="OutPort" id="3e12199d-415f-4ea3-a8f6-2da3fa046ab7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="af020c96-b719-433e-8e3c-5885c4ecdef3" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="792ca5ea-245e-4dff-b244-2f8a598c861d" name="InPort" connectedTo="2648223e-3348-4126-b00a-33071794433e">
              <profile xsi:type="esdl:SingleValue" id="b97b6c6d-1d89-4dbe-8093-6141d2c22960" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="94d5e9d2-348c-49cb-91e4-ff93beaa48ad" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="2544712c-ed8d-4450-87e3-be9821f39ed4" name="InPort" connectedTo="6063265b-f044-4087-93b0-e707c3eb0d66">
              <profile xsi:type="esdl:SingleValue" id="b326555f-b24f-40ff-bac2-22ea2c13f146" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c5d149d0-c64f-43e3-bb21-b7eefc402c97" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="401f6d46-0c0b-4f32-b9c8-91a5019e2248" name="InPort" connectedTo="3e12199d-415f-4ea3-a8f6-2da3fa046ab7">
              <profile xsi:type="esdl:SingleValue" id="1e1d5107-82ad-42d9-b1cc-11083413f965" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="63e88cd4-da8f-4eb3-8896-19685851ef56" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3e12199d-415f-4ea3-a8f6-2da3fa046ab7" name="InPort" id="07900364-c16d-4d8e-b67d-14382439b148"/>
            <port xsi:type="esdl:OutPort" connectedTo="792ca5ea-245e-4dff-b244-2f8a598c861d" name="OutPort" id="2648223e-3348-4126-b00a-33071794433e"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="7bd8564c-3e24-41fa-bdc2-a39a89ff0dd4" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3e12199d-415f-4ea3-a8f6-2da3fa046ab7" name="InPort" id="dffad2b5-b9c4-4be9-87ef-289040315aa5"/>
            <port xsi:type="esdl:OutPort" connectedTo="2544712c-ed8d-4450-87e3-be9821f39ed4" name="OutPort" id="6063265b-f044-4087-93b0-e707c3eb0d66"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640801" scope="NEIGHBOURHOOD">
        <KPIs id="e5f6f8f0-5a11-4e77-a720-f7eaf7604b8b">
          <kpi xsi:type="esdl:DoubleKPI" id="76c80d1d-2841-43fc-b764-29dc724ae7ee" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="157348.0" name="woning_nat_meerkost" id="3ac0f0cb-1478-42c2-a3fd-893bc82b46d4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="81.0" name="woning_nat_meerkost_co2" id="7ab54ca5-dae2-44ef-b8e6-2466a080ecba">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="161.0" name="woning_nat_meerkost_weq" id="434e2b78-51fb-4579-bcce-e2954798d646">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d1caa250-ea86-467a-b7a4-d5f2ab49e0d9" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="157348.0" name="util_nat_meerkost" id="bb0a2295-47f6-4b79-a136-2b3189f0af59">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="81.0" name="util_nat_meerkost_co2" id="bfe85200-9264-419d-899e-d5c0ce55be98">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="161.0" name="util_nat_meerkost_weq" id="e3cdd9f0-b794-47f1-8c80-818f30e45e17">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="934" id="d13b280e-10c1-462d-9013-8d471d41f146" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.15096359743040685"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8490364025695931"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2937935" lon="6.807500818181818"/>
          <asset xsi:type="esdl:EConnection" id="9d505ed5-667e-4305-9b29-49a4500e240e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="6570e357-f53d-4f1f-8d17-c0aca7a56f38" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="de7330e6-5a4f-400b-9427-f2f26ff64ee6" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="404f75c6-a7e2-4b89-8cf3-957679ee7f03 8d178b8a-057e-4bd1-a79e-004c7ead35d1" name="OutPort" id="c026dd1e-d9e6-41e2-870b-228433db12e5"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b96b85cd-ef34-4ef8-af2c-8faef055a757" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="edc2c2cf-7b06-49e2-9580-7d3bdb393973" name="InPort" connectedTo="3a75c88a-9b3f-4068-88b5-20e2e066b063">
              <profile xsi:type="esdl:SingleValue" id="7a61bb55-8f9e-44bb-acb9-0789347e23fc" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="25551ef4-dc72-45ee-a4d3-df7c85a346ad" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e4941ed4-206b-42f5-ada2-1f2f3f980a48">
              <profile xsi:type="esdl:SingleValue" id="8adb8013-f71e-4508-a5a0-366d99839fae" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4f6d09e1-0b68-4fe4-b0b7-072c6d57cef8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="404f75c6-a7e2-4b89-8cf3-957679ee7f03" name="InPort" connectedTo="c026dd1e-d9e6-41e2-870b-228433db12e5">
              <profile xsi:type="esdl:SingleValue" id="1008fc13-d0a8-47a0-85e5-73e0289fb9a0" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3ba296b6-bee1-48d4-93f5-6230a4820ec8" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c026dd1e-d9e6-41e2-870b-228433db12e5" name="InPort" id="8d178b8a-057e-4bd1-a79e-004c7ead35d1"/>
            <port xsi:type="esdl:OutPort" connectedTo="edc2c2cf-7b06-49e2-9580-7d3bdb393973" name="OutPort" id="3a75c88a-9b3f-4068-88b5-20e2e066b063"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="17" floorArea="5901.0" id="fbfaf194-6442-4319-81ec-e186c35ab7e4" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2937935" lon="6.794872454545454"/>
          <asset xsi:type="esdl:EConnection" id="e8d45f0f-bb1f-48cb-9969-71ac56fa43f0" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f4eba3cc-dc9f-46d2-9535-1e5d0308ff52" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3e098b32-711e-41c3-81d0-bfdaf6883b01" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="7d574b77-bc95-4816-8c91-b570d9151856 4a2240ea-8d1a-4e80-aff3-f3c6ae305378" name="OutPort" id="313c587b-d4d9-49c4-8d32-6c431dd79ed7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a3a6c64f-2cfc-4bd4-9f62-25d66cd1cd1a" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="ec78a983-339d-4df9-8f05-536f8d6457a6" name="InPort" connectedTo="653d1f8f-3eeb-4eae-80bd-cdc6bd0dc5e8">
              <profile xsi:type="esdl:SingleValue" id="379ba663-1e16-4f4b-b0f4-ba7befc5cdf9" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a33df6e6-5459-492a-9c92-de3d54c8051d" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7d574b77-bc95-4816-8c91-b570d9151856" name="InPort" connectedTo="313c587b-d4d9-49c4-8d32-6c431dd79ed7">
              <profile xsi:type="esdl:SingleValue" id="05cb1ded-eb4f-4e97-9edf-51558f2f3695" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4fa6d01b-9dc6-41db-8d4a-5f0b6036e4c3" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="313c587b-d4d9-49c4-8d32-6c431dd79ed7" name="InPort" id="4a2240ea-8d1a-4e80-aff3-f3c6ae305378"/>
            <port xsi:type="esdl:OutPort" connectedTo="ec78a983-339d-4df9-8f05-536f8d6457a6" name="OutPort" id="653d1f8f-3eeb-4eae-80bd-cdc6bd0dc5e8"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640802" scope="NEIGHBOURHOOD">
        <KPIs id="b0415dfc-881b-473a-b86a-0ccf2c0abf14">
          <kpi xsi:type="esdl:DoubleKPI" id="d3cf4065-e1e1-4062-867b-a9a22f3e1309" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="147381.0" name="woning_nat_meerkost" id="20d6cb29-4ba7-4d49-82f5-d57d72d2e76d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="74.0" name="woning_nat_meerkost_co2" id="28a2d939-f367-4c63-afa6-941828722a1c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="158.0" name="woning_nat_meerkost_weq" id="59dffe8e-313b-4d74-80a6-4a6b111939b0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3b7a3d70-ceac-4c5b-be3b-5d36e694b5c2" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="147381.0" name="util_nat_meerkost" id="5e903f94-96f0-49b8-82ae-f9e499b0160f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="74.0" name="util_nat_meerkost_co2" id="df5bdce3-be19-44dc-b3e9-52b719e8271e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="158.0" name="util_nat_meerkost_weq" id="131b0e91-f600-4f5b-acf1-d25177a58929">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="761" id="33b911a3-d59c-4a78-8040-a91bfb26a27a" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.09112426035502959"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9088757396449704"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.295223750000005" lon="6.800852"/>
          <asset xsi:type="esdl:GConnection" id="46949830-7631-4da3-b0ca-d16a8c95774e" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="33f027b4-d889-4c35-bfa4-bd14e106cc81" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="a35ad757-63da-4089-8bf3-e9fdccd42836" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="1b418096-6716-40a4-91f2-d9b07d942b80" name="OutPort" id="700a6b76-8338-4eab-8053-4aaf5bde49cf"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="ca72f47e-570e-4705-adcf-ec356b9d1273" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="07d9928f-1313-45d8-a929-f5fd79c724ef" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="4d1d3d96-3eb6-4960-a5b5-81bbc0a90d67" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c3509507-0ad6-4ae5-907a-286948733f18 7cc576e6-380e-4ee3-9601-36ba40cf9255" name="OutPort" id="03606f0a-2a8f-45ad-bc41-fd945b4df8bf"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="f6015723-c7d7-43ed-9a21-b8e8168543bb" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="d7ede9d4-595b-48a3-9612-fd97b7139d9e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="57f4e982-4023-4c02-9eca-b1b067a174a4"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7268ae2a-b90e-498d-922a-3068774e98d5" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="6cdf287d-8e80-4096-93bf-e9f3d0c7f325" name="InPort" connectedTo="6898388c-d3e0-4201-aadc-3282604fb98e 3b676354-cc87-4501-bbf1-ef447e2b82c4">
              <profile xsi:type="esdl:SingleValue" id="ddd7e46d-4c73-46d5-bf28-ec4e1bc22290" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8b04887b-9adc-43e6-946a-eaf5842462c4" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" id="fb293d36-a05d-4e21-8703-40d015b9f798" name="InPort" connectedTo="6898388c-d3e0-4201-aadc-3282604fb98e">
              <profile xsi:type="esdl:SingleValue" id="64bfb687-ebe4-480e-bb7d-bb651365015c" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="284363ff-c864-4178-9acc-3f76092c13b4" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c3509507-0ad6-4ae5-907a-286948733f18" name="InPort" connectedTo="03606f0a-2a8f-45ad-bc41-fd945b4df8bf">
              <profile xsi:type="esdl:SingleValue" id="613b06dc-4e33-4fdc-bc1e-a499bee9c58a" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="75d528eb-45cd-478e-ac3f-d0f6303d3a42" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="700a6b76-8338-4eab-8053-4aaf5bde49cf" name="InPort" id="1b418096-6716-40a4-91f2-d9b07d942b80"/>
            <port xsi:type="esdl:OutPort" connectedTo="6cdf287d-8e80-4096-93bf-e9f3d0c7f325 fb293d36-a05d-4e21-8703-40d015b9f798" name="OutPort" id="6898388c-d3e0-4201-aadc-3282604fb98e"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d8ff4e32-ef60-4b85-8139-cc8946c71db1" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="03606f0a-2a8f-45ad-bc41-fd945b4df8bf" name="InPort" id="7cc576e6-380e-4ee3-9601-36ba40cf9255"/>
            <port xsi:type="esdl:OutPort" connectedTo="6cdf287d-8e80-4096-93bf-e9f3d0c7f325" name="OutPort" id="3b676354-cc87-4501-bbf1-ef447e2b82c4"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="85" id="28c4a71b-cbda-4e9a-8f96-cea09e9d2ec7" name="aansl_mt" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.09112426035502959"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9088757396449704"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2969255" lon="6.803027999999999"/>
          <asset xsi:type="esdl:GConnection" id="65aed15c-3d7a-42be-9a25-985fbfd9adb6" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="20aa5e3d-8aec-4920-9b7c-d03a85df26d1" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="cb882a73-c29e-4e3e-adea-05504eeb6136" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="f623a55f-e9f3-44d3-b82e-ae9975840389" name="OutPort" id="d691e532-72de-4f68-8c5c-b87ebb8ab296"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="5a84c5d3-7448-4fb8-afca-66858dad4923" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3252d11f-00ac-494b-b185-645208c31517" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="96d203ea-2037-4b90-943b-70fb1139e99a" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="d962092f-3551-4188-8daa-aa6217568ae2 6d7ed491-f982-4d32-b886-aa8018a5cacf" name="OutPort" id="f7907865-61c6-4373-9edc-3b1b2475bc94"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="613ac7c9-7eab-442f-b564-5c9bf63a03ab" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="2fc4c873-4e98-4e4d-854d-663df4f84bb2"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="b66151ce-1507-4b6e-9572-03708093b071"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9a0d0fd9-bcc0-4aa6-bb0d-9be8fe0e216d" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="88d74c8f-bd61-4d6e-b8c6-4c3f691f6133" name="InPort" connectedTo="6493c3a5-d187-4650-a478-90c6b186d44e 47291c11-17bb-48bb-8038-29d1d60c849e">
              <profile xsi:type="esdl:SingleValue" id="a0e573ed-b491-448b-b9ff-16c9d8f1fb56" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="11f9f074-6cf3-418c-89e7-1f67b9d69d77" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" id="099abb29-637e-4972-b916-6c2fc451a7c8" name="InPort" connectedTo="6493c3a5-d187-4650-a478-90c6b186d44e">
              <profile xsi:type="esdl:SingleValue" id="d086abbc-083a-4605-9c7a-f64cb1a3e1a9" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8273c7ed-274a-432d-8733-0c1f00675c51" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d962092f-3551-4188-8daa-aa6217568ae2" name="InPort" connectedTo="f7907865-61c6-4373-9edc-3b1b2475bc94">
              <profile xsi:type="esdl:SingleValue" id="4dd2f063-4ec7-46a8-881b-056f696dc0cb" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="e57b11ab-8ed0-47db-a835-b63f23fa06e4" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d691e532-72de-4f68-8c5c-b87ebb8ab296" name="InPort" id="f623a55f-e9f3-44d3-b82e-ae9975840389"/>
            <port xsi:type="esdl:OutPort" connectedTo="88d74c8f-bd61-4d6e-b8c6-4c3f691f6133 099abb29-637e-4972-b916-6c2fc451a7c8" name="OutPort" id="6493c3a5-d187-4650-a478-90c6b186d44e"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4dfee392-f1c6-448b-b76f-2f9eee7b27c8" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f7907865-61c6-4373-9edc-3b1b2475bc94" name="InPort" id="6d7ed491-f982-4d32-b886-aa8018a5cacf"/>
            <port xsi:type="esdl:OutPort" connectedTo="88d74c8f-bd61-4d6e-b8c6-4c3f691f6133" name="OutPort" id="47291c11-17bb-48bb-8038-29d1d60c849e"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="85" id="9eaabba7-7e6b-42b1-97ca-8f82af2ee1c2" name="aansl_mt_restwarmte" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.09112426035502959"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9088757396449704"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.295223750000005" lon="6.7965"/>
          <asset xsi:type="esdl:GConnection" id="d27f044c-56d7-4899-8da4-f8511a3864f6" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="944fdbce-bb4b-404c-8a0c-a9eb1362869d" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="f86b3ce6-062c-41b8-bbf7-45ada2c33ea3" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="46cb8da2-8bf5-4402-8b95-76bc082d7d33" name="OutPort" id="621ad0eb-a845-4248-ae94-9218b41ffc31"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="25bb154c-67ad-4242-935e-4fbe2368d28e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f169bfd9-83b6-47fc-b8f9-3ea7b8a4ca4f" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="ecf3d44b-0b29-4803-937d-6c333f1a7dc4" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c4043706-5db0-4f8f-9d58-9a5675f53a38 dcae8139-7d2c-4276-a64e-2d1fe18f5490" name="OutPort" id="f467b4df-a22e-4048-a2b2-0a28bda01f59"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="d64c70e7-4aa6-4e66-9e64-39db2f83fdf5" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="dbace10f-3a26-445e-940a-3f85765fb1f6"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="b1d74cd4-953d-4a9e-b41e-b220046f921e"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2f7f00f5-30dd-41f2-8c18-fe71cfe86d2d" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="5033299d-6233-405f-9efe-cd608f74bfcc" name="InPort" connectedTo="f3254231-25c5-486c-85a8-cde2f0d89bcd 4de54d1c-4376-44a8-8b68-8d9e460b340c">
              <profile xsi:type="esdl:SingleValue" id="9fd61c24-b53f-41b7-8516-42b2af7cf199" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="72d0a8d8-247e-49d4-852c-7a9541b53541" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" id="6fb2f642-ef93-4f27-b08e-7e902f0f7b1c" name="InPort" connectedTo="f3254231-25c5-486c-85a8-cde2f0d89bcd fab085ad-0ce0-4999-8587-aede31a14f3e af9ae586-f2bf-463b-96aa-6798a8cc22d6 532472ca-0af6-4563-808c-4a2ae641c422">
              <profile xsi:type="esdl:SingleValue" id="3c61f098-b1fe-473d-a578-648853a63126" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="50ee08b8-2acd-4295-b7db-bc7674b14278" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c4043706-5db0-4f8f-9d58-9a5675f53a38" name="InPort" connectedTo="f467b4df-a22e-4048-a2b2-0a28bda01f59">
              <profile xsi:type="esdl:SingleValue" id="08fc41c3-af09-460c-a11d-85eb70e2f5be" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="f5d3de4b-fd9e-4bd1-b5d9-406c4409a898" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="621ad0eb-a845-4248-ae94-9218b41ffc31" name="InPort" id="46cb8da2-8bf5-4402-8b95-76bc082d7d33"/>
            <port xsi:type="esdl:OutPort" connectedTo="5033299d-6233-405f-9efe-cd608f74bfcc 6fb2f642-ef93-4f27-b08e-7e902f0f7b1c" name="OutPort" id="f3254231-25c5-486c-85a8-cde2f0d89bcd"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="90dc72e8-22dd-43cf-964f-8b8309f9ff84" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f467b4df-a22e-4048-a2b2-0a28bda01f59" name="InPort" id="dcae8139-7d2c-4276-a64e-2d1fe18f5490"/>
            <port xsi:type="esdl:OutPort" connectedTo="5033299d-6233-405f-9efe-cd608f74bfcc" name="OutPort" id="4de54d1c-4376-44a8-8b68-8d9e460b340c"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="26" floorArea="11094.0" id="33a4d114-0cba-4b8e-b275-a654fe83c108" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.295223750000005" lon="6.803027999999999"/>
          <asset xsi:type="esdl:GConnection" id="129313f5-fd0b-4660-b528-ff27d69d59e9" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="63ee0d53-038d-44be-af2d-64b7e75459b0" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="a6ddd78e-6dac-4ef3-938b-5311f262add5" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="95b2313d-2a64-496e-af83-ab09004ae90f" name="OutPort" id="e52a19a6-f344-4e97-9b2e-a1a021bb5ffe"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="bee48621-021a-41ff-b34f-e8080a6eefc9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f4d6f33c-1557-4771-bada-1e011e674dec" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="21f7c323-2522-43af-b9c1-5e1028f9ac35" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="60a22e3e-da94-4222-ba12-aefca1ea172a 5b8ec25e-a832-40ba-a18e-fde19a193cc4 fa3617bd-4c16-4ca7-ac9d-4b581738fc80" name="OutPort" id="c869df27-4d7c-4ea2-aa2d-9a5c12aa67f7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="6cb46eb7-a2ef-4b9c-87a0-a3b514272a24" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="65cf7c55-d489-4942-983f-58e636edb33f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="d2d03505-0fef-45ea-83d7-c1921d4e413d"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d3cc961a-d33e-40d0-8463-e2855266ffc5" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="22b8d302-120d-4dd7-be79-cdfb0010c008" name="InPort" connectedTo="fab085ad-0ce0-4999-8587-aede31a14f3e 93982e16-db56-4ef5-ad8e-45273f67eef6">
              <profile xsi:type="esdl:SingleValue" id="7cd66c4d-7c92-4357-973e-43307290b8cf" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="39afffe7-4f03-4e2a-9dea-11cef7342456" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="54061dcb-f612-4a73-bff2-6d873b40591c" name="InPort" connectedTo="987a6cfc-642c-4a57-9d18-0bcb1b9b75bc">
              <profile xsi:type="esdl:SingleValue" id="c46fa6a0-b48a-4c69-a374-b6817869a363" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b7079887-c592-45fc-a6f6-8de88631b630" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="60a22e3e-da94-4222-ba12-aefca1ea172a" name="InPort" connectedTo="c869df27-4d7c-4ea2-aa2d-9a5c12aa67f7">
              <profile xsi:type="esdl:SingleValue" id="182f205c-7046-4ea3-994a-4b7f539206c7" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="fda48dce-9e83-4e52-99d6-29348aa92655" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e52a19a6-f344-4e97-9b2e-a1a021bb5ffe" name="InPort" id="95b2313d-2a64-496e-af83-ab09004ae90f"/>
            <port xsi:type="esdl:OutPort" connectedTo="6fb2f642-ef93-4f27-b08e-7e902f0f7b1c 22b8d302-120d-4dd7-be79-cdfb0010c008" name="OutPort" id="fab085ad-0ce0-4999-8587-aede31a14f3e"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="dd739215-8911-400c-b005-39222d9cac03" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c869df27-4d7c-4ea2-aa2d-9a5c12aa67f7" name="InPort" id="5b8ec25e-a832-40ba-a18e-fde19a193cc4"/>
            <port xsi:type="esdl:OutPort" connectedTo="22b8d302-120d-4dd7-be79-cdfb0010c008" name="OutPort" id="93982e16-db56-4ef5-ad8e-45273f67eef6"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="55970ba2-09ad-425e-a607-ec4df57fcc94" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="c869df27-4d7c-4ea2-aa2d-9a5c12aa67f7" name="InPort" id="fa3617bd-4c16-4ca7-ac9d-4b581738fc80"/>
            <port xsi:type="esdl:OutPort" connectedTo="54061dcb-f612-4a73-bff2-6d873b40591c" name="OutPort" id="987a6cfc-642c-4a57-9d18-0bcb1b9b75bc"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="11094.0" id="06d1fe7c-2a3e-48a2-9f62-975a2643b0a9" name="aansl_mt" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.295223750000005" lon="6.7986759999999995"/>
          <asset xsi:type="esdl:GConnection" id="7381adb5-4140-4f39-a2d7-38f4f17041e8" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c7b93838-28c2-4607-bfad-8b0d176fe9be" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="fb2135ce-3a81-4184-bc8d-9c5e4371fc06" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="4688e980-8cfc-423a-9d78-d39b2b5ffaee" name="OutPort" id="34e9f010-b528-4889-911e-c7120c404f12"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="7f59d194-ac32-414d-a3ba-9e70f5807217" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="50daab5e-dbb9-42f7-b305-ae014e2fbb82" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="5deb0f04-57e7-414e-adff-8f2644b50781" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="666409a6-7ad4-4fc9-b059-fa95ea21a953 d665b5b4-accf-42e6-8916-9d847f0dbd23 f774ca12-5a32-47d1-995c-cdfbad717f18" name="OutPort" id="40e26f89-6486-4b94-a314-87b687824f77"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="f7c8d341-8dfa-4360-9b30-32a9024a727a" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="7975b7da-1d0a-4d36-b5da-387eff23b903"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="a34e2ffc-21d2-4989-ac84-e631043cebea"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="254fd367-5040-4384-874b-5e8981d04dac" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="bcdafc72-5926-468f-a18f-4780af08e208" name="InPort" connectedTo="af9ae586-f2bf-463b-96aa-6798a8cc22d6 4fe49e70-cdbb-45a6-807e-4bd61010c2e0">
              <profile xsi:type="esdl:SingleValue" id="503bc9a7-1475-4d7b-91de-6c36225352aa" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3a96eec2-662b-4cdb-ba39-630b603a7d8d" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="49f6ea19-b13a-467e-8305-b5bbe35d736c" name="InPort" connectedTo="1b462582-135f-4911-88a5-4ed5d50fad0e">
              <profile xsi:type="esdl:SingleValue" id="892573ff-72ed-4365-b3e7-82d3addf58df" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="70a1dabc-2830-4323-bbf8-1758e736c2e0" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="666409a6-7ad4-4fc9-b059-fa95ea21a953" name="InPort" connectedTo="40e26f89-6486-4b94-a314-87b687824f77">
              <profile xsi:type="esdl:SingleValue" id="5e8c50e6-80e9-4f39-aaec-a2f1eedeeae4" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="1dfbb754-5674-4cf3-846b-a2721f3c88e2" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="34e9f010-b528-4889-911e-c7120c404f12" name="InPort" id="4688e980-8cfc-423a-9d78-d39b2b5ffaee"/>
            <port xsi:type="esdl:OutPort" connectedTo="6fb2f642-ef93-4f27-b08e-7e902f0f7b1c bcdafc72-5926-468f-a18f-4780af08e208" name="OutPort" id="af9ae586-f2bf-463b-96aa-6798a8cc22d6"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d3a78c76-92d9-4d2f-b2b3-3c57e0e45ca4" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="40e26f89-6486-4b94-a314-87b687824f77" name="InPort" id="d665b5b4-accf-42e6-8916-9d847f0dbd23"/>
            <port xsi:type="esdl:OutPort" connectedTo="bcdafc72-5926-468f-a18f-4780af08e208" name="OutPort" id="4fe49e70-cdbb-45a6-807e-4bd61010c2e0"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="be7d9064-02cf-4d8d-9684-7faae8db222b" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="40e26f89-6486-4b94-a314-87b687824f77" name="InPort" id="f774ca12-5a32-47d1-995c-cdfbad717f18"/>
            <port xsi:type="esdl:OutPort" connectedTo="49f6ea19-b13a-467e-8305-b5bbe35d736c" name="OutPort" id="1b462582-135f-4911-88a5-4ed5d50fad0e"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="11094.0" id="6e182aa9-1887-4f3e-8496-3a572e3da25c" name="aansl_mt_restwarmte" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2969255" lon="6.805204"/>
          <asset xsi:type="esdl:GConnection" id="d7147e18-07ec-447f-8eb0-82c5e38cd8b1" name="Gas_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="123b9f51-17a5-4f32-b800-6b036a349121" name="InPort" connectedTo="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f">
              <profile xsi:type="esdl:SingleValue" id="17ad3bb5-25bc-4a36-854c-42c56088f4ee" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="4e622e83-e9fc-40db-81c8-03b45ecca65a" name="OutPort" id="cdc682f2-122f-4bc7-b053-a3a1fae413a8"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:EConnection" id="f6c4f1e2-f919-46b7-86c4-c0630aa2104a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="256b13d8-edfb-4438-b01e-ff48c77766a9" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="79ea32f7-f445-42a1-a848-69f8e0f08c5a" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="0d4de4ac-785a-430a-a5d8-7e72aaf6c248 ccaa874c-4e44-4d2c-99f5-fe1356acdec9 d4c7619f-e2b7-483e-80c1-ca026cce69fa" name="OutPort" id="2e36fac3-27f4-4188-b781-86daacb6bac2"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="9b85722b-ada2-4256-b881-94ffdb20ff82" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9a176b07-50ab-4057-96bd-b2e4baad66dd" name="InPort" id="90754bbb-0204-4ecd-93f1-2faa71c3792f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" id="bd5718d6-7dc2-4b55-8310-ddeea882c97b"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ecf2d57c-cf22-477a-83f4-e90b4479f45d" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="f51ca948-6270-4c36-bfa7-42728afd1776" name="InPort" connectedTo="532472ca-0af6-4563-808c-4a2ae641c422 d62c47f4-7083-46c8-b78a-e4bff9580a92">
              <profile xsi:type="esdl:SingleValue" id="bd216464-514d-454d-a0e6-c84048aaa501" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="63156ac5-b326-4c37-80c8-b941de986ef9" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="7e338a0c-e5ea-4051-8baf-78468d1c0c64" name="InPort" connectedTo="6edbb6ec-3f3c-4716-a0bb-a89c0d9fd6e0">
              <profile xsi:type="esdl:SingleValue" id="6aba961d-4b7a-4e63-98b3-25a5f03a75d0" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6d98a722-5e11-4deb-b313-120940b4316f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0d4de4ac-785a-430a-a5d8-7e72aaf6c248" name="InPort" connectedTo="2e36fac3-27f4-4188-b781-86daacb6bac2">
              <profile xsi:type="esdl:SingleValue" id="e908ebfc-b07b-4ac3-b76f-d6376b568d49" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" id="1e718fc7-2098-4380-8175-84bc074ff38d" name="Gas_heater" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cdc682f2-122f-4bc7-b053-a3a1fae413a8" name="InPort" id="4e622e83-e9fc-40db-81c8-03b45ecca65a"/>
            <port xsi:type="esdl:OutPort" connectedTo="6fb2f642-ef93-4f27-b08e-7e902f0f7b1c f51ca948-6270-4c36-bfa7-42728afd1776" name="OutPort" id="532472ca-0af6-4563-808c-4a2ae641c422"/>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2b0e7809-4ef1-4bfc-bbd3-b3a595dc6430" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2e36fac3-27f4-4188-b781-86daacb6bac2" name="InPort" id="ccaa874c-4e44-4d2c-99f5-fe1356acdec9"/>
            <port xsi:type="esdl:OutPort" connectedTo="f51ca948-6270-4c36-bfa7-42728afd1776" name="OutPort" id="d62c47f4-7083-46c8-b78a-e4bff9580a92"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="fe208500-bbcf-45f3-a96c-2824e16b9649" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2e36fac3-27f4-4188-b781-86daacb6bac2" name="InPort" id="d4c7619f-e2b7-483e-80c1-ca026cce69fa"/>
            <port xsi:type="esdl:OutPort" connectedTo="7e338a0c-e5ea-4051-8baf-78468d1c0c64" name="OutPort" id="6edbb6ec-3f3c-4716-a0bb-a89c0d9fd6e0"/>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640803" scope="NEIGHBOURHOOD">
        <KPIs id="7ecc66de-a2bf-4882-8241-a44973a3c80d">
          <kpi xsi:type="esdl:DoubleKPI" id="ac459d6e-c406-4d80-8bf5-38711186140a" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="144945.0" name="woning_nat_meerkost" id="f6a1dcae-1058-4414-9676-5b4abf13ba8f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="72.0" name="woning_nat_meerkost_co2" id="416e684b-2f31-446b-8367-a7123a15c2c1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="147.0" name="woning_nat_meerkost_weq" id="233915c7-f454-4020-b23b-e4ee3fcd7ecd">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="465ad51e-0853-4403-b99c-72f49c8cfd8f" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="144945.0" name="util_nat_meerkost" id="fa23a1d4-53e5-40b6-b62c-d9ac7b6cc8b2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="72.0" name="util_nat_meerkost_co2" id="824ab198-3d70-4cb5-b54b-6765274802ab">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="147.0" name="util_nat_meerkost_weq" id="1964c628-1668-4827-b5b1-c33b7259b5d8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="942" id="307afd88-7c30-4736-9241-1699d08a58d5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.8248407643312102"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.1751592356687898"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.29708266666667" lon="6.8134749999999995"/>
          <asset xsi:type="esdl:EConnection" id="f9b4ebe0-7c97-445a-b7b5-eb32c5bb8e87" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="6cf26bbe-ccbf-479d-a8ab-42cc68eceb11" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b5ee3809-ba3b-4797-8ef6-f221e9d2cff7" value="18.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="e9a475f4-657e-4703-9ae1-20dc3e8bf19b 405b8e06-c0c6-4500-ba5d-5fc866a70a48" name="OutPort" id="3fc3f70d-c4ac-435d-915e-221e6266bdb3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="28451bf8-d4d4-4b67-92a9-bd45640e3acd" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="c0f6471e-c009-4c69-a0a0-b87e38ce304a" name="InPort" connectedTo="d40517ad-0811-40f2-939f-6f22fcfb6701">
              <profile xsi:type="esdl:SingleValue" id="c3be2b11-1657-4d7f-9413-67de0ba87faa" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ed560ecd-57da-4a16-9af5-9c28b19628dc" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="c5dad296-686c-4962-8d5f-d2c69d4e1d6a">
              <profile xsi:type="esdl:SingleValue" id="59c9ea08-7f87-42c7-86d4-7be092f2d9da" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e45c74e3-cebc-4ca2-bdf3-2f5645eb994c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9a475f4-657e-4703-9ae1-20dc3e8bf19b" name="InPort" connectedTo="3fc3f70d-c4ac-435d-915e-221e6266bdb3">
              <profile xsi:type="esdl:SingleValue" id="4c08fef4-66fd-462d-bb9b-a12600e800ee" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e6d06ef5-5c04-4cfd-93e5-3060247c6be1" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3fc3f70d-c4ac-435d-915e-221e6266bdb3" name="InPort" id="405b8e06-c0c6-4500-ba5d-5fc866a70a48"/>
            <port xsi:type="esdl:OutPort" connectedTo="c0f6471e-c009-4c69-a0a0-b87e38ce304a" name="OutPort" id="d40517ad-0811-40f2-939f-6f22fcfb6701"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="5" floorArea="5416.0" id="44b20bc3-64dc-4083-913f-ea8fefec128e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.293776333333334" lon="6.8134749999999995"/>
          <asset xsi:type="esdl:EConnection" id="d2c26b48-3d7d-4644-9982-95d3d96173a4" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="169e7d3f-8081-4786-a795-bc2febc839b4" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="1c37ccea-8608-44a3-b2af-cf2f30b1cf2f" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c3a17461-35e2-402f-952a-936cfa056812 350221c2-23ba-4fff-ade6-fd0fc328cb7b 94d7a442-5321-4086-8641-f8823a5973c9" name="OutPort" id="d4ef5d21-9eea-44f5-a968-b465eb46b67d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="675407d8-6492-444f-8bc3-9b27f09cb3d5" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="9530b4e5-5fbe-419d-9038-f955ff4d4667" name="InPort" connectedTo="29db3607-42be-4745-b227-21b7073cabb5">
              <profile xsi:type="esdl:SingleValue" id="03cf7e8c-79da-4c74-9372-cb5b495c88ac" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c80d169e-c139-4f2d-bdf3-f78195d0e71a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="b599fdb9-7231-4541-9f9d-649ebd478951" name="InPort" connectedTo="2e1f6ba4-491b-43ab-bbfe-a57e9c841b79">
              <profile xsi:type="esdl:SingleValue" id="682fe8be-a953-4986-b178-e1e62e6acf5b" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5882cc4b-2ed9-485b-8b07-f01a3cb1197c" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c3a17461-35e2-402f-952a-936cfa056812" name="InPort" connectedTo="d4ef5d21-9eea-44f5-a968-b465eb46b67d">
              <profile xsi:type="esdl:SingleValue" id="da11368c-66ec-468f-9133-2d9c867f914c" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="12f92166-1836-4ff4-8f7f-890f55e06ddd" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d4ef5d21-9eea-44f5-a968-b465eb46b67d" name="InPort" id="350221c2-23ba-4fff-ade6-fd0fc328cb7b"/>
            <port xsi:type="esdl:OutPort" connectedTo="9530b4e5-5fbe-419d-9038-f955ff4d4667" name="OutPort" id="29db3607-42be-4745-b227-21b7073cabb5"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="e6762a73-61ae-40be-86a5-f01bfbdca6f7" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d4ef5d21-9eea-44f5-a968-b465eb46b67d" name="InPort" id="94d7a442-5321-4086-8641-f8823a5973c9"/>
            <port xsi:type="esdl:OutPort" connectedTo="b599fdb9-7231-4541-9f9d-649ebd478951" name="OutPort" id="2e1f6ba4-491b-43ab-bbfe-a57e9c841b79"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640804" scope="NEIGHBOURHOOD">
        <KPIs id="871bcfef-9bde-4a9c-82a4-008f3672903c">
          <kpi xsi:type="esdl:DoubleKPI" id="7f9dc1f6-a3af-40b7-89f5-f20fb3e7bb24" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="15806.0" name="woning_nat_meerkost" id="5e6e8eed-a5fb-4f8a-bf82-1d89607b51a4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="728.0" name="woning_nat_meerkost_co2" id="54874d41-3a7b-4616-8173-2d69be673cda">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="2531.0" name="woning_nat_meerkost_weq" id="4d4919bd-ac40-41d8-a881-07b39494582e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="05e046ff-307a-4531-a9a3-cfbe0dac8d89" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="15806.0" name="util_nat_meerkost" id="de352928-5439-4485-9655-a3feb78c6f39">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="728.0" name="util_nat_meerkost_co2" id="caf66a57-f39e-4127-8ff5-0c83137b86a7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="2531.0" name="util_nat_meerkost_weq" id="54f640e3-51c0-40f4-b5f0-5591a7423feb">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="6" id="c0c78386-dde1-4816-a737-b94b0b1a8e2c" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A"/>
            <labelPerc energyLabel="LABEL_B" percentage="1.0"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.29815" lon="6.792671"/>
          <asset xsi:type="esdl:EConnection" id="0ac639b4-4790-46fc-9f5f-953b2d3dd49a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0f4be930-274c-4155-ac9c-843af4dfbbf9" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="17163031-cbe5-480d-9c8a-0690a4327903" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="74b673b2-9cd0-4d59-b492-f3a42e4b6419 d24609ce-8d35-4002-8652-a8318f1f983b 83a456ee-834d-40a2-ae96-dbc4cf53961f" name="OutPort" id="dcf2da5e-9651-458d-818c-b017b93e5cd0"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="12b3236f-56ef-4cae-8d2e-fcfb87cf74bd" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="710e7d37-14d2-4455-9dd5-55642aa67344" name="InPort" connectedTo="b6815d95-6b0b-4193-84f8-a322e8f424e6 0029647a-8e82-4085-9cf9-34bb50532838">
              <profile xsi:type="esdl:SingleValue" id="deece72a-e894-46a6-9ff6-8f9680e6b84b" value="43.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="735b58a2-65b2-44c1-bdf7-6434ce62cc9b" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="73858c61-1c82-4764-98ba-6db8031dffcb">
              <profile xsi:type="esdl:SingleValue" id="19598962-a96f-4c94-8f9e-2def50681eb7" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a63d1bb5-bca7-499b-a1b4-6fd72c1f4ecd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="74b673b2-9cd0-4d59-b492-f3a42e4b6419" name="InPort" connectedTo="dcf2da5e-9651-458d-818c-b017b93e5cd0">
              <profile xsi:type="esdl:SingleValue" id="76abcb94-8fcd-4060-a719-ac45f51aaa17" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1c9e8f84-ce55-4511-a267-98449d3864da" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d24609ce-8d35-4002-8652-a8318f1f983b" name="InPort" connectedTo="dcf2da5e-9651-458d-818c-b017b93e5cd0">
              <profile xsi:type="esdl:SingleValue" id="3acec9ae-9cc5-43a9-9f21-4a64579ac4ec" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="522eff7c-6b59-420b-a222-030f37ad34e0" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="dcf2da5e-9651-458d-818c-b017b93e5cd0" name="InPort" id="83a456ee-834d-40a2-ae96-dbc4cf53961f"/>
            <port xsi:type="esdl:OutPort" connectedTo="710e7d37-14d2-4455-9dd5-55642aa67344" name="OutPort" id="b6815d95-6b0b-4193-84f8-a322e8f424e6"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="32.0" id="21c91b36-9a9c-48bd-b361-7d0901b98edd" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.295863000000004" lon="6.784423"/>
          <asset xsi:type="esdl:EConnection" id="c10ddf9f-c265-4dc2-bc79-435355923947" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e74b3061-521d-4899-8165-9d81c3b26fc5" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b36dcf99-c136-4985-ae28-bd2ea7f84e7f" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="5a30fc28-7c33-49a7-a28d-2c45316827bc bdd721c3-3c35-4dba-b1c7-65acf4b802cb 676249c2-dd68-409c-8fc7-5ae7fde56709" name="OutPort" id="1fbfb052-0d6b-469e-bf94-797e3f620a88"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4e480967-4f7c-4ada-97e5-22b1c2b3694a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="2420e7c7-1cca-4135-8a5c-8ad6c6ed17ab" name="InPort" connectedTo="bda166d1-06ee-49f6-93b6-1c218bf453fb">
              <profile xsi:type="esdl:SingleValue" id="61bbf4c1-95da-4495-a1c5-ea000e119ff5" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ecf54561-c781-4e8f-bc31-64f0f4fc8b43" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="5a30fc28-7c33-49a7-a28d-2c45316827bc" name="InPort" connectedTo="1fbfb052-0d6b-469e-bf94-797e3f620a88">
              <profile xsi:type="esdl:SingleValue" id="7775a9ed-e689-4fec-ae70-4caf538e8b7d" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="dc5a65d8-17f6-48cb-a344-af44cbd249ad" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1fbfb052-0d6b-469e-bf94-797e3f620a88" name="InPort" id="bdd721c3-3c35-4dba-b1c7-65acf4b802cb"/>
            <port xsi:type="esdl:OutPort" connectedTo="710e7d37-14d2-4455-9dd5-55642aa67344" name="OutPort" id="0029647a-8e82-4085-9cf9-34bb50532838"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="c8464d8f-632d-4591-9ae0-17f52036bf70" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1fbfb052-0d6b-469e-bf94-797e3f620a88" name="InPort" id="676249c2-dd68-409c-8fc7-5ae7fde56709"/>
            <port xsi:type="esdl:OutPort" connectedTo="2420e7c7-1cca-4135-8a5c-8ad6c6ed17ab" name="OutPort" id="bda166d1-06ee-49f6-93b6-1c218bf453fb"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640805" scope="NEIGHBOURHOOD">
        <KPIs id="f5eb7feb-99f1-4ad5-9213-8b25e76a0880">
          <kpi xsi:type="esdl:DoubleKPI" id="26f54ab2-4291-4a70-8b17-ce2b461f077c" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="18924.0" name="woning_nat_meerkost" id="ef09b357-0d2d-48af-a503-0c289569bbe7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="35.0" name="woning_nat_meerkost_co2" id="30151927-da56-4e77-b8a8-ac6821eb74e5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="82.0" name="woning_nat_meerkost_weq" id="efc6a999-3978-49f1-87af-4256d70584b5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a4cb08d6-f83b-484d-800a-656288e1ab47" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="18924.0" name="util_nat_meerkost" id="f8821b90-e14e-4b2a-b128-fccfd5afdd72">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="35.0" name="util_nat_meerkost_co2" id="3fd47810-2462-4b41-adc3-1fb691bd8a43">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="82.0" name="util_nat_meerkost_weq" id="9a358bc9-cd45-4bed-9cee-b07f6fa97c63">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="231" id="ee5f50df-4466-4ddd-87af-6d5f23ec6f0e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.9090909090909091"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.09090909090909091"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.303552" lon="6.798316285714286"/>
          <asset xsi:type="esdl:EConnection" id="1a9e3166-3999-4a94-ad7f-ec0d76b53dac" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f8fce6e7-87e5-4bdd-b52c-b4a1c0e0463a" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b769a755-43da-4440-965b-5fcfef4edd5d" value="20.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="17e3479c-6864-427e-956c-57bff261f79e 0cae4b2a-1084-4714-bcfe-56774d52f37c ecf070ea-b744-46f3-a2e6-8538fe0179f7" name="OutPort" id="2f126d92-c9e8-42d9-975f-46d30df2b9e7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="84d4f871-1755-4a13-8f35-9471960d7493" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="c2802640-9a66-412b-97d4-e1d5021a10f5" name="InPort" connectedTo="39f78b33-6a24-42a7-8d2e-278f43de2da0 64c6b042-7e23-44fe-8f18-878b2bf8ed9d">
              <profile xsi:type="esdl:SingleValue" id="7858d926-28db-402f-8fc6-2eecfdf75575" value="27.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c98a3ed1-4d0c-45cd-848f-a8759c6a5cf8" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="15591969-fd3b-497f-927e-b02b0cdc7c19">
              <profile xsi:type="esdl:SingleValue" id="9deb59a2-b0e5-48bf-8445-eecb1776fd15" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f96a6777-f50c-4cbb-9275-b1eb7e6139f4" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="17e3479c-6864-427e-956c-57bff261f79e" name="InPort" connectedTo="2f126d92-c9e8-42d9-975f-46d30df2b9e7">
              <profile xsi:type="esdl:SingleValue" id="5803251f-e075-43a0-bf1c-96da623eaa34" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b33fd64f-93b0-44e2-933c-49dc1992f78f" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2f126d92-c9e8-42d9-975f-46d30df2b9e7" name="InPort" id="0cae4b2a-1084-4714-bcfe-56774d52f37c"/>
            <port xsi:type="esdl:OutPort" connectedTo="c2802640-9a66-412b-97d4-e1d5021a10f5" name="OutPort" id="39f78b33-6a24-42a7-8d2e-278f43de2da0"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="1" floorArea="4.0" id="465cd00d-aa1e-4aa2-a60a-ac72fc24efb5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.303552" lon="6.815481428571428"/>
          <asset xsi:type="esdl:HeatPump" id="0b3c3d08-9e80-470c-a363-2d115642da81" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="2f126d92-c9e8-42d9-975f-46d30df2b9e7" name="InPort" id="ecf070ea-b744-46f3-a2e6-8538fe0179f7"/>
            <port xsi:type="esdl:OutPort" connectedTo="c2802640-9a66-412b-97d4-e1d5021a10f5" name="OutPort" id="64c6b042-7e23-44fe-8f18-878b2bf8ed9d"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640900" scope="NEIGHBOURHOOD">
        <KPIs id="133c3c0c-3b19-4a6b-913b-f60260a20cc8">
          <kpi xsi:type="esdl:DoubleKPI" id="04b402ce-d810-4d23-9637-44f5ec934480" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="169859.0" name="woning_nat_meerkost" id="be06f304-1e05-422b-9620-c74c1647d294">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="177.0" name="woning_nat_meerkost_co2" id="d1fe0e8b-5903-41e3-a13c-b97bb6714b61">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="556.0" name="woning_nat_meerkost_weq" id="a4fad497-9bf1-4c62-bb8e-dea2199e1892">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6990c041-cc5b-4844-92c6-7805f3bb58e1" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="169859.0" name="util_nat_meerkost" id="8725195f-81dd-4a88-97a7-ef8003e15ac7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="177.0" name="util_nat_meerkost_co2" id="abcdd806-b950-430a-9c15-3058793fe562">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="556.0" name="util_nat_meerkost_weq" id="5838d012-92f8-4357-8247-38fa74ff1c44">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="210" id="4b9653bf-cca0-42ae-926b-d69c74facc53" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.20952380952380953"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7904761904761904"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.21362225" lon="6.7434545"/>
          <asset xsi:type="esdl:EConnection" id="0cd1e897-b05f-4ef2-a5c6-cc026ad4d3fe" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="80addd2d-050d-4a0f-ae8f-4ece534a78d1" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b35aa0dc-492c-43c3-9c5a-c286f5867454" value="16.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="90d90475-ee49-43fc-b8a7-ca44aca86866 accb476c-e5b3-4f2e-8d74-2173bc46f917" name="OutPort" id="f0c2d9fd-c2ad-429e-b292-29f235e9c91b"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6fb7bdcd-d649-4d73-b50b-aeba07ce2fbd" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="79d98e1f-47f9-493f-a512-b2f11b33cd59" name="InPort" connectedTo="1e75783a-8aab-4757-843c-3edb0a8c7671">
              <profile xsi:type="esdl:SingleValue" id="2cba51fb-1dc8-4adb-a49a-8de5f7871ae8" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="78bb2b2a-e295-4683-a0b9-6940ae3244ad" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="60ace5c0-811a-4c1e-a372-d19b2369f576">
              <profile xsi:type="esdl:SingleValue" id="4b73a7b5-96e7-4774-8811-22ef8daeabf9" value="6.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="68098db7-1023-4d15-9099-8ac2f3d40b58" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="90d90475-ee49-43fc-b8a7-ca44aca86866" name="InPort" connectedTo="f0c2d9fd-c2ad-429e-b292-29f235e9c91b">
              <profile xsi:type="esdl:SingleValue" id="bf60c5f2-0cfb-4d1a-8e56-75da3c306cb1" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9fe6030c-2499-477e-9b9f-ccdbebe716de" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="f0c2d9fd-c2ad-429e-b292-29f235e9c91b" name="InPort" id="accb476c-e5b3-4f2e-8d74-2173bc46f917"/>
            <port xsi:type="esdl:OutPort" connectedTo="79d98e1f-47f9-493f-a512-b2f11b33cd59" name="OutPort" id="1e75783a-8aab-4757-843c-3edb0a8c7671"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="15" floorArea="12432.0" id="2c16b84a-4999-41a9-a061-590887dc8d2b" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2114955" lon="6.74622675"/>
          <asset xsi:type="esdl:EConnection" id="e57a344c-722e-4998-b23d-7e906aaf393b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="51a40f01-82f9-4b10-b7c3-538ca439ddbf" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="70e6f9ce-e2f2-4dc5-9c13-4b7ee4aa9f20" value="14.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="152b96a9-69c9-411c-a145-cd3d53ab5fec e1f4e068-65e2-4484-8670-1621c721a3c8 53c857b8-cb61-4171-b409-3b7e784a0000" name="OutPort" id="8db0d875-fd8a-42a9-9bcd-0c742272b360"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7071f80a-34d9-4c53-b0d5-5ded1147d46d" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="095e5778-22ad-42ac-b61f-d135a69aa2f5" name="InPort" connectedTo="2a6f0650-c0cd-4374-aa0c-b17c628a64aa">
              <profile xsi:type="esdl:SingleValue" id="8fe9cabd-9602-4bd0-8abc-48e56c1e26b3" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="452885c5-efac-4c51-9ee5-4ac18631f960" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b55c2fb9-9847-4795-b91c-f9bfdf7dc4e8">
              <profile xsi:type="esdl:SingleValue" id="061396d8-2981-4efc-b186-22efaf94107b" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d2da7f48-4e97-412b-8c25-60908c4f9a25" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="efb58514-3a3f-4fb6-ae24-5fe344d82937" name="InPort" connectedTo="a86af9d3-e943-437e-aa2c-879d45e11736">
              <profile xsi:type="esdl:SingleValue" id="cf81675f-bace-4353-8216-cbc4235d8024" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="63d876a5-a26b-4097-b0bd-b73aa7de74a5" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="152b96a9-69c9-411c-a145-cd3d53ab5fec" name="InPort" connectedTo="8db0d875-fd8a-42a9-9bcd-0c742272b360">
              <profile xsi:type="esdl:SingleValue" id="a6ba7e37-7aa5-46a1-9678-e981edb58c66" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9eb22339-e174-4f1c-b7be-aa5c3857be64" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8db0d875-fd8a-42a9-9bcd-0c742272b360" name="InPort" id="e1f4e068-65e2-4484-8670-1621c721a3c8"/>
            <port xsi:type="esdl:OutPort" connectedTo="095e5778-22ad-42ac-b61f-d135a69aa2f5" name="OutPort" id="2a6f0650-c0cd-4374-aa0c-b17c628a64aa"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="3b218901-3932-41ca-bab5-395b1c0e48a5" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="8db0d875-fd8a-42a9-9bcd-0c742272b360" name="InPort" id="53c857b8-cb61-4171-b409-3b7e784a0000"/>
            <port xsi:type="esdl:OutPort" connectedTo="efb58514-3a3f-4fb6-ae24-5fe344d82937" name="OutPort" id="a86af9d3-e943-437e-aa2c-879d45e11736"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640901" scope="NEIGHBOURHOOD">
        <KPIs id="8c9211c9-0c02-4bd4-8b8e-05e88da5dc2a">
          <kpi xsi:type="esdl:DoubleKPI" id="5dd07981-c947-4304-b90b-647f5998d65b" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="19136.0" name="woning_nat_meerkost" id="562096d9-4883-4ce9-a792-88f7fc0f75b1">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="318.0" name="woning_nat_meerkost_co2" id="ac2626c7-b43e-4762-8c01-62c4734786f7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1118.0" name="woning_nat_meerkost_weq" id="1aa492d5-6161-4854-a6c5-2e389ab44b0d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8166d0ee-9d41-44d9-ad5b-355e4b2456ca" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="19136.0" name="util_nat_meerkost" id="3da3a4f7-c323-45ec-aaa6-9e6302665d83">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="318.0" name="util_nat_meerkost_co2" id="a8e95878-e923-4bf7-8cc2-406f003dff63">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1118.0" name="util_nat_meerkost_weq" id="40871fdd-c91f-4596-a863-71cabd565328">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="17" id="51cb8f58-7023-41cc-a72a-e3a6640336df" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.11764705882352941"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8823529411764706"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.308544" lon="6.811517"/>
          <asset xsi:type="esdl:EConnection" id="22cfee0b-9b5e-4b73-afc7-ed1e750f7df3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f5479d09-e158-47c2-853c-63328518598b" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="26d4ec30-50f6-476c-8034-ae47a36abb39" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="df3fbb8e-e994-4fc8-a846-5ffac331f098 45c9fb5a-bd69-4caa-a8db-819d8d3cb1b4 a5d646fd-742a-4eeb-9a6b-f86eb8c9e21a beba1d91-a177-4931-9b0f-044bf90001e9" name="OutPort" id="818dbbbf-7367-46de-86b7-27b14594812f"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="300b4373-e3e4-4f74-a795-b960f698ede4" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="99a80533-b84a-4d53-8611-f9214dfb39d8" name="InPort" connectedTo="856ab860-af9d-430f-b543-6ea88d10297e db41f497-1208-4a22-acce-f79e55256641">
              <profile xsi:type="esdl:SingleValue" id="7761faa0-2d36-40f5-9006-1f0ce475b150" value="43.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b8d48ede-dcd2-4f3e-a29f-c5b20c9f7a31" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2f55e58f-dfb0-4adb-be53-e791f4edcd49">
              <profile xsi:type="esdl:SingleValue" id="ddab0a37-d4c6-4209-a501-fe9ae8a917f0" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ced4a228-9fa9-4cad-9552-271f04cadc09" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="df3fbb8e-e994-4fc8-a846-5ffac331f098" name="InPort" connectedTo="818dbbbf-7367-46de-86b7-27b14594812f">
              <profile xsi:type="esdl:SingleValue" id="1a5df4a9-3dc2-4156-8822-87d72d151a7c" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3ad67ae3-f02f-477f-b54f-b07156ec2a44" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="45c9fb5a-bd69-4caa-a8db-819d8d3cb1b4" name="InPort" connectedTo="818dbbbf-7367-46de-86b7-27b14594812f">
              <profile xsi:type="esdl:SingleValue" id="e840658e-135b-408b-9952-78b55f6e2142" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5b597fe2-3101-4216-91be-58d66b901534" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="818dbbbf-7367-46de-86b7-27b14594812f" name="InPort" id="a5d646fd-742a-4eeb-9a6b-f86eb8c9e21a"/>
            <port xsi:type="esdl:OutPort" connectedTo="99a80533-b84a-4d53-8611-f9214dfb39d8" name="OutPort" id="856ab860-af9d-430f-b543-6ea88d10297e"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2" floorArea="16.0" id="e60b53ec-d926-42e3-88dd-b24282b07799" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.308544" lon="6.802067"/>
          <asset xsi:type="esdl:HeatPump" id="d5ccc9d6-bd2e-4ded-b60d-b59d5909774a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="818dbbbf-7367-46de-86b7-27b14594812f" name="InPort" id="beba1d91-a177-4931-9b0f-044bf90001e9"/>
            <port xsi:type="esdl:OutPort" connectedTo="99a80533-b84a-4d53-8611-f9214dfb39d8" name="OutPort" id="db41f497-1208-4a22-acce-f79e55256641"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640902" scope="NEIGHBOURHOOD">
        <KPIs id="f20cf056-d60d-48f2-b157-f8140104a3f6">
          <kpi xsi:type="esdl:DoubleKPI" id="8b13305c-b7bd-41b5-9a6a-9f6927bc6226" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="11179.0" name="woning_nat_meerkost" id="94380d09-99b2-44d5-aa02-588a7140846b">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="113.0" name="woning_nat_meerkost_co2" id="335a2a47-d4e1-4297-a3df-d69ab0a1fc58">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="320.0" name="woning_nat_meerkost_weq" id="b49cf781-871a-4714-8f84-1055074b2fb0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9f468143-d109-4dad-8df5-cff3347edf12" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="11179.0" name="util_nat_meerkost" id="f5efbc9c-d4a4-408d-bea4-8f2e28badb96">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="113.0" name="util_nat_meerkost_co2" id="a9d6154a-e393-423b-bfa9-65806a156d57">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="320.0" name="util_nat_meerkost_weq" id="38ee97c1-a2a4-49d9-8664-708a7ef7603c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="14" id="bd92aff6-385a-489b-ac9a-f46cfb8d3ec7" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.21428571428571427"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.7857142857142857"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.29065766666667" lon="6.795189199999999"/>
          <asset xsi:type="esdl:EConnection" id="267cd2d2-4c03-4fae-9bb1-28a79802e99c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="feb00ab2-57f0-4b8b-a483-9cc78a9d5e47" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="92872d1d-691f-4790-86b0-42a3bcee16dd" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="3f49546a-b892-44d9-85f6-e877ec27a046 182e4a46-6527-41e2-bc06-c0e164ea1e91" name="OutPort" id="acaed9d5-92c7-4f91-9b60-f66b45791cc1"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="98a69189-3ad4-4b6e-86fb-01f1feda642c" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c5a3fc2-b9bc-46f3-a230-b576bb36bed9" name="InPort" connectedTo="97be5bbf-dcfb-4780-82ce-05b184a960ce">
              <profile xsi:type="esdl:SingleValue" id="b4deee77-d6ee-4b95-a52b-55d12332eda0" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6546c9fb-512e-49a8-9370-bb931e1a6847" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="527b9995-9928-465d-84db-60f25dee5371">
              <profile xsi:type="esdl:SingleValue" id="ef7173f2-2985-4b87-9943-68096bfae3bc" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f2d3bcb1-9ed9-4bf9-9453-18a9383994df" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3f49546a-b892-44d9-85f6-e877ec27a046" name="InPort" connectedTo="acaed9d5-92c7-4f91-9b60-f66b45791cc1">
              <profile xsi:type="esdl:SingleValue" id="af46c484-2e58-4cde-8fe3-dfac9cde2f88" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="138837ee-8093-4d1c-aa57-a6be77f9652a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="acaed9d5-92c7-4f91-9b60-f66b45791cc1" name="InPort" id="182e4a46-6527-41e2-bc06-c0e164ea1e91"/>
            <port xsi:type="esdl:OutPort" connectedTo="2c5a3fc2-b9bc-46f3-a230-b576bb36bed9" name="OutPort" id="97be5bbf-dcfb-4780-82ce-05b184a960ce"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="8" floorArea="2726.0" id="039c19cd-bc10-40bb-b0d5-1bc4dc810bf8" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.287027333333334" lon="6.8053824"/>
          <asset xsi:type="esdl:EConnection" id="5de353b8-e4f3-4cee-b1fc-6d8d5949b794" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b516fac7-6f27-41af-9d97-3e8432726593" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="2e9bb7a1-42e4-4f82-85fa-952d77301e36" value="38.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="eb1c94af-eb18-42b6-b7d8-440ac8fa3569 87df9fbc-37be-4a40-aed6-e793840cf797 b00290c0-4f41-4847-84c3-19cf1e41ebe1" name="OutPort" id="5da38e6c-79ab-436c-b2e0-1fa7d4b43b34"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="03ebe413-e444-4413-a6cd-343be7b87b0e" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="ae32650c-a966-440e-89b0-0d214d1a1ca3" name="InPort" connectedTo="dc535396-6606-4706-b57b-340d05270879">
              <profile xsi:type="esdl:SingleValue" id="8349687c-c59e-407a-8c21-29bcde5f7196" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3eb18cc8-427c-4d27-9dfb-827aa16ec80f" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="79bee1e3-65ee-4575-a7d1-1bdf0e3e4c1c">
              <profile xsi:type="esdl:SingleValue" id="e479e392-93de-4180-8e0b-7e2987577927" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3402b764-5794-4648-b16c-f6fa126311ac" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="c2c73fb0-e454-472e-95b5-48568ee0c07c" name="InPort" connectedTo="92d04de1-ce03-4998-92f5-5af365159aeb">
              <profile xsi:type="esdl:SingleValue" id="a867db26-d0a9-46a7-ae04-d6d60421c604" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4d5cafa9-601a-4458-86ec-402fe2f5126a" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="eb1c94af-eb18-42b6-b7d8-440ac8fa3569" name="InPort" connectedTo="5da38e6c-79ab-436c-b2e0-1fa7d4b43b34">
              <profile xsi:type="esdl:SingleValue" id="d42b1e78-cbe2-4d1a-a2ca-a1eac764204a" value="27.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3206435c-7f8e-4d8f-ac35-1058c4ffda41" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5da38e6c-79ab-436c-b2e0-1fa7d4b43b34" name="InPort" id="87df9fbc-37be-4a40-aed6-e793840cf797"/>
            <port xsi:type="esdl:OutPort" connectedTo="ae32650c-a966-440e-89b0-0d214d1a1ca3" name="OutPort" id="dc535396-6606-4706-b57b-340d05270879"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="94e8ac0b-de4d-4b2c-8baa-b5e12680a9c0" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5da38e6c-79ab-436c-b2e0-1fa7d4b43b34" name="InPort" id="b00290c0-4f41-4847-84c3-19cf1e41ebe1"/>
            <port xsi:type="esdl:OutPort" connectedTo="c2c73fb0-e454-472e-95b5-48568ee0c07c" name="OutPort" id="92d04de1-ce03-4998-92f5-5af365159aeb"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640903" scope="NEIGHBOURHOOD">
        <KPIs id="13f65e7b-bdf1-4b20-9bdf-f127448a6682">
          <kpi xsi:type="esdl:DoubleKPI" id="1aa61659-eb7f-4d02-8423-a076ddfac32b" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="137129.0" name="woning_nat_meerkost" id="cc03fd13-0342-4151-9c7c-8ca0881bec27">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="249.0" name="woning_nat_meerkost_co2" id="a828694f-2b4f-47dc-8d2a-0ed1757ea91d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="638.0" name="woning_nat_meerkost_weq" id="0f484bec-acd5-46b7-b5ea-41da566d3e50">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="46a35e52-ebb9-4c96-8460-61594089fd0e" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="137129.0" name="util_nat_meerkost" id="12bd2f3e-9ae4-49aa-895a-c0a0f0dd6574">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="249.0" name="util_nat_meerkost_co2" id="428412b4-629f-4198-b4d1-77b665104fb2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="638.0" name="util_nat_meerkost_weq" id="76e9daf1-d568-4777-92c3-46c14442720d">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="43" id="2c236824-5da4-42da-b558-9da1efa08be5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.023255813953488372"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9767441860465116"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28534666666666" lon="6.8013228"/>
          <asset xsi:type="esdl:EConnection" id="09503361-d016-4928-a5a8-93303b2673ec" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7e0c832e-963a-4c3f-9d16-09d9bff4f98b" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="f3102905-ae2a-44b7-a093-c976e33c8b90" value="5.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="6f88e906-dd2c-4517-97e0-4df33d27e108 217307ad-b96e-46aa-bddb-453b2495ce2a" name="OutPort" id="54b09351-efce-4e38-9d36-994ab5255c49"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="61b575a4-adcf-4a36-b399-3ba1ba5a828c" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="19f8e106-2835-48ea-a133-ef7bcb53402e" name="InPort" connectedTo="9aae22be-d943-417b-a40c-8661e823dfe6">
              <profile xsi:type="esdl:SingleValue" id="b9dba0a7-37af-4590-a97e-0974ac890de7" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="78979193-9174-4acf-a295-f086aded3da9" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="45b2d796-be96-46b0-870e-7df7167d363f">
              <profile xsi:type="esdl:SingleValue" id="c0de56c2-fb21-4d89-be32-fd8d6829f252" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ec737e9a-3147-4998-9b30-7392df9141db" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6f88e906-dd2c-4517-97e0-4df33d27e108" name="InPort" connectedTo="54b09351-efce-4e38-9d36-994ab5255c49">
              <profile xsi:type="esdl:SingleValue" id="6360c218-1422-445f-b7ae-3d4dd39e65e1" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5be4a711-1e1d-4edd-a5e3-2d32d1def766" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="54b09351-efce-4e38-9d36-994ab5255c49" name="InPort" id="217307ad-b96e-46aa-bddb-453b2495ce2a"/>
            <port xsi:type="esdl:OutPort" connectedTo="19f8e106-2835-48ea-a133-ef7bcb53402e" name="OutPort" id="9aae22be-d943-417b-a40c-8661e823dfe6"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="15" floorArea="22368.0" id="33551562-c8af-4422-861e-630d13a2c78d" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.28534666666666" lon="6.7914444"/>
          <asset xsi:type="esdl:EConnection" id="dc6cea28-d5f4-4806-8072-7c317c564009" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1c88a4f2-bc75-40a6-8d9a-7fccf9b5b377" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="70dadb95-2ad7-47ed-b387-7ebddf46e7d4" value="32.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="68ca7eec-f408-407d-be69-e68bdfe3a3ae 5e1c7871-cdf6-42fe-a32c-90788e95136b df1cc02e-e1db-4449-9ef3-6458e9d8c714" name="OutPort" id="9cea6086-82f6-407d-b541-85a7d662158a"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c9add185-9c97-49f1-924e-5efb49ccd634" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="06eebff0-fdfb-4e50-a803-53cad0615b96" name="InPort" connectedTo="b1c1f819-95ba-494b-8a6e-319aca9ce341">
              <profile xsi:type="esdl:SingleValue" id="4ee46a91-e32d-4d77-b7b9-35003a6c86f2" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="eab2c4e1-e7fd-45c3-96de-8b8dd23149f4" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f9c0272b-7cfc-43c5-b884-48297a012ce9">
              <profile xsi:type="esdl:SingleValue" id="f1b35603-35ab-48b3-8ba6-ad43e533b897" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="22d810de-5b42-457e-a655-99125794cfcc" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="4e6a2440-74d4-4d51-aa99-4dba1cd3a8e5" name="InPort" connectedTo="ba128714-0b66-4d61-b27b-717d3a13a2b2">
              <profile xsi:type="esdl:SingleValue" id="d5f66b3f-0797-422c-907b-e4ba4f381824" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="aa5ba2fe-133b-4886-8574-03e4a3d45c0f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="68ca7eec-f408-407d-be69-e68bdfe3a3ae" name="InPort" connectedTo="9cea6086-82f6-407d-b541-85a7d662158a">
              <profile xsi:type="esdl:SingleValue" id="f526d3ac-d414-432f-b9bc-de1a80d485fd" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="63da1555-69ff-4234-b892-c3d92742fb8b" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9cea6086-82f6-407d-b541-85a7d662158a" name="InPort" id="5e1c7871-cdf6-42fe-a32c-90788e95136b"/>
            <port xsi:type="esdl:OutPort" connectedTo="06eebff0-fdfb-4e50-a803-53cad0615b96" name="OutPort" id="b1c1f819-95ba-494b-8a6e-319aca9ce341"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="f2b9213b-a8c5-45cf-bdda-6f34be7301f9" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9cea6086-82f6-407d-b541-85a7d662158a" name="InPort" id="df1cc02e-e1db-4449-9ef3-6458e9d8c714"/>
            <port xsi:type="esdl:OutPort" connectedTo="4e6a2440-74d4-4d51-aa99-4dba1cd3a8e5" name="OutPort" id="ba128714-0b66-4d61-b27b-717d3a13a2b2"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640904" scope="NEIGHBOURHOOD">
        <KPIs id="b3d94860-a57d-45a6-ace8-33c1c70c8b57">
          <kpi xsi:type="esdl:DoubleKPI" id="ea30382f-f8b8-49a8-a9db-e165e95a7cd7" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="157578.0" name="woning_nat_meerkost" id="6b4436d2-07c3-4a76-996f-e667972dc399">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="409.0" name="woning_nat_meerkost_co2" id="700fac1b-7b8a-4d45-9af1-170ca165f98e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1518.0" name="woning_nat_meerkost_weq" id="880f199b-0c7a-4da4-8ca2-3f51b987f4a7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a506f052-2c60-41f2-8106-0f3b284cebc5" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="157578.0" name="util_nat_meerkost" id="b9beb09f-f7d8-4e63-b217-98d557ee796c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="409.0" name="util_nat_meerkost_co2" id="efb32a72-1b36-4181-86af-6e688bf72a18">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1518.0" name="util_nat_meerkost_weq" id="05ab3d54-1baa-484c-9f97-fd9573a7308f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="98" id="7ac13a36-3e00-4fe9-8b10-7156deae81d5" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.07142857142857142"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9285714285714286"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.253251500000005" lon="6.8180872500000005"/>
          <asset xsi:type="esdl:EConnection" id="3be9ae3d-c73d-44a2-a1e8-fa3529aa826d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a6d18aa7-65a5-44f8-8006-72fe8de6d12e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="78de8a5a-9afa-4530-bb99-54211b9719b2" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="fb215958-cc79-46f1-ac22-ec19b5ae12fc 14b22efd-8a84-4b41-95e8-230211fe1f9e 9622692d-e8b5-4a2d-a157-a8d2d2148c0a" name="OutPort" id="d98e2278-5968-4de2-95bf-ce563bd55ffb"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="feaf2bd0-15ce-42fe-a567-183b866c902f" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="acbd88e2-a567-4d43-8ed3-2f0abf4e1618" name="InPort" connectedTo="a98c886c-3cc6-498d-a891-4fb0a2fecf31">
              <profile xsi:type="esdl:SingleValue" id="5943cd76-0122-445f-bc15-473baf1075ce" value="41.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="892e71a5-6803-4e10-9de4-1f54cf720f85" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3e3707eb-38e0-4b4f-9396-f7e1c26cf889">
              <profile xsi:type="esdl:SingleValue" id="e6173f1f-9a38-4fc4-a2b9-8b3fe704ab25" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="10ae0990-5de9-4d35-b6a1-3c2545a309c2" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="fb215958-cc79-46f1-ac22-ec19b5ae12fc" name="InPort" connectedTo="d98e2278-5968-4de2-95bf-ce563bd55ffb">
              <profile xsi:type="esdl:SingleValue" id="ac46cf4e-4387-42f3-a7b7-0384e883a149" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0d17e565-32ff-4642-9430-c88128f1bab1" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="14b22efd-8a84-4b41-95e8-230211fe1f9e" name="InPort" connectedTo="d98e2278-5968-4de2-95bf-ce563bd55ffb">
              <profile xsi:type="esdl:SingleValue" id="ac6f467d-bca0-4783-b6cf-409ddd45a11f" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="391cbada-deb2-4204-93b5-eb4b1eb6492a" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d98e2278-5968-4de2-95bf-ce563bd55ffb" name="InPort" id="9622692d-e8b5-4a2d-a157-a8d2d2148c0a"/>
            <port xsi:type="esdl:OutPort" connectedTo="acbd88e2-a567-4d43-8ed3-2f0abf4e1618" name="OutPort" id="a98c886c-3cc6-498d-a891-4fb0a2fecf31"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="7" floorArea="758.0" id="2a2c2553-b41e-4adf-84ff-c616b35c23a9" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.253251500000005" lon="6.83523175"/>
          <asset xsi:type="esdl:EConnection" id="b7c99050-3f74-46f4-b269-61b9c9dfa534" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f2dc0052-aed8-450c-848a-e696ad7d9876" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="306c2bc1-ed67-45b8-bf58-976ed0f17117" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="bf944a20-a868-40da-a57c-f139985733b4 5c10d2de-dc23-4a84-9f7f-da6fa33fa96e 25a5b14e-a879-4f89-9992-42c1a2d715c0" name="OutPort" id="937ba004-e8f7-4ded-aaa3-c96e45baa13c"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4dc8fd12-c5c9-4743-93a8-909736429737" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="3e27b12b-5757-4b20-9662-9dc319af1495" name="InPort" connectedTo="534d0531-4b73-42fa-a7d5-e23dae934c40">
              <profile xsi:type="esdl:SingleValue" id="eb1a2da7-cc5a-4ccc-9fbe-02baa52c3fe0" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="e9d2379a-a753-4f6c-af1a-37e26cef012e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="78127d0f-cd31-4cd1-8c3e-47232112e4b6" name="InPort" connectedTo="8b5d2493-21b1-4602-b170-78046ceea711">
              <profile xsi:type="esdl:SingleValue" id="d6cac165-0b2c-4f64-b4cc-20885f340e16" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c69032c0-75ec-49a3-b960-9fa11b36fdaa" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="bf944a20-a868-40da-a57c-f139985733b4" name="InPort" connectedTo="937ba004-e8f7-4ded-aaa3-c96e45baa13c">
              <profile xsi:type="esdl:SingleValue" id="c92f72f0-3f0e-433d-82bc-9e2ba4f329c8" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="96a031d0-c054-4c9d-a105-0c20619f15bc" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="937ba004-e8f7-4ded-aaa3-c96e45baa13c" name="InPort" id="5c10d2de-dc23-4a84-9f7f-da6fa33fa96e"/>
            <port xsi:type="esdl:OutPort" connectedTo="3e27b12b-5757-4b20-9662-9dc319af1495" name="OutPort" id="534d0531-4b73-42fa-a7d5-e23dae934c40"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="ce488d85-b8a5-423f-8fd9-42ea10528792" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="937ba004-e8f7-4ded-aaa3-c96e45baa13c" name="InPort" id="25a5b14e-a879-4f89-9992-42c1a2d715c0"/>
            <port xsi:type="esdl:OutPort" connectedTo="78127d0f-cd31-4cd1-8c3e-47232112e4b6" name="OutPort" id="8b5d2493-21b1-4602-b170-78046ceea711"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640905" scope="NEIGHBOURHOOD">
        <KPIs id="515d1128-11b3-4b85-977c-56e1bef58913">
          <kpi xsi:type="esdl:DoubleKPI" id="e182f20a-5135-4363-bbc1-45075ff22453" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="106442.0" name="woning_nat_meerkost" id="1f1cd4e6-0538-4897-9c48-a4425a6d3182">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="232.0" name="woning_nat_meerkost_co2" id="591c5230-842e-40ef-9016-b2f4c26d97c6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="846.0" name="woning_nat_meerkost_weq" id="318eda31-6ed6-49de-9e27-58570075a4c7">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a61e6a23-1713-49a3-90bd-b6181a69e83f" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="106442.0" name="util_nat_meerkost" id="380acc60-fa7a-44be-b293-546514ca8d03">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="232.0" name="util_nat_meerkost_co2" id="c574c237-7784-4bc0-a9df-a761d540a3e5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="846.0" name="util_nat_meerkost_weq" id="aaa5789c-8d5f-4148-9e38-3d4abc4ed885">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="33" id="d37315a1-7e6b-4d56-81de-640bffe25f21" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.06060606060606061"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9393939393939394"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.2401335" lon="6.813330499999999"/>
          <asset xsi:type="esdl:EConnection" id="cdf751ab-35e8-4827-bc38-ded24bf9e497" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9172296-ee56-453b-b6da-d29b2f9758ac" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="5f51deeb-6826-4382-a71d-c0aa6b6a141c" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="387ee826-be15-4e51-a938-0226a19a8076 256875f2-c95f-4e91-bb8b-967d30dde7b4" name="OutPort" id="cfcaf9d4-2cd9-47a0-8423-ece06cf5f337"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1de8bfcf-848f-4455-bdac-d2de169955d9" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="a42d3795-385e-4183-a6ab-e4c2291ab35e" name="InPort" connectedTo="efb69897-dc58-4c79-a68a-6ef4a01f1295">
              <profile xsi:type="esdl:SingleValue" id="4812210e-b6b0-43a4-b58c-c27af4d71769" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a6bbdcd6-48f4-4dd0-a76a-7c959550ae60" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="d47f56c0-7d3d-4d3b-a7d7-e06640dcf158">
              <profile xsi:type="esdl:SingleValue" id="091553b6-47ae-46a8-812c-f4ae5e6916f5" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="785c6ab3-14f5-4e86-a7ee-7b831e2163e8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="387ee826-be15-4e51-a938-0226a19a8076" name="InPort" connectedTo="cfcaf9d4-2cd9-47a0-8423-ece06cf5f337">
              <profile xsi:type="esdl:SingleValue" id="dcb9abb9-cfec-4447-a74e-460bc23621bf" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="88155e90-4c00-4db3-8717-81a1a73e6ef0" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="cfcaf9d4-2cd9-47a0-8423-ece06cf5f337" name="InPort" id="256875f2-c95f-4e91-bb8b-967d30dde7b4"/>
            <port xsi:type="esdl:OutPort" connectedTo="a42d3795-385e-4183-a6ab-e4c2291ab35e" name="OutPort" id="efb69897-dc58-4c79-a68a-6ef4a01f1295"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="82" floorArea="12058.0" id="e82677b9-11d8-4549-9558-3b00332f1c0a" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.245458750000004" lon="6.813330499999999"/>
          <asset xsi:type="esdl:EConnection" id="3798d478-fa3b-4c11-9186-9add011c77eb" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3235ede6-31a6-4dd9-992c-8325787a8557" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="c0bfe02a-ec3f-449e-b190-5e400563da5a" value="23.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="ae72ef3c-178f-4666-ae5e-073a01026740 f82f3746-b9ab-4628-9a8c-836ca97d0320 a160f555-2c6b-4dba-ae85-82463bbbef28" name="OutPort" id="9f212bcb-2ed4-4b1b-83ad-bb1fe589996b"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dde7cb24-5983-4a8c-8dd8-d13d33973f35" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="6ae57d16-3c04-4253-9899-76605bfffc6d" name="InPort" connectedTo="7e39a6bf-7eb7-4fb1-b3c7-19b52456acb1">
              <profile xsi:type="esdl:SingleValue" id="55001c47-2114-4ad7-8e32-6339208cfa52" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c681b736-2768-4b6f-bcd3-e2087d595d92" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="cecaa023-f45d-4873-b579-23f730599ffd">
              <profile xsi:type="esdl:SingleValue" id="20315e81-f9f8-450d-9fb8-e51ea9c726e9" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="524c84d2-0ecc-4082-bf92-5dd0dd6f1417" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="f5a186b5-772c-4864-b12b-c8704beb9744" name="InPort" connectedTo="883aa318-1d72-43d8-aa79-a2c4b8a97c2f">
              <profile xsi:type="esdl:SingleValue" id="1214be82-0cd9-4beb-9a4d-cdf193de8904" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="21d508c7-15ad-482a-bc3c-f35abf8ecc0f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ae72ef3c-178f-4666-ae5e-073a01026740" name="InPort" connectedTo="9f212bcb-2ed4-4b1b-83ad-bb1fe589996b">
              <profile xsi:type="esdl:SingleValue" id="ba2ae3c5-9b02-463e-9d73-af81a2c2c693" value="12.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="01544fed-f846-4b1b-82ab-823a8ff58a4e" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9f212bcb-2ed4-4b1b-83ad-bb1fe589996b" name="InPort" id="f82f3746-b9ab-4628-9a8c-836ca97d0320"/>
            <port xsi:type="esdl:OutPort" connectedTo="6ae57d16-3c04-4253-9899-76605bfffc6d" name="OutPort" id="7e39a6bf-7eb7-4fb1-b3c7-19b52456acb1"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="07992179-201a-4284-82c9-cf85bf227a33" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="9f212bcb-2ed4-4b1b-83ad-bb1fe589996b" name="InPort" id="a160f555-2c6b-4dba-ae85-82463bbbef28"/>
            <port xsi:type="esdl:OutPort" connectedTo="f5a186b5-772c-4864-b12b-c8704beb9744" name="OutPort" id="883aa318-1d72-43d8-aa79-a2c4b8a97c2f"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640906" scope="NEIGHBOURHOOD">
        <KPIs id="7a2df616-c350-4cdf-a399-a3cbbc917cf4">
          <kpi xsi:type="esdl:DoubleKPI" id="5e7c1bfa-4030-4ec8-8f11-e986c3ff939d" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="165178.0" name="woning_nat_meerkost" id="739bf6e6-a6bf-42b2-967e-4eaf2efd2d42">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="449.0" name="woning_nat_meerkost_co2" id="268887b6-6d03-490b-a51b-2f7f68536865">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1651.0" name="woning_nat_meerkost_weq" id="738c457a-6959-4a8d-825f-f7b3f91d76dc">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="130641d1-22b5-4ebf-b5c7-d1e7da4c8505" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="165178.0" name="util_nat_meerkost" id="65c151f3-62ea-4dca-94f6-9f7a8efc123f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="449.0" name="util_nat_meerkost_co2" id="227924d0-d992-4033-b9d6-877b0fc6a817">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1651.0" name="util_nat_meerkost_weq" id="d0418982-dc9b-4f80-bca0-66775125cadf">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="95" id="f544c692-ba1b-4919-b6bf-1dcb0966e4ce" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.06315789473684211"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.9368421052631579"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.229168666666666" lon="6.75482625"/>
          <asset xsi:type="esdl:EConnection" id="fd7931f0-f90b-44d0-a1b5-9b20d17288f3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="58154612-6256-46c4-9578-33495b2c6f4d" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="b811a91a-5785-4343-9a2d-3493b6bdd7d0" value="25.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="c573019f-8eb9-4137-851c-013ab9e9ebc0 fb546d92-cfb3-462f-8710-d6c50e43a1b1 eeb64cb6-6377-4a76-8681-63c9c53480d8" name="OutPort" id="00e23400-0603-441f-be6a-00b1b629f573"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4eca16b8-2245-4df0-8b5a-40046f5dbaa2" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="0eb82f11-93c4-4d21-a3a2-71593c7f5200" name="InPort" connectedTo="69204158-e79c-4a05-875b-565b72df80f7">
              <profile xsi:type="esdl:SingleValue" id="37b30d8f-3294-4009-864f-f4e578d6dc52" value="43.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="551178e9-6400-4dda-beae-f9f495a97aad" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="657cc1f9-d2ca-4ab2-9a89-88d08568d222">
              <profile xsi:type="esdl:SingleValue" id="1bdbecc1-b992-43b3-9b77-397efe237415" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e98927e9-8e49-4d41-8753-e7c52768dd7d" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c573019f-8eb9-4137-851c-013ab9e9ebc0" name="InPort" connectedTo="00e23400-0603-441f-be6a-00b1b629f573">
              <profile xsi:type="esdl:SingleValue" id="aaf2d6b1-b6d6-48d3-b2a1-97e0fdef9b76" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="dfa78bfc-35d7-40ce-a3f0-80e33afd14ab" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="fb546d92-cfb3-462f-8710-d6c50e43a1b1" name="InPort" connectedTo="00e23400-0603-441f-be6a-00b1b629f573">
              <profile xsi:type="esdl:SingleValue" id="10977123-6cfa-4a39-ba64-4d93921f9c66" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="820192bf-2a20-41d4-98b7-4a0143417879" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="00e23400-0603-441f-be6a-00b1b629f573" name="InPort" id="eeb64cb6-6377-4a76-8681-63c9c53480d8"/>
            <port xsi:type="esdl:OutPort" connectedTo="0eb82f11-93c4-4d21-a3a2-71593c7f5200" name="OutPort" id="69204158-e79c-4a05-875b-565b72df80f7"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="15" floorArea="654.0" id="ea68cd23-59a4-4f31-87bb-9c6d3e012724" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.24094133333333" lon="6.7405975"/>
          <asset xsi:type="esdl:EConnection" id="41aac6fc-387c-4f46-bac7-c36e420b12e7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="84badfc7-42ce-47ad-921b-ad6bd9eacd06" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="0d890816-31db-49c6-b319-7c7eab0b99e8" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="26ade45e-9e36-4088-b6ca-df9b80d95297 c40479c9-4635-42be-9d38-336d7301566b 9bcca66b-4521-4575-9e46-ce69d29987f1" name="OutPort" id="3f4408c5-abe9-48f2-8aa5-3c6e1c702f9b"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cbcf264e-8638-428b-a595-2e72f5eeda64" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="669d37aa-3c97-4c58-bf12-939c02f056c1" name="InPort" connectedTo="bf124904-8889-4e55-99ed-a411646f8dec">
              <profile xsi:type="esdl:SingleValue" id="445dea93-bb04-43d3-b253-7bf8a5a2c685" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d1051633-59f5-4c6a-9349-1ed2feac28ac" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="b7097405-6deb-4b94-a47d-9d21c2d8dc1a" name="InPort" connectedTo="250cafd8-a0af-4f94-8107-3c7c565d7167">
              <profile xsi:type="esdl:SingleValue" id="62115f28-3c4b-4c89-a092-5743934ef483" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ce7221ad-c11f-472d-921c-1e98462ebb4b" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="26ade45e-9e36-4088-b6ca-df9b80d95297" name="InPort" connectedTo="3f4408c5-abe9-48f2-8aa5-3c6e1c702f9b">
              <profile xsi:type="esdl:SingleValue" id="20592339-7f93-4d9c-8bb0-64919e8d4196" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e276dfa0-8f30-4182-bde9-9ee1c96f1500" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3f4408c5-abe9-48f2-8aa5-3c6e1c702f9b" name="InPort" id="c40479c9-4635-42be-9d38-336d7301566b"/>
            <port xsi:type="esdl:OutPort" connectedTo="669d37aa-3c97-4c58-bf12-939c02f056c1" name="OutPort" id="bf124904-8889-4e55-99ed-a411646f8dec"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="382405e4-f031-4484-a6bc-5fd8d2d814cb" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="3f4408c5-abe9-48f2-8aa5-3c6e1c702f9b" name="InPort" id="9bcca66b-4521-4575-9e46-ce69d29987f1"/>
            <port xsi:type="esdl:OutPort" connectedTo="b7097405-6deb-4b94-a47d-9d21c2d8dc1a" name="OutPort" id="250cafd8-a0af-4f94-8107-3c7c565d7167"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640907" scope="NEIGHBOURHOOD">
        <KPIs id="c4724c2f-6df3-416c-94fe-c9085baead17">
          <kpi xsi:type="esdl:DoubleKPI" id="8aa8d195-d266-4ac8-acd3-ee378d8971de" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="24100.0" name="woning_nat_meerkost" id="b3952772-7630-4208-a9c4-b9a557bb380f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="221.0" name="woning_nat_meerkost_co2" id="cb67ec04-8b93-42fd-ab83-634c815805ad">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="746.0" name="woning_nat_meerkost_weq" id="41c94981-7748-46a4-9f27-dbf9394530ee">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="28c5de82-381b-4915-bece-ba1c4014f4ff" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="24100.0" name="util_nat_meerkost" id="6d134614-b283-4150-a8ed-9d582ff20cc3">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="221.0" name="util_nat_meerkost_co2" id="3553404d-17ab-4839-abc6-f0d554e8b55f">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="746.0" name="util_nat_meerkost_weq" id="7c18f529-3c0f-4497-b8a9-e70dd1c3c7e8">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="23" id="234df9a6-2ec0-4350-9059-0a594782b32e" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.17391304347826086"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.8260869565217391"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.278575333333336" lon="6.757460999999999"/>
          <asset xsi:type="esdl:EConnection" id="65827af1-ab50-4269-a9be-69b1bc99288e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f622a5ac-2763-45bb-a866-875a1bc8746e" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="3c0ec353-6a86-4aea-84f1-f2670bd6d0dd" value="19.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="7c8ba296-e3d1-4f69-a15d-d72ffbbb1a6d 094d2d38-f6d5-4de7-978c-913d07fd1665 50f518e7-e404-436e-a151-41f1ed1d74c7" name="OutPort" id="e2edae33-4a6c-43ee-8122-bfa80bac7622"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8f256b0f-0093-4fa9-85e2-d5d3ac75dfe6" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="53a589b9-b7cd-4b50-8e75-4a61128f13a7" name="InPort" connectedTo="9f8163ac-e7bb-4261-815a-67e6acba05e8">
              <profile xsi:type="esdl:SingleValue" id="17c88bb4-fc71-4464-9f52-2aa6a836456d" value="32.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8d98b367-48dd-4777-bb69-3f69adbb85a8" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="909094fc-e730-4191-816c-3f6d1a805598">
              <profile xsi:type="esdl:SingleValue" id="19e03fe1-41c2-4a55-912d-0bbb82c76ffa" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="053db4dd-fb46-46c1-a9ad-bf313ff8d2bc" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="7c8ba296-e3d1-4f69-a15d-d72ffbbb1a6d" name="InPort" connectedTo="e2edae33-4a6c-43ee-8122-bfa80bac7622">
              <profile xsi:type="esdl:SingleValue" id="18c005e6-e237-409f-a8f3-b0a44d116b5d" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8f951da4-979f-4628-a056-dcfdc2c8f04f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="094d2d38-f6d5-4de7-978c-913d07fd1665" name="InPort" connectedTo="e2edae33-4a6c-43ee-8122-bfa80bac7622">
              <profile xsi:type="esdl:SingleValue" id="4ba1558a-c8ca-4487-8df4-bd026eac28e3" value="7.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e118e3bc-e79d-4f5a-a950-863fdaa9dff9" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="e2edae33-4a6c-43ee-8122-bfa80bac7622" name="InPort" id="50f518e7-e404-436e-a151-41f1ed1d74c7"/>
            <port xsi:type="esdl:OutPort" connectedTo="53a589b9-b7cd-4b50-8e75-4a61128f13a7" name="OutPort" id="9f8163ac-e7bb-4261-815a-67e6acba05e8"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" floorArea="1210.0" id="918cef6f-82f3-4df1-894f-254c446f2ed4" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.27193066666667" lon="6.7501739999999995"/>
          <asset xsi:type="esdl:EConnection" id="9765bd41-f180-429f-85f7-92c19235d4a5" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cc3c41f5-d7d1-48c5-a7d0-bd7b6f27336b" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="cbde631c-5087-4120-ae44-53cda5683afd" value="14.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="b9230245-7725-477d-96a5-376a1a21b99a 1512013b-3374-4f9c-949a-890d65b81c06 2e869347-78c7-4a10-88d5-538ac2701e87" name="OutPort" id="1552c477-ead4-4645-ac89-624f356507f3"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7728f1af-7664-4ab2-9e99-0fbb44d38360" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="583c4517-038f-4d31-b623-f67933cec032" name="InPort" connectedTo="14671782-f94c-4092-b6fa-9886a8abc05a">
              <profile xsi:type="esdl:SingleValue" id="6e670203-77de-4604-b1d2-bacfde189276" value="13.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5314905b-7b1d-486b-ab1d-ff0c84206cbe" name="Util vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="35e05fa7-fc84-4bb3-89b6-3fa0bdfeb196">
              <profile xsi:type="esdl:SingleValue" id="efef03a5-8c3e-462c-8f8b-56a88e85a4ac" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="77e431bb-b6c7-45d1-ad26-2261eeae0aee" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="30fc2c35-748b-4d5c-90a3-8684d8f2475d" name="InPort" connectedTo="b55755ef-6d50-401b-a1f3-c04960c664e8">
              <profile xsi:type="esdl:SingleValue" id="e46a9147-c4ff-4b3b-8982-10ad03cb7351" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6f44594f-c77a-46a5-95fb-f84a6541f9f6" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b9230245-7725-477d-96a5-376a1a21b99a" name="InPort" connectedTo="1552c477-ead4-4645-ac89-624f356507f3">
              <profile xsi:type="esdl:SingleValue" id="c373f14e-c801-4ec1-bf57-2abcc10fa736" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a0162ebf-2930-4b79-9a64-5949d1ee2124" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1552c477-ead4-4645-ac89-624f356507f3" name="InPort" id="1512013b-3374-4f9c-949a-890d65b81c06"/>
            <port xsi:type="esdl:OutPort" connectedTo="583c4517-038f-4d31-b623-f67933cec032" name="OutPort" id="14671782-f94c-4092-b6fa-9886a8abc05a"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="f2200376-70e0-4344-8054-a4b7a84026e4" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="1552c477-ead4-4645-ac89-624f356507f3" name="InPort" id="2e869347-78c7-4a10-88d5-538ac2701e87"/>
            <port xsi:type="esdl:OutPort" connectedTo="30fc2c35-748b-4d5c-90a3-8684d8f2475d" name="OutPort" id="b55755ef-6d50-401b-a1f3-c04960c664e8"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <area id="bu01640909" scope="NEIGHBOURHOOD">
        <KPIs id="99d2741c-5d24-44ce-b739-a1b0c89eee5b">
          <kpi xsi:type="esdl:DoubleKPI" id="eb061c16-b6ef-4a18-912a-e70e8dc59ee9" name="woning_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="216211.0" name="woning_nat_meerkost" id="762fb512-b33b-4124-81f5-6fac0f94cc2e">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="389.0" name="woning_nat_meerkost_co2" id="a32dfc18-6a27-49f2-ae9c-cc04ca5944ff">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1324.0" name="woning_nat_meerkost_weq" id="f5417753-f461-4b37-9188-1b747c48c882">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c81b45ed-2891-4de5-b1ba-c66403061d54" name="util_co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="216211.0" name="util_nat_meerkost" id="b7b2d93f-9636-4950-9edf-5556f530636c">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="389.0" name="util_nat_meerkost_co2" id="b05eeb39-b741-4e28-b207-cd1e7f0a8620">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" value="1324.0" name="util_nat_meerkost_weq" id="365c5203-01aa-45d8-b349-c052319562f5">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
        </KPIs>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="153" id="51f00e21-ea56-44ea-b78d-3b50a08e25d3" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <labelPerc energyLabel="LABEL_A" percentage="0.13071895424836602"/>
            <labelPerc energyLabel="LABEL_B" percentage="0.869281045751634"/>
            <labelPerc energyLabel="LABEL_C"/>
            <labelPerc energyLabel="LABEL_D"/>
            <labelPerc energyLabel="LABEL_E"/>
            <labelPerc energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.203222333333336" lon="6.7506105000000005"/>
          <asset xsi:type="esdl:EConnection" id="91829b1a-1787-40db-854a-232544e5e87e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="5491de78-acfd-415d-a120-06540fd1ee97" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="53f9d72f-deaa-4ef8-98f6-d5ca0f642a97" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="bc3c492d-27f5-4586-9197-c37880376882 43a8405d-616e-4250-8319-1bc8e59341b7 cb99a683-409a-47c8-a052-31b5a72fa472" name="OutPort" id="5a4da4a5-78d1-4ede-bf6f-bba3e66f2609"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0c3e2b26-f5b9-44e0-bf42-99f9aaa2e8e4" name="Woning vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="f51b3c3a-7aac-4153-bb17-69f13ec1c520" name="InPort" connectedTo="639609a5-7941-431d-b048-d4883c669409">
              <profile xsi:type="esdl:SingleValue" id="8c0dfcdf-3964-43c9-8843-190008151aea" value="40.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="100.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a1f82172-22ea-40a1-bccd-821735174c90" name="Woning vraag tapwater" type="HOT_TAPWATER" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fdf1f902-c6ec-40fd-87c8-dbbcbf7829c0">
              <profile xsi:type="esdl:SingleValue" id="a370894a-3390-4855-a3b5-1d9323aef483" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="200.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7ace1c82-76c1-4b05-a21b-77b6d2e3e572" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="bc3c492d-27f5-4586-9197-c37880376882" name="InPort" connectedTo="5a4da4a5-78d1-4ede-bf6f-bba3e66f2609">
              <profile xsi:type="esdl:SingleValue" id="2b7771c2-65c5-4ed0-9e47-a114cef8b417" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="300.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="43f84944-073a-4db6-95c0-8a1a3b3bed62" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="43a8405d-616e-4250-8319-1bc8e59341b7" name="InPort" connectedTo="5a4da4a5-78d1-4ede-bf6f-bba3e66f2609">
              <profile xsi:type="esdl:SingleValue" id="82a8a558-bdb2-46ce-bde7-b73851bb5c11" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="400.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d893e5d7-a3f5-4256-ab37-d24cb12638af" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="5a4da4a5-78d1-4ede-bf6f-bba3e66f2609" name="InPort" id="cb99a683-409a-47c8-a052-31b5a72fa472"/>
            <port xsi:type="esdl:OutPort" connectedTo="f51b3c3a-7aac-4153-bb17-69f13ec1c520" name="OutPort" id="639609a5-7941-431d-b048-d4883c669409"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="20" floorArea="1341.0" id="e3e958ec-940c-48ca-a234-367d84d16fd1" name="aansl_ewp" aggregated="true">
          <buildingTypeDistribution>
            <buildingTypePercentage buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <geometry xsi:type="esdl:Point" lat="52.215379666666664" lon="6.7506105000000005"/>
          <asset xsi:type="esdl:EConnection" id="e96fd48a-eec1-4253-9d04-5782aca55752" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="5e6441b9-b0e0-44a2-bb9f-56c0bda5c579" name="InPort" connectedTo="8bdb5777-1d80-4100-8c1e-823997f155c0">
              <profile xsi:type="esdl:SingleValue" id="46176f2a-5601-4e63-82a4-c9dcb8a5f2e4" value="4.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" connectedTo="9d36847b-4dd1-427c-ab91-64923da43f51 fd3dda4c-93ac-4c68-8839-91d1db556014 bddb6799-e5d0-4f8c-8e7e-4a44696d64a5" name="OutPort" id="d694acc0-6878-489b-85b1-ac774d586902"/>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="125.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="96a37783-75d8-46af-8279-133fbc6b5c65" name="Util vraag ruimteverwarming" type="SPACE_HEATING" aggregated="true">
            <port xsi:type="esdl:InPort" id="4c27fae9-2d0d-48fc-bb9e-e211800d1689" name="InPort" connectedTo="865dd810-481d-45a4-b485-4534bbd94951">
              <profile xsi:type="esdl:SingleValue" id="b85d146b-cc64-4ffe-ace0-b5fdcc1f5e1b" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="125.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a0688524-c3ee-465c-86b3-c2da8c468f5e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" id="02ba929a-1608-46d3-be62-b6fe5aded977" name="InPort" connectedTo="d291c5c1-d2ff-4c34-a42d-86913b7eaec4">
              <profile xsi:type="esdl:SingleValue" id="21c929c1-5798-4a54-9473-54c333fd92a3" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="250.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8ca832e1-5c62-4f9e-a0a9-5258125e4a5e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d36847b-4dd1-427c-ab91-64923da43f51" name="InPort" connectedTo="d694acc0-6878-489b-85b1-ac774d586902">
              <profile xsi:type="esdl:SingleValue" id="8938b8af-9651-4e26-b995-ef9565a0136e" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" lat="375.0" lon="375.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c71aedda-3339-46f8-9de5-cca6cd60b9f3" name="eWP_lucht" source="AIR" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d694acc0-6878-489b-85b1-ac774d586902" name="InPort" id="fd3dda4c-93ac-4c68-8839-91d1db556014"/>
            <port xsi:type="esdl:OutPort" connectedTo="4c27fae9-2d0d-48fc-bb9e-e211800d1689" name="OutPort" id="865dd810-481d-45a4-b485-4534bbd94951"/>
            <geometry xsi:type="esdl:Point" lat="166.66666666666666" lon="250.0" CRS="Simple"/>
          </asset>
          <asset xsi:type="esdl:Airco" id="c2a4fc86-590d-45b1-9750-55393b69e98e" name="eAirco" aggregated="true">
            <port xsi:type="esdl:InPort" connectedTo="d694acc0-6878-489b-85b1-ac774d586902" name="InPort" id="bddb6799-e5d0-4f8c-8e7e-4a44696d64a5"/>
            <port xsi:type="esdl:OutPort" connectedTo="02ba929a-1608-46d3-be62-b6fe5aded977" name="OutPort" id="d291c5c1-d2ff-4c34-a42d-86913b7eaec4"/>
            <geometry xsi:type="esdl:Point" lat="333.3333333333333" lon="250.0" CRS="Simple"/>
          </asset>
        </asset>
      </area>
      <asset xsi:type="esdl:GasNetwork" id="b6c41773-6f9e-4a9d-8574-654979dc1d60" name="Gas_network" aggregated="true">
        <port xsi:type="esdl:OutPort" connectedTo="33f027b4-d889-4c35-bfa4-bd14e106cc81 20aa5e3d-8aec-4920-9b7c-d03a85df26d1 944fdbce-bb4b-404c-8a0c-a9eb1362869d 63ee0d53-038d-44be-af2d-64b7e75459b0 c7b93838-28c2-4607-bfad-8b0d176fe9be 123b9f51-17a5-4f32-b800-6b036a349121" name="OutPort" id="ce8a2706-8a05-4dd5-ac3e-b0f2843cba3f"/>
        <geometry xsi:type="esdl:Point" lat="52.25049794181407" lon="6.791882432847474"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="ae35f0b7-8ca9-4231-a290-782cbbca0c40" name="Heating_LT_network" aggregated="true">
        <port xsi:type="esdl:InPort" name="InPort" id="1416a302-9a1a-453b-b682-d3b00723b946"/>
        <port xsi:type="esdl:OutPort" name="OutPort" id="79505c2b-5e29-4eb6-a711-10efeb97790f"/>
        <geometry xsi:type="esdl:Point" lat="52.2504594334129" lon="6.789148037537226"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="ffb0ebb6-858e-414f-9059-a34133c969ff" name="Heating_MT_network" aggregated="true">
        <port xsi:type="esdl:InPort" name="InPort" id="9f3187be-da22-44df-b5bb-0ef5099eef3a"/>
        <port xsi:type="esdl:OutPort" connectedTo="98bc7ccd-4347-488b-9534-251d1aa5f2fc b390df46-445f-4088-bdc6-e1c9d6cae47d c04f6f71-b257-4d5c-b490-dd3ee5f9694b 65edb903-13b0-4c1b-b1ff-b03d80a57562 f3716b3b-ec70-4e45-b69d-855d90492eb8 03b16548-bdfe-4a54-8881-944aafb8ba19 d7ede9d4-595b-48a3-9612-fd97b7139d9e 2fc4c873-4e98-4e4d-854d-663df4f84bb2 dbace10f-3a26-445e-940a-3f85765fb1f6 65cf7c55-d489-4942-983f-58e636edb33f 7975b7da-1d0a-4d36-b5da-387eff23b903 90754bbb-0204-4ecd-93f1-2faa71c3792f" name="OutPort" id="9a176b07-50ab-4057-96bd-b2e4baad66dd"/>
        <geometry xsi:type="esdl:Point" lat="52.26005703770616" lon="6.789038327761163"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="94035ae9-8575-4ffb-b6a1-fa1118cf6ed2" name="Electricity_network" aggregated="true">
        <port xsi:type="esdl:OutPort" connectedTo="58cf9a1d-3086-426d-86c6-703e492970ae bfbc9c7d-de6e-4ee5-957e-55d4b546122d 50f584b9-27c6-4a96-bc17-f554ba2feb30 e3110285-11c6-428b-a663-3f729c8db18a f7fdbe37-9c09-49af-90e9-c9ed85f701ea 7994dd57-85df-4190-b5b4-c97726e7f0ee 20d4d350-1ca2-47be-8de3-6910fded11fc 24670b92-c52b-4972-9ef8-abd0e968fc36 ba9ba009-e802-477f-9129-9e05f2e1abeb 70f30e4c-7aab-44a5-be88-c100d67fc4fc 4a23102a-c0ea-46ca-89d1-fb4ac3f92835 899d42da-e675-4918-8e89-9ebc6df1c807 602e4880-46db-4bf0-8ec9-6fcb9cabbb43 d3770bf4-1905-4525-aee0-03f7448fb4ea c532c2f8-2427-4e67-9fe6-14353e0a0fbb df699f6a-31bb-454c-838d-15c55ea0a487 83d4d212-f090-47cf-b41c-215a25de29b3 a4ec155a-192f-42c1-b2ca-f4ac08b02832 1997bfbd-da83-4adf-8e22-b12468fc7597 84744d1b-bbc8-4f10-aa1d-fa8915e020d0 92235252-9320-4a4b-a9c7-64d3ad6187b2 1d7ab356-5017-471c-9211-e93b1b404d7f 09e3613d-c808-49a6-91cd-5ae322425068 2a33802d-555c-401e-91ab-d6083063edf0 97c55b93-9ec8-4947-bedd-f712bf68fbca 9138dc5a-eaf3-4a88-931a-e0dd527bf2e4 137ef476-a6f6-4570-89ec-a8a95ceeb423 2eb367f5-9292-489b-a2a4-b5c208d926cf c730c8ad-a02e-41ff-b06b-4ea6631d6f10 1886a8cf-ef5b-473d-9a2b-982d9259bc92 0d706260-7999-4538-9572-54cffec9c815 dee8545b-7533-4410-98ed-161edb49ba8d f6b3429f-be0a-489f-ab5f-c8c5a96927ff b00a4264-f5c4-4102-bbcf-e7e0e5ac975e 4d5951d5-b2b6-4331-bec0-2f369d2a157a 3684acf6-9211-496a-9028-ce1909e3ef62 19c6b539-4977-4370-a4db-df9c5e4a0a22 ba2aff44-336c-4c92-913b-6148437c152a 968fe406-4096-4e96-aad1-ce2c537c4c72 17185ae9-19fc-488b-9638-6bcc4f9c5211 0239d0e4-0aa6-45e2-9f1e-e4ac55007e93 3d0b83a7-4c42-46f7-b063-224b6a58d504 4c7a0966-26f8-468e-9ea3-bd82fb6f1fbc 04bfc084-ee05-4dbf-92f9-2456449ce85a ab1d0d7a-de93-49e5-9613-f378ca333ec9 fe3e2d79-db8a-49ad-b979-bc290c702972 9a142ef1-1af1-4ceb-852c-bf5c9bbd1ca4 53e97b37-174d-4bed-92d1-22604bf0a84b abe5a55a-faa5-45dd-a7ae-59313cc008a0 cd3f4600-9176-4216-a063-84c4b49f5c5b a4d9eaff-3ec2-40c3-8a42-0f4027a44cdc 7e321c13-6860-48e6-9e56-b6a918cebebf 86c0c5d9-e3fc-4796-93f0-7809a69b443f 4f8809c3-e732-4e18-8237-3c0b72d0abcd 2015c97c-b7ec-46ac-b423-1421f5adfc4a 43b358eb-8122-418b-982d-283532a09fb2 83f691fd-7f3d-488d-af18-4ceec9ad6b70 b31b7cff-50c8-4095-a251-dc9210b7671a 29f68fd5-7ab2-4b8f-b4bc-c332aa3afeca 98372487-bc15-47f6-9c83-fe927aa15d86 f21e39c8-387b-4fe2-aa4d-0144cb724855 b18f0a1e-9086-4b4b-8f98-759728dae65d 39d03bea-c9c9-4593-8cf5-30f3842d541c a542d388-3dcc-435b-845d-b6f729fb2e40 4d0c7486-cb70-42ce-a4b2-9a5fa39e8ebe a698111e-c5d3-46d5-8fe1-f2ed7539b457 bd5fe8bf-ac27-4309-a381-5b5243166d36 7be7bad5-b91e-4011-a3bb-239eefbbab4c ac14d6c8-8147-4816-ad21-d94fb1f1fe9e 7ea76c92-6273-4fe2-9fa7-acf0b8397694 cce6ac92-87de-4337-a44f-f801bd302e0f ac4eef6f-177e-4067-aec1-44465b6fd102 9abc8f8a-6dca-440d-827c-33bbf22e2556 83315e84-95db-44e2-972f-25bc44d88ace c794a293-e068-46cd-a6c2-ff38a21f117e 6e8c2f88-cd9f-4b65-9f78-03f85ad15460 1c453021-6d11-4bfb-a01b-f030d6527b2e ff8127c7-9568-40f9-8e7a-d882cf354798 3117a758-20e8-440c-8b77-202a0ff63c00 b84f781e-02e1-4056-adc5-242ef0722984 173e37de-feab-40dc-9424-764474965784 bd3d68f4-895d-4096-84d7-4aa1c8ab5f5f c6c919e1-86ae-48f8-84db-c5299330a012 a0111c1b-6e8c-46bd-a49b-6ed0bb94fd48 6f083b73-605b-4cc1-8e0e-76ef0b818c4a 8b14fb57-072c-4134-91fc-fab09b6d2d78 7ca0f137-8050-4ccf-adcb-6afeab40db9e af6e41a0-62eb-4497-9aed-2b06d1751d39 90ee6ada-c453-4650-8be0-22ac047eedcb 776cae6d-d2b4-4d97-835d-018b02d3505c 3dc1fc36-c8ec-4ea1-a0af-650625a48537 ad1b3d53-f059-4bca-b6f5-8c8937729c18 7b4f43b9-2da1-4457-8de5-fd00f78493ca 6570e357-f53d-4f1f-8d17-c0aca7a56f38 f4eba3cc-dc9f-46d2-9535-1e5d0308ff52 07d9928f-1313-45d8-a929-f5fd79c724ef 3252d11f-00ac-494b-b185-645208c31517 f169bfd9-83b6-47fc-b8f9-3ea7b8a4ca4f f4d6f33c-1557-4771-bada-1e011e674dec 50daab5e-dbb9-42f7-b305-ae014e2fbb82 256b13d8-edfb-4438-b01e-ff48c77766a9 6cf26bbe-ccbf-479d-a8ab-42cc68eceb11 169e7d3f-8081-4786-a795-bc2febc839b4 0f4be930-274c-4155-ac9c-843af4dfbbf9 e74b3061-521d-4899-8165-9d81c3b26fc5 f8fce6e7-87e5-4bdd-b52c-b4a1c0e0463a 80addd2d-050d-4a0f-ae8f-4ece534a78d1 51a40f01-82f9-4b10-b7c3-538ca439ddbf f5479d09-e158-47c2-853c-63328518598b feb00ab2-57f0-4b8b-a483-9cc78a9d5e47 b516fac7-6f27-41af-9d97-3e8432726593 7e0c832e-963a-4c3f-9d16-09d9bff4f98b 1c88a4f2-bc75-40a6-8d9a-7fccf9b5b377 a6d18aa7-65a5-44f8-8006-72fe8de6d12e f2dc0052-aed8-450c-848a-e696ad7d9876 e9172296-ee56-453b-b6da-d29b2f9758ac 3235ede6-31a6-4dd9-992c-8325787a8557 58154612-6256-46c4-9578-33495b2c6f4d 84badfc7-42ce-47ad-921b-ad6bd9eacd06 f622a5ac-2763-45bb-a866-875a1bc8746e cc3c41f5-d7d1-48c5-a7d0-bd7b6f27336b 5491de78-acfd-415d-a120-06540fd1ee97 5e6441b9-b0e0-44a2-bb9f-56c0bda5c579" name="OutPort" id="8bdb5777-1d80-4100-8c1e-823997f155c0"/>
        <geometry xsi:type="esdl:Point" lat="52.25065465329547" lon="6.793080785834663"/>
      </asset>
    </area>
  </instance>
</esdl:EnergySystem>
