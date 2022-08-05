<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="HGL_Combinatie_s1abs2ad_Hengelo" esdlVersion="v2104" version="1" id="d33472e7-660f-4af3-a6b8-5ed1b4ddfb67">
  <energySystemInformation id="energy_system_information">
    <quantityAndUnits id="quantity_and_units">
      <quantityAndUnit physicalQuantity="ENERGY" unit="PERCENT" id="share_of_energy_demand" description="%"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance id="5b1aa645-31d4-4b9d-bab9-ec72d4edf7ba" name="j2050" aggrType="PER_COMMODITY">
    <area id="Hengelo" name="Hengelo">
      <KPIs description="KPIs" id="kpis">
        <kpi xsi:type="esdl:DistributionKPI" id="source_of_electricity_production" name="Elektriciteitsmix">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="JOULE" id="energy_demand" multiplier="MEGA" description="MJ"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem label="Zon" value="35294.13712145194"/>
            <stringItem label="Afval" value="1105200.0"/>
            <stringItem label="Import" value="1098855.5786030893"/>
            <stringItem label="Zon" value="35294.13712145194"/>
            <stringItem label="Biogas" value="23999.999999999975"/>
            <stringItem label="Afval" value="1105200.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="total_costs" value="248933834.12967724" name="Totale systeemkosten">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="total_costs" multiplier="MEGA" description="Meur"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="dashboard_reduction_of_co2_emissions_versus_1990" value="-17.977251662537654" name="Reductie CO2-emissies t.o.v. 1990">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" unit="PERCENT" id="co2_rel" description="%"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="total_co2_emissions" value="878.9050926795804" name="CO2-emissies totaal">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" unit="GRAM" id="co2_abs" multiplier="MEGA" description="ton"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="merit_order_onshore_wind_turbines_capacity_in_merit_order_table" name="Opgesteld vermogen wind op land">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT" id="power" multiplier="MEGA" description="MW"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="merit_order_onshore_wind_turbines_full_load_hours_in_merit_order_table" value="1920.0" name="Vollasturen wind op land"/>
      </KPIs>
      <area id="bu01640000" scope="NEIGHBOURHOOD">
        <KPIs id="f5bfa90b-0b47-46c0-bc12-3eaa6f461b4d">
          <kpi xsi:type="esdl:DoubleKPI" id="2c42cc11-c9be-4048-a64a-f78320cbd7c2" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="dfc3d03e-41e4-45c7-bb05-992fc4e1cf85" value="945949.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="92dec487-60f8-45bc-b883-34f2bf1cbb46" value="209.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e1cb612a-baa6-4958-9bec-84bbaa449753" value="492.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="04e81090-59f8-408f-832d-a58b1dceedef" value="46007.063500000004" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="39892423-62b9-4746-a174-c74aa13ea827" value="76640.84591999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="66ae6847-8afa-41ce-ac0e-24a14deb12d3" value="5611.629" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b59af4f0-8490-47e9-9611-f5bcdd0ad006" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="382fe21c-b4e9-475c-a88a-ee052df991f4" value="19880.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="70f86e93-ea3d-490f-af41-90efab2fd08a" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="4adbb5f0-d052-4d75-ae4e-259fe15c9f0f" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="7170f56e-5593-4590-abb2-251aaf4ea688"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="a1159c01-3dea-428e-92ee-0d38722c323e" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="e171dd90-86fb-4bd0-90fa-050f5576bf37"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="71b14ee2-2147-4f81-868b-c065be40ac9d"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="d8515277-9c40-44c3-8633-a1bd0f6197e6" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="686">
          <asset xsi:type="esdl:EConnection" id="1b20ecda-a6f6-4d9d-92e7-d6d088087708" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bc1d7c84-3510-41b3-a53a-c1801d68a24c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b32d83c9-aecb-4076-8491-64387a90d32c" value="6405.41122">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="786cd521-0dc3-4865-9384-c2d9a606d11c 0e4545ad-a90b-45f1-8cd9-9cef4f4d23f6" id="8cf94042-7aa1-43db-a8b8-09ff0179f524"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="69a94819-f707-4f3f-b4e8-f62a67385aa3" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="2b71b718-8e2c-4a89-ad20-9145b8e28c0d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4a575926-a1ca-4898-9737-0d53c23304e7 909d4549-68d2-4501-b79b-2820ab464d35" id="ed5f44c0-f89c-4692-8f25-f0e368c04593"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ec4c0a5b-93d2-45c3-9870-85727ac6c7d4" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="4a575926-a1ca-4898-9737-0d53c23304e7" connectedTo="ed5f44c0-f89c-4692-8f25-f0e368c04593" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7d3f7a55-2145-4c6f-801d-3d6d189b17ac" value="14254.6931">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7f629eb4-2098-4904-9e09-9a51acd3f943" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="909d4549-68d2-4501-b79b-2820ab464d35" connectedTo="ed5f44c0-f89c-4692-8f25-f0e368c04593" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="babcf046-89f9-4e00-926e-d69b9f778e1b" value="4744.05">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b4fe9d07-deb4-4c71-88ab-460d82842550" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="786cd521-0dc3-4865-9384-c2d9a606d11c" connectedTo="8cf94042-7aa1-43db-a8b8-09ff0179f524" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fc79fcbb-37bf-4589-b103-a7077c936660" value="3.68849956">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="02d8246c-a2ef-4628-bdaf-0b965050a3fc" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0e4545ad-a90b-45f1-8cd9-9cef4f4d23f6" connectedTo="8cf94042-7aa1-43db-a8b8-09ff0179f524" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="80176efa-6662-4c50-97ba-35581bdbb531" value="5946.35">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="4.227405247813411"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="17.20116618075802"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="16.909620991253643"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="61.66180758017493"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="160794.0" id="b2a92687-271f-4714-823e-1fe89ff910b3" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="402">
          <asset xsi:type="esdl:EConnection" id="4aec618c-4a7a-4528-b99a-a1cb2adfebdb" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0a5b076b-09ee-4c43-abc5-5183c47dbf59" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="370d17af-acaf-407d-9969-78aeb05eb4f0" value="70235.4347">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d81b0267-eb21-4eaa-b3f3-ba595b370a4d" id="2115953c-ed2f-4ebb-a2e5-85234f5137ec"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="b16f0e70-847e-486d-9e4c-97f381be76b6" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="6576370b-ef52-462d-b85f-1235f30b3107"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="23d0eff1-65ad-45b8-bd3e-fa4ef8b06543 8cfa6aa6-96c2-44bc-9390-a0307f919c6f" id="32087669-4ed8-4802-b2e4-3398f552df5a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cfc8f1a6-35db-4296-ad93-38945a64307d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="23d0eff1-65ad-45b8-bd3e-fa4ef8b06543" connectedTo="32087669-4ed8-4802-b2e4-3398f552df5a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3183d8ed-832a-4bbb-9749-b7149968bcc1" value="25373.9796">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4f57b748-cb87-406c-ad97-efaf9383f263" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="8cfa6aa6-96c2-44bc-9390-a0307f919c6f" connectedTo="32087669-4ed8-4802-b2e4-3398f552df5a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e1de1ca6-f40e-4703-b835-fecae374b0e7" value="1634.34078">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="2818d89d-ac76-44a2-adc9-68dbe88ff81b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="223a9860-db39-4f67-afeb-50b691e8641e">
              <profile xsi:type="esdl:SingleValue" id="4765c7c5-472f-4faa-a6ea-2e771a6b765f" value="18246.707">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b02bca23-3200-4971-9b8c-c4f35b1cd2ec" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d81b0267-eb21-4eaa-b3f3-ba595b370a4d" connectedTo="2115953c-ed2f-4ebb-a2e5-85234f5137ec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c2dd84a8-cfe2-47ed-a191-ca536400692f" value="69780.062">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640001" scope="NEIGHBOURHOOD">
        <KPIs id="b0a3fc2b-036f-4870-9c4c-60c3e432d795">
          <kpi xsi:type="esdl:DoubleKPI" id="11e76f36-be65-442a-815a-2baad9a99daf" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4d0020e4-91ba-4274-9dc9-1a73e63d9094" value="509764.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ea15191c-6ffd-46f7-bc11-e72d68044c90" value="225.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1e9f9eba-eb34-4ec8-acc0-c11dd798ed5b" value="558.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="205bf108-0e06-4840-a057-3b6f5b16ddf3" value="29999.619400000003" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9d35f8a6-3908-4c8f-a12a-741cc6b0b9cd" value="27693.17318" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8053fda7-ee88-4d9d-a795-5d247aa3f27c" value="2333.37" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0689db06-247e-4ff5-ad21-1bea7e6c39a0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="e751254a-2168-437d-aca0-b56ff4d142e8" value="7520.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="1a9ee617-c5d4-4576-983f-45257eb782b1" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="c4aaad98-f7c5-4ffb-b0cf-5a188ebceac6" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="59c988e0-3b9b-4fe3-bb75-ff37ac3f192a"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="c215831e-c6e8-40d5-96c0-0f2d188f883a" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="4320d695-dee4-4fce-bcd5-c6dcb566bc6b"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="08bd2d8f-b1a2-4312-a9a2-018ba24c5704"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3c099c8d-9b72-4bc7-90ca-d77a02319856" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="476">
          <asset xsi:type="esdl:EConnection" id="db0b8bbc-f3aa-406e-8ce3-5be5604e22bd" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7d2bfc04-a273-4bfa-89bc-b8b0d0235737" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1661d4fd-2abc-4776-b46a-394ed86cd0cc" value="4608.45708">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c894edab-8863-4470-9b22-b0722b604280 e99abf9c-1701-4ac1-a382-83b3f05f2c1f" id="c89d8550-c24f-4a88-94a0-4d54ec7d4edf"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="cd9080d3-e385-4d2f-8e70-bf530d5a5db3" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="ea89fd4a-c6b2-431c-a154-78ff342610b9"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3ae68324-b14c-44dd-a538-82d1f631a22c 2d236adf-8ab9-421d-a5a7-2d53947558a6" id="df3b42c1-fc34-496a-aa23-0bdfe3dba650"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8b9bcc7a-f11e-4470-b316-8db3753f86e1" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3ae68324-b14c-44dd-a538-82d1f631a22c" connectedTo="df3b42c1-fc34-496a-aa23-0bdfe3dba650" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="676e9450-ed05-4594-9b71-bff67699f9f3" value="12806.8711">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="11706129-6a1a-423a-b93b-1491e53da541" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="2d236adf-8ab9-421d-a5a7-2d53947558a6" connectedTo="df3b42c1-fc34-496a-aa23-0bdfe3dba650" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ea99ae18-f544-4e98-b548-2f90efc1fa6a" value="3768.9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8abe2337-cda1-4698-aa78-ccf8c84fe515" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c894edab-8863-4470-9b22-b0722b604280" connectedTo="c89d8550-c24f-4a88-94a0-4d54ec7d4edf" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7e365efc-aeff-4d41-95c3-1ebfd8ab4474" value="4.94000913">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7256b5c5-2e35-4716-8acb-f7692b94025f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e99abf9c-1701-4ac1-a382-83b3f05f2c1f" connectedTo="c89d8550-c24f-4a88-94a0-4d54ec7d4edf" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5e55bb4a-b930-499f-9ad9-21285477ebc1" value="4306.61">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="9.873949579831933"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="6.722689075630252"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="2.5210084033613445"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="80.88235294117648"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="56820.0" id="856f336c-1d3e-4fe7-9f8d-56aaa956c5e4" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="111">
          <asset xsi:type="esdl:EConnection" id="38f60a4a-5a85-440b-a94b-14c46a80ccda" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b16b6279-b25a-4496-9c12-3f6d3d6f263a" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="051176a7-59d3-4334-976f-ac20ba34b53b" value="23084.7161">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="497ac49d-89e8-4e2d-b559-b24e7882b31e" id="955afd7f-4cbc-422c-a505-34026a2636d7"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="f2e71459-a0d0-420c-8334-861da816f4bd" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="6a46c0f7-2ce3-44c7-8251-c440fa022367"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7eea1241-d50a-4410-9f2a-cc7820e08275 9de7c790-c8c5-4ce0-b110-acf524bf3f95" id="9948889d-1e1e-490e-ac08-b24348507cb9"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6b787d85-b3bd-4342-8fb0-f01ba9e9c0d7" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7eea1241-d50a-4410-9f2a-cc7820e08275" connectedTo="9948889d-1e1e-490e-ac08-b24348507cb9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="119d180d-0aec-4744-bc7a-ecf878e53bf0" value="12979.4193">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5d70db52-3e1d-4698-8b1e-8a07671f8c78" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9de7c790-c8c5-4ce0-b110-acf524bf3f95" connectedTo="9948889d-1e1e-490e-ac08-b24348507cb9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2a2f31f5-93cd-4d6c-8691-05c3de5a9d64" value="444.428957">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="197abff9-12d2-4fc0-a9c2-868fc438a4bf" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f2e64262-f735-43c8-9fda-40c6f1062d64">
              <profile xsi:type="esdl:SingleValue" id="6d6aac4e-d8a6-48ac-8d8a-ea147e18cc93" value="6991.68222">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="106238e9-e92c-4e75-a215-d2d87b2cdc2d" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="497ac49d-89e8-4e2d-b559-b24e7882b31e" connectedTo="955afd7f-4cbc-422c-a505-34026a2636d7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7eb82671-cd6c-4cf2-9209-d7495764f578" value="22787.809">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640002" scope="NEIGHBOURHOOD">
        <KPIs id="bcc9ec96-6184-4261-bcff-ae59a5e850cb">
          <kpi xsi:type="esdl:DoubleKPI" id="b887a786-f99f-4e2d-8a83-5fce4f0c3c42" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="10fd42a0-38b8-4fe3-90e0-cd4606dae75c" value="623326.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5306f3ee-ed90-471c-91ee-d81531b0e1f5" value="317.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ed3c55e3-b68e-4ec5-82ab-4ebf534fbc91" value="786.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="86003612-2b39-4062-a7f3-24fd7d211cd8" value="25763.60943" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0156ebd3-f9fa-4201-b99d-acd862f32931" value="16054.77692" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fa15ba0a-a24d-4b09-bb73-994fec241dec" value="1675.4940000000001" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2a7cc95a-09de-46b1-bd64-757292c8fceb" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="f3016ac2-8559-4cfb-ac4a-fbbfec541993" value="5300.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="54ad5aee-3eee-46c9-a7fe-896b253fa286" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="065ff758-46ff-42db-8132-b87db90aa661" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="e3d9796a-ac5b-4c2a-9564-4f5c70d3da51"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="ecbf91e0-4a6d-4d28-a549-fa842b90d6d7" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="71c28452-ba50-4109-a0f6-2673fcff265a"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="896dc33f-702a-496a-b098-bfe7102bfe6b"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="d5c60e22-6e6e-4eb0-b35f-bb0d7c5b4f89" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="572">
          <asset xsi:type="esdl:EConnection" id="80cfe489-73d9-4048-8e49-2c2202f7e608" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c6a74707-0683-4058-aa3e-bd63eb7d27b1" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="eac7834d-ad11-4759-8f29-c6bd59d9862d" value="5495.94002">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="897f68e3-59ca-4f3d-afe9-63734587ba31 a29f7b50-9eda-4707-93ea-a1eea3cd8a9c" id="820b3395-131f-4412-81b2-f0491c9bd617"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="45d4ea3f-6626-489a-9154-5d1f986ddc05" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="d1beba91-256b-4141-a57a-a0fb4044fb74"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="95201ee6-7a15-40d1-8626-0f97619f0383 55ea1890-d454-4b5a-a693-94df5c7f48d5" id="77364f16-8bda-4bbb-9b72-50636ca68bfc"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3ce86c02-4b56-4180-b817-f5c981641328" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="95201ee6-7a15-40d1-8626-0f97619f0383" connectedTo="77364f16-8bda-4bbb-9b72-50636ca68bfc" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3aa69dba-19fc-4429-8384-857a7e4dfbb9" value="16561.6373">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="14c03fe2-dbbd-445e-83f8-72e3cd8cbbb7" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="55ea1890-d454-4b5a-a693-94df5c7f48d5" connectedTo="77364f16-8bda-4bbb-9b72-50636ca68bfc" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="63c948fa-4ffe-4f0f-a7a4-3a5e7dffae60" value="4494.95">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d5c9ba8e-1202-416c-ab4c-d1434f1d5695" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="897f68e3-59ca-4f3d-afe9-63734587ba31" connectedTo="820b3395-131f-4412-81b2-f0491c9bd617" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c3ff43e7-c454-4cf0-bce7-27edab903686" value="7.24717233">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="079643a5-0a3a-4184-afa2-b8803423c32c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a29f7b50-9eda-4707-93ea-a1eea3cd8a9c" connectedTo="820b3395-131f-4412-81b2-f0491c9bd617" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f984ff06-c225-439c-9789-fdbac0c1e31b" value="5234.21">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="7.8671328671328675"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="19.055944055944053"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="3.8461538461538463"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="69.23076923076923"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="28684.0" id="71bf8951-a7b5-4732-aefc-2abbb7522ccb" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="116">
          <asset xsi:type="esdl:EConnection" id="4a149cb7-2d94-42bf-b9fe-d06f714eb6ff" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c34cbf3-b801-4bb4-b160-4b1965089af8" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3f80ffa6-7aa0-4234-aca9-195a29a8c737" value="10558.8369">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0dc831b7-fa53-4933-b73f-4613e33e6e73" id="385b7415-976f-4874-87e5-a28f3fd3d0cf"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="672cd4ea-b99f-456d-8794-88e253e5d571" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="a9530f3e-f58b-4290-85b9-88d0565485fb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f0c3295a-c700-4470-ab0b-a633a1a18266 30d24399-ec8b-4f33-83d1-717e35f2bb55" id="50dabcee-0a68-42ae-86b2-d6e410d9c258"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="aee72ea4-2b09-4d02-95ca-8c78425e32b8" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f0c3295a-c700-4470-ab0b-a633a1a18266" connectedTo="50dabcee-0a68-42ae-86b2-d6e410d9c258" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e979a621-b040-4af2-bee0-abfef249d72c" value="4543.709">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d954b87e-c3da-4aee-b09e-af419be3b42d" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="30d24399-ec8b-4f33-83d1-717e35f2bb55" connectedTo="50dabcee-0a68-42ae-86b2-d6e410d9c258" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7ace0d6f-317d-47c7-a6c8-89b0bff8184f" value="163.313123">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4fc5c6b3-afe4-421e-bd91-f600f22b099c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ec3aaae6-1f19-4ff3-a4fc-4f83881e4275">
              <profile xsi:type="esdl:SingleValue" id="817f4ea4-11f1-4d6d-8425-cb4041313c5c" value="2303.14883">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c7f6571e-ca97-4d1e-bac9-ad2421561152" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0dc831b7-fa53-4933-b73f-4613e33e6e73" connectedTo="385b7415-976f-4874-87e5-a28f3fd3d0cf" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1a341032-1161-40c9-a575-3335856c77bd" value="10304.354">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640100" scope="NEIGHBOURHOOD">
        <KPIs id="493ae4e2-2814-44e1-86d3-a470886af0a5">
          <kpi xsi:type="esdl:DoubleKPI" id="d9d624de-e0dc-430b-93df-a3b772deef55" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2c72f4d2-20bf-4d41-9f27-2383e42639c4" value="1304507.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="06db14ea-341b-4d79-8a85-14149c2d0302" value="328.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7e6ed59c-8d57-4818-9756-c3cc05a1a3af" value="686.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a933d7d6-75af-4c14-9e81-043ee17dc0f2" value="53774.868070000004" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="033576be-b252-48cd-89f1-f129ba442942" value="41533.72382" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="62f6073f-fe89-4a1d-8f93-393866c49b52" value="7555.1805" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c644015e-f6ab-444a-bcb2-b6a4e01042f8" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="3a7051bb-1be1-4e77-8d0b-b2c560358c02" value="8460.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="5b48161c-fe57-43b1-988d-4b859e1b9656" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="26d325e2-3ae9-4b60-8ec9-73a0d3193f87" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 f6c5ec7b-02f4-4b81-a01d-aef019b4916d b81f1a28-3979-4e74-8755-f3dc61ab1a79" id="18c3c3a3-e7be-4675-8545-f539254e601b"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="7ec49880-01b7-45a2-9f1a-7692092b3461" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="7cfb9f47-7b82-4ed8-b37a-9cc21e866963"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3df90c2b-da49-4f7b-96a9-cf3526ec2306" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1727">
          <asset xsi:type="esdl:EConnection" id="15fec0ed-1d3e-419c-a168-6fab75311ae3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bae18bc8-ab1c-4fca-b313-fd4b02d433fd" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3dbb929c-5aed-41ac-b4dd-ca6f12d63bd7" value="31913.8303">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="cb3b88a6-4922-4910-9609-c63b3b21bb9d 856b45c7-6df4-488d-8e83-25527d32e0f2 f6c5ec7b-02f4-4b81-a01d-aef019b4916d" id="b09873d5-9b77-43b7-8cb5-f28fbf55bf15"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a268969c-c2dc-4c4b-8cd6-5e09da3e37da" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="8b6f6e07-0db5-4a7e-91df-a5fed488f242" connectedTo="67170d70-4bf2-41c0-b2c0-107610466374" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9230948e-b3a7-4554-b733-37c0f8462f92" value="37581.6283">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f1bde994-46ea-4cde-b0cb-6e56612f33c4" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6e61d4d5-88e0-42f3-96c6-0789001212aa" connectedTo="67170d70-4bf2-41c0-b2c0-107610466374" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d1947d15-d882-40ea-bd83-95f5018e425d" value="12461.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2316e160-29bc-4d3e-852c-192eb81340c3" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="cb3b88a6-4922-4910-9609-c63b3b21bb9d" connectedTo="b09873d5-9b77-43b7-8cb5-f28fbf55bf15" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="930276b4-d528-4e48-a812-62c7206776a6" value="714.419927">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5db14aa0-d395-453d-9d3e-ff6103b70387" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="856b45c7-6df4-488d-8e83-25527d32e0f2" connectedTo="b09873d5-9b77-43b7-8cb5-f28fbf55bf15" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d205771e-262e-4c26-bfef-d4424a2ed8a4" value="16044.93">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4cdda845-c5e0-45b0-989c-f4768058935a" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="18c3c3a3-e7be-4675-8545-f539254e601b b09873d5-9b77-43b7-8cb5-f28fbf55bf15" id="f6c5ec7b-02f4-4b81-a01d-aef019b4916d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8b6f6e07-0db5-4a7e-91df-a5fed488f242 6e61d4d5-88e0-42f3-96c6-0789001212aa" id="67170d70-4bf2-41c0-b2c0-107610466374"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="24.030110017371165"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="75.96988998262884"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="22717.0" id="d6d84cc1-6667-410e-8ab0-161a4fe01fa3" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="318">
          <asset xsi:type="esdl:EConnection" id="0119649b-6b76-477e-856c-3d45642a3b91" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="341de4d4-ba40-4cb7-be16-d49fb3a01e4c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8caf7c22-a794-4794-88ac-593f13e55e32" value="9619.89352">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1ecbbdb6-ac93-4f20-8bab-282a5f1c6f54 b81f1a28-3979-4e74-8755-f3dc61ab1a79" id="dbafeac0-1fc4-4284-a7c0-bb4d8696a5e4"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="15e441a3-afbc-4ce4-b39e-08855c88e6e2" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="5de4bc08-07ee-409c-ab94-fc5b6c813c5a" connectedTo="b9279aa0-6839-4c3f-9eaa-77c4b2a7c658" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="01af9871-69af-4cac-9313-af9911b596ce" value="3455.34606">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="06488193-497f-43d9-936a-f7b58bad11d9" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="641d4a54-ed22-4481-9bb5-31010624cc07" connectedTo="b9279aa0-6839-4c3f-9eaa-77c4b2a7c658" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="788b132e-ba95-40ca-b8b0-fb62d0484452" value="276.19371">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="96d050df-4952-4a0f-be6e-f114b8bea985" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b1052abe-b4da-437b-8832-40f8e3b54b8e">
              <profile xsi:type="esdl:SingleValue" id="de1b6290-553c-4f65-b627-4603166ae0fb" value="2180.99118">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="52a81cb0-0c51-4398-994e-3677eca161c3" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="1ecbbdb6-ac93-4f20-8bab-282a5f1c6f54" connectedTo="dbafeac0-1fc4-4284-a7c0-bb4d8696a5e4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b1564e4a-b860-4899-970d-79b7c893bf37" value="7929.827">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="fc9d56a7-bc69-4458-869a-050b668d20c3" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="18c3c3a3-e7be-4675-8545-f539254e601b dbafeac0-1fc4-4284-a7c0-bb4d8696a5e4" id="b81f1a28-3979-4e74-8755-f3dc61ab1a79"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="5de4bc08-07ee-409c-ab94-fc5b6c813c5a 641d4a54-ed22-4481-9bb5-31010624cc07" id="b9279aa0-6839-4c3f-9eaa-77c4b2a7c658"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640101" scope="NEIGHBOURHOOD">
        <KPIs id="8102abf9-4487-43c7-b43e-717a6baedff4">
          <kpi xsi:type="esdl:DoubleKPI" id="d7cc09a0-987a-4d55-a747-608a42720fc3" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a7047761-c8da-4584-9318-6160999a155f" value="1877484.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a9fdd909-87f5-4190-8736-e158213a6173" value="312.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5525351f-6087-4483-afe3-392737c24fbe" value="763.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d7299e73-d28a-4810-b5a6-e369d64240d4" value="74078.2123" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="15c8410a-5073-49eb-af02-2de53cced83d" value="39412.0019" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="04af35f9-f0e5-4326-ab6b-2731eb224785" value="5027.996999999999" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="77f8a119-b975-4067-ad54-ae31a0dd50e0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="01cf86d1-39ab-435f-b6f6-c57f6473294d" value="10980.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="971eade2-76f4-4687-9010-73be5adbc17d" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="7d7c97e9-8021-4d94-af9b-0d207b252451" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="57e6000f-a0cc-47ff-8fcf-86e6602f1a6a"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="d36a9ca6-288d-4c2c-996c-47abb5ec1e1a" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="da2eb6e3-477a-4206-8cf5-a02be874f8d9"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="b8f34ca8-a815-4288-99cf-b3216c7b1cc7"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="5420ab64-7eb3-4a05-ad3c-e5de22e74250" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="1854">
          <asset xsi:type="esdl:EConnection" id="4b7089c4-96ca-4394-9fde-6da104f0af87" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4fbf6511-0391-4c85-9f07-9e17c1e4eb08" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e5b5f848-acbd-45cf-a7a1-8992f60d3901" value="17850.9659">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f3c82e48-5a45-4305-ba0c-f8befd65277a 4e131fc7-4f5c-4333-9445-f7f6f8bf72a6" id="ad2f6cf5-6d4d-4d03-b83c-7cb6c143f189"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="78b6ef59-92d7-4b7d-b8de-e42dec51a0ad" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="d8e5abd7-1e08-4778-9a63-efac041017b7"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c388d468-271d-4ff4-9e63-d75b7e6f7442 6e575a6c-cf05-4bcd-8498-813bf83caf55" id="fb9be22e-a89a-44c2-b7f6-6735a1af3859"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9102823c-649f-4723-a3bc-2b1a2a2af2d6" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="c388d468-271d-4ff4-9e63-d75b7e6f7442" connectedTo="fb9be22e-a89a-44c2-b7f6-6735a1af3859" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2ab1e26c-2250-430f-a8c1-218974e0e75d" value="47825.4839">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bf004e84-7af4-40ca-8e75-5d2018c54745" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6e575a6c-cf05-4bcd-8498-813bf83caf55" connectedTo="fb9be22e-a89a-44c2-b7f6-6735a1af3859" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5b600eb5-b1b9-488b-9a86-9a9ce99b8a28" value="14904.3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e1e28103-e5da-401d-aa41-7e104ef31af6" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="f3c82e48-5a45-4305-ba0c-f8befd65277a" connectedTo="ad2f6cf5-6d4d-4d03-b83c-7cb6c143f189" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1f6fec8d-7b5d-4cb2-856b-fcf46d25e65e" value="25.809867">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8cf4cd4d-02fa-426e-a771-6604ab8c1b9a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="4e131fc7-4f5c-4333-9445-f7f6f8bf72a6" connectedTo="ad2f6cf5-6d4d-4d03-b83c-7cb6c143f189" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0939e8c7-2b95-407a-9805-c90cef8211c2" value="17094.48">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="8.30636461704423"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="11.165048543689322"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="10.787486515641856"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="69.7411003236246"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="78842.0" id="646c436e-0d41-4df5-ad56-6fa20f4eeb1a" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="285">
          <asset xsi:type="esdl:EConnection" id="719ec556-e13e-4cac-9ba8-b4407c243e97" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9163ec50-3c6a-4912-b57a-3b3a7b631efc" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="321ffcbe-6e4b-4bf3-bfa9-3a8b975d4557" value="21561.036">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="dc0e1ac0-6beb-43ca-9567-0e774a605538" id="bef0d6f2-f163-4c53-83ae-2c4a5441fb3f"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="bb196ff3-30f7-4a15-95c0-b6cb1bd6779a" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="edf63b10-6d38-4953-b7df-f6f36b12a7f5"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a2463957-7c0f-4c40-bc7c-6a94225651ed 86abae7d-8900-4469-9229-21138a17c1a2" id="d0558cb5-b5c6-403d-9e6a-8dee16b84606"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8cebab01-8d5d-4298-a8bc-86f38ccfc368" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a2463957-7c0f-4c40-bc7c-6a94225651ed" connectedTo="d0558cb5-b5c6-403d-9e6a-8dee16b84606" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="50970424-707a-4070-95d0-e80b9bd19cb9" value="10714.729">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b5ec6985-d559-4fdc-a597-8918d2705f63" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="86abae7d-8900-4469-9229-21138a17c1a2" connectedTo="d0558cb5-b5c6-403d-9e6a-8dee16b84606" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="48ba9b46-d881-483e-84e8-929e939168bf" value="633.699321">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="90c2359d-22a2-4c5d-86f5-aeceb1e19d8b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="69b7c9e1-0c53-438b-bcc6-1bb3d590e219">
              <profile xsi:type="esdl:SingleValue" id="eb026e56-d45c-4bb6-b84c-b89bba2836a8" value="5185.07955">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2c6e27e7-988c-4474-8e2b-a0ca3c198848" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="dc0e1ac0-6beb-43ca-9567-0e774a605538" connectedTo="bef0d6f2-f163-4c53-83ae-2c4a5441fb3f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="afe8a8c7-1e7b-47ba-b1f9-3e9f0b24e717" value="20830.36">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640102" scope="NEIGHBOURHOOD">
        <KPIs id="282f3877-eaa3-4626-828c-6b297f80e959">
          <kpi xsi:type="esdl:DoubleKPI" id="db02dfdb-9e28-4074-97ff-0988fe128b88" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c3295e3b-4093-491a-8e83-ff47d6238a83" value="1470310.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d7d73d3d-ed18-444f-bd3c-6206693595f6" value="365.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2e0dc135-33a9-4608-96aa-38b5a37791d9" value="967.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="83435372-5265-47d1-b2a3-6266e9a90d7b" value="51163.309700000005" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2788d415-1ec5-45a8-8ed3-b7111cd3f4a8" value="34275.95854" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1b0db756-a097-4974-b20f-67a810156ce9" value="5876.283" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="da539889-5068-42fb-a01b-80c0ed0828ee" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="66847e13-01eb-4ceb-b4b3-80ba6f19c651" value="4500.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a79e14ff-a5ce-4d12-b2ac-ba870e5bc005" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="7ed99212-b65c-4a72-89d4-25e6a9a721cb" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 59709462-1a3b-4583-aa40-571c525c0967 3a7bf10b-3252-4a7a-a387-23c91e4f6504" id="585fe593-3160-4ffc-9d68-5c0ebcf7ee0a"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="172f9a09-1116-49ba-b67a-0f0ba5cfeae5" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="a1056c2c-7333-4f8a-a6a3-8296657ba1d2"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="60be4015-e290-4a88-aa3d-6d5a59674871" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1411">
          <asset xsi:type="esdl:EConnection" id="4ba04ea2-57e5-4572-8002-94753c7eefcf" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="fc67de8a-4a80-40e3-8303-3bd596a0ddb0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="093a937d-1a98-4647-95b4-847d45479d6c" value="30289.2944">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f7e83926-2b7c-4319-8ecc-5ce0b104f1a7 7b09dabd-5098-4a78-ac36-6a57b3653c7a 59709462-1a3b-4583-aa40-571c525c0967" id="1a28c325-d22a-4580-a651-c131480e1492"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9d72cd24-8b2d-4ea0-8731-a41334ca7ad9" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f7e14d28-722a-4da5-8f87-6d20c038c63c" connectedTo="0702b8ea-f048-42ff-881c-b526610ee62c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="788a26ba-83bc-4346-8f70-52bf0d945801" value="36829.4202">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5ebdaf02-709b-4fe9-af3f-5c1920ffa0ee" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="914b8076-05ea-4be8-9387-70e222cc3170" connectedTo="0702b8ea-f048-42ff-881c-b526610ee62c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cb8f05d7-a091-4484-b222-54b798786780" value="12365.55">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f553c0b8-afeb-4bb4-8944-74c89f514b40" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="f7e83926-2b7c-4319-8ecc-5ce0b104f1a7" connectedTo="1a28c325-d22a-4580-a651-c131480e1492" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="85605963-3daa-406e-80ad-fb87f6f09837" value="1115.43302">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ea68551a-b344-44f0-b5bb-5aa67d7c20f2" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7b09dabd-5098-4a78-ac36-6a57b3653c7a" connectedTo="1a28c325-d22a-4580-a651-c131480e1492" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fdef92d0-50ef-48ef-b938-6acaa807e2b0" value="13909.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b60dfc0c-f81f-4369-9312-7ff4fcb62d26" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="585fe593-3160-4ffc-9d68-5c0ebcf7ee0a 1a28c325-d22a-4580-a651-c131480e1492" id="59709462-1a3b-4583-aa40-571c525c0967"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f7e14d28-722a-4da5-8f87-6d20c038c63c 914b8076-05ea-4be8-9387-70e222cc3170" id="0702b8ea-f048-42ff-881c-b526610ee62c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="1.3465627214741318"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="98.65343727852587"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="14102.0" id="959053b4-c16f-4379-968e-047fe4ebe821" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="103">
          <asset xsi:type="esdl:EConnection" id="a6a0efb1-9d8b-4eba-b8e6-48726527380b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3bf535db-c129-49dd-a3ea-62b0d904135f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="260f6d25-8d68-4d71-878b-4e1509781432" value="3986.66414">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b169debf-d9c3-45ee-8f6d-051c1e2279ec 3a7bf10b-3252-4a7a-a387-23c91e4f6504" id="33eebe83-500e-44fb-837d-1111b1349ec5"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="88f80521-4ee1-45ed-8dac-46415ea20c89" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="49db8bab-e877-46b9-9034-e61f64e490cb" connectedTo="5ede3c6d-4bea-43e6-9487-56b09319846b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3dfa2f73-1696-49bd-ab24-fdb5750a1779" value="1844.27293">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e1198e2d-42d6-4435-bf7f-0a011c3a0b79" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6efea32c-2630-4f10-aecc-aae34da86973" connectedTo="5ede3c6d-4bea-43e6-9487-56b09319846b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8cd2e272-4441-4dff-9229-c78f592cf06d" value="124.066567">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4cb30cfc-9f04-49ca-94a0-6b7c755da532" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="17225dc6-5a3e-4eac-8020-e82c8a1770cb">
              <profile xsi:type="esdl:SingleValue" id="dee35ba4-6156-49e0-8baa-4f005aeecdb1" value="834.099721">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c7f5a580-3c3c-4306-9947-8b5a32c638dd" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b169debf-d9c3-45ee-8f6d-051c1e2279ec" connectedTo="33eebe83-500e-44fb-837d-1111b1349ec5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f3c90d94-0e9d-4578-b8ce-a64e9b372b69" value="3177.712">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0bb314fd-af8a-469c-9007-bb8817968000" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="585fe593-3160-4ffc-9d68-5c0ebcf7ee0a 33eebe83-500e-44fb-837d-1111b1349ec5" id="3a7bf10b-3252-4a7a-a387-23c91e4f6504"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="49db8bab-e877-46b9-9034-e61f64e490cb 6efea32c-2630-4f10-aecc-aae34da86973" id="5ede3c6d-4bea-43e6-9487-56b09319846b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640103" scope="NEIGHBOURHOOD">
        <KPIs id="128e7bf3-5817-4199-9137-34f4fd2ec732">
          <kpi xsi:type="esdl:DoubleKPI" id="51032a4a-e34e-40f2-be35-6a78015bc465" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cf6926be-8734-4a5e-9810-6c40cc0d6793" value="196082.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f47b53d9-8cd9-4dab-a85e-55fc7b10a239" value="484.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cde05b5d-f2fc-4185-b709-8e2299c480d3" value="1140.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2384753d-7f2c-4f8a-8bec-1f3d24c6aab7" value="4093.8447800000004" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9d40cb01-4054-479f-809d-7b3ce03c1226" value="10182.047558" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a6d89de5-684c-4f7c-ac1e-dfc0bd9cadae" value="1339.0895" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9b6548a9-2d02-449b-abfa-826806882d44" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="56383aaf-145b-4819-a267-b9679560715b" value="2860.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a724dd10-c4b6-4e5c-b645-9899edde7e3c" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="76cf7caa-cf89-4bf4-865c-4ec5b7c2e4fd" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="3bf9bc1e-c473-4746-a6e3-9428e4defbd7"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="04d20f54-3616-45dd-a2d9-78b667727cb2" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="a9acee1a-4e6d-47c4-968b-2412196b649b"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="243e3189-d84d-4175-b5cf-2c2e2f0a6e90" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="28">
          <asset xsi:type="esdl:EConnection" id="e26eee24-b887-4833-8e5f-0cef47244a33" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cf9b5005-f437-4c10-bbdf-0b9515979f79" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="83de7d60-7ba0-406c-a9af-5da47a39af02" value="652.901988">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="34acfbce-a3c3-4bb2-b223-0c7a90580d93 2c224e95-55ff-4ca4-be41-ac43160ec520 ded929dd-e44c-4b80-a320-535f78f6f05e" id="8501f935-bfd2-4858-9ccd-6280f0dd0895"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c2811be1-3069-4524-8a30-416c603fa2be" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="de7400b0-6abe-4c9e-951f-2ca644612307" connectedTo="3a96ec15-f4a1-4d72-a357-efcfa4cfc999" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4ce204f3-6c34-42bb-9a13-5a60614169c4" value="1053.61222">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4c00eae1-21e0-4776-a826-8be0fc41f6d7" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="93ec9f7d-7832-46df-a4ad-435c3df1b684" connectedTo="3a96ec15-f4a1-4d72-a357-efcfa4cfc999" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bd124e0f-b074-40d3-9815-58fd385ae0d9" value="242.45">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="02067f8d-628c-4878-9467-ea81a7002a82" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="34acfbce-a3c3-4bb2-b223-0c7a90580d93" connectedTo="8501f935-bfd2-4858-9ccd-6280f0dd0895" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f34711e4-c722-4f9b-a0a8-0a3c5d74d25d" value="33.9350612">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="83107b3f-29fb-4e39-9421-6a3ba967abd8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c224e95-55ff-4ca4-be41-ac43160ec520" connectedTo="8501f935-bfd2-4858-9ccd-6280f0dd0895" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3d6127e6-105c-48b9-a938-26d1e25b84a1" value="270.22">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="fff7fd27-4718-48f4-912a-c3bd8daa093e" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="8501f935-bfd2-4858-9ccd-6280f0dd0895" id="ded929dd-e44c-4b80-a320-535f78f6f05e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="de7400b0-6abe-4c9e-951f-2ca644612307 93ec9f7d-7832-46df-a4ad-435c3df1b684" id="3a96ec15-f4a1-4d72-a357-efcfa4cfc999"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="10.714285714285714"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="89.28571428571429"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="18663.0" id="6d2d4284-8bd1-4f5a-ab93-5901f9b268fc" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="22">
          <asset xsi:type="esdl:EConnection" id="d2473f85-b1f7-49fd-b532-5ea6e8253c69" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d22a817f-4cbe-4d75-8fba-d412509565eb" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="86b53ab1-5b63-4d58-b204-25c1ea8f63ad" value="9529.14557">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="16b6ebad-b5ba-450b-aa56-ae6a6c3b0187 9715e933-7568-4ba6-8a0f-6e15edc7752c" id="55d7c4de-749a-430b-b05e-747234090165"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3ff243e0-591a-46fb-843a-71e052c8971c" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="ec06f5e0-5576-4aaa-9d82-c1ffcf2190fa" connectedTo="1c7fc660-3f8c-47a3-bfcb-fe9aaa67f192" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7d54f2cf-f29f-4d2a-925e-a6fb49c14e39" value="2714.84788">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9f485bdb-a6ef-41b7-987f-0bde06e51ac3" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6a9bd6c2-528f-48d0-a8b8-60da99f29a7e" connectedTo="1c7fc660-3f8c-47a3-bfcb-fe9aaa67f192" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="08f3c3e5-7efe-4599-9486-aaa7cf9f73ea" value="82.9346846">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="04d9fac3-7931-4df1-92b5-dc9d486cd1aa" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a78890fd-1413-4368-9d31-0f102748c865">
              <profile xsi:type="esdl:SingleValue" id="486d7144-4f30-4c84-aa57-51fab6b262a1" value="1473.32215">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e90e2b76-f1bd-41a4-a1b5-ef23a41e5c62" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="16b6ebad-b5ba-450b-aa56-ae6a6c3b0187" connectedTo="55d7c4de-749a-430b-b05e-747234090165" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2abe6ff1-4935-4a9a-8de2-b67e65ef29c3" value="8559.771">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b2a030b2-2ed1-44f4-8925-976ef177bba6" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="55d7c4de-749a-430b-b05e-747234090165" id="9715e933-7568-4ba6-8a0f-6e15edc7752c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ec06f5e0-5576-4aaa-9d82-c1ffcf2190fa 6a9bd6c2-528f-48d0-a8b8-60da99f29a7e" id="1c7fc660-3f8c-47a3-bfcb-fe9aaa67f192"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640200" scope="NEIGHBOURHOOD">
        <KPIs id="59512c57-783e-442c-9b64-3f7cbe8d8e19">
          <kpi xsi:type="esdl:DoubleKPI" id="e0fbdd0f-d8ef-4441-b5a9-e5918b910f73" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fdde0735-3a6d-412b-b4d9-f97dc51f44b1" value="1632749.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3a820ce7-60b4-4e3e-a105-daaea067aa54" value="335.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f80412b3-354c-42c5-bf22-b26d4fca300b" value="731.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eae4166d-9117-4180-b404-61fd6c1ed632" value="61551.21119" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="737d09c3-aaa1-41f7-8281-755e9b15ba0e" value="49544.6013" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ae822ca7-24ca-46dc-90d7-2be76d3004e7" value="8796.55" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0f5acbc7-d1f7-4719-9a05-9f1a764868c8" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="fde462a4-88f9-40a0-9cee-b911598da52b" value="5400.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="d94664e9-05e4-4750-b823-0280d76abbca" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="a4484389-5b3a-4775-8102-3dafbe23612d" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 ac3db273-e79b-401c-be8f-ed7e5ff42faf 6111fb28-e86d-4354-b366-3920575cb93c" id="5947760e-7d80-4352-a618-4de0bc99c95d"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b177537f-8d14-415a-afb6-f56fef88b95e" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="1299f96e-e7f8-4bd4-848e-e87853515815"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="9ccc6106-4af1-4859-8ca7-0429ad1ecae8" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="2044">
          <asset xsi:type="esdl:EConnection" id="85ff874d-2ffc-43e3-a22d-3145eaa683d9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="496acd6c-f720-48ae-b015-8987e11812ca" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c66ece36-7f4d-4c91-b3ae-65046134cea5" value="38079.6264">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8dd36400-cc56-4ab0-8e67-371a57d73d97 0587af46-c184-414d-9788-e20183aa0096 ac3db273-e79b-401c-be8f-ed7e5ff42faf" id="14c74f77-60f2-419e-b894-367df561e348"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="48acd4d5-9f86-4db3-a1bf-82d5f3168f02" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e42c84b9-4812-4189-bdea-f4712791d968" connectedTo="d539f87b-16b3-4dfa-9324-cd4b44e8f06b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="22f2958e-27a6-468e-b79e-871e670cfa0a" value="42169.663">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0eb9dc31-174d-43f9-bf99-faa1996f2ced" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="48eb5f1e-3a6a-47e9-aba2-72a3d900da0a" connectedTo="d539f87b-16b3-4dfa-9324-cd4b44e8f06b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bdbe7929-b4bb-4103-b3ab-1b43ccab098a" value="15996.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ef84184d-7006-401c-80a6-30e8bebad203" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="8dd36400-cc56-4ab0-8e67-371a57d73d97" connectedTo="14c74f77-60f2-419e-b894-367df561e348" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="897c270c-8b9d-4dfd-9796-a3a8c9c8b9e8" value="1212.82185">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ea947dd8-3495-4591-82bd-d5911a6996ae" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0587af46-c184-414d-9788-e20183aa0096" connectedTo="14c74f77-60f2-419e-b894-367df561e348" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7b4625c9-4f9e-4a6a-9566-bc1ad4f01b81" value="18812.83">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="559b6e16-1a9c-451d-8a6b-7df665551abd" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="5947760e-7d80-4352-a618-4de0bc99c95d 14c74f77-60f2-419e-b894-367df561e348" id="ac3db273-e79b-401c-be8f-ed7e5ff42faf"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e42c84b9-4812-4189-bdea-f4712791d968 48eb5f1e-3a6a-47e9-aba2-72a3d900da0a" id="d539f87b-16b3-4dfa-9324-cd4b44e8f06b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="20.792563600782778"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="79.20743639921723"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="24700.0" id="8d5b2cba-b25a-47d8-8e1c-8447e291fbf1" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="415">
          <asset xsi:type="esdl:EConnection" id="b838bfa9-0ad0-4cfa-bd0c-6f2525ce2cda" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="01af495c-64eb-4bca-9481-1a3a7cdcfd9e" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a3b15fa0-b359-48b5-916f-8144f5c0efa8" value="11464.9749">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="16cbb1b9-2601-4810-af70-8bfdb246ec59 6111fb28-e86d-4354-b366-3920575cb93c" id="62c76ea8-ec6d-4faf-90b7-2b88164b9f24"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b44fd53a-e6f0-49cf-87c4-5a91743efebc" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a795c2cd-2548-4351-9241-d82125a54f33" connectedTo="bac95665-3517-4f65-af29-37dfcde8da4c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4a33b352-e9b2-4e7b-86e4-1d2baf3556b0" value="3139.63965">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2b063d3f-219c-4853-b2a9-8d9f858e1bd4" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="11d2197f-9617-4262-91a0-1c2448a1866d" connectedTo="bac95665-3517-4f65-af29-37dfcde8da4c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b171723e-2ec9-427d-8c77-0efa56c46d4e" value="245.908534">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d3cd50d9-8664-4ead-93bb-053f7d433a3b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="61f6e0a6-06ff-4ad3-9f4f-f3e3a9e47f74">
              <profile xsi:type="esdl:SingleValue" id="275dbffb-1161-435c-8b43-63ba610bdedd" value="2525.15562">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="266a34b5-0629-46f0-a3b1-3cb3d944968e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="16cbb1b9-2601-4810-af70-8bfdb246ec59" connectedTo="62c76ea8-ec6d-4faf-90b7-2b88164b9f24" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fce3a680-ab9b-4fa6-abf1-b1945b2ab5f0" value="9795.762">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="ee119057-9602-4b04-8191-2fa7cfcabab8" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="5947760e-7d80-4352-a618-4de0bc99c95d 62c76ea8-ec6d-4faf-90b7-2b88164b9f24" id="6111fb28-e86d-4354-b366-3920575cb93c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a795c2cd-2548-4351-9241-d82125a54f33 11d2197f-9617-4262-91a0-1c2448a1866d" id="bac95665-3517-4f65-af29-37dfcde8da4c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640201" scope="NEIGHBOURHOOD">
        <KPIs id="b4853f43-bea9-453e-85aa-2878f7ac9e7d">
          <kpi xsi:type="esdl:DoubleKPI" id="ccd2fe3c-3e71-4140-8343-aa0d163543a7" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="701206de-b7ce-45b1-9ca7-937478c50f62" value="1019295.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1c0bd01b-2198-4c14-97c6-e970a7809ce4" value="351.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7098d2f9-d954-44b3-a679-b54f1ea188ab" value="948.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3933bf60-48ce-46f8-8e09-56ea300dff40" value="40343.43513" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="26fe908d-0137-4a12-9562-696a268d92db" value="16506.33257" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eac6f3b7-5f51-4850-8a39-ef41738dbef3" value="1955.112" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ef405e43-7279-4b42-889f-8a6874a10721" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="52a8d7c7-f147-4800-bc60-9448a89095a5" value="4000.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a2f97670-72a5-4e44-8428-9bad0fd887b6" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="6ba88394-f537-442e-8182-da583b9b545d" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="ac7df454-0ea1-4f65-827f-441cb86f85f7"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="7c8c8402-c26f-462c-be35-49b42edea288" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="9f992475-6fea-4da4-88f6-3fac51d7d5e3"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="881ae7d9-2dbd-465b-b0e7-f66a0d959f93"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="1b374c21-bdc1-4e53-b360-9b18d9d98a1e" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="919">
          <asset xsi:type="esdl:EConnection" id="dc0b3aeb-d730-421e-bdcc-1d9716c4c985" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1197b1c7-3e15-4012-a88f-e8103523d65c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="acf405f2-aeec-4612-ae26-f0e59641ffe5" value="9231.98962">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e1b5ed47-9100-4985-8ccb-e81d8129dc9a ad1efbd6-1d8f-4a2a-8d11-d022d4623aac" id="89e81140-6962-4636-b268-283c83d40ca1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="e8ef47e3-4d0f-42c7-bfe2-df444ba2ca9e" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="92f4b69c-1ce3-41fa-8365-ecaecc22f479"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b878dddf-5d0d-4094-a6e2-c15819896400 b7ec6137-151f-40fc-9ccd-8fe2c931b741" id="bad3da23-42e2-40b1-a67a-51653103c39e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a38ed255-3686-407a-bfdb-5be6173c4c48" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b878dddf-5d0d-4094-a6e2-c15819896400" connectedTo="bad3da23-42e2-40b1-a67a-51653103c39e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c1e04b09-56d3-49e6-b85a-db24a0f5aac2" value="29642.5833">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e43502fe-e27b-4b93-ab4c-d963152c1a73" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="b7ec6137-151f-40fc-9ccd-8fe2c931b741" connectedTo="bad3da23-42e2-40b1-a67a-51653103c39e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="60d12fef-10ff-49af-90b9-84d3061ff0c2" value="8097.15">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="957d34f2-5cf2-4047-8a92-a8dab578f2ad" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="e1b5ed47-9100-4985-8ccb-e81d8129dc9a" connectedTo="89e81140-6962-4636-b268-283c83d40ca1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9800f1f2-2744-4cd1-960b-8a1c658c3200" value="6.71167182">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="82e6922b-1e06-472d-8766-9e4226ef289a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ad1efbd6-1d8f-4a2a-8d11-d022d4623aac" connectedTo="89e81140-6962-4636-b268-283c83d40ca1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="571a501d-ebed-46d3-b1a5-50924a962397" value="8827.23">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="7.725788900979326"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="6.420021762785637"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="6.2023939064200215"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="79.65179542981502"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="20232.0" id="90f82a28-3629-4987-89de-273ac06904b5" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="114">
          <asset xsi:type="esdl:EConnection" id="7f0effd4-864f-4576-9912-f30108d04c81" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="8d7aea80-06d4-44e7-a079-a3407737bb34" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="703a7189-d9f2-4fd1-832e-04131a77b961" value="7274.34295">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="fd2af864-72ce-4818-963c-51d83be08c89" id="2e0c5f8c-aa0f-4c91-96bd-de4f682969c2"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="0239c988-6e56-484f-acbd-f41292a88ae2" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="0b30cba1-99fb-45e3-b489-353cc821fec8"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b6e250ba-1eae-484c-9337-65d0628a4e2d da6a71f3-97c2-4a60-a655-7301d070c1c1" id="5d5278bc-a610-4c99-b878-9de4b7f3d1cb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9f77d33a-f16e-4d9c-b49e-c66b51ac4688" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b6e250ba-1eae-484c-9337-65d0628a4e2d" connectedTo="5d5278bc-a610-4c99-b878-9de4b7f3d1cb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="686c7eca-b76f-4f5d-9d0e-30892acf16fe" value="2476.71718">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c4adf4ea-8299-4119-ae0f-c4ee7186aa02" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="da6a71f3-97c2-4a60-a655-7301d070c1c1" connectedTo="5d5278bc-a610-4c99-b878-9de4b7f3d1cb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6abe8e6b-f5ae-4edf-9b6d-2413c7b5e5a2" value="126.984649">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a3485aaa-6c8b-4cdc-a6b2-2b3a91923c18" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="879af62e-2841-4f03-bb73-9c4757be8ffa">
              <profile xsi:type="esdl:SingleValue" id="e5d1f267-ec8f-4bc2-bcf7-b5f548910bd6" value="1037.62209">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6391c74d-3d09-403b-a73e-033f84f23bca" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="fd2af864-72ce-4818-963c-51d83be08c89" connectedTo="2e0c5f8c-aa0f-4c91-96bd-de4f682969c2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dff61f29-8e0b-4611-9f97-083d65cd2659" value="6876.295">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640202" scope="NEIGHBOURHOOD">
        <KPIs id="b2f07a8b-9302-4512-80f1-f5c5446fb5f9">
          <kpi xsi:type="esdl:DoubleKPI" id="4c6eb0eb-c47a-454b-bc51-d5ed9592baa6" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="882c1ab7-60b5-46dd-a912-9ef13073e184" value="991158.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f73a5138-e687-4ed0-8921-ea39d123403d" value="353.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ca1c0a86-dd00-458c-8901-6aff34c4218b" value="778.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="17269e83-2f74-465a-a714-cf314e346fef" value="34103.45833" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="05bbebdb-c598-4cc9-a593-375b74f2f8aa" value="26949.774640000003" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="453d5cfc-0643-465e-9869-d00d0b1b2b19" value="4915.2005" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="abbb1872-930d-469f-a7c9-064fb2f79fc3" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="2d0898c2-ba50-484c-8667-13ad875dc150" value="3200.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="6581cef6-8863-4b44-9ce5-fed4e71cd30d" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="ec618ba2-bdc2-49eb-9c9a-c7d4ead8a7a9" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 6cd885de-3e87-4a58-8940-ccc1e9ad54b2 60c335d1-3bf7-43d4-8e8a-b2993b9c653f" id="d56ad9b2-6755-4c1f-8463-42079e986dfa"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="be0f1801-eb8b-408e-8f1e-3945e8d187a3" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="18d6dbcb-25a6-430d-91eb-eb9669aef07c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="45b54db5-cac2-49aa-9774-10067892073e" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1184">
          <asset xsi:type="esdl:EConnection" id="6800f4f8-bdb7-401a-ba5f-b23f324293ee" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1b0182f7-bd18-40c7-b8dc-9e6dffdd0ab0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d9cbf612-d756-46c6-a223-e43c04aaf5ef" value="21828.2207">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c51b988e-6363-4acc-9427-4ed1eb9b577c 0695e014-aa9b-4d3e-a5e6-da99c2804c15 6cd885de-3e87-4a58-8940-ccc1e9ad54b2" id="eaa8d40f-aa41-4da9-97e6-31ec9152495d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1d73712c-b7a6-42c4-8bdc-ef286b305c15" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="095f2108-3117-4265-99e8-039cb1fdbcf0" connectedTo="1d9e33a7-ade1-46ca-81d4-cd562e59c6c3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b1b879cc-c630-424f-8d98-43176281a599" value="23522.8323">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c2f2b732-4963-448a-9357-25b5a530119e" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="dda944a2-f20c-46f9-b51e-a0fdd8a618e5" connectedTo="1d9e33a7-ade1-46ca-81d4-cd562e59c6c3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="53953b68-f1d1-4410-807b-9a30101d73f7" value="9153.9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2cd636dd-56a2-48a4-b9e0-40c1942103d8" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c51b988e-6363-4acc-9427-4ed1eb9b577c" connectedTo="eaa8d40f-aa41-4da9-97e6-31ec9152495d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b9e20c00-382a-479f-b220-2a1198cb7006" value="694.126712">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c8041632-7061-42c3-a53b-1a5c7468839a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0695e014-aa9b-4d3e-a5e6-da99c2804c15" connectedTo="eaa8d40f-aa41-4da9-97e6-31ec9152495d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="14869e97-44f1-4850-8acb-09c4198659c9" value="10836.03">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="7ec7ceec-7a42-48f6-8f09-4c76e5b3ddb6" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="d56ad9b2-6755-4c1f-8463-42079e986dfa eaa8d40f-aa41-4da9-97e6-31ec9152495d" id="6cd885de-3e87-4a58-8940-ccc1e9ad54b2"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="095f2108-3117-4265-99e8-039cb1fdbcf0 dda944a2-f20c-46f9-b51e-a0fdd8a618e5" id="1d9e33a7-ade1-46ca-81d4-cd562e59c6c3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="3.2939189189189184"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="96.70608108108108"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="11597.0" id="5a6db1dd-8640-4ae5-8cfa-c818b100c696" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="151">
          <asset xsi:type="esdl:EConnection" id="87f99105-a37c-49c1-8258-16c56b969e8f" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d3dc56a6-74a3-4fc5-8791-3c59361a31d2" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a5a33669-2eb3-4b65-a20e-b50ef7a9a88d" value="5121.55394">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="6ff2146e-7c6a-45a2-a057-528f2f9d84f1 60c335d1-3bf7-43d4-8e8a-b2993b9c653f" id="0c82410a-ebf7-43cc-a9ce-4e3ed827493b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="24090cef-c604-4dec-9fe6-9490c7c90735" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="d43c07a2-904e-4604-95e8-14a06c1d02b6" connectedTo="d519ead7-026f-4994-b70c-d3098caba5b3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5868d72a-4bf8-4315-889a-18487200760f" value="1318.67781">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="23a61e4a-3729-491f-bf3a-17c10870f8e6" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3ff1def5-03b0-494a-a708-f1ee852ec6ec" connectedTo="d519ead7-026f-4994-b70c-d3098caba5b3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8ef9b2c5-a113-4281-8fb2-33f72bedef03" value="108.04822">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="9c17e8ab-0d92-4e80-a9ff-6fa10d72f40a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="63889d9c-50d2-4a8e-9a7a-3a1e344f776f">
              <profile xsi:type="esdl:SingleValue" id="dd4c6ed3-f9aa-406f-8d81-93a5997b7d1f" value="1120.85445">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="38109629-f526-442e-b4e5-088ec801dcd2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6ff2146e-7c6a-45a2-a057-528f2f9d84f1" connectedTo="0c82410a-ebf7-43cc-a9ce-4e3ed827493b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="43a029e0-f1c0-4e80-aee9-9e805c4f8aeb" value="4403.237">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="93195062-03b5-4418-8cc6-9016fc2c2ffc" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="d56ad9b2-6755-4c1f-8463-42079e986dfa 0c82410a-ebf7-43cc-a9ce-4e3ed827493b" id="60c335d1-3bf7-43d4-8e8a-b2993b9c653f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d43c07a2-904e-4604-95e8-14a06c1d02b6 3ff1def5-03b0-494a-a708-f1ee852ec6ec" id="d519ead7-026f-4994-b70c-d3098caba5b3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640203" scope="NEIGHBOURHOOD">
        <KPIs id="75a09332-feac-4d55-bdb1-fe43d2a65034">
          <kpi xsi:type="esdl:DoubleKPI" id="7aa54e70-28f3-434b-a78e-8c85876a942a" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="369d9273-9d4b-42b0-93f1-93a0f7043db6" value="288182.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9b4b18b6-fd1c-4b37-9eb0-a83ba28bd34b" value="198.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f9f8ce1f-66aa-4d66-9f3b-d141693f6fda" value="323.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ab1c83a1-64a2-4abd-8e6c-e17563a51d44" value="20830.84712" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="31f725a9-aad3-4d79-85b0-a87652bf0f95" value="15795.178890000001" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7efccb13-b1ea-4776-b604-8b8fc5110441" value="3322.0985" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8c0eb243-8bcb-4db2-b483-cb7aec8a2ddd" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="5b411fc6-e82d-4fc5-9523-16b1f9fef954" value="2900.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="caec7aa3-52d8-4484-932e-cef9e1eeba81" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="90e845b5-c569-4e8f-8ffb-39b8b20e630d" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 328ffb2f-2d22-474f-b342-1b9a035fcde1 72c072ba-ee97-47df-9128-db825e6209d8" id="cfc21abd-0c30-431a-8b8c-dab890afea27"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="c4050dd3-c695-4ea7-a8a5-2120e761a9c4" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="b36ab3d3-1af6-497c-a2d3-04c99f71f451"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="63714698-50f6-49af-92e1-9d31849bc9f6" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="854">
          <asset xsi:type="esdl:EConnection" id="7fed52f3-b19a-4e8a-8918-9608fcd20255" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="a2dfb43a-48fc-487a-a0fa-897f20adbb1f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a0fc828b-7b07-4d80-a967-973861f73aff" value="13835.9397">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="6cbe8c6d-41e2-4e65-8708-8c3121cc0930 03e4909f-d1ff-4e42-8a32-a75560639e3c 328ffb2f-2d22-474f-b342-1b9a035fcde1" id="38568c26-1a87-439d-a1a8-0abfa13f6591"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ed8b1c0b-524e-49dc-9fd2-91f29c10e857" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="8be533c8-d226-4baf-88f4-44bfbd6084b7" connectedTo="d94d5555-ebef-4eda-9f1e-fa6100419873" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f23bbb4c-9e24-42b0-9eb4-8f5acd9eaeed" value="14004.0578">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="afda8fc5-d5d8-4f66-8da2-d34029d4b357" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3004980d-ced0-40ff-a35a-ab3f9f567701" connectedTo="d94d5555-ebef-4eda-9f1e-fa6100419873" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fe8cdebf-b2c1-4191-8497-671c34386c97" value="5822.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e3f6a3ff-d144-4893-9615-8ce0c7fefccd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="6cbe8c6d-41e2-4e65-8708-8c3121cc0930" connectedTo="38568c26-1a87-439d-a1a8-0abfa13f6591" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="427d8351-49df-4395-b810-5a4c3baf96a7" value="405.487379">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a9ae9215-f7fc-4a48-94dc-c00cdd6f75f4" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="03e4909f-d1ff-4e42-8a32-a75560639e3c" connectedTo="38568c26-1a87-439d-a1a8-0abfa13f6591" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e5aee7e4-540e-4e44-a3bf-b301e91a504a" value="7465.03">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="762fc63f-0c92-46f5-b67c-7417136034a5" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="cfc21abd-0c30-431a-8b8c-dab890afea27 38568c26-1a87-439d-a1a8-0abfa13f6591" id="328ffb2f-2d22-474f-b342-1b9a035fcde1"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8be533c8-d226-4baf-88f4-44bfbd6084b7 3004980d-ced0-40ff-a35a-ab3f9f567701" id="d94d5555-ebef-4eda-9f1e-fa6100419873"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="56.08899297423887"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="43.91100702576112"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="5009.0" id="1f751795-ac5c-416e-8f63-9e2e6a39d713" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="106">
          <asset xsi:type="esdl:EConnection" id="02bafea3-1aae-4260-8cb2-df71b2c97c99" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="62d9f707-9bc0-4715-a52e-8fad89f7bc49" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="79d2043f-7ab8-451b-9e48-2f8c21a8d93b" value="1959.23919">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3b210ea5-de79-4023-a75f-3e270618e886 72c072ba-ee97-47df-9128-db825e6209d8" id="17945712-7c52-4dd9-9a0c-b370bfd9caa8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ead8a3e8-e08c-4303-9583-eccccb2b6090" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f7da4539-55a2-4c14-ac7b-123b64876a48" connectedTo="e5b25932-e16d-47e5-b7ff-c26d6529f2aa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="52c721fb-0107-4d1a-b2d5-6cef117d9c9e" value="914.757282">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b3a5bcc1-3af4-4caa-bde6-fe3dee20d793" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="0526fb49-d2ae-4a14-9b47-08fb68e34a8a" connectedTo="e5b25932-e16d-47e5-b7ff-c26d6529f2aa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4fc9497c-7cbc-4a92-82ab-0372483ace67" value="89.3320398">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a47145e8-3f87-4f41-8511-7b94bdb9f7a7" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="76c49091-36e3-4bf9-ad6a-8f5b3ff665df">
              <profile xsi:type="esdl:SingleValue" id="941cd4aa-f3ce-4542-a5ec-20db8ee5bc30" value="853.443236">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="49158720-1e79-4709-bdf2-2c143e70029a" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3b210ea5-de79-4023-a75f-3e270618e886" connectedTo="17945712-7c52-4dd9-9a0c-b370bfd9caa8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b90a1f0b-ec66-4377-9d26-292bb1ae2b50" value="1435.433">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="7456dfe3-9539-4440-bb27-abaddd75a1f9" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="cfc21abd-0c30-431a-8b8c-dab890afea27 17945712-7c52-4dd9-9a0c-b370bfd9caa8" id="72c072ba-ee97-47df-9128-db825e6209d8"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f7da4539-55a2-4c14-ac7b-123b64876a48 0526fb49-d2ae-4a14-9b47-08fb68e34a8a" id="e5b25932-e16d-47e5-b7ff-c26d6529f2aa"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640204" scope="NEIGHBOURHOOD">
        <KPIs id="7375756e-d7f2-489e-921d-4078780319d1">
          <kpi xsi:type="esdl:DoubleKPI" id="c0373774-2541-4013-8909-3219e5eab4a0" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ea326dfd-e6c0-49d2-b26e-d3823d32e4a6" value="46288.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="472f6dd7-c40d-4e0c-b57d-25d39f6b4a21" value="233.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2c2558aa-d70d-4194-8ed4-5bea1a23bc91" value="487.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3f344b96-6ec0-4bdb-8e5f-08758861ffb8" value="3062.350921" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3b0ea539-d1e6-426a-bcb3-bae9f695d7ad" value="2442.0912399999997" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="26e330a3-df0b-461e-8a10-1452553f87e2" value="445.557" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f15c47ff-32e2-44e5-8398-f1078dc58d5d" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="5ddb6bfd-d9bd-4fb3-bffd-6bf10abbe0cb" value="900.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="ffa14b75-0e8a-462f-9891-88db018b0ed9" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="fe8030c1-add8-4a77-a882-d5b7e22b90ab" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="07661eec-0383-447a-96da-491846962e2b"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="64214286-050f-4888-9b90-c388067efe76" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="819b0204-4003-4c0e-ac82-2994f76ff0ae"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3e180ebd-1b7a-4b5f-9194-ae98db71f042" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="73">
          <asset xsi:type="esdl:EConnection" id="502ceb90-0406-4c1a-93b9-8827dec57854" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="409ce200-0774-468c-b84c-4aabf5860d64" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ed77e6c-d72a-4c1f-aea7-da56d9f3c022" value="1272.86321">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c45e1207-22bd-4f1f-968e-23dd42ea4a8f 772cec9a-5c9e-4b00-90c4-a5689f3a15cc 0849d418-aefd-4476-9418-6cb12ff79f7b" id="ffe3b64d-02d8-4d1d-9284-b8ea20d01cf6"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="88691068-53f9-4e92-910d-f739ae712d75" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b6c678e5-3aaf-45c5-88af-70aa27ef574f" connectedTo="35f30bac-5961-461b-a293-d0617691bcff" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b81e50d0-3be4-4ba8-a2af-7f632c940c74" value="1541.78681">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="23c3612a-d318-4d75-878b-00c9fddf6ea2" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6332a107-653f-4fff-b46a-e3a64bf5ca43" connectedTo="35f30bac-5961-461b-a293-d0617691bcff" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4646f8fa-9d54-43de-be55-e648cb3050c2" value="577.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="66d54e20-8c36-4e52-bbaa-052d495577ba" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c45e1207-22bd-4f1f-968e-23dd42ea4a8f" connectedTo="ffe3b64d-02d8-4d1d-9284-b8ea20d01cf6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4a534b67-c291-4916-ab06-b6439b34e028" value="18.8353028">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ee604ba3-3310-43aa-8d3e-47a910237014" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="772cec9a-5c9e-4b00-90c4-a5689f3a15cc" connectedTo="ffe3b64d-02d8-4d1d-9284-b8ea20d01cf6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa9fb158-4662-4ded-9297-c98496f6c327" value="708.48">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="fc82ccd2-7f33-405a-9e9f-6dbc38ac5b23" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ffe3b64d-02d8-4d1d-9284-b8ea20d01cf6" id="0849d418-aefd-4476-9418-6cb12ff79f7b"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b6c678e5-3aaf-45c5-88af-70aa27ef574f 6332a107-653f-4fff-b46a-e3a64bf5ca43" id="35f30bac-5961-461b-a293-d0617691bcff"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="79.45205479452055"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="20.54794520547945"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="2858.0" id="04f5d217-29ca-4531-817f-d6adbbc95dd5" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="8">
          <asset xsi:type="esdl:EConnection" id="2d6d9bfc-2476-4d1d-b1c8-53ee61370b38" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="809d8e5a-1d1e-49e3-a063-a4a95ed58b73" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8e841155-35a4-414a-9995-4860b06a2215" value="1169.22803">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8894ec6a-d417-4c9d-982f-2c23681afb55 ce721cfe-b127-4999-89fa-8e385864b2c9" id="5cc48b32-144b-4cc7-80de-a58ac47caf79"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="542324c6-431e-47c6-bdcd-8ec203304be9" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="79f129ee-b971-46d0-bf38-7c8ea9fa9f0f" connectedTo="dba9fb8b-052f-4bcd-bf72-4e536b6fa521" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a2d8538d-46c5-4f3b-a481-00e039d96ee9" value="890.270137">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d7b1393e-0509-45e4-87fa-4bbacce0f79c" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="796e6a51-a882-4564-b157-51490d80e5ec" connectedTo="dba9fb8b-052f-4bcd-bf72-4e536b6fa521" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="10217c3b-81e7-4438-8ed9-2abd0325b35d" value="52.8939743">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d61adb6d-949e-4bb1-ad4a-f4dcb83d1325" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3d259fc3-b13f-46a6-82e9-3f0f3ce1a6d4">
              <profile xsi:type="esdl:SingleValue" id="ebc2674b-fc98-41f8-a3de-3d7f37305a2c" value="515.609733">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="dc5611bc-9d82-4b9b-a9a1-02401126bb48" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8894ec6a-d417-4c9d-982f-2c23681afb55" connectedTo="5cc48b32-144b-4cc7-80de-a58ac47caf79" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="798cb736-2eef-4256-a89a-806d2f5d7aa4" value="837.007">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8daa15c4-9676-4dac-872c-9706cac6753b" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="5cc48b32-144b-4cc7-80de-a58ac47caf79" id="ce721cfe-b127-4999-89fa-8e385864b2c9"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="79f129ee-b971-46d0-bf38-7c8ea9fa9f0f 796e6a51-a882-4564-b157-51490d80e5ec" id="dba9fb8b-052f-4bcd-bf72-4e536b6fa521"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640300" scope="NEIGHBOURHOOD">
        <KPIs id="4204d5d7-179e-476b-ad04-d69ef5a0d500">
          <kpi xsi:type="esdl:DoubleKPI" id="e196fed9-b2c7-43d3-88b7-1a9f8134826a" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9312d2cf-041f-4c8a-b18f-4f8f7c2917b7" value="799782.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="74749a38-ece6-428a-9999-baa0cb13af47" value="379.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d461555e-3517-4896-8046-3b303215a049" value="838.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="493f8d86-c318-456f-9cd0-2a5d77ac577a" value="29632.066163" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2f5953f5-22c9-4628-b8c9-59a3787bc288" value="19981.57933" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7afa9a75-f753-4eee-85af-cc901eb41ae9" value="3482.794" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="beef0f00-b5d4-4763-8e52-67ce8d8608a9" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="c0e1dcc0-e375-4e6c-9568-8a12649dda79" value="4000.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="d6ee2e6b-2a32-439e-8d40-d6d8c5e02084" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="9470d5e9-b47f-460d-9bdb-c7badc857b0a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 8672d224-a4bc-419a-8deb-2c40cb2f4603 0a87c5fe-8ae0-4e31-a138-b4e6bd64d6cf" id="7301d045-7239-457e-8e6a-bc68ff8b33a6"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="ccc0eb5f-d989-4a5e-afa0-e5233790d7ba" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5ebd5435-28fa-487c-9d2d-8292e4eb9552"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="900cc0c1-f734-42a3-aeab-250f15d66d5e" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="926">
          <asset xsi:type="esdl:EConnection" id="53f56942-8117-4c2d-801c-98103cc60d3a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ddd245c3-9836-413a-9198-9029c707b0f2" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e2fe4578-4541-4656-aac2-fc871b4848e0" value="18565.8345">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d6c42660-acf6-4231-b8bc-88fb8d1a3e78 763d18cd-b6d9-4f81-b99e-4ef8983d0faf 8672d224-a4bc-419a-8deb-2c40cb2f4603" id="35d36df1-a6cb-4c99-a49b-d49503227578"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6b0e4bf8-f1a8-4ecb-b1bc-ff2fc5f1186c" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e0627c61-dff1-442e-97f2-a46cdfcad6dd" connectedTo="aca04a62-bb64-4f7c-b78d-1a300c43b8c9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="821fddd8-3913-4b61-9615-47f47ddce422" value="21790.6419">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e1bc3da0-6b43-4004-b879-4326d36d6e37" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f3788e64-3b5b-431c-a9b9-beadf3734b49" connectedTo="aca04a62-bb64-4f7c-b78d-1a300c43b8c9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d1d74e1d-2b5b-4cf8-8cfc-df3b62bac32e" value="7376.1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b064a7fc-476f-4f09-9ba2-19fc6df3182a" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="d6c42660-acf6-4231-b8bc-88fb8d1a3e78" connectedTo="35d36df1-a6cb-4c99-a49b-d49503227578" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="252e2119-ccfe-423a-bc6c-b0347a6cd16d" value="509.725162">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="34c34940-8b91-485f-9971-00345bd91e22" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="763d18cd-b6d9-4f81-b99e-4ef8983d0faf" connectedTo="35d36df1-a6cb-4c99-a49b-d49503227578" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f36a0bfd-f609-4611-9bf5-5af472025fbe" value="9009.2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="ca3028ec-7490-4ca7-b30c-47220f0d543d" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="7301d045-7239-457e-8e6a-bc68ff8b33a6 35d36df1-a6cb-4c99-a49b-d49503227578" id="8672d224-a4bc-419a-8deb-2c40cb2f4603"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e0627c61-dff1-442e-97f2-a46cdfcad6dd f3788e64-3b5b-431c-a9b9-beadf3734b49" id="aca04a62-bb64-4f7c-b78d-1a300c43b8c9"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="3.5637149028077757"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="96.43628509719223"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="3636.0" id="6e48055a-dd8e-4b75-8155-08e0325ae240" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="10">
          <asset xsi:type="esdl:EConnection" id="553f673a-cdbb-40e2-a9e8-78ddd5c5867b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d1a8f4de-41eb-4801-85ef-ca7483714d45" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d825e45f-0de6-404b-ad66-8b175bfe1595" value="1415.74483">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="dff98bab-96a9-489f-9c6c-5991a36cc714 0a87c5fe-8ae0-4e31-a138-b4e6bd64d6cf" id="adfcf52e-a362-40ab-b56c-2a46915f04c0"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="77cbd778-8dcd-48c5-9437-c362ff338a5c" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="38cdcbb3-f3cd-4be6-ba8e-ed44d50eb3aa" connectedTo="b87d710a-03d8-47ae-bf9d-b4bbfc9167c2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="21f935b0-0d1f-432f-8629-ba8ef2d97668" value="450.057704">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="75a0d2e1-2f0b-4d0c-aefd-1dc929d554c3" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="57ced031-fd55-4bf3-8552-b0e053bd4404" connectedTo="b87d710a-03d8-47ae-bf9d-b4bbfc9167c2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="628604a2-64a4-4a6a-a019-299bea3289ee" value="15.2665596">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3fb88173-4d0d-4216-bc46-ac904219a333" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="771faa13-f92d-4063-b2d8-de0bef228467">
              <profile xsi:type="esdl:SingleValue" id="3d463ec7-9a9c-4dfe-9570-76df611d575f" value="135.016383">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="305d0860-8959-4f10-9e96-929f5820885d" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="dff98bab-96a9-489f-9c6c-5991a36cc714" connectedTo="adfcf52e-a362-40ab-b56c-2a46915f04c0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cd411faa-8b50-4013-aedd-bfde75756c8d" value="1242.291">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="1a0cdf6c-161e-4e92-a3b5-c6fa08b58e53" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="7301d045-7239-457e-8e6a-bc68ff8b33a6 adfcf52e-a362-40ab-b56c-2a46915f04c0" id="0a87c5fe-8ae0-4e31-a138-b4e6bd64d6cf"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="38cdcbb3-f3cd-4be6-ba8e-ed44d50eb3aa 57ced031-fd55-4bf3-8552-b0e053bd4404" id="b87d710a-03d8-47ae-bf9d-b4bbfc9167c2"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640301" scope="NEIGHBOURHOOD">
        <KPIs id="fc61061c-8210-426d-a0d0-312e72071456">
          <kpi xsi:type="esdl:DoubleKPI" id="0a7c4e35-41b1-4189-a3d5-f8cde16c4417" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="21a512b9-69c8-450d-86a2-85132f7a3275" value="361131.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fa838644-6e01-4f1f-8a21-d306487fa4eb" value="385.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="09a3c7de-bf57-4bb5-b0fb-0480a051cb12" value="1154.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f935d9a3-eba5-4f9a-8963-28c72ac3ea8e" value="12778.911082999999" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0950fa99-4e92-468d-9c77-bd0b7014caad" value="7737.79272" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="10020116-df03-470d-9d6f-cef67a4dcc11" value="1270.4545" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3633a7dc-f390-425e-8d8a-46c023e18b0a" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="e6c59c92-8bac-4148-8926-a93099485c1b" value="2300.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="dd49a48c-3080-4d80-9d30-e8c65d91d420" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="8edecf62-bc41-4b0a-a64d-e735a5e55551" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 3eed45a6-6f73-43e2-be87-c8003dda0e9d c78103e9-7f58-4750-92b2-7a4ba2bf1fff" id="740873b9-53c8-43ab-b099-a0b9d9b79781"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="112b36bb-38ce-4c0c-948f-579fd07f0993" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="f879ec65-33b4-4619-894c-705f534ae849"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="88e611e1-fcd9-455b-8f4b-70ccf62d93c9" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="278">
          <asset xsi:type="esdl:EConnection" id="f3e79d0a-5bf7-4cda-83b6-b41a5f85d41a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ebd1e7bf-09a4-4e7e-a6ae-4e600ad936ea" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="61905296-bf14-47b3-8335-29d01b2907e0" value="6590.54945">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e4a54381-03fa-48fa-b979-951adf4eaf50 b9c8cd57-1e90-4f7a-bf0b-2e7e313f6624 3eed45a6-6f73-43e2-be87-c8003dda0e9d" id="0877e5ae-aa61-4ccd-9a86-c82081c53085"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3e923983-a1d5-4e2a-a81b-cb8e7430d849" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="6466aef3-a486-4fe6-86d4-7669efa50913" connectedTo="aaa81826-38cd-4fc2-9f0b-06e67a3a2725" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6be69c42-1ca9-4e01-bcdf-92e59ef7c2c5" value="9565.06072">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="816352ad-88e3-4e62-b4a4-16206384cfca" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="10f06fa0-0b14-4053-8cc1-f425b8bfc1ec" connectedTo="aaa81826-38cd-4fc2-9f0b-06e67a3a2725" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d40e7303-207d-4ab0-ad31-2ffeea79254b" value="2432.15">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c85efbb0-d7a0-4db1-aa6a-da37e284c8d3" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="e4a54381-03fa-48fa-b979-951adf4eaf50" connectedTo="0877e5ae-aa61-4ccd-9a86-c82081c53085" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a607d52c-5a6d-4d1f-aed1-36cb0754d702" value="309.927826">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0554e1e1-fd85-458b-9004-37f83d2923a0" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b9c8cd57-1e90-4f7a-bf0b-2e7e313f6624" connectedTo="0877e5ae-aa61-4ccd-9a86-c82081c53085" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="435f84d0-59f6-44f1-845c-90ef529ddbee" value="2689.79">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d896f490-cf53-461f-9fde-c7194873183c" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="740873b9-53c8-43ab-b099-a0b9d9b79781 0877e5ae-aa61-4ccd-9a86-c82081c53085" id="3eed45a6-6f73-43e2-be87-c8003dda0e9d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="6466aef3-a486-4fe6-86d4-7669efa50913 10f06fa0-0b14-4053-8cc1-f425b8bfc1ec" id="aaa81826-38cd-4fc2-9f0b-06e67a3a2725"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="5.755395683453238"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="94.24460431654677"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="4473.0" id="743c0932-e42a-41f9-934d-b5a79149b05a" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="10">
          <asset xsi:type="esdl:EConnection" id="02fdc172-bd7c-40ce-bd82-e96121e8c1dc" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba197c50-97d4-45ee-a726-446e8983338b" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d74b889-2e16-42a5-9c6e-08cfc87270f8" value="1147.24327">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="026a5564-ef76-4490-8483-d956a2eaf809 c78103e9-7f58-4750-92b2-7a4ba2bf1fff" id="24a90d50-3e2d-4bb4-a3fc-14231709482c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1d5a1ce4-7944-4f80-9ded-4cca972bb08c" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="c2304dff-9ec1-47c2-a47d-beb369270f04" connectedTo="b36856d5-73b8-4850-b0f6-854baf350625" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="18c64267-c21b-443f-8616-a12d13bfa182" value="723.940162">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7607b02d-9f96-4fce-aafe-615834073461" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6ec176bc-a585-4bd1-8d69-14dcc2244dce" connectedTo="b36856d5-73b8-4850-b0f6-854baf350625" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3a40cc6a-81af-4e65-9865-5c9d7b9a2016" value="57.7602212">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a5d73c9f-38d5-42fe-b53f-c884d9f75314" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="02ae3bd2-dcbf-4fed-9d28-fd2f3adab481">
              <profile xsi:type="esdl:SingleValue" id="cf9dfa42-4585-4c8f-b33d-5ff901c1d10e" value="394.123811">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fee25a08-7188-4f78-972c-bee1179a2c17" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="026a5564-ef76-4490-8483-d956a2eaf809" connectedTo="24a90d50-3e2d-4bb4-a3fc-14231709482c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="69d6036d-fb0f-4625-8ef5-4523bc14f69d" value="808.906">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f0f8cc29-d261-4b96-a1b6-531a20253b66" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="740873b9-53c8-43ab-b099-a0b9d9b79781 24a90d50-3e2d-4bb4-a3fc-14231709482c" id="c78103e9-7f58-4750-92b2-7a4ba2bf1fff"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c2304dff-9ec1-47c2-a47d-beb369270f04 6ec176bc-a585-4bd1-8d69-14dcc2244dce" id="b36856d5-73b8-4850-b0f6-854baf350625"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640302" scope="NEIGHBOURHOOD">
        <KPIs id="8908d19a-9254-4398-802a-c3bba5546304">
          <kpi xsi:type="esdl:DoubleKPI" id="44a71ba5-14b3-4522-95e8-16c31ef5d63f" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ac5969ff-0604-4101-9f55-85bb61418b58" value="422391.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cd436cd3-0159-4d18-8734-9ecfec15eef8" value="342.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e1e2318c-efbc-4a4a-9cac-c70408eab699" value="746.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="edb4a640-de5f-45fd-b151-36a1fdc0c0f2" value="17001.611311999997" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="181355ed-68f5-4cfc-b7cd-b3fb8b7f1071" value="6127.446502999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="75db4359-e9ee-43c1-9f4c-0ac4deebec34" value="861.642" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7aa6c045-42ff-44d3-be77-eee227accac0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="1942f08e-2f32-4f68-af9f-14cffb02cadb" value="2900.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="6dee32e6-87d1-4b01-9305-8b28ed60f9c4" value="s2a_b_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="16a36098-0a0c-4715-b1e6-e4db68ae4eae" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="216d5c1b-8378-45a9-beba-307c57f28748"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="4fdca262-35a2-4a69-b106-b9b1c859fa70" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="6d834311-a760-4644-8fe8-db19f1fd0974"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="369fe8fc-c48c-4079-9590-b889471fb99b"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="89026993-84a5-40d6-aef8-0546fbf79ca6" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="559">
          <asset xsi:type="esdl:EConnection" id="c80ef78b-5afb-49b1-89c8-7bfb844b8ffa" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="92d6de35-ccb4-41d7-a7a5-c6ee66c034d0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="920425eb-96eb-4a42-9cbc-e1b807b4d6c8" value="5812.12336">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="be7d90b3-697d-4661-a568-f54007add45f 2506aa79-7152-4159-9d38-7f083e727d17" id="d91e98eb-202d-49e7-b336-8d79b961d3c5"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="ae55b246-68ac-4def-9f2c-fc2701b571b9" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="81739635-126b-4d02-af3f-c1447cab6788"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="757dd797-e615-4663-8a1a-6c01e990f63a c5fb489f-0e3f-4d46-98e3-0e983ff874e2" id="f721a42a-5bc2-4951-83d1-139a29837490"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="be4db067-ee1f-42e7-afb1-b30038ca68bb" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="757dd797-e615-4663-8a1a-6c01e990f63a" connectedTo="f721a42a-5bc2-4951-83d1-139a29837490" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3b426c62-752d-419c-bc05-f3343fbe03e3" value="12353.8078">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5dce2f13-1765-4b13-9342-bb080f480472" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="c5fb489f-0e3f-4d46-98e3-0e983ff874e2" connectedTo="f721a42a-5bc2-4951-83d1-139a29837490" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="44c04280-0cc8-4d4b-ac30-a6c3c03390b6" value="4385.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8663b59b-b4bd-46d7-ae8f-a9282d9fd6f9" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="be7d90b3-697d-4661-a568-f54007add45f" connectedTo="d91e98eb-202d-49e7-b336-8d79b961d3c5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2f300066-459d-46ad-ac55-c77bd95fdab2" value="278.096219">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="477537ce-5d97-4670-9eb4-44e358155d18" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2506aa79-7152-4159-9d38-7f083e727d17" connectedTo="d91e98eb-202d-49e7-b336-8d79b961d3c5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="50438ffa-2718-4644-91b7-7102e036e757" value="5366.74">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="1.9677996422182469"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="98.03220035778175"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="812.0" id="edb33f18-91cc-43af-a526-d45d21da8e5e" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="8">
          <asset xsi:type="esdl:EConnection" id="8ec57a12-4293-401e-9007-7a6b81c42471" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="aa38454d-46e2-4623-a97e-d03a56bc60d8" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="57577982-5de1-44f2-9abf-1d334815ef24" value="315.323143">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4d01d9a9-ef93-47fc-80f7-4da10cf561a9" id="667d0f0e-0407-4e2c-ab59-f77ecf2a6674"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="fcb1f1d9-c198-4d0d-ba80-33d1be2c5f5e" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="347fc012-27e4-4e4d-967e-377379fe1a0c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f5e430ba-e7fa-4f04-9634-56548f37a219 34be0647-77f8-465a-81e9-db66161678d4" id="07ba6166-e982-457c-90bb-8e91e7938b33"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f9e72cb9-75e0-48e4-b927-c3c495ed186c" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f5e430ba-e7fa-4f04-9634-56548f37a219" connectedTo="07ba6166-e982-457c-90bb-8e91e7938b33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="684d1787-4ea0-4658-9e5c-2d609b2e3029" value="237.130071">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="280095f3-ff9d-4326-90c1-ba1c6e7a688a" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="34be0647-77f8-465a-81e9-db66161678d4" connectedTo="07ba6166-e982-457c-90bb-8e91e7938b33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="52886f04-948e-4a68-9516-3810de3c876b" value="25.6734409">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="cda03c5b-8d8c-4e9b-b66c-cbbc8811fd2d" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="6a1a010a-c346-4bd3-867c-1cc71d3863e1">
              <profile xsi:type="esdl:SingleValue" id="88d25721-1e7c-4597-a5b1-820df5756b2e" value="153.196023">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="760aa2fd-ded0-4b5f-99a9-94fe9a99a62b" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="4d01d9a9-ef93-47fc-80f7-4da10cf561a9" connectedTo="667d0f0e-0407-4e2c-ab59-f77ecf2a6674" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="88ce1db7-5da5-42c6-a817-6b24b92257c4" value="148.036">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640303" scope="NEIGHBOURHOOD">
        <KPIs id="34589c3c-d579-48be-ae49-0887d130528c">
          <kpi xsi:type="esdl:DoubleKPI" id="ade707b5-d4c7-4b3c-9597-937bb21646da" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f08bcc4f-36c7-42b4-9d20-988b83679efa" value="412550.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0d3e9df7-4157-4c29-bccc-0f044f7c5d4c" value="368.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f7663550-ec9a-42ee-8e00-adef352318a6" value="812.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c7fc5b56-0883-4533-8caf-037d89704c67" value="15260.811950000001" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3c273ccd-e7f3-4002-a323-7acf2baf27a2" value="10195.124465" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e19a519e-e191-4597-8e3c-2751c0627193" value="1834.1295" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1b41de3c-4981-46d0-939f-dac622bc3183" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="9e94708d-99ca-4432-9235-f63ef50294c3" value="2400.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="446488bb-4c32-44b9-b9ef-151dad1fd512" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="07c86e80-0fed-49ac-9c43-ab0400159dfe" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 d1a9a6b3-a285-49c6-b965-6e974593f4fe 6b738f09-fe2e-4663-8170-6565d5ee8751" id="6ca452ce-0e6a-4d3d-85b7-bae44cc850c2"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="1ff28017-ac9f-486b-965e-6744a7014cd8" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="69b41367-7294-4e05-8eab-9bfa423e6c27"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="1151fb51-5dde-4299-958d-2d0d8f8abd73" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="497">
          <asset xsi:type="esdl:EConnection" id="b4dd04e7-6787-4534-9bfc-2e3aa231af89" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4b21447f-c8e1-4233-9a06-6e44ff69579b" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="209437fe-417c-4340-ada8-89514607817f" value="9724.42619">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2c69dd4f-b5b5-4b14-bb59-721e4b7a93e0 d3f9cad4-fe10-4a02-9fc6-278f158087c3 d1a9a6b3-a285-49c6-b965-6e974593f4fe" id="c525928b-ae5e-47f8-ace0-da664810e8f6"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="59042ae1-5ccb-4052-a43b-62ae5054b506" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="edefc03e-c22c-4546-992e-58262c70b714" connectedTo="eb558700-a91c-43aa-b943-61bc5dc2caad" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="570c2bc1-b34d-442e-bd74-1961d8f15755" value="10747.5334">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="89b189a7-97c1-4107-ad30-e63150fdf1e7" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="842d501e-5a43-4eec-8d5f-957389b2d333" connectedTo="eb558700-a91c-43aa-b943-61bc5dc2caad" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="411e3b57-c7bc-4239-a03c-5b8151602efc" value="3936.1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0db29b93-af10-486e-8b00-366c3568d8bd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="2c69dd4f-b5b5-4b14-bb59-721e4b7a93e0" connectedTo="c525928b-ae5e-47f8-ace0-da664810e8f6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="84506867-ebca-4d89-94b2-78dcf0f54568" value="229.964883">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="61617400-cd25-461a-8a90-a1399f0dfe59" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d3f9cad4-fe10-4a02-9fc6-278f158087c3" connectedTo="c525928b-ae5e-47f8-ace0-da664810e8f6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="53dfbb15-28ff-43b2-8d1e-1f5c6e219729" value="4886.48">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f61257e9-ae61-4132-be3a-63cc11066139" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="6ca452ce-0e6a-4d3d-85b7-bae44cc850c2 c525928b-ae5e-47f8-ace0-da664810e8f6" id="d1a9a6b3-a285-49c6-b965-6e974593f4fe"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="edefc03e-c22c-4546-992e-58262c70b714 842d501e-5a43-4eec-8d5f-957389b2d333" id="eb558700-a91c-43aa-b943-61bc5dc2caad"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="0.4024144869215292"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="99.59758551307847"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="1423.0" id="30edece9-5930-4fdf-b9de-da8c4a9d13f0" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="6">
          <asset xsi:type="esdl:EConnection" id="95263bf3-a8c7-4fb3-9243-64f086a9895d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="57cc560e-531f-4dc5-8e9f-2863572dc00b" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8a7d939a-6a36-4b1d-943d-43898672169c" value="470.698275">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7430550a-bdb1-442d-8e76-dfcdddda9196 6b738f09-fe2e-4663-8170-6565d5ee8751" id="0edc2514-1a6e-4e31-8177-8af5ce41cbd7"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a520338e-5232-4dac-a622-e109f81a322b" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a679b03a-fb7c-4213-ac7e-c411d9aae5ac" connectedTo="40241056-9d31-4287-a24e-11b60ffa1167" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="340bc64f-b750-4bea-b64c-a60493e5b2ac" value="530.466337">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9fd3f381-6812-4a47-a5b1-75b286aa6c2b" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="043c3bb6-4287-4043-a39e-63e2c96fcdba" connectedTo="40241056-9d31-4287-a24e-11b60ffa1167" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bb523b09-2d6e-429d-9e90-02842fe868a4" value="46.7122135">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="74ed42f9-556d-4d73-a6f9-656c2d2ebe1b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="34b69886-75e4-4ee9-888e-464ea8e57d42">
              <profile xsi:type="esdl:SingleValue" id="6fd0e331-8bd2-471c-8e6e-b7c70e95712b" value="311.030823">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="aa022931-ba8a-42c3-979e-183fdc619da7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7430550a-bdb1-442d-8e76-dfcdddda9196" connectedTo="0edc2514-1a6e-4e31-8177-8af5ce41cbd7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fc4bf06c-e30c-4dfc-9130-9dde0b8143e5" value="215.228">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="74202472-0303-4e9e-b39c-982536e82f34" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="6ca452ce-0e6a-4d3d-85b7-bae44cc850c2 0edc2514-1a6e-4e31-8177-8af5ce41cbd7" id="6b738f09-fe2e-4663-8170-6565d5ee8751"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a679b03a-fb7c-4213-ac7e-c411d9aae5ac 043c3bb6-4287-4043-a39e-63e2c96fcdba" id="40241056-9d31-4287-a24e-11b60ffa1167"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640304" scope="NEIGHBOURHOOD">
        <KPIs id="84d36359-9cde-407e-b199-8102ff8ab09b">
          <kpi xsi:type="esdl:DoubleKPI" id="df68d7b9-6279-4427-b7e1-f04e264c7090" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="18abb7d4-d7fa-48df-86f2-15aab82758c6" value="683939.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8721df8e-31d8-4b61-a441-9ac4c7b69f21" value="394.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a030960e-5a38-46bd-9785-bf578348e00a" value="768.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="48a05459-0ae4-44fd-a753-d654d7dc4fe6" value="25118.94286" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="54fcf776-c04e-4942-9cd5-5ee7a3548953" value="25021.8569" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5bcf46d9-b42e-4667-a7e0-3bd99425942a" value="3970.7745" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="03bc2be0-f9e3-49b2-867b-3094c9127db1" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="bbfc7eb5-622b-442d-bc62-888940200ec2" value="5760.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="16061318-926d-4a90-9c04-55d61332eb15" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="42fe2b46-ae4e-478b-ad5c-4ad9b7d87c57" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 edd3c113-527c-41fc-9a8a-0630e6c76f4a 4f62c472-cea1-4d24-b65f-f433e33d6064" id="2fe4bfa6-72e2-4119-845e-f14ecd5eadef"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="61595813-f541-417f-9813-cb33ca340e00" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="f29f7663-c6b8-4eab-a976-8833c40a36ea"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="27b25370-6c92-4fc3-a889-511c237f4d97" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="725">
          <asset xsi:type="esdl:EConnection" id="04131be6-b5f9-4559-944b-843d8bbdb1ef" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="36065d45-0d15-4f6a-a425-3ae8d3112ae4" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d680f62c-b7ca-4f00-ac9c-70010dfa0901" value="13776.7752">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="74b99655-d925-4cfc-b120-a96aeda5283d 2462253a-e584-47d2-b0bd-15df435b2ab8 edd3c113-527c-41fc-9a8a-0630e6c76f4a" id="e596e619-b9ee-427b-bdf9-3cf0aa634014"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a9ae0a97-64be-4980-beff-c0a53a1a9cbc" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="8aa7b5d6-bba0-4765-86fd-0ff22290150a" connectedTo="da401480-831b-4646-a874-a3a363f3b02a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="72a4878f-5bfa-4734-9e4e-ed98046560b3" value="15567.7519">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="02d342d3-3f9e-4f11-83aa-4b59f6b7f33b" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="d4f0effd-e77a-427f-bb50-804bdb06d8b8" connectedTo="da401480-831b-4646-a874-a3a363f3b02a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a77dd1e2-da23-4016-a397-7d18f6282eda" value="5540.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="21bc26c8-d6bc-43a2-a6d4-778157fd8b43" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="74b99655-d925-4cfc-b120-a96aeda5283d" connectedTo="e596e619-b9ee-427b-bdf9-3cf0aa634014" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bb89daa4-a6f5-4273-9101-7249cacd6545" value="301.724421">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e7184049-fd32-4dd9-add9-32b8152c2f43" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2462253a-e584-47d2-b0bd-15df435b2ab8" connectedTo="e596e619-b9ee-427b-bdf9-3cf0aa634014" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2c9cedb8-bade-432b-bebe-e992547984ae" value="6934.19">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e3640638-a67d-4f04-8fb2-8d22d677ee47" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2fe4bfa6-72e2-4119-845e-f14ecd5eadef e596e619-b9ee-427b-bdf9-3cf0aa634014" id="edd3c113-527c-41fc-9a8a-0630e6c76f4a"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8aa7b5d6-bba0-4765-86fd-0ff22290150a d4f0effd-e77a-427f-bb50-804bdb06d8b8" id="da401480-831b-4646-a874-a3a363f3b02a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="8.827586206896552"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="91.17241379310344"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="21553.0" id="e300716a-9387-47fc-8242-c7c927a11d55" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="58">
          <asset xsi:type="esdl:EConnection" id="8d9a1aa9-e78e-4226-83ac-1e48bec1282c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d98b9554-cca6-47b4-8e84-54a2f2b4a6a0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="306bf324-d96e-4022-9bb7-9f90ffe57c10" value="11245.0817">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e4cd8bdd-5bc6-4c01-a370-aa5f5c9bb1a2 4f62c472-cea1-4d24-b65f-f433e33d6064" id="422ae3a5-d6fb-4c80-8fa3-f0668d81655b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="74387daf-3a75-48b0-9f47-ea9dc91ec2bd" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="db354f45-cad6-4eb3-9466-1dd3aaed3c67" connectedTo="9960510f-b922-40b3-bac7-c84f8dff0bac" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="484d27e8-0b21-4093-960f-4a1acbc32c04" value="3821.56393">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="42fb2d46-69d5-40ef-ad7e-28a30f4077d2" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="50f3d861-5b49-46c7-a669-37e0d9493abe" connectedTo="9960510f-b922-40b3-bac7-c84f8dff0bac" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ba65a8b0-c1d4-4351-aca4-de5128e192c1" value="189.627024">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0c302382-da96-49db-9d98-f47ce97b9179" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f1b25e55-29a7-42ff-b4bf-fe6d39f74ef9">
              <profile xsi:type="esdl:SingleValue" id="8d8ef011-222f-4ed4-b075-b8ef20627add" value="1810.93035">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="cdf6e756-37a0-458e-99d8-27101c001b4b" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e4cd8bdd-5bc6-4c01-a370-aa5f5c9bb1a2" connectedTo="422ae3a5-d6fb-4c80-8fa3-f0668d81655b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4a0cdc7e-436d-4014-9806-d2c2909cfe55" value="9578.85">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a74bcf89-463b-4236-8a78-1d2bbb92fb94" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2fe4bfa6-72e2-4119-845e-f14ecd5eadef 422ae3a5-d6fb-4c80-8fa3-f0668d81655b" id="4f62c472-cea1-4d24-b65f-f433e33d6064"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="db354f45-cad6-4eb3-9466-1dd3aaed3c67 50f3d861-5b49-46c7-a669-37e0d9493abe" id="9960510f-b922-40b3-bac7-c84f8dff0bac"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640305" scope="NEIGHBOURHOOD">
        <KPIs id="8eff810a-fa8b-4497-9ace-4794140e6041">
          <kpi xsi:type="esdl:DoubleKPI" id="45c1abcb-fbd0-42f8-b040-ed9a1b3e9b58" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="989959a1-66f6-42bf-92c9-a0ed0b0eee08" value="339935.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2ce36e81-53ca-4bf6-ad70-3a877aaf0903" value="314.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bdb2bfd6-fbfb-446d-b227-98fe154b71b1" value="749.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b777998e-20aa-429a-90ed-bc1035ea9c3f" value="15128.045739629999" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="94e84d29-7514-4d04-89ab-83e716890e1b" value="5066.814520999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="65400282-93a7-42be-8932-35b05ace698c" value="680.3835" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a07ea79e-f803-406a-8193-f763d3302611" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="48ce3c3e-dba0-4cb4-bc1b-7e9655598df6" value="2400.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="9cd4730a-11ea-4cb2-8075-30e04f744343" value="s2a_b_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="06278e0a-4a5e-45ff-8f22-e4d37d7eca2c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="9616ec56-0d20-4329-b649-7a66c5b64fe1"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="df2c3218-4dba-430f-ae05-30e5912496ab" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="3d0fc78e-a61b-4221-9a0c-48759668eb4a"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="54991863-8ee1-4e0c-aefd-f656c13f3f1c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="bc14cc2c-a69a-46a1-a197-fd6b34e6a957" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="453">
          <asset xsi:type="esdl:EConnection" id="234c0e78-a294-480e-9a0d-af3a350552e3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="985a2b20-9a97-45a0-b143-a0a690acc957" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f13f9ed6-8bdb-48a3-be73-9b46202c117c" value="4903.75869">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4f4c5d95-96ef-4c2f-970b-628189518b9c 7e0002f9-6b94-4d99-8053-be7c644b95ef" id="43b548cc-c702-40c8-90f6-a305b3bcb600"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="bb5fbf51-649d-448e-bede-9c5e51815445" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="19fbd4db-d48c-4c30-b0b7-6fbc9bbd8d8e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="dfe1e658-3c72-4b09-9cec-4addd883850d 5da5df4c-213d-499d-8cd6-a6a9bad742be" id="61f5ddfb-8b1a-435a-a8fb-d19d618cc747"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="39ed4593-1cd9-4d33-ac06-cab0358381a2" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="dfe1e658-3c72-4b09-9cec-4addd883850d" connectedTo="61f5ddfb-8b1a-435a-a8fb-d19d618cc747" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2a5aec9a-266f-4a4d-9c0a-90ecd4daf526" value="11472.1708">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c6673bc4-6290-4609-a55b-2c4b9458d95d" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="5da5df4c-213d-499d-8cd6-a6a9bad742be" connectedTo="61f5ddfb-8b1a-435a-a8fb-d19d618cc747" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="785e596c-4160-4bd9-85ff-057cc807f1cb" value="3654.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e152d1cd-1296-4188-a897-176871e9f5be" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="4f4c5d95-96ef-4c2f-970b-628189518b9c" connectedTo="43b548cc-c702-40c8-90f6-a305b3bcb600" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4902d3db-e4d6-45c8-b7a9-f7ff9538a010" value="268.476861">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0cf22838-291f-4690-8ead-dcc2a725370b" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7e0002f9-6b94-4d99-8053-be7c644b95ef" connectedTo="43b548cc-c702-40c8-90f6-a305b3bcb600" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="59585d92-1de5-4dd8-a4dc-daabc443ca64" value="4486.3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="1.1037527593818985"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="98.89624724061811"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="31.0" id="705881ba-8f26-4746-a2ef-174d2924f10e" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:EConnection" id="a02bfcba-b117-4fa9-a462-2dbeae5de3d5" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ccf6680b-e160-458f-8e36-a1d76eaea970" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="eba37f79-1db1-4c4c-b6fe-142eda66cade" value="163.055831">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="13be4429-44cc-4f00-a54a-3d63e5374c86" id="f49dec11-ffca-4222-93e9-045d55eb1fc7"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="08986ad1-bcf9-41f9-b89e-51852c0eed2c" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="20cad579-bbd0-45fc-be03-f0afc58202c7"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1a0fd69e-f56e-4d16-ae04-6a866b1e4262 77d95ff4-5f40-43ea-9d69-6fd1042913b1" id="d838e707-abb2-48d2-bfdd-35071b700042"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c712d4e9-4e0d-4298-8659-30637fe15a93" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="1a0fd69e-f56e-4d16-ae04-6a866b1e4262" connectedTo="d838e707-abb2-48d2-bfdd-35071b700042" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b3c77980-9f6d-4e95-94c1-de7b659e837a" value="1.35785964">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ce434bdb-00e5-4aa7-8efb-f9968115cae2" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="77d95ff4-5f40-43ea-9d69-6fd1042913b1" connectedTo="d838e707-abb2-48d2-bfdd-35071b700042" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="40bcf605-9525-434c-a5bf-cd72d03587fd" value="0.117079994">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="6e09e173-c6d4-443e-904a-dd3ab63c5f6d" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e33e9575-f62f-471e-b12c-eca1f3a33e70">
              <profile xsi:type="esdl:SingleValue" id="8c22c3e9-7a18-40b8-9a16-4ad0dcf1a21c" value="3.70212317">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1186fb8d-3ea0-4528-b7fc-ab3f2d46fbc6" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="13be4429-44cc-4f00-a54a-3d63e5374c86" connectedTo="f49dec11-ffca-4222-93e9-045d55eb1fc7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="96dc54a5-281c-41b7-b8ac-08729dbc5702" value="14.074">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640306" scope="NEIGHBOURHOOD">
        <KPIs id="b3152ded-e79d-45e1-8ab9-1c22937a7895">
          <kpi xsi:type="esdl:DoubleKPI" id="67de488b-18e8-4454-a3b0-0cf234910d06" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c76d39fd-7cab-4a99-959e-e5a846717876" value="590611.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6be05f59-7906-4495-a62b-b301a631997f" value="377.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="81812d5b-3212-4ff7-b502-b9f648baadc2" value="926.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5815ca6f-8786-477d-b8df-7b18580b9f1c" value="21622.8096812" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="99799cb3-8bfd-451c-ab52-d5ad8d03b96b" value="13533.609957" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7ed48697-a497-4551-b3f0-2f5a10c0c2c2" value="2251.851" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2c44db42-04ec-4edf-9417-a52d8b2f3396" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="c77bce20-d0c1-40d1-95e9-fcdd9a802909" value="2500.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="e8b8d14e-3d47-46d1-b510-910059f386c4" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="5d94bb61-1df5-447a-9032-c7404dd5ab10" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 b911d060-6fdb-4d27-8010-46dd7c4cdd71 65cd1a62-99a9-46b7-bde8-63ccf51aeb02" id="638feae5-042c-4182-be3f-f661972e547f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="1a5c7250-4f7d-4ac7-9530-ca0a94d23747" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="9a59b175-009c-48a3-a930-0e923616de62"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="2271bd5a-888d-480d-9da8-e75bff9c96d1" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="634">
          <asset xsi:type="esdl:EConnection" id="ea25ea8d-9ee7-459a-bef6-9e3f52473b9c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="75770387-f1dc-4fc8-b909-b1832a40d8ab" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d61b23c2-6ec4-4243-9f9c-522fa02dbaea" value="13285.3451">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="91964916-f8c6-4504-88cb-7f837b35880a ff6556ee-810f-4ab5-ac41-aea4e7c17f12 b911d060-6fdb-4d27-8010-46dd7c4cdd71" id="4c3fd472-ac60-4f9c-88fa-2da56a3b4c81"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="63e83322-5c6b-4b01-b275-9931d46424ed" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3efe7983-b08f-4096-a817-7bbb7dd1f062" connectedTo="0c537dec-8f9c-405b-9b51-312a31b7b5d2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="db21c25c-b2b0-47a6-b8ce-8b393e620a9c" value="16462.0565">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3b09f404-16f2-4bc8-8a84-20e996a87d34" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4e51f26e-4706-43b7-8bb5-2dfbf92441f5" connectedTo="0c537dec-8f9c-405b-9b51-312a31b7b5d2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5cea16c6-6a38-4ec4-bfc0-8393182ea59b" value="5130.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8372b145-5d08-4d52-9546-f0e6ff63584e" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="91964916-f8c6-4504-88cb-7f837b35880a" connectedTo="4c3fd472-ac60-4f9c-88fa-2da56a3b4c81" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="07780953-1bfb-4c37-ac29-e21014492d84" value="443.243537">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="11f3c352-fd87-4319-aa20-a039a312d451" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ff6556ee-810f-4ab5-ac41-aea4e7c17f12" connectedTo="4c3fd472-ac60-4f9c-88fa-2da56a3b4c81" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="997388b0-9a55-4484-a32a-66a0283dd4ad" value="6201.54">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="9ecbbe10-1a88-499e-a5b8-aa54059730b9" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="638feae5-042c-4182-be3f-f661972e547f 4c3fd472-ac60-4f9c-88fa-2da56a3b4c81" id="b911d060-6fdb-4d27-8010-46dd7c4cdd71"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3efe7983-b08f-4096-a817-7bbb7dd1f062 4e51f26e-4706-43b7-8bb5-2dfbf92441f5" id="0c537dec-8f9c-405b-9b51-312a31b7b5d2"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="1.1041009463722398"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="98.89589905362776"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="494.0" id="b997b8c0-58ab-4362-8009-2c67ffac437f" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="10">
          <asset xsi:type="esdl:EConnection" id="c92bf2e1-d4b0-44ea-bf4c-9efb649d2ecd" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="70faf4aa-5c11-4d99-b039-6ff203600da9" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="52dc35b9-6155-4917-9d85-87b7fc98a137" value="248.264857">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="09b583ec-492b-4e21-acef-171f00697f0d 65cd1a62-99a9-46b7-bde8-63ccf51aeb02" id="5f7f916c-e166-47cf-9fb8-708606c228e1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="08a196dd-fb83-4bc4-8bb7-0dce777f6dea" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="50799b1a-cf58-49b7-aede-88bb29bebf0d" connectedTo="1e1a8b47-2241-4c1f-9cb9-b749560756eb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1220f741-9590-4f4e-a9c3-24b36c36482e" value="28.4874549">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e57e4210-13a2-446b-bfc1-62cc9824787f" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3f9352d4-471d-40e2-b9dd-89747fea5a62" connectedTo="1e1a8b47-2241-4c1f-9cb9-b749560756eb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="30d45f93-7742-410b-ab5a-54574239b840" value="1.86572636">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="93276f7a-6cec-4896-b8fa-db4d323b169b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="a1939534-8da6-48d2-b88d-84612e413344">
              <profile xsi:type="esdl:SingleValue" id="05c0b6a8-e348-404f-912b-4abe550d0720" value="58.9496802">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1b0eee13-2ece-4c82-b914-3ff7a2f44f26" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="09b583ec-492b-4e21-acef-171f00697f0d" connectedTo="5f7f916c-e166-47cf-9fb8-708606c228e1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="119694d9-73f2-4413-80f9-804afc095a40" value="224.276">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="5b4eaee9-405e-450c-a703-27ab409bc6da" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="638feae5-042c-4182-be3f-f661972e547f 5f7f916c-e166-47cf-9fb8-708606c228e1" id="65cd1a62-99a9-46b7-bde8-63ccf51aeb02"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="50799b1a-cf58-49b7-aede-88bb29bebf0d 3f9352d4-471d-40e2-b9dd-89747fea5a62" id="1e1a8b47-2241-4c1f-9cb9-b749560756eb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640307" scope="NEIGHBOURHOOD">
        <KPIs id="a0b7f0a8-0fdb-42e3-baa6-fe5864b2a569">
          <kpi xsi:type="esdl:DoubleKPI" id="a70aaaed-019c-4797-b865-a13f442bea92" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="52580341-565b-4348-af02-e06b0659d621" value="649480.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c800e72d-4526-4abb-8f98-29fd71fc1132" value="379.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="77d73090-cdc0-44df-92dc-78b1c1eace76" value="905.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6a39e3ca-c516-4a62-8715-dafe7f896e41" value="23960.894140999997" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8c0f404b-9d4a-4f8f-885e-ba6e10d7dd18" value="15231.780597" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b4d832fc-dfc0-4a83-af30-a66cd62f4249" value="2665.8450000000003" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b7e133e8-b8e9-402b-851c-ae12f85a41a0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="4f37f899-e0cf-4694-a2f0-bf43dd2eee99" value="3830.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="75f8bc94-807c-4e15-9840-265b2db9c7b5" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="c8e09e2e-f182-46cd-b4e9-442b834eb104" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 8ba463ed-8159-4848-a6e7-e1a49548be84 b30909b0-f04f-41cc-a0ba-7553a4e19b4f" id="ff40f5bb-ade4-4a5b-a91d-cfbb9f6cac2f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="a5532b5f-1950-408b-ab9b-0389bc7fb6df" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="cf6f4aec-3761-4bf0-b11f-5ccb409fe625"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="32d5bcc0-ad06-492e-a3ec-44579c9cfcc9" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="687">
          <asset xsi:type="esdl:EConnection" id="4b9b40ff-2ea5-4de0-bbbb-20d016b9b687" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="4e8e5dd9-90a2-4bea-b5c6-9ce37d3ef89d" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ad64c6d9-f927-4e1b-ade3-5894fe26421e" value="14412.0936">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="215f5ad9-a867-485a-abcd-f2bc4a14666e afdd8aef-db74-45d9-a162-76baaec75c78 8ba463ed-8159-4848-a6e7-e1a49548be84" id="ea2e0cd3-a96b-4d3a-bc96-826d86da6b9a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="20c8d468-6028-4fc7-a734-ce1235731af8" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="74ae2d5b-0b03-4b3a-9d7d-2f4e32bc0c02" connectedTo="52c00bbf-4065-464c-8233-726ba52dd83b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f1af30fc-44be-4625-a4f3-976ec225300a" value="17861.4418">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="daaeda07-6309-46fe-8413-8f96a5dd69d8" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="1ea37a89-2130-413a-8f22-1ebb794aabc1" connectedTo="52c00bbf-4065-464c-8233-726ba52dd83b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4983fbd0-ec01-4834-ab39-13b8bbe36996" value="5556.9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="181792ae-c320-4d06-b8e6-d066e9771b4f" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="215f5ad9-a867-485a-abcd-f2bc4a14666e" connectedTo="ea2e0cd3-a96b-4d3a-bc96-826d86da6b9a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="965d40b0-c8d8-4eba-b98f-22373c7df8e9" value="476.751971">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4169c13d-e21a-47cb-bed4-d19bffc73080" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="afdd8aef-db74-45d9-a162-76baaec75c78" connectedTo="ea2e0cd3-a96b-4d3a-bc96-826d86da6b9a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="676a6c72-770e-45ae-8f0e-bde638eb4311" value="6747.12">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c49b5e02-1ef2-481d-84d6-3c1b23e77f71" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ff40f5bb-ade4-4a5b-a91d-cfbb9f6cac2f ea2e0cd3-a96b-4d3a-bc96-826d86da6b9a" id="8ba463ed-8159-4848-a6e7-e1a49548be84"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="74ae2d5b-0b03-4b3a-9d7d-2f4e32bc0c02 1ea37a89-2130-413a-8f22-1ebb794aabc1" id="52c00bbf-4065-464c-8233-726ba52dd83b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="2.4745269286754"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="97.5254730713246"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="3930.0" id="9cd594dc-3e2b-4fdd-bf1a-e8fc569d1d2d" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="16">
          <asset xsi:type="esdl:EConnection" id="44f863a6-9e31-4c96-b5d6-5ae01264d8e4" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1b85905d-dfdc-4bdc-83b2-684bd45d1255" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d35dfc84-0acf-4e27-a975-b67b2b1dd7bd" value="819.686997">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="fef1c153-1e4b-4c9d-bee3-aeb57faf2a04 b30909b0-f04f-41cc-a0ba-7553a4e19b4f" id="58dd3e7b-59be-49cf-bed6-c44670c8253e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0ab15159-a704-4a11-86fc-9aa951547ae9" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="d293182c-a557-4c7e-aaa3-fbc8da8b1145" connectedTo="160b76bc-72b4-40bb-90ec-cdd4ad8c79e8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a7e631f0-73b9-4e4c-9e61-dd5c5c4ceaef" value="515.748492">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5bab4aac-acd1-4cd6-82c4-e21eef95bead" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="2c5ec44e-a2be-4d18-ade3-0b7aed7f8d2d" connectedTo="160b76bc-72b4-40bb-90ec-cdd4ad8c79e8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8bacd636-8f5a-40f0-8712-71180f6ee787" value="26.8038492">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a8138820-3c5d-4d87-872c-271836a91853" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f3f8ecb4-0ec1-456d-b814-9bd0b30b7064">
              <profile xsi:type="esdl:SingleValue" id="3a54dc48-eb06-43b1-9f4e-0e343ca9fe2b" value="109.660923">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0ee89093-0421-4e68-ad06-223b9bed2ff6" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="fef1c153-1e4b-4c9d-bee3-aeb57faf2a04" connectedTo="58dd3e7b-59be-49cf-bed6-c44670c8253e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="82ad7fe3-d75b-4294-a463-e4d9d6101e8b" value="627.95">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="1e25a8ff-6835-404e-8a69-490bd19cbc83" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ff40f5bb-ade4-4a5b-a91d-cfbb9f6cac2f 58dd3e7b-59be-49cf-bed6-c44670c8253e" id="b30909b0-f04f-41cc-a0ba-7553a4e19b4f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d293182c-a557-4c7e-aaa3-fbc8da8b1145 2c5ec44e-a2be-4d18-ade3-0b7aed7f8d2d" id="160b76bc-72b4-40bb-90ec-cdd4ad8c79e8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640308" scope="NEIGHBOURHOOD">
        <KPIs id="e116a5e6-f054-42af-9552-d1621f0fc212">
          <kpi xsi:type="esdl:DoubleKPI" id="d2a1f413-bf15-401d-919c-abe40f9582fd" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="03e33701-aea1-4c8b-aca0-dc40db80f7ef" value="394916.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1d77d2c3-960a-4b5d-9e30-ebee6eb43151" value="364.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="abbe48f6-f4f0-4806-84a6-97ee73916462" value="791.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="50c8cb7b-2852-40af-b5de-58d0e5963003" value="15015.523256769999" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="21bb8f69-5917-40c0-80fe-6695bd5d650b" value="5408.431226" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cad7492d-fe93-4db8-a3a8-de1df362bbca" value="747.741" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3559cbe8-2f89-4adb-8d57-de09aa73e72e" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="24b6de9d-6ee1-4384-9c32-ac4a5dcc4894" value="1600.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="2870a6ef-6aaf-474a-92f2-c628b0623cc6" value="s2a_b_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="60e19016-dc21-42de-af22-0b98b36dff64" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="77dd78f2-49eb-4027-9ef2-a7a561777930"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="79910525-94a6-40d4-ac8e-b2ba41fcfc59" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="28f27a07-a26a-4196-b2b2-8f2f1c1098e5"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="178ca646-ed82-4694-be87-d12b61c3b13a"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="b18204bb-40ce-4dc7-903f-7092a5df748a" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="498">
          <asset xsi:type="esdl:EConnection" id="66da8d37-1e4d-49e9-a3e7-c802265c76d0" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9aa5f531-48ed-4caa-a956-d2c64a75c721" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="314e365b-2dc5-4aa9-8e22-120a62043b96" value="5248.91926">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d52ee2c5-4df6-4674-80a7-4995b48b70d6 820dfb66-face-4f54-897f-39e6721b6e81" id="0309c707-df7d-4be8-a569-ce9716bf414a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="3750f6be-6d98-4e5b-a617-79fb46516707" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="13c02f7b-b317-4f48-921e-a3c8dee037aa"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="71839aef-01b0-49b8-b4fa-628e9c9140e3 2a3fbd50-6828-4dc5-9f8d-f0ef9365fa1d" id="8547e6d4-1f1a-4aa9-ba9c-3358ee4effd7"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5c79cef0-07ed-4a3f-a512-e2616e6c155a" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="71839aef-01b0-49b8-b4fa-628e9c9140e3" connectedTo="8547e6d4-1f1a-4aa9-ba9c-3358ee4effd7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c5a88dcd-b893-4acf-8491-1cdcf9bcd947" value="11041.6365">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d898b8c7-ef3f-4261-92d2-89d9f56e0d0a" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="2a3fbd50-6828-4dc5-9f8d-f0ef9365fa1d" connectedTo="8547e6d4-1f1a-4aa9-ba9c-3358ee4effd7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a6e40ded-41e7-4ed6-9533-daa82e85f4b9" value="3972.2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8516f164-f1c7-440d-ae2d-2453de085cf9" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="d52ee2c5-4df6-4674-80a7-4995b48b70d6" connectedTo="0309c707-df7d-4be8-a569-ce9716bf414a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e0c1e3b0-9d43-4772-9897-cdd960ebad54" value="239.351293">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3b813ba2-4213-4302-83b0-0daad249ce8b" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="820dfb66-face-4f54-897f-39e6721b6e81" connectedTo="0309c707-df7d-4be8-a569-ce9716bf414a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="287538c7-aa52-4302-ad0f-69ad079e16ba" value="4861.86">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="11.04417670682731"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="88.95582329317268"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="26.0" id="c781aed7-380a-4d46-950d-9d0e41183bb8" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:EConnection" id="4fc67430-060e-4a09-841f-3ac6ff4c2ac0" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="79c321fa-6203-42d7-83b0-b37ab3ac392f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="91020b5c-83f0-45a8-84c8-4a6deaee32d8" value="159.511966">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="cfe94adf-5b59-4b33-aac9-4b21f5e83d6c" id="4c134793-c2c0-43ca-8b82-787ddc34341c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="7aa932cd-64cd-4e32-a79a-7b20d82b29c0" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="238c2537-bc4d-4b08-a0eb-44c4d6d489f1"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9700402d-c74f-4770-8a3d-905a9bae83d3 d98e0f68-dae2-405f-a8c6-3d8c3b4e8987" id="44e68d04-e5e2-468e-b95f-c9390fe9206d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a2651840-0203-40d0-9519-c668551a557d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="9700402d-c74f-4770-8a3d-905a9bae83d3" connectedTo="44e68d04-e5e2-468e-b95f-c9390fe9206d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="05c2c077-518d-4058-96be-2bcf408e83c0" value="1.58856064">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="532d869c-c96d-44b8-ab5f-b8d208f3e82a" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="d98e0f68-dae2-405f-a8c6-3d8c3b4e8987" connectedTo="44e68d04-e5e2-468e-b95f-c9390fe9206d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="da291743-0c09-4deb-8d95-295fb3fb22a8" value="0.098196124">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="499ef334-93a2-45df-a31f-532915ef1a83" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="13c5481d-b33e-4330-892b-6a0f4551d39a">
              <profile xsi:type="esdl:SingleValue" id="e696384b-5d5d-4cf6-8cb4-cd27a0ffd538" value="3.10500653">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6c7646b0-b1c8-492c-86d0-646c4ed0b97c" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="cfe94adf-5b59-4b33-aac9-4b21f5e83d6c" connectedTo="4c134793-c2c0-43ca-8b82-787ddc34341c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7c4116c1-2a09-4d35-8c78-3d3e7ea1ae6b" value="11.804">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640309" scope="NEIGHBOURHOOD">
        <KPIs id="9bbb472f-b50f-4dc8-b055-a13cf7131b65">
          <kpi xsi:type="esdl:DoubleKPI" id="0f169ccb-5d60-4218-8617-51f4fd958279" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="057a242e-10a5-4d3c-951c-7fef3113fc2a" value="96303.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a5872343-c9a0-4830-96a8-9ce6a7824f35" value="331.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="721e501f-f4e8-480f-bd39-7106e7014714" value="598.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ef1ff5ac-5668-4f30-b982-9ccd954132a3" value="4409.32944" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7cac5bb0-0b2d-40fe-bbac-dc7c52284f16" value="6475.8211169999995" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2c6f3898-1550-41da-83eb-7d760ea9aed3" value="1211.2625" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ca4d5117-bfbd-49aa-9cf0-38c7bcf1d12c" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="858d2bbb-03c8-434b-b382-da58b98cae45" value="4580.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="c5d35421-422f-41c9-83be-af6e8da7d5f7" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="6dc46b48-fe6a-4237-8b51-c82bedce91aa" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 c34eca9b-fcba-4abb-98d3-abc2841134fd fb890326-5738-4a62-9320-005ec888fb29" id="935e6354-9a9b-4431-859b-9bbed23ab2d3"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="206dbacf-e889-4cf5-98b8-7ad307a255e4" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="3a26ee7c-46f7-4445-b99d-bc2454c2957f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="dd13d336-862e-4c76-a178-99e434c50cf2" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="34">
          <asset xsi:type="esdl:EConnection" id="82ade037-b526-4013-b68e-4178c34fad64" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d63fbb34-0be4-4c10-8c69-78758a5843a9" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ce347510-9690-4a2c-91fc-285295b1e850" value="830.272187">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="fc24f644-0888-4079-8634-18aa1d47c130 c95c2153-6771-4980-bc0f-999f9457259b c34eca9b-fcba-4abb-98d3-abc2841134fd" id="ef0e9640-a664-42ae-95a8-7db5334cd467"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1dfd877b-7ad4-4ab6-919e-ff8f4d958ff3" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="dbdd516f-5547-4f9a-b5ff-48f39fc39c5f" connectedTo="5d6bbcf1-2c65-48a7-96d3-2cdd00c9b791" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="61128dc5-fd9f-4e5b-9cbc-5bd6c5b888be" value="1270.20772">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a5b2e868-d4b4-4c3b-822e-ebb4625c620a" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3b800490-5d6d-4aff-ae37-041079697bec" connectedTo="5d6bbcf1-2c65-48a7-96d3-2cdd00c9b791" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e7c8fd67-0cdd-454f-8af7-4d2db7121ed5" value="311.5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="84102ba2-dcc3-414b-8f11-a75fa878d4d3" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="fc24f644-0888-4079-8634-18aa1d47c130" connectedTo="ef0e9640-a664-42ae-95a8-7db5334cd467" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f2398e56-c57a-4ce3-919d-552beb73b6ac" value="40.2285911">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d545da2a-e6cf-4d3f-829b-63a07075e404" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c95c2153-6771-4980-bc0f-999f9457259b" connectedTo="ef0e9640-a664-42ae-95a8-7db5334cd467" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9c8fa8dd-2c20-41fd-8b93-ec490a0f3630" value="318.62">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="57ad612b-4ab3-4bfa-9522-270537089286" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="935e6354-9a9b-4431-859b-9bbed23ab2d3 ef0e9640-a664-42ae-95a8-7db5334cd467" id="c34eca9b-fcba-4abb-98d3-abc2841134fd"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="dbdd516f-5547-4f9a-b5ff-48f39fc39c5f 3b800490-5d6d-4aff-ae37-041079697bec" id="5d6bbcf1-2c65-48a7-96d3-2cdd00c9b791"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="5.88235294117647"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="94.11764705882352"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="16425.0" id="cb52bde7-5e23-42f8-aaeb-4aa62409e3d1" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="39">
          <asset xsi:type="esdl:EConnection" id="c4b7f68e-c24a-4928-aabb-a129621dbed1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f2644a06-30f5-4707-9768-ee779cb7fe07" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6baade1f-fe98-45f5-8b36-5fbc1eef2e0c" value="5645.54893">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="eaf37078-8606-4cec-8f99-53bdeba9280d fb890326-5738-4a62-9320-005ec888fb29" id="ab0c2164-679d-490d-a3a8-41ec9c3c7284"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2c0bbb52-be76-48f9-a718-74b084de1e95" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="2a3f07e8-2635-4b79-b9df-8f425c6825be" connectedTo="1c508bff-410a-4c83-8833-b96fbaff3dc2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1684dac0-7a6f-47b2-b645-93b344814313" value="2755.63515">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="da854f6a-a810-4586-af69-4c7c2623fdc2" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4a257a5c-c553-4a60-b5bc-d6a22b192444" connectedTo="1c508bff-410a-4c83-8833-b96fbaff3dc2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="720e2c67-86f9-46e7-af0d-6e7563a1dbac" value="71.986572">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b68b6c5c-d6e6-4ea4-a3ca-a1ccc02ce200" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="55a43053-a20f-4a79-94c9-cb278650db8e">
              <profile xsi:type="esdl:SingleValue" id="3e9b37ca-2d6c-4b0c-a524-8f5d677f74df" value="982.536132">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e4deaf09-a3d5-441f-8c10-d00870e0e56e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="eaf37078-8606-4cec-8f99-53bdeba9280d" connectedTo="ab0c2164-679d-490d-a3a8-41ec9c3c7284" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7933ead8-7e09-4b49-89de-7cc52462aefb" value="4554.322">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="17e41098-8d0c-47e3-a149-b8cda1c48fd7" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="935e6354-9a9b-4431-859b-9bbed23ab2d3 ab0c2164-679d-490d-a3a8-41ec9c3c7284" id="fb890326-5738-4a62-9320-005ec888fb29"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2a3f07e8-2635-4b79-b9df-8f425c6825be 4a257a5c-c553-4a60-b5bc-d6a22b192444" id="1c508bff-410a-4c83-8833-b96fbaff3dc2"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640400" scope="NEIGHBOURHOOD">
        <KPIs id="fb9a8051-33e0-4833-9234-4b7c4784886d">
          <kpi xsi:type="esdl:DoubleKPI" id="dc1fb4fa-568d-4f8e-b035-6495d8179f6e" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7c7b7d42-a67d-4249-8c38-9f151b89f14d" value="486261.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d06e4fd9-07f3-4f27-8776-3b181f0549ef" value="356.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9fe8c99e-f733-43c3-a7f6-8ea6ff476762" value="858.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="afe1d857-9580-4d1c-86be-63614f86a046" value="19168.426655" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="15563867-d241-4428-8022-505f9aa80bdc" value="13007.03118" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cbc11e9a-1c40-409c-a96a-cac79e8b64e1" value="2169.5205" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fd0bab31-d7ad-420c-9059-12923101757d" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="72649fe3-51f9-432b-ba1e-495857356ed3" value="1600.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="72498e42-14ec-49f3-832f-2c2eb1e9cb28" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="73f8a7a7-6903-4300-a5bc-20c2ede35068" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 84f05885-1b1b-4e62-a6a5-2adce4e95761 135bd7e9-2948-4755-90af-012435c6bd8d" id="ebbbb173-f2e3-4c8d-af40-bc08349c303d"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="d06b90e2-0fe8-485b-a1f4-ae3388d9642a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="d55fd3be-e274-4b2a-97b6-551b1df024dc"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="cf8d0d5a-ce21-4bdb-b1fe-487b0455ea32" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="531">
          <asset xsi:type="esdl:EConnection" id="52da6115-742c-457f-abe4-ccef7f1ad80a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="5d0e97af-493c-45a9-9514-18d79721bf34" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="595a4706-8e00-4cc2-9001-b25ef99f4dd6" value="11420.6764">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a08496cc-698a-4c35-a039-b44f603a8cc5 02d82870-df70-4d1e-8296-028c1add5567 84f05885-1b1b-4e62-a6a5-2adce4e95761" id="0c322bc8-851d-404a-a9d3-34da23567844"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="99aaa121-f6f1-4129-831d-fd709f34663c" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="ca8d04ba-41f0-4f03-a8de-c60a203e3670" connectedTo="5f8b61d6-f202-4b93-8975-f7348ff14abd" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="16ecd22e-ee08-4099-9a13-6205ed4733ad" value="14548.6448">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e3eef593-917b-4796-b38d-5505420c6a63" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="e3b2270d-b8b8-4edb-bfcc-fc47c645f1ed" connectedTo="5f8b61d6-f202-4b93-8975-f7348ff14abd" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d3de0212-b5ac-4f65-bfcb-db00cbaa7f30" value="4208.9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="465ae180-4ee5-4166-9135-c1d373d313d0" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="a08496cc-698a-4c35-a039-b44f603a8cc5" connectedTo="0c322bc8-851d-404a-a9d3-34da23567844" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d9cdeda-ae82-4e58-86ce-f39eeb19e1f0" value="508.268887">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="24423a7e-5231-4e94-82ec-666ab1859483" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="02d82870-df70-4d1e-8296-028c1add5567" connectedTo="0c322bc8-851d-404a-a9d3-34da23567844" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a83b91a2-0b9e-48ed-b982-c96c992106e7" value="5210.62">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c86feb83-fdfe-4206-8a43-ebd53e87c241" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ebbbb173-f2e3-4c8d-af40-bc08349c303d 0c322bc8-851d-404a-a9d3-34da23567844" id="84f05885-1b1b-4e62-a6a5-2adce4e95761"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ca8d04ba-41f0-4f03-a8de-c60a203e3670 e3b2270d-b8b8-4edb-bfcc-fc47c645f1ed" id="5f8b61d6-f202-4b93-8975-f7348ff14abd"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="5.4613935969868175"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="94.53860640301318"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="4677.0" id="aa08c09a-bf3a-4920-bd88-ef85cf64fbcb" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="145">
          <asset xsi:type="esdl:EConnection" id="ae6085ee-6242-4262-bf8e-65adf06a5759" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d54760d6-1ad2-43dd-b9f3-227d4afc5207" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="af30203c-ad75-4ae6-8a42-0b8c9d9bd786" value="1586.35478">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a42f5a29-eda1-481b-9ebe-c1d567592273 135bd7e9-2948-4755-90af-012435c6bd8d" id="a7399727-1965-4f8a-aae2-feec741a3049"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e9c5ff73-09e8-4c9f-bae0-7e5c54547f9f" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="47c68dc8-27a9-40ad-8f77-b2dc59ad67f5" connectedTo="c270169f-aa3d-4e61-8f63-72c5f398427e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8512dfde-3cf8-41d6-9292-6844309eaa6e" value="386.842689">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4c09be4f-090a-4ec9-a7ac-5eb87c69ccf2" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="e7684083-3a65-4c9c-8a4b-fcad3a73968a" connectedTo="c270169f-aa3d-4e61-8f63-72c5f398427e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="08f0c88e-94bc-40f8-978d-ba1768b0ab47" value="24.0391665">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="f14fe38c-e7ed-4b12-8482-b4cf95d38efa" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f9c19545-4926-4fe2-93b0-42ec5962422b">
              <profile xsi:type="esdl:SingleValue" id="6e74602e-6394-44a2-a095-0e9745b038d1" value="317.459989">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3e24cf9c-89ae-45f0-9247-30ac94ebc7c2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a42f5a29-eda1-481b-9ebe-c1d567592273" connectedTo="a7399727-1965-4f8a-aae2-feec741a3049" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="352fd3aa-e8f7-4bbb-8273-d6f2c269bbec" value="1381.95">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="50188eab-48fd-4a5b-be61-76df359a4874" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ebbbb173-f2e3-4c8d-af40-bc08349c303d a7399727-1965-4f8a-aae2-feec741a3049" id="135bd7e9-2948-4755-90af-012435c6bd8d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="47c68dc8-27a9-40ad-8f77-b2dc59ad67f5 e7684083-3a65-4c9c-8a4b-fcad3a73968a" id="c270169f-aa3d-4e61-8f63-72c5f398427e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640401" scope="NEIGHBOURHOOD">
        <KPIs id="edfd9594-1869-431c-8f0e-e81a169d0c23">
          <kpi xsi:type="esdl:DoubleKPI" id="21f5c703-2ac8-4dc4-9058-2d116b7d60b4" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7ea5dadc-6378-4adf-ae45-ab09c6f9bcf6" value="1227196.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="aa171830-2f36-4701-b94a-4ef89d2e98d4" value="356.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="40073719-6d3a-4ec1-b48a-e014fe310c5d" value="850.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="daa9a8bf-8826-4c1a-9d0a-411d3330f827" value="42593.0199" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f53f32cc-fe5a-4e38-8f74-6923f910041e" value="39299.759900000005" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c8507a7e-c933-4710-b3df-540ecf71bf48" value="6810.7305" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="08319e3f-0d4b-43c3-8a17-fb8decf41681" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="4cfe0532-18b8-45fb-bb36-918fd030511b" value="6160.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="fde936af-b2ff-42d2-849b-c17c435450c0" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="3e5d4095-ef02-4e16-b72e-9882dcfbe63a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 6c17ec4f-bf00-4b54-a891-952609b69f0b 128299f5-97b4-4aba-b681-aa149793c555" id="bad63ba8-ad08-435d-8aa4-657a878a3407"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="3197c636-e02a-4b97-872c-94eb72b9faec" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="938cd662-df76-4ecd-b873-abeb1cd4d00a"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="ecbcb78d-9791-4ccb-9cdc-d0e23da50abb" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1102">
          <asset xsi:type="esdl:EConnection" id="3bf37b0f-bffc-4922-ad9c-214226bed5ba" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f85ee54b-a143-497e-b8fb-cd814d783b93" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="17f90d51-b656-4be8-82e2-097e80917a48" value="21702.8963">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0d069903-5f87-497a-8f86-1c9d9d971a2e 36bbed68-8166-4c21-9848-1260d54223a7 6c17ec4f-bf00-4b54-a891-952609b69f0b" id="4a6adb34-86c0-4887-9d18-a3c7e19a3e2d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="02e00508-8b20-428a-ada7-560409e3347a" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="dc8c4e8f-4057-430f-a943-37f5c5fb6c8e" connectedTo="ec7adea9-c509-4192-9f5b-92091ea05e3c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="363e9239-7d00-4a78-84b5-c06ba07fb186" value="26169.3035">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4706826a-98d6-452b-908f-c98e712d9bf2" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="34e1c1a6-13ee-4893-87fc-30dcab26dda4" connectedTo="ec7adea9-c509-4192-9f5b-92091ea05e3c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="287c4980-19b6-4672-bc4a-f13e90475cfa" value="8966.8">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e75cfb16-05ab-4ba0-83b1-d350d1f84d77" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="0d069903-5f87-497a-8f86-1c9d9d971a2e" connectedTo="4a6adb34-86c0-4887-9d18-a3c7e19a3e2d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="41683073-1bde-4485-beb6-dc48f1bc9a9a" value="733.598997">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0f981057-b4d1-4491-b9c6-51f6eddc6ce3" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="36bbed68-8166-4c21-9848-1260d54223a7" connectedTo="4a6adb34-86c0-4887-9d18-a3c7e19a3e2d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7974378f-9b24-49e3-9e15-71b1a9ec4e7a" value="10081.11">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="afc2e2e6-bdd9-4ef1-98d1-105f29c7a8f0" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="bad63ba8-ad08-435d-8aa4-657a878a3407 4a6adb34-86c0-4887-9d18-a3c7e19a3e2d" id="6c17ec4f-bf00-4b54-a891-952609b69f0b"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="dc8c4e8f-4057-430f-a943-37f5c5fb6c8e 34e1c1a6-13ee-4893-87fc-30dcab26dda4" id="ec7adea9-c509-4192-9f5b-92091ea05e3c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="6.715063520871143"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="93.28493647912886"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="44417.0" id="4ae60e36-7967-4de1-8791-45ac40b4b6c5" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="257">
          <asset xsi:type="esdl:EConnection" id="0e013fe1-8f6a-43e7-994b-1543cf94e098" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7c56f97c-0235-416f-8432-978b6575513a" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="19c72dc4-f060-477c-aad2-a10b37b02b53" value="17596.8636">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2317e478-ebf6-462e-854e-38fd609ccd41 128299f5-97b4-4aba-b681-aa149793c555" id="76094e03-9870-4723-984e-d35d75fe6d15"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="62b44107-96c4-4429-8179-72b6b1c679ef" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bf71357a-63f8-483d-a361-2a8f3d422244" connectedTo="260d1c47-c9c3-4945-a536-05d7b2e21986" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8e08155a-925d-4c93-a32c-f328bb803d55" value="7022.93608">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e53df3c7-6fb8-4ba6-aae7-8ad29ab63b63" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="30dbbb5b-c8c2-45a0-ad22-6f0aab9b1633" connectedTo="260d1c47-c9c3-4945-a536-05d7b2e21986" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="17bbb292-26e1-4f15-b07d-5af25eaf8a64" value="433.980322">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="90c5f644-eb7c-4d4e-bcc0-1a72f6d8766a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0870c95c-8838-4ea3-9b71-f135476af11d">
              <profile xsi:type="esdl:SingleValue" id="e548a921-c7e5-422c-9ead-ee6beee281e5" value="2735.73297">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="be7be551-64ab-4cb6-95f5-139185e0fe61" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2317e478-ebf6-462e-854e-38fd609ccd41" connectedTo="76094e03-9870-4723-984e-d35d75fe6d15" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="40e19d6c-fafd-4209-a0bd-69ad7b01be83" value="14644.004">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a3a29fbc-eed9-4d4b-874d-374af2e94a11" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="bad63ba8-ad08-435d-8aa4-657a878a3407 76094e03-9870-4723-984e-d35d75fe6d15" id="128299f5-97b4-4aba-b681-aa149793c555"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bf71357a-63f8-483d-a361-2a8f3d422244 30dbbb5b-c8c2-45a0-ad22-6f0aab9b1633" id="260d1c47-c9c3-4945-a536-05d7b2e21986"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640402" scope="NEIGHBOURHOOD">
        <KPIs id="1a68b3c0-5d2e-481c-82a2-b263042aa585">
          <kpi xsi:type="esdl:DoubleKPI" id="99d75fec-8fc4-4d22-909c-1fb16c073a13" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="865362df-9032-47d5-aaee-b18e26c63a9c" value="1110114.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="87e8602c-1418-4d0b-8adf-af276bfc4544" value="358.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="111102b9-f711-4ba5-8989-39932a9bc36a" value="948.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="af4ef8e0-8592-448f-83b5-3152b69a525b" value="42101.18149" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a7990be5-d9fe-4751-8beb-420f2e1c757e" value="26656.136960000003" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="905e1eed-8479-43eb-a663-f9c00d089fdf" value="4409.1775" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2ce4b309-ad63-430a-ad58-728c30f18dda" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="1ad2237f-4711-46f9-b205-3110217dd6f8" value="6860.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="89e51954-4756-48e9-a5d2-172037b0eca0" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="6d426734-8025-471d-b9de-48d80a998613" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 99ac1502-6297-4142-9f39-c487511b8d4e fa06478a-3bfc-42b9-a15c-833eb4e5797f" id="2e238739-e392-48b6-8b0a-88d201b28ebe"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="2099f2e0-6a51-4fb7-83c4-96f3ea9d8089" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="99f05a6d-27d5-4e3b-874f-57188c02bb2f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="b5d97177-a0b1-4b14-a03d-c53a26048c30" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1109">
          <asset xsi:type="esdl:EConnection" id="858e1e65-6a13-4644-96c3-f152744f5da2" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="83afd7b9-9036-4571-9891-9bc78ef6c7b0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="513f4d18-50e7-4269-92fd-2aab62d17d7a" value="24043.8529">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0c7135e7-5a42-4ae9-b2f4-be6c3724ef0c 78f1ebd7-4141-4733-99cd-ed21ae4aacc5 99ac1502-6297-4142-9f39-c487511b8d4e" id="5070c867-4be0-4248-ad2f-b4f0e0128a4e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9b5e937c-c8c3-4b42-864e-898475c50a9a" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="0688d267-3834-4d54-8d20-94ef653c316b" connectedTo="06e62e1a-c034-487a-9540-88b36badc40f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="43055c23-bbd2-4514-9ffd-6519120c7b6c" value="32151.0118">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d492aba7-a3ec-47aa-9ef4-3703b65a7198" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f562596a-9e69-492b-9e01-8be05efb6c56" connectedTo="06e62e1a-c034-487a-9540-88b36badc40f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="77ac9971-117d-415d-9f54-7d1b0735679f" value="8646.5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c6577155-10d9-428d-bb24-4c8225aa1d5f" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="0c7135e7-5a42-4ae9-b2f4-be6c3724ef0c" connectedTo="5070c867-4be0-4248-ad2f-b4f0e0128a4e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7e0a99dd-b34b-477a-980d-a898ccc842bf" value="1059.35502">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8e3400d3-eef1-41a9-8566-21219bb3071e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="78f1ebd7-4141-4733-99cd-ed21ae4aacc5" connectedTo="5070c867-4be0-4248-ad2f-b4f0e0128a4e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="066d4c7a-f38e-4b2a-b419-58a464dcfe65" value="10670.92">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="f79288ce-e151-411e-b013-614b18bbaa8e" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2e238739-e392-48b6-8b0a-88d201b28ebe 5070c867-4be0-4248-ad2f-b4f0e0128a4e" id="99ac1502-6297-4142-9f39-c487511b8d4e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0688d267-3834-4d54-8d20-94ef653c316b f562596a-9e69-492b-9e01-8be05efb6c56" id="06e62e1a-c034-487a-9540-88b36badc40f"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="4.508566275924256"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="95.49143372407575"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="7935.0" id="32cae4df-51fa-44cb-a1c1-5334a61ebc0d" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="100">
          <asset xsi:type="esdl:EConnection" id="acc4380f-207c-49f1-9f63-b526cf550b75" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9c872a13-0e2b-4c04-8261-d50946c32e88" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa0651b2-317b-426d-902f-3dff6197e0c3" value="2612.28406">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="54a80716-2bbc-40f1-8ae3-52a208fe3581 fa06478a-3bfc-42b9-a15c-833eb4e5797f" id="7c9d662f-3c00-47c2-baec-0bb723aaf4cb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8815d2f3-0803-416d-8edd-17b93dd3d443" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="24051479-938f-4b5c-800a-b6e139c1597e" connectedTo="e270e8cc-de96-4c9a-8e6b-5369b9551bf1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="98e370ff-e292-4bdc-844c-4f8a150e19bb" value="1195.59491">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="12bb7acb-0da2-4a13-8930-8e4236bda33e" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="e43cf073-8cad-49f3-a66a-f37916047a60" connectedTo="e270e8cc-de96-4c9a-8e6b-5369b9551bf1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1913bd06-c427-4e51-b6ca-7bc51c26813a" value="108.074784">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="cd2442ef-5841-4c87-b4b6-0bef5238a32c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="46c141cf-dfa5-48dc-93aa-81edc83b45f6">
              <profile xsi:type="esdl:SingleValue" id="305c3959-3766-4b7c-8963-c0af7706a76c" value="647.961193">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="44f61c76-08de-4b07-accd-b45e06d86002" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="54a80716-2bbc-40f1-8ae3-52a208fe3581" connectedTo="7c9d662f-3c00-47c2-baec-0bb723aaf4cb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="335db675-7462-4d8d-98ea-208316490b0c" value="2048.486">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="050ad42c-b3b3-4d9e-8432-ee4495a5fa20" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2e238739-e392-48b6-8b0a-88d201b28ebe 7c9d662f-3c00-47c2-baec-0bb723aaf4cb" id="fa06478a-3bfc-42b9-a15c-833eb4e5797f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="24051479-938f-4b5c-800a-b6e139c1597e e43cf073-8cad-49f3-a66a-f37916047a60" id="e270e8cc-de96-4c9a-8e6b-5369b9551bf1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640403" scope="NEIGHBOURHOOD">
        <KPIs id="1b42068e-5ede-41d6-94d3-359128eea2ca">
          <kpi xsi:type="esdl:DoubleKPI" id="327d3061-85db-4df1-bc45-cc34aa479f4f" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ad165d99-acb4-42a0-ba3f-9f720db0a49f" value="1608190.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9a1dcb87-220b-4b03-a392-6a2f5f660cab" value="384.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5a4dd72a-621d-4270-9604-ea5ed10f80c0" value="784.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4e7d0b43-0e31-4d3a-ba1d-d761b0a3e072" value="52137.98805" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="51d25621-c1ef-4c86-82e6-19b72a2809a5" value="46570.9622" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b4e3720e-830b-4fae-8eec-cc081b4ef127" value="9282.6965" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a369f68b-df63-4d78-9f41-a888608ac429" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="10676ab4-8716-4f49-9239-6071a5934ca5" value="9160.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="b8919b05-97b7-4220-bb26-a68eb38fd6d4" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="9848be83-a2b1-4479-b11a-d180fefd1369" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 ac386847-6381-4653-b49b-e5adbef20d89 68dda0ce-09f5-47bb-a462-3114aca78b01" id="ee151b02-b71f-44e1-9fbd-db1ee7f492f5"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b4f4cd14-768c-4655-8196-d69c4a2fb38c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="c77451ec-a4f7-40b9-a79e-ea4027505689"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="644dbd98-9e4e-4ade-a6f7-824655738871" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1641">
          <asset xsi:type="esdl:EConnection" id="f84baa90-50a0-40eb-8cf1-622bef435910" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="dc5ddd0c-2dcc-400e-a2fe-5b0fd4bb2d19" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="39b11caf-7d39-4052-9e50-3710f2512c75" value="30066.0813">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c208db92-9282-4b83-8f84-2cc0081f3874 25589a7b-68b7-4d3f-abb2-1974f6e0bda5 ac386847-6381-4653-b49b-e5adbef20d89" id="1234b0e0-6624-48d9-a206-ccf3a6690573"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0fb085a5-f596-4339-8fc9-a35a3b37bf8b" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="2287bbf6-1d5e-4571-b44d-53ea55bdda8c" connectedTo="986353c3-c94a-4312-b080-98cc21622856" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c5840a9f-839a-4ac3-96b9-c629f5fc5033" value="32605.8566">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ffbb5ade-55ab-4057-ac46-a307496b3026" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="d13867da-6599-4da7-86db-e58a76042a07" connectedTo="986353c3-c94a-4312-b080-98cc21622856" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5a4ed1b6-67d5-45a4-9b1f-bd42872d359c" value="12147.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="78787429-fae2-4ae6-b671-ffa3c7754c88" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c208db92-9282-4b83-8f84-2cc0081f3874" connectedTo="1234b0e0-6624-48d9-a206-ccf3a6690573" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="acd7dc44-5cb5-4e94-a8e4-f445f21c3204" value="1030.37402">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fb4fe113-2766-45a5-b1b2-c8ca1b991428" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="25589a7b-68b7-4d3f-abb2-1974f6e0bda5" connectedTo="1234b0e0-6624-48d9-a206-ccf3a6690573" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dcb7554c-10ea-46de-8dca-e04c2e9ad8b2" value="14961.88">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="feb54418-a21c-4f0f-b49d-a360d0f15779" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ee151b02-b71f-44e1-9fbd-db1ee7f492f5 1234b0e0-6624-48d9-a206-ccf3a6690573" id="ac386847-6381-4653-b49b-e5adbef20d89"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2287bbf6-1d5e-4571-b44d-53ea55bdda8c d13867da-6599-4da7-86db-e58a76042a07" id="986353c3-c94a-4312-b080-98cc21622856"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="0.30469226081657524"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="99.69530773918342"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="53221.0" id="a2b92d02-197f-48f8-bfab-e4bd493fe68e" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="341">
          <asset xsi:type="esdl:EConnection" id="de8a5e8b-4d1d-4312-bd0e-8f42fef841b1" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="184d195f-d2fa-4392-ae20-57077407f421" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="65ab00a3-109d-4fab-934a-a08046016020" value="16504.8809">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c4e65a1f-4410-48c3-91ec-e4f6202da23a 68dda0ce-09f5-47bb-a462-3114aca78b01" id="9c4d5393-78e5-4418-a01f-38512e73f7ca"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9984cbbe-5a40-4d75-98fc-eb9aad6579b5" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bc3db3a7-62d4-451a-be07-0302df39d4ec" connectedTo="32c4fb12-c678-4225-af50-d3a48791ce1b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8bec8f15-0a64-4f07-8a9c-ddb948955488" value="6936.30896">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c17beeb6-0b6e-4c1d-86c2-f118267768a8" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="83d5bbdf-e195-4979-af68-14e232179980" connectedTo="32c4fb12-c678-4225-af50-d3a48791ce1b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="181bc2f5-7877-4d49-9597-3d91f778ec36" value="448.12249">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3326a1a2-c292-4968-b0d1-cabb63a38bbb" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5625e38e-2e33-4742-b1b5-55a027576de5">
              <profile xsi:type="esdl:SingleValue" id="8e305612-df7d-4c8c-bcd8-eaa4360bd942" value="2247.06026">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f3f86679-fc33-4ea0-9148-2e2a8c38d5a6" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c4e65a1f-4410-48c3-91ec-e4f6202da23a" connectedTo="9c4d5393-78e5-4418-a01f-38512e73f7ca" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="857a1a73-75dd-462f-81bd-a7a70ffd7c93" value="13693.315">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6ef0c5c7-ff3a-48dc-a20a-2a4386160269" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ee151b02-b71f-44e1-9fbd-db1ee7f492f5 9c4d5393-78e5-4418-a01f-38512e73f7ca" id="68dda0ce-09f5-47bb-a462-3114aca78b01"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bc3db3a7-62d4-451a-be07-0302df39d4ec 83d5bbdf-e195-4979-af68-14e232179980" id="32c4fb12-c678-4225-af50-d3a48791ce1b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640500" scope="NEIGHBOURHOOD">
        <KPIs id="c17dc628-0560-4286-8922-a4a951ab298c">
          <kpi xsi:type="esdl:DoubleKPI" id="f8ca8771-cbea-4cce-9fa7-84a828b55d0b" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2ea8d986-5de3-451b-9402-2f7e328e2000" value="33358.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="87931ade-1125-4609-92e3-86e99d22607d" value="273.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="315b2a21-6a27-487f-add1-f963ee6f734d" value="412.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5fb79862-cff6-4a61-b5f8-faa1de4e8150" value="1673.48533" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a210bcbb-b8c0-4883-a895-d6309bb5266b" value="2669.2515132999997" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3b75eea3-7f64-4610-adb8-4d670bdb44f6" value="684.3025" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="948b4bb2-d6a8-487a-82b0-8e0f7bb69163" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="e1ed8a37-f3df-4e3b-8ab6-a76cb77216b9" value="1600.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="c0beba91-e1cb-423b-8e06-bbf13458cbb1" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="11a66a89-c39f-4a5b-97e8-52373039baac" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="7c761f81-bfb3-44b4-a505-ddcc0f192ceb"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="08f5acb5-7d5d-498a-b781-94e1ea3a4f56" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="b781f52e-94ef-4c91-84ff-c472af2ec1ff"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3e8a78ca-09e7-4a76-8abd-98bbfe9737ca" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="2">
          <asset xsi:type="esdl:EConnection" id="10fe64ac-d683-4209-8f6d-089086c94372" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="497e66d4-0a1a-4aa7-8773-b68b36d39f0e" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="afa73f98-8e91-4fec-a31d-8812627727c1" value="50.0780333">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bbf71eab-f1b2-41d9-bc3c-469388fc0102 ae538e1a-9110-4cd3-a698-43703105729c 63f23b64-4ef1-407b-b8d8-66374cd264d6" id="ccebb87c-b0d1-4be0-8aed-3cad6c99bc64"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="25792f69-daab-45a5-b117-2330fe963b85" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7f60de0c-d210-4d2c-bdac-15237c06ff6f" connectedTo="2feef07f-f9cf-4f97-aa00-823fa985689a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8219e659-7044-4dff-89d0-f3ebd078de8f" value="88.2636098">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="50f76921-33d7-4ee4-bd4c-b61a61449d56" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6f300252-e268-473f-bf9d-4d48fc5cea15" connectedTo="2feef07f-f9cf-4f97-aa00-823fa985689a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b9528525-95e2-4606-9386-f9cdfde2cc57" value="17.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6cb3ad47-d38f-4f67-9144-277634ff7f81" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="bbf71eab-f1b2-41d9-bc3c-469388fc0102" connectedTo="ccebb87c-b0d1-4be0-8aed-3cad6c99bc64" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c1e6ff75-1202-4ccd-9d4e-ca9099a5265f" value="2.19164269">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c0aa9222-fa91-49ea-82f9-2098cbd404dc" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ae538e1a-9110-4cd3-a698-43703105729c" connectedTo="ccebb87c-b0d1-4be0-8aed-3cad6c99bc64" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="59bf67bc-f2fa-4d51-877d-c1f835593042" value="19.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6d83e493-fbf7-44b3-a830-2ce0e18ee0bf" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="ccebb87c-b0d1-4be0-8aed-3cad6c99bc64" id="63f23b64-4ef1-407b-b8d8-66374cd264d6"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7f60de0c-d210-4d2c-bdac-15237c06ff6f 6f300252-e268-473f-bf9d-4d48fc5cea15" id="2feef07f-f9cf-4f97-aa00-823fa985689a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="10185.0" id="00f1d141-6b40-4565-b685-142d0245bc14" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="8">
          <asset xsi:type="esdl:EConnection" id="40e6df49-7aa8-4be6-9925-9c42d3fca4a5" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1a5caa46-7553-497d-b1f4-ad3be6ba990f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d7c03bcb-a76a-43c2-9ce6-829ddd1f0e64" value="2619.17348">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8e8d545b-d2ce-45ce-b947-d018aff4f08a 681c53dc-8860-47be-84fa-a8babe062194" id="f6321206-17b7-4829-9243-c91b3596c519"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="727801b0-3f8a-49dc-ac01-c86031f33671" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="5e9fa63d-47d0-432a-b93e-278e1053156f" connectedTo="c17528fc-be2d-4d26-8e7c-f8f8008a9dfe" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="52256609-02ae-4efc-abf8-4a8398a4ad9c" value="1529.75528">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="afef11e6-c0c5-43aa-8b80-99b57e7c8a9d" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="746e9315-8a44-4acb-b292-0c2cdcc055ab" connectedTo="c17528fc-be2d-4d26-8e7c-f8f8008a9dfe" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7522ef33-0523-4bcc-8b15-c11b0caed5f1" value="38.4664432">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="5eb8fec5-b8da-4c5e-ab57-ebc76d624b73" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9aa0e5c2-14cd-4d7d-afdf-bb3b6c75c79b">
              <profile xsi:type="esdl:SingleValue" id="bb29d9a8-1c60-4422-bcc4-755feb9b8aca" value="520.527852">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="096134ce-3236-4f28-9167-dc6ea570f5cd" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8e8d545b-d2ce-45ce-b947-d018aff4f08a" connectedTo="f6321206-17b7-4829-9243-c91b3596c519" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7218bd93-3deb-4725-86ae-7144d8ffe896" value="2114.966">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e28e664a-ef74-4d02-8481-b962176f48c3" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="f6321206-17b7-4829-9243-c91b3596c519" id="681c53dc-8860-47be-84fa-a8babe062194"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="5e9fa63d-47d0-432a-b93e-278e1053156f 746e9315-8a44-4acb-b292-0c2cdcc055ab" id="c17528fc-be2d-4d26-8e7c-f8f8008a9dfe"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640501" scope="NEIGHBOURHOOD">
        <KPIs id="cf28b760-541a-4459-9fc5-4a28acd12d41">
          <kpi xsi:type="esdl:DoubleKPI" id="b1455144-064f-409d-9c13-4b66fc4569ae" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c731f721-2997-44ae-8846-5066e12b37b3" value="1393888.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="35b7c721-1c53-46b1-8309-d38f64b6c5bc" value="308.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c2b8fa01-98b9-4b64-8d01-495bd1d6b998" value="634.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fd1eff16-df5f-47a2-ae71-1fed9de5695b" value="63144.44192" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d1cfdb86-62fb-4d00-b03b-d3787c16acc0" value="30285.4955" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="287d6a93-2593-4d4e-a356-0d90e5f37fdb" value="3917.5275" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="af49845d-f98d-4866-860b-f191532423dc" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="8d8a6958-f7bd-4ace-85d1-48baa040ef7e" value="10040.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="0b8d77bd-0d1e-4245-9d25-c156d295bdfc" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="0c76adac-7300-408f-8430-c121c66a2d28" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="b0cd98da-1c50-419b-97a6-16954400856c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="356576a4-a973-42ea-b2df-66cd628c0b25" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="14c21b50-e9b5-4e66-b44b-426679a1832d"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="d18475b2-7718-4eb9-9495-0ef4c6bbed5e"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="82914cd6-3635-4545-9a35-342db7fd9118" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="1916">
          <asset xsi:type="esdl:EConnection" id="f965b714-6c9f-401a-ba83-bd3dfcd2f076" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="88cdf758-2db2-4972-a51e-420b6c4629f9" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="685b42e4-d00b-4153-b262-b742706a327e" value="17964.4909">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9020b6e2-d279-42c8-8e81-29afae6b4aea 66f5853f-8354-4ccf-8eaa-ec8da02130a1" id="891e7638-1cc1-4498-b10e-360936f561c3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="eaa1af4d-30fb-4331-abff-98c4fe013064" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="fbc56d21-222a-4a34-9a76-8da6f2ecc171"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="988e9cf0-a520-4805-97fc-8e7f219aeb6e 5c293cec-0ff1-491a-a3b8-7790fe5d0e55" id="bbd165ae-a615-409c-b437-065eacd46e84"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1841843f-5d6c-43de-bfc1-69068ff0687a" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="988e9cf0-a520-4805-97fc-8e7f219aeb6e" connectedTo="bbd165ae-a615-409c-b437-065eacd46e84" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2945ca86-5e5c-4727-9945-ea79ec5e7c63" value="43311.2673">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="553926ec-e28e-45d0-91d5-de2fcf7e1310" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="5c293cec-0ff1-491a-a3b8-7790fe5d0e55" connectedTo="bbd165ae-a615-409c-b437-065eacd46e84" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="465c64cf-b332-4804-af4f-c8d728af49df" value="15047.65">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="36cc3f50-c969-4755-bd56-733d493f1799" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="9020b6e2-d279-42c8-8e81-29afae6b4aea" connectedTo="891e7638-1cc1-4498-b10e-360936f561c3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="089599c6-aad7-49ec-9e17-5ffc87c05038" value="40.6712912">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f212a4d8-187e-4be5-9af2-f8dc8bc75c6c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="66f5853f-8354-4ccf-8eaa-ec8da02130a1" connectedTo="891e7638-1cc1-4498-b10e-360936f561c3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1646a15a-d66f-4c95-b155-f42effd17f1f" value="17301.99">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="21.24217118997912"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="6.471816283924843"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="10.69937369519833"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="61.5866388308977"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="36615.0" id="6b6107bd-864d-46ab-9054-efae42f2a438" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="154">
          <asset xsi:type="esdl:EConnection" id="4ef18323-30c1-45f6-acad-0f1fd3397217" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="01cb9895-b450-434e-a3bf-83f18191e291" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="47efa12b-5986-4424-8e6b-3c999ac1a963" value="12321.0046">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3fce953f-2c7e-47f2-9417-ee0d9e2c0fa5" id="862095af-ae39-4923-8b5e-bf601d708e74"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="a8e99722-7cba-45d9-bdc5-72d9178d069f" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="1d13333e-1a1a-4421-aab3-b5a13a322210"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7aec23ba-8649-46cb-b224-370d7b70df89 ebc5901f-474f-4c9d-b2cc-9f410149bff2" id="3d918013-53db-4978-b649-bf556462be0c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="49f34adf-55fb-4ee5-9b61-3baecb440481" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7aec23ba-8649-46cb-b224-370d7b70df89" connectedTo="3d918013-53db-4978-b649-bf556462be0c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="916db41a-a367-402a-b992-ad9a8530d4d4" value="4476.20846">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4a9bc7f5-54a2-435d-9514-ee19dd212d2c" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="ebc5901f-474f-4c9d-b2cc-9f410149bff2" connectedTo="3d918013-53db-4978-b649-bf556462be0c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0107dda7-a477-4bbe-8a97-63d1e45ce24c" value="309.316163">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a7238d4d-e652-49f2-9839-5ef07679f69b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="4a16ad84-06a5-4edd-9400-754acab4341b">
              <profile xsi:type="esdl:SingleValue" id="e1d432ad-a008-4df5-98f3-ec0e8b8bc622" value="3442.12664">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="deb89b5f-d175-45db-a7ce-cf9625cb5cba" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3fce953f-2c7e-47f2-9417-ee0d9e2c0fa5" connectedTo="862095af-ae39-4923-8b5e-bf601d708e74" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0705dd36-08f3-42b7-98e6-0158aa411d78" value="11699.175">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640502" scope="NEIGHBOURHOOD">
        <KPIs id="6458a72d-cd30-40bd-887c-b8bbf3ed3999">
          <kpi xsi:type="esdl:DoubleKPI" id="39cef340-cd91-4c8d-8c21-ca17ce08130c" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9ac39440-8569-4def-9fd1-51620d9d8818" value="597027.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="34d7d3b7-0fdb-4d9e-9193-3c70a74aa952" value="318.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4778d495-27c6-4b91-b35a-fee4ce51891a" value="773.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e10ab21a-e254-474d-adda-bbf1bf2eab4b" value="23913.145699999997" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3a401aa8-d970-48fd-9059-b3e32c26a9b0" value="16624.11595" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f993a930-39ba-4191-99af-7d602f608b20" value="2963.6635" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4ab792f8-f3d2-4ba2-acc9-3b6d20d52cc8" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="0095a671-e9d9-4ea6-8047-e6bdbf855d47" value="2860.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="2895b08d-4288-4b1b-abf0-907eb2089584" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="2e451fe6-9c68-4a4a-9f83-e10c565bbe90" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 176d1843-f584-44f8-866a-6ad93396d519 5ca153f1-bf9b-47ba-b105-eb2e53b0d8a7" id="9d2da031-7ab7-4405-9e90-91be5178cd2d"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="44a52cab-96d7-4901-b03a-6bb7ed9ac94a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="145e1b11-0f6f-4411-baa6-c8ac04ba2cde"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="5cfddfc2-a8a8-4a71-bced-bac2ddbb0ad0" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="721">
          <asset xsi:type="esdl:EConnection" id="be0be26c-cc46-4bf8-9ca0-5ff6c3423d5b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="fc683e5a-68ca-41e4-a3b3-50a5c6ccce82" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6be3e714-e58a-4c4c-88c9-5bc76a519536" value="14176.9872">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="58ec4842-8677-4214-bd6d-ea9d3f20bae5 3e94525b-88ba-4066-8e2b-6f5698ccd37e 176d1843-f584-44f8-866a-6ad93396d519" id="9604f6e1-5266-4058-9200-dba6101b4548"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c6092e72-a7c8-43b6-8cbc-3d8075f6c4b6" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="2d83926b-9138-4e83-aeb9-534c51102415" connectedTo="8d7c01e5-1db5-4d4d-98ba-bd821f964890" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0425eddb-3e99-4670-ba86-c0061e9f092b" value="16596.6997">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8e330a99-6c91-42d6-ae13-3a9093fd7fa8" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="100db0b1-ed8f-407b-b5b8-d1dbc16bd21b" connectedTo="8d7c01e5-1db5-4d4d-98ba-bd821f964890" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="db703dd2-3832-4503-86c4-1a7f20f21c13" value="6000.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="11399f00-f34d-4c69-a036-d8b2586e150e" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="58ec4842-8677-4214-bd6d-ea9d3f20bae5" connectedTo="9604f6e1-5266-4058-9200-dba6101b4548" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f898ae8a-9366-4997-b3e2-d53ad271b258" value="386.411833">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="596ccaa8-7a17-485f-8128-a09b5a19441a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3e94525b-88ba-4066-8e2b-6f5698ccd37e" connectedTo="9604f6e1-5266-4058-9200-dba6101b4548" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bcf5bb0c-d480-400a-ad0b-244f059062ba" value="6903.46">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2e6b77ad-a40e-4348-b228-c400a1989eea" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="9d2da031-7ab7-4405-9e90-91be5178cd2d 9604f6e1-5266-4058-9200-dba6101b4548" id="176d1843-f584-44f8-866a-6ad93396d519"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2d83926b-9138-4e83-aeb9-534c51102415 100db0b1-ed8f-407b-b5b8-d1dbc16bd21b" id="8d7c01e5-1db5-4d4d-98ba-bd821f964890"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="33.42579750346741"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="66.57420249653259"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="6619.0" id="ff527c19-ab82-47d1-a61e-43ab0e7087cf" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="92">
          <asset xsi:type="esdl:EConnection" id="6555aefa-26fd-4740-8d6a-5ceccaf7fdc2" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="2b630ee4-098d-4702-b7c6-ee041b2d8181" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c15485dd-7102-4d80-9c31-b4377bb0cbe5" value="2447.12875">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a4df7395-6614-4a8f-85bd-f138a87ea8ab 5ca153f1-bf9b-47ba-b105-eb2e53b0d8a7" id="84fd8c64-7c30-4c29-9e39-c5baad2244ec"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4e626099-f014-4b28-8fe1-a07e1475a1b2" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="faa74e89-0175-46ca-baa3-3cfe44dd7a0d" connectedTo="b48be220-3bae-4889-ab8e-00ad5ca91459" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b6cc3d69-712f-48c7-b5ec-150dfa64bec3" value="1180.82773">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c7e17adc-f85b-46b7-bdd9-8d759ac2c819" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="7a4a35da-2b19-468f-91ae-baae0d1801aa" connectedTo="b48be220-3bae-4889-ab8e-00ad5ca91459" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ded7e3b-b831-45f6-a885-f4c40f57cdaf" value="135.218272">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="954183ca-219a-4e4d-82d2-cad105323de9" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="7a1c500d-39d0-4321-bc80-bbb0dc5d0609">
              <profile xsi:type="esdl:SingleValue" id="0ade82ea-7ff2-43fa-9120-445e362deac2" value="923.352538">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="49025861-273f-4211-83ab-9c1d9424a0b0" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="a4df7395-6614-4a8f-85bd-f138a87ea8ab" connectedTo="84fd8c64-7c30-4c29-9e39-c5baad2244ec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="75cf82b9-bdf9-41e4-a58d-76a1344c0ec6" value="1806.501">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4197b527-6e3e-4bf2-a659-59d07fae49f0" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="9d2da031-7ab7-4405-9e90-91be5178cd2d 84fd8c64-7c30-4c29-9e39-c5baad2244ec" id="5ca153f1-bf9b-47ba-b105-eb2e53b0d8a7"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="faa74e89-0175-46ca-baa3-3cfe44dd7a0d 7a4a35da-2b19-468f-91ae-baae0d1801aa" id="b48be220-3bae-4889-ab8e-00ad5ca91459"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640503" scope="NEIGHBOURHOOD">
        <KPIs id="c3cdd6f3-472e-4a2f-87ac-e3ec79582263">
          <kpi xsi:type="esdl:DoubleKPI" id="737ad134-4f33-4eb5-9097-4668ef2058d4" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="050a5a20-3d3e-4853-b312-23ebb259817c" value="54275.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f47526e9-2c30-48cc-9750-f1a30e03d802" value="182.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e32db11d-7e27-4980-8f54-e3a20ca5a9f7" value="274.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cce1b274-cd8e-4de3-a72f-b231c47bb8bc" value="3837.34619" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="82e80215-4d13-4530-a7d4-dff7272bddb4" value="4287.563653" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1fec5942-e05d-4949-827a-d339a8bbbacb" value="1572.62" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f8cbaee5-e08e-438a-86de-95569c324dd0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="41f51d20-9ac8-427f-bbae-f39f147cafb2" value="3260.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="9d03f663-83bb-49ee-b528-6c487b8d3a07" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="25ab27dd-bef6-4725-8c7f-09c2e5d98807" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="f5c75255-25eb-49a8-8eee-fef2c41ad874"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="96213732-01d6-4ad0-be24-035b18e92112" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5e7e8609-ebed-4c0f-a208-d1ac90b816ad"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="136d0a24-29eb-44a4-829f-349a9cf87185" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="26">
          <asset xsi:type="esdl:EConnection" id="a340c77c-e5ca-45a6-864b-7d9db41f6e37" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d6c27884-f513-4129-b993-33f34459a1bd" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fc8bbd57-4f64-43d9-a0e6-f6cbab9c3159" value="582.543913">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="90465a33-3a2f-4b0d-849e-1e2250605f80 57e36fdf-ae4d-4b88-bded-18462f55527b ac27a188-d5bc-4b22-9b1d-e82133e95d3d" id="a232dc68-5511-41b0-8b12-90ba3a6526fa"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ccc7d864-3093-410a-949d-fa5502ffdc48" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e2c5fe41-73d8-46ed-909d-43070f964d58" connectedTo="0bbe0c03-9360-4582-bd6b-c64023f177b3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="84acc9f6-97c4-4227-9910-8f8e6dd2d4da" value="862.386038">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="fe5fc1ea-2fae-4856-8351-59ac46e5cd6e" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6b45d1af-f20d-4099-859e-5ae887d4cdcc" connectedTo="0bbe0c03-9360-4582-bd6b-c64023f177b3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="46164b80-51b3-44b6-aa10-021350779bc3" value="237.85">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fa752478-bd51-40ef-921a-368bcdbe35e5" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="90465a33-3a2f-4b0d-849e-1e2250605f80" connectedTo="a232dc68-5511-41b0-8b12-90ba3a6526fa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3fcc4738-6dae-4a6b-b930-77ee9efe327f" value="23.2392466">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="91319b36-5b46-4e75-8886-76ec84463d02" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="57e36fdf-ae4d-4b88-bded-18462f55527b" connectedTo="a232dc68-5511-41b0-8b12-90ba3a6526fa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="13569397-6c8e-435a-b682-c6311d0148b9" value="253.12">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0df2c195-fc70-463d-9b85-54c8ce85b706" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="a232dc68-5511-41b0-8b12-90ba3a6526fa" id="ac27a188-d5bc-4b22-9b1d-e82133e95d3d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e2c5fe41-73d8-46ed-909d-43070f964d58 6b45d1af-f20d-4099-859e-5ae887d4cdcc" id="0bbe0c03-9360-4582-bd6b-c64023f177b3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="3.8461538461538463"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="96.15384615384616"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="22280.0" id="ca123106-674a-410a-b480-a65302826569" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="33">
          <asset xsi:type="esdl:EConnection" id="c1e186a4-325b-4693-ad47-809cc38f9b2a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="55a8ad9f-8565-4a46-941b-737a6c43676f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a407fb29-20c4-4457-ae3c-27708dbd7b2c" value="3705.01974">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="14b585d4-2de9-418d-bd4a-470bed624b9c efce0892-281f-4a38-a05f-f8ba29d9923c" id="1e224ee4-6753-4409-9e8d-f27c7b713fbc"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d2f175b1-2c02-4a11-a171-8b1a7dc70fb2" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e293e21b-3cd8-4c64-bb07-c3f772756049" connectedTo="5e34bcbf-d760-489a-85fc-ac250e2d49f3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6c6df6b0-2b1d-4f40-a5b7-67ac3d01fe1d" value="2652.96362">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e45b345a-76be-472f-b581-d71c3206896d" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="54e2a319-51de-460a-a804-e011b68fa1b5" connectedTo="5e34bcbf-d760-489a-85fc-ac250e2d49f3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="25cd6c25-dc59-454f-bc65-e857d3d46ea6" value="84.1465247">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="5483a2e8-e1e4-459d-a273-108d306ea08c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="96654f42-a4b1-45c9-a07a-89da05ec92d0">
              <profile xsi:type="esdl:SingleValue" id="2bb905c2-8134-4e2f-8688-b093e23de627" value="644.12931">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ffa3ef59-4638-4ea6-bbba-48dc93819839" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="14b585d4-2de9-418d-bd4a-470bed624b9c" connectedTo="1e224ee4-6753-4409-9e8d-f27c7b713fbc" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3abc82c8-3000-4f80-bb03-df0ef30efba1" value="2855.952">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="3f737a02-3d5e-4122-92fa-4aa7bbe1563d" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="1e224ee4-6753-4409-9e8d-f27c7b713fbc" id="efce0892-281f-4a38-a05f-f8ba29d9923c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e293e21b-3cd8-4c64-bb07-c3f772756049 54e2a319-51de-460a-a804-e011b68fa1b5" id="5e34bcbf-d760-489a-85fc-ac250e2d49f3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640504" scope="NEIGHBOURHOOD">
        <KPIs id="95487ae6-f369-4aa5-a033-68586f2b2ba9">
          <kpi xsi:type="esdl:DoubleKPI" id="55d478df-3f04-4447-b1b9-dc7b2e854e07" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3cf1206a-dd3e-405d-9c35-358aa7a1b2f8" value="260462.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="52e86807-6064-45a4-ac98-9a9c252b6df3" value="253.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0042a078-ed45-48e5-92fd-d17926441fa1" value="415.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cdce2710-4ae4-4555-873a-b3f151570ae9" value="14497.61674" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6edf4285-8e17-4ccb-a036-c430e3ea36b9" value="12281.19137" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3660f807-1955-4ffa-977b-c2bc8b7c7684" value="2590.308" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2b36951c-7261-44b8-a65f-a0dd52b08fea" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="ab75683b-2dd7-4bc9-ab0a-c4063b77ef43" value="3060.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="5629e0ac-e011-4c99-bf43-53284aa39193" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="756920c2-156b-42b6-ae59-7dae13d14861" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 e0b89d90-3b8c-4b82-9c2c-0c0a40ba3a5e 456731b5-8dcb-4b84-b277-d159f2916af7" id="6a2c588a-9df3-441f-8001-f31509942963"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="ab03401f-a0b1-4432-8c77-c373d0a3c0dd" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="ccdcdbf6-d683-4fba-b06e-cb0f35500425"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="01be4e59-93f4-44eb-96e8-5067da95e119" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="551">
          <asset xsi:type="esdl:EConnection" id="27df7fbe-3f06-40ca-acf9-f64bd2851248" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1b8f7c55-767d-47ef-b8a3-f312b97cb7fc" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="44e2d6a7-dd3b-4aef-828a-ce0f03e881ea" value="9230.25775">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7248aea6-8c88-4fb2-b1fc-d3c67595d1a7 f61c3d89-10b3-4bc5-9dce-40673740cf0d e0b89d90-3b8c-4b82-9c2c-0c0a40ba3a5e" id="e70954a7-66ff-48c2-9a67-7306028df80c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="80525942-d366-4d31-9826-bae4be7211d9" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="8ffb22a4-4d96-49a2-ae00-83ce1a354491" connectedTo="4c9d2c6a-aaf0-4188-9819-6f1c9d61c820" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="54a55ebc-9dd0-47c6-b086-d2971aa528ca" value="9060.69189">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="809b2b15-5b46-48b3-b792-ff78bca1fcc4" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3fdf55cd-e6eb-46f3-a777-b0d64473bf14" connectedTo="4c9d2c6a-aaf0-4188-9819-6f1c9d61c820" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f19ed511-57d5-4d86-a84c-3e8015c96d54" value="3949.6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7b2431aa-62fd-462b-8ed1-aa7bdb5fe798" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="7248aea6-8c88-4fb2-b1fc-d3c67595d1a7" connectedTo="e70954a7-66ff-48c2-9a67-7306028df80c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="13ed4a7f-058a-40e1-975e-a9c0d6ee59f2" value="207.299078">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ba06b6ac-62db-4c4c-9b59-50b76704180d" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f61c3d89-10b3-4bc5-9dce-40673740cf0d" connectedTo="e70954a7-66ff-48c2-9a67-7306028df80c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9a6aa678-d16c-404f-8b48-ad08020caec1" value="4947.72">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="901de042-6d28-4c90-b37b-116a0aabc8d1" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="6a2c588a-9df3-441f-8001-f31509942963 e70954a7-66ff-48c2-9a67-7306028df80c" id="e0b89d90-3b8c-4b82-9c2c-0c0a40ba3a5e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8ffb22a4-4d96-49a2-ae00-83ce1a354491 3fdf55cd-e6eb-46f3-a777-b0d64473bf14" id="4c9d2c6a-aaf0-4188-9819-6f1c9d61c820"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="25.045372050816695"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="74.9546279491833"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="9952.0" id="af049f4f-b11f-450c-aca3-0592a8cf1621" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="40">
          <asset xsi:type="esdl:EConnection" id="64614179-37e9-4307-952f-8e6b9cfe5974" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cb14f70c-36de-4e59-a44a-769cc08c17bd" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fdaa7ac3-a247-41fd-813d-2afbef0f4c81" value="3050.93362">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="26ec7969-76a4-480d-84b3-847a7dcff7ac 456731b5-8dcb-4b84-b277-d159f2916af7" id="9ae27bcf-beeb-4824-a6f3-7b1fd098d406"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e8d10bf2-a8f1-49e8-9bc1-a1e6e9079c8d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="26d46089-4190-4a59-82f6-a52aa12ff88a" connectedTo="719176d9-d62d-45b1-a28f-f0364fd8c46e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e586f6b5-ca4a-4449-8ab7-a2d0e4853ad3" value="1417.63915">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3a304a83-098e-4690-b333-8ed028d85ed4" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="da4be1f9-7d17-49d4-b911-18c04c541216" connectedTo="719176d9-d62d-45b1-a28f-f0364fd8c46e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="73516c0d-370a-49c0-a100-d5eaacc32b1d" value="69.6856987">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="813f0f33-b703-4abc-b9c5-10bb924a8d5b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="aac925a1-e952-4f49-b8c4-8721630af3ef">
              <profile xsi:type="esdl:SingleValue" id="5fb12b9e-c4e2-4492-96af-d19865b6cbe8" value="371.454657">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="daa7f7ca-b263-4b07-824a-e81222e80827" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="26ec7969-76a4-480d-84b3-847a7dcff7ac" connectedTo="9ae27bcf-beeb-4824-a6f3-7b1fd098d406" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="38121ed0-0e4e-48f6-b808-e08fc318c45e" value="2508.212">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="44d33041-1e6a-4d18-9fa4-13d3b2395cdb" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="6a2c588a-9df3-441f-8001-f31509942963 9ae27bcf-beeb-4824-a6f3-7b1fd098d406" id="456731b5-8dcb-4b84-b277-d159f2916af7"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="26d46089-4190-4a59-82f6-a52aa12ff88a da4be1f9-7d17-49d4-b911-18c04c541216" id="719176d9-d62d-45b1-a28f-f0364fd8c46e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640505" scope="NEIGHBOURHOOD">
        <KPIs id="5b39f888-ccdd-4f83-9d5c-2e729c84cb54">
          <kpi xsi:type="esdl:DoubleKPI" id="04f57c37-ea06-4b70-a2fc-ae7be3a927fd" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c72a5dd9-00c5-41bf-b5ab-203ba3524682" value="425583.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="18b4e9b4-d48c-4fef-ab50-2664d175cfe0" value="315.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ab900bc0-e8e7-4a39-a9fe-f012abc2d81e" value="726.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5cfa23c3-400c-4ac4-97da-70d834b9f4ec" value="16933.34131" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a554c966-f977-438c-af3a-3fa814f691b6" value="15194.869289999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5e11759e-c8ac-4412-bb98-c007ad2f02ca" value="2609.4355" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ce450c2e-01c7-4236-a6f0-b22c365b7be3" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="c3c07f39-4c90-48c7-a83a-6cf6c5de6333" value="4160.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="efc246df-9c9b-4d50-b8ba-6f09ea3f6552" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="d77a1e6b-c516-46b2-b557-7229dac97255" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 17012785-6177-40fb-b9bc-2e18d06535a7 5b711049-770c-4e3d-9e72-1900b3778206" id="e12da794-4d3b-4e81-8bab-8aa5188eedbd"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="abc58d58-07d7-4e5f-b691-15bedd70b1b0" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5f1f7bfc-ece0-4738-a49b-3d3cb4c22915"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="d59cc318-41f0-43f5-a8c3-b295b3faddb7" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="476">
          <asset xsi:type="esdl:EConnection" id="e42ab587-b70b-4a20-b4fa-4dffd4ad5580" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b11e7caf-fd67-4454-97ff-55bb1205edb3" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="232b37f3-f777-401d-998c-ce5aa983e5fc" value="9099.84615">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="46bb0657-19b3-4004-b59a-97740df7700e 3d33d6bc-c531-4ee7-b45d-b47a4008a1ca 17012785-6177-40fb-b9bc-2e18d06535a7" id="673b86a7-f760-4d30-ab00-6163e94fe9db"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="95a29c44-a83a-4119-877f-8d0b0aa0d535" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="aff1d7fe-3506-4f8e-a1d5-82481427fd51" connectedTo="820f7ea4-3d3d-436e-9a44-ddbea8862276" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="784b2716-3b20-4c2c-a8ae-1d56bf13f174" value="10243.9553">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c5cd82d8-e3f6-4312-8ee0-8530fc5bef86" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="fd808a70-0493-4afb-9935-1fbe97ac82f6" connectedTo="820f7ea4-3d3d-436e-9a44-ddbea8862276" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f4300c3c-194f-42a5-af77-4d4719805465" value="3842.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f41e59ab-3d0b-4acd-be5a-a5b2602f1eb4" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="46bb0657-19b3-4004-b59a-97740df7700e" connectedTo="673b86a7-f760-4d30-ab00-6163e94fe9db" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2ac19eaa-b9e9-445b-9e13-da9109f1709e" value="305.165145">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6e149d66-3327-47e9-86c6-50e59624b947" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="3d33d6bc-c531-4ee7-b45d-b47a4008a1ca" connectedTo="673b86a7-f760-4d30-ab00-6163e94fe9db" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1003903a-9c25-48b2-8a4b-2f455dcd4563" value="4446.05">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="11a552f0-dd9b-4ca7-918b-358f35c4cacf" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e12da794-4d3b-4e81-8bab-8aa5188eedbd 673b86a7-f760-4d30-ab00-6163e94fe9db" id="17012785-6177-40fb-b9bc-2e18d06535a7"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="aff1d7fe-3506-4f8e-a1d5-82481427fd51 fd808a70-0493-4afb-9935-1fbe97ac82f6" id="820f7ea4-3d3d-436e-9a44-ddbea8862276"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="27.100840336134453"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="72.89915966386555"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="14187.0" id="719a2efb-06f5-461a-9c0f-dda92df28cd1" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="34">
          <asset xsi:type="esdl:EConnection" id="6a610e44-e59e-4009-b97b-2b042cccab48" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="bd19361d-2bdd-4e20-94b3-e0bcbc050229" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="098444b5-9f2f-4f4b-b1e7-7dd588fe99ac" value="6095.02314">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f48c474e-f350-4552-bd3b-e4659ab81336 5b711049-770c-4e3d-9e72-1900b3778206" id="b89c43f7-80ea-4659-8ed0-b5f4ae0228e3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b9a0bd49-0493-410d-bd83-b3fca34b08b2" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f9320755-25e1-4a06-9b09-5ab5b243ec4e" connectedTo="1458a7ad-b7b1-4aa5-b01b-39c7eddb6aa6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="51db2e02-13aa-4389-954b-a9db0c0fba82" value="2702.94311">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="de462c37-b9bb-4e73-b0d5-2ef361c7c24c" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4bacf062-091a-46ae-8966-4bd615e91596" connectedTo="1458a7ad-b7b1-4aa5-b01b-39c7eddb6aa6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="30d7fee5-b98b-4866-aa5e-00976cd942c8" value="144.442895">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4d11b671-e95c-4946-a3c9-f4bdb2dfebe9" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="ecdfa5da-2160-4687-b984-5d7450f5120a">
              <profile xsi:type="esdl:SingleValue" id="b86400d1-8199-4b9e-b0ca-ce4e359b901f" value="1732.52772">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="37b8372d-e394-47df-a22c-1772aa2c1eea" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f48c474e-f350-4552-bd3b-e4659ab81336" connectedTo="b89c43f7-80ea-4659-8ed0-b5f4ae0228e3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="88b27b20-e26d-4d7f-a7e4-94bdc4c41b1b" value="4798.907">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="4b6d9c63-cae1-44bb-8253-aec3f5ba7946" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e12da794-4d3b-4e81-8bab-8aa5188eedbd b89c43f7-80ea-4659-8ed0-b5f4ae0228e3" id="5b711049-770c-4e3d-9e72-1900b3778206"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f9320755-25e1-4a06-9b09-5ab5b243ec4e 4bacf062-091a-46ae-8966-4bd615e91596" id="1458a7ad-b7b1-4aa5-b01b-39c7eddb6aa6"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640506" scope="NEIGHBOURHOOD">
        <KPIs id="d69d873d-6c79-4c30-8add-0d7afd382070">
          <kpi xsi:type="esdl:DoubleKPI" id="f87c922d-d257-42b5-af18-5cd0fd1e2a54" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1d5674d2-50cf-48c4-87ca-fd0b58660c76" value="16676.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="37094486-33df-4d40-94cf-fa0ae5d69d4e" value="322.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8bfd302c-9e37-46da-9731-353b97cc690c" value="1283.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a12c4d23-7d9f-4241-955b-4bc7b5ec145e" value="479.205832" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="32a0fcdb-ff46-4b58-8a7e-0498fd0882aa" value="547.210204" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="71c17e98-ba13-4a12-98a9-28c6f8dc57f6" value="69.85300000000001" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="590a3ed5-42c9-4b65-bf5b-9c0cf4f41d63" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="c397d0d2-cf42-4498-bab4-cf384569b873" value="300.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a1f9d67d-edbe-47ad-a7fa-89eff0aef52d" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="915c5cd5-e884-43a8-95f4-2a06832d8b5a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 dc0af51f-f13c-4a28-92e2-b8a07cd25733 46fa7488-f2a5-4ae4-b019-d75657e8b8ea" id="33d5ff5c-c934-478f-a52f-b77204dcb41e"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="462fe7cd-0196-4384-8931-e606a12d93cb" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="87d4bbe5-7de7-4daf-b874-dc4cd3a2f0df"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="b2346a87-16c2-480d-8f0b-75746d2ee787" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="7">
          <asset xsi:type="esdl:EConnection" id="bf9b07c8-efab-4067-b7af-32e97e0ea706" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9a9137d9-1feb-4f38-8f95-27882fc3b5be" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="afa18b29-f490-4bc1-aab8-cef6b6b0309b" value="178.056777">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="571be410-abcc-4c94-bc0c-f4118624c08e dbcc7d0c-dfd7-4698-808e-c7932514b14a dc0af51f-f13c-4a28-92e2-b8a07cd25733" id="9c833dc8-6a18-43fd-b967-6b68a09de734"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5b146438-c06b-4404-849e-0b71f55f9c12" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="8fe55795-15ad-4862-bf67-e7a335b8d060" connectedTo="29b8c667-c356-4c96-9d14-6dddfab48c33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="46a595c7-bdae-4bd1-9b45-a9732096ca30" value="284.645746">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e7be898d-d133-4b50-89c7-d3410892db7d" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="95d5e31b-4dea-41f5-8b32-61f5ab7ba500" connectedTo="29b8c667-c356-4c96-9d14-6dddfab48c33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1637644c-a000-44f0-950a-2a5a97a2d36e" value="63.5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fb921930-3b74-4c14-95be-fdfe704ad560" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="571be410-abcc-4c94-bc0c-f4118624c08e" connectedTo="9c833dc8-6a18-43fd-b967-6b68a09de734" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fab82d6a-72bf-4b96-83c2-15de8eff3fa7" value="7.38297138">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f8a053a9-2b91-47c9-af62-dc890586354f" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="dbcc7d0c-dfd7-4698-808e-c7932514b14a" connectedTo="9c833dc8-6a18-43fd-b967-6b68a09de734" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8a86a9ac-a22a-4bb7-8775-68053ba5abc3" value="67.1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6077fd8a-6c7b-496b-b294-62511d484aeb" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="33d5ff5c-c934-478f-a52f-b77204dcb41e 9c833dc8-6a18-43fd-b967-6b68a09de734" id="dc0af51f-f13c-4a28-92e2-b8a07cd25733"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="8fe55795-15ad-4862-bf67-e7a335b8d060 95d5e31b-4dea-41f5-8b32-61f5ab7ba500" id="29b8c667-c356-4c96-9d14-6dddfab48c33"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="682.0" id="05e8e5a9-3146-4cec-8240-2760e1967206" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="4">
          <asset xsi:type="esdl:EConnection" id="20d6978f-d7ba-4793-a652-76b23c330442" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="940c6b45-1a41-4be2-bfaf-93835fcaef29" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ddbd77d7-4fa5-46a4-9a13-ec7ba8f50432" value="369.153427">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ed4815ef-81fe-43a1-907f-36fe684469e0 46fa7488-f2a5-4ae4-b019-d75657e8b8ea" id="5733ca97-39bc-4fd5-8e71-cc9eff220184"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="601212ba-b351-4ac0-9f0d-2bcb26aa68bd" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="107706a5-540f-4d38-9f3d-013d8766a965" connectedTo="27fae48f-6b66-4023-b64e-e5486c7009d0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d119e44e-8d26-406a-bb2a-eca916049c4b" value="128.484326">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0993667d-ca36-4003-90ad-36e0f3f682db" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4fb36f6a-a8b1-499b-8b5b-d1dc1fe8aea2" connectedTo="27fae48f-6b66-4023-b64e-e5486c7009d0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="89477bd8-4884-419d-838c-1b0b5358d7db" value="2.57575987">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c435e031-5f1e-45e4-a491-dad31da5b7b7" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0c1dcb14-b48f-41b4-a2f1-d80b75720de3">
              <profile xsi:type="esdl:SingleValue" id="a5ac4d9c-a50a-4f1a-8458-ebcf7eadf400" value="81.8145857">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b86de713-726d-4ff3-b65c-e71f67a4fb88" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ed4815ef-81fe-43a1-907f-36fe684469e0" connectedTo="5733ca97-39bc-4fd5-8e71-cc9eff220184" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ebf6b569-40e6-4c21-9cee-76ac570e9179" value="309.628">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="53e4dca5-d88e-484e-a4b8-72a1746581ce" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="33d5ff5c-c934-478f-a52f-b77204dcb41e 5733ca97-39bc-4fd5-8e71-cc9eff220184" id="46fa7488-f2a5-4ae4-b019-d75657e8b8ea"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="107706a5-540f-4d38-9f3d-013d8766a965 4fb36f6a-a8b1-499b-8b5b-d1dc1fe8aea2" id="27fae48f-6b66-4023-b64e-e5486c7009d0"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640600" scope="NEIGHBOURHOOD">
        <KPIs id="7e270ffb-fdc9-422f-a240-b7c23e1e00da">
          <kpi xsi:type="esdl:DoubleKPI" id="ebbfd018-8dac-484e-8824-6f640bfe43ec" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3803bb00-deca-4ad9-a02d-1f76b5559f4f" value="634369.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d25fdee1-883c-4227-95d5-279a203895c1" value="453.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="05e82b94-7160-4908-a163-a89c44c54381" value="561.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d54b08ea-ba10-4fb9-9ecd-284d2c0436b2" value="19202.3801" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9a7533a1-5f74-4f00-a078-e8c27ff006da" value="36024.330383" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c0de0de5-1226-44c3-9221-b6c036ed245e" value="9639.602" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9be0d017-1178-4389-a03c-75b7a39844ab" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="416b5420-2101-46b5-8ed5-eedcbd779ceb" value="17640.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="ca6e0073-cfa1-4deb-89ba-1d33675fa71c" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="59632581-749a-4b7c-a1e8-f37d15ad29fd" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="74366cc5-ad4a-45e5-adbc-243bdf1642ad"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="bd818499-7c7f-41bc-ac38-448a69df598f" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="e1919b74-d8ef-42de-8356-dbd786cc87c4"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="cc8f0e09-484f-4af6-80c4-bab50b434c9e" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="26">
          <asset xsi:type="esdl:EConnection" id="3cc81260-6067-4f1f-bc01-69a8988bdf10" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9b10aa8b-fdd1-4b2d-870d-aa5b79ed2379" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1f35c131-85f4-46b5-92be-f8e7fc07ffb5" value="614.434683">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e671bb4f-86cc-43e5-8259-31db1831edb7 f2be51e3-7728-4e05-a6c0-b19b10c75268 8b9c09e3-54e9-4c52-9416-d3b635973d97" id="d6826c3b-c841-420f-b283-1360f594dd51"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cf0de952-53b7-405e-bbfc-38ca2efa316a" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f8e15c2d-10eb-43c2-a61c-ce6915ae3c24" connectedTo="c1b023d1-bc59-427a-ac60-ff6e5ba017d9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e0cca0ea-0abf-4c20-80e8-5c31199eadc5" value="965.041598">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c71113f8-343a-4395-9ad4-7f265b2fc5df" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9afa007f-b971-4f80-baf3-744782332f50" connectedTo="c1b023d1-bc59-427a-ac60-ff6e5ba017d9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2b3662a3-8c78-4001-b0f6-9bf3c9571505" value="254.6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="701a5925-693c-4b66-8497-3c11d85dc69c" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="e671bb4f-86cc-43e5-8259-31db1831edb7" connectedTo="d6826c3b-c841-420f-b283-1360f594dd51" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="369d743b-071d-4db0-b8c4-94d73cd53e0d" value="32.567129">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b451d2ec-3d1f-44d9-9c1c-9207f9394b84" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f2be51e3-7728-4e05-a6c0-b19b10c75268" connectedTo="d6826c3b-c841-420f-b283-1360f594dd51" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="60cd8f4b-d722-4589-bc16-be272f294345" value="245.48">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="1a0c1fbb-6cd9-472a-bbcd-f83278128c4a" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="d6826c3b-c841-420f-b283-1360f594dd51" id="8b9c09e3-54e9-4c52-9416-d3b635973d97"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f8e15c2d-10eb-43c2-a61c-ce6915ae3c24 9afa007f-b971-4f80-baf3-744782332f50" id="c1b023d1-bc59-427a-ac60-ff6e5ba017d9"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="3.8461538461538463"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="96.15384615384616"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="143588.0" id="e1e05e73-be95-479f-a519-7c8c1ccb67ac" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="124">
          <asset xsi:type="esdl:EConnection" id="7b89579e-bac5-48dc-b6bb-cb132c4c8bf8" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b654402c-e3bf-40c5-a775-fbc50eb3eb7c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6f784f1c-9c5f-48b1-b0d1-9a2e24a36779" value="35409.8957">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="79742bd5-e23d-465d-80e9-81a416fd8c26 9f8dd1cc-3d89-4232-99fa-cba28f943ebb" id="2cf60035-19db-4c18-b6b0-2ff5136c7efd"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="aaf87eff-46e0-4207-a9cd-a13bbaedaaa2" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3e77ba1a-3478-4d0e-97f0-fb9e27302be5" connectedTo="ed1f8eef-95ca-456c-9d23-4a574876cd3a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="431a59af-1011-44cb-81a4-4b4ce7ed8178" value="17368.6577">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e514c2b7-c7a2-4663-bf16-290e91ea2666" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="b560841c-5a5d-4746-a2e7-f38135bc4c67" connectedTo="ed1f8eef-95ca-456c-9d23-4a574876cd3a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0e36bf02-544f-4bf6-91a5-4887030f60d0" value="614.080796">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="3060df4c-5f31-4478-ac44-fd2ce8d41f5f" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="fdcdc38f-5f33-43ec-abc7-18c49bd0ce97">
              <profile xsi:type="esdl:SingleValue" id="0177a53f-18a7-4816-882e-ae193359e18e" value="5198.21528">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="286cb460-2f9a-41dd-a955-80ca2236cc23" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="79742bd5-e23d-465d-80e9-81a416fd8c26" connectedTo="2cf60035-19db-4c18-b6b0-2ff5136c7efd" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2e0f06df-b273-4fca-af16-ecdeec12fc51" value="29703.224">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="bbf9ed52-f860-4eef-9854-14bc62024d7c" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2cf60035-19db-4c18-b6b0-2ff5136c7efd" id="9f8dd1cc-3d89-4232-99fa-cba28f943ebb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3e77ba1a-3478-4d0e-97f0-fb9e27302be5 b560841c-5a5d-4746-a2e7-f38135bc4c67" id="ed1f8eef-95ca-456c-9d23-4a574876cd3a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640601" scope="NEIGHBOURHOOD">
        <KPIs id="eb536827-a2e4-4f0e-9cda-b2b5e28c20e5">
          <kpi xsi:type="esdl:DoubleKPI" id="a7509dd2-a53c-4980-aa07-8fb2e6859310" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="924acbc6-3cd8-4ce6-8fca-a83c48454b0b" value="1615017.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="48581ad6-3cd0-4a29-b039-171ffc50d937" value="312.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c39e4688-f001-49d9-8a43-3838b64fb56a" value="701.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a20caacc-885d-4028-9fab-84e6ac9b3b55" value="60429.0504" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="21e8038d-33f3-4a24-a838-3b034a53ced4" value="68175.1395" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8050ff0a-d782-493d-aa15-ca930f62d9bb" value="14977.956" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="66a54196-0cfe-4654-a2af-1b6a3b5b0e11" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="fce4f42c-d2de-490b-97e2-4c0a32d7e61a" value="6419.124" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a6365178-42b9-468d-aac0-8e238a855d66" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="7cdab5f0-ac91-4a11-9272-6db28a0034c0" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="8e81f335-db0e-4477-90b7-fc89875a79db"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="8602072e-c6a8-48d7-b3e3-60609673fba4" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="c8b19f43-0694-434e-b446-713b767fb5a3"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3b64969b-3cfd-4d99-9e66-e4bbdab71a01" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="957">
          <asset xsi:type="esdl:EConnection" id="e1a7e7a8-a98c-4d78-b849-0e5cc2f9deb9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="341f4034-9e50-4815-b548-9cac8c123750" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c7be4f13-4347-451f-9260-65fe255aab2c" value="19311.0402">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="eddb5ee4-c4b1-48a8-a85a-900ff284229a 89c045f9-dc4a-443c-ab24-a0bdee2235b9 89f21714-c8e8-4744-af7f-99bd5520b38b" id="fa76d2ce-9484-4be2-b0e2-e473d7ddc48e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6c7506bf-16a7-4a6d-8143-c07d0c1cf2ba" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="04c46e56-21ec-4859-b56c-cd44108b57d8" connectedTo="f2495447-7e4f-4b66-8dd7-89a1ae02b8f3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="851fc0cb-ccf9-479f-93c5-2b2b004e09e1" value="24679.65">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6f669cc9-2aff-4d11-b9dc-37d66312b21e" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="8f2afa83-d833-4aaa-ac92-533923787980" connectedTo="f2495447-7e4f-4b66-8dd7-89a1ae02b8f3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="235e9a95-e2bf-44e4-b5a6-c49dab397b19" value="8253.45">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0527dcc2-de10-4f40-a37e-4535b87bf1e2" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="eddb5ee4-c4b1-48a8-a85a-900ff284229a" connectedTo="fa76d2ce-9484-4be2-b0e2-e473d7ddc48e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="40949e91-48ab-406f-9a5b-78873ea394a6" value="733.810351">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7832d2e0-4b0b-4559-b4e8-ee8a8ea207af" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="89c045f9-dc4a-443c-ab24-a0bdee2235b9" connectedTo="fa76d2ce-9484-4be2-b0e2-e473d7ddc48e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="40a6a670-c817-44bd-a21c-7220dc84d34c" value="9328.13">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="110a9c34-aadd-469e-955d-e798d5e4dbf7" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="fa76d2ce-9484-4be2-b0e2-e473d7ddc48e" id="89f21714-c8e8-4744-af7f-99bd5520b38b"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="04c46e56-21ec-4859-b56c-cd44108b57d8 8f2afa83-d833-4aaa-ac92-533923787980" id="f2495447-7e4f-4b66-8dd7-89a1ae02b8f3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="9.195402298850574"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="90.80459770114942"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="174864.0" id="993eeeea-22c0-4645-899f-b04734e86b30" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="159">
          <asset xsi:type="esdl:EConnection" id="8ccb51e9-f4c9-4c91-84fa-d909fbcec185" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="16416849-12b6-4636-8328-f66a184c5a94" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="480d6032-f7b4-4302-8fb2-731b5bf40c8c" value="48864.0993">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d394be34-565d-4712-bada-0d1346317cd6 5023db6e-6fe6-40b5-9417-741946caf955" id="01bf486b-49fb-4263-8966-2ff301f9336a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="79b247f3-8a54-4cee-a708-1f01880081ff" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="69cc3352-26e9-4750-9373-4b17bfb2b007" connectedTo="6e5ded50-8dc9-4ff1-b1a2-97536095ee9f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bbfff75b-7757-4d96-81cb-dc0dfb986107" value="26287.5326">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="fb7be7a9-ffd1-4a29-8e27-e7ea84cb593e" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="09c3d5cb-58c0-42cc-a35d-ad285713c10b" connectedTo="6e5ded50-8dc9-4ff1-b1a2-97536095ee9f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6b58affc-b724-4616-a2e0-0ae7fa32bbd7" value="1208.4178">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="57bea189-7e04-4219-aef8-6820153a8904" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="76bf37b1-9a50-46d2-bba7-0083de1abfee">
              <profile xsi:type="esdl:SingleValue" id="9fa623da-e8df-4dc8-9f75-b57738b96185" value="10233.6656">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="115ab44f-454c-4674-867e-c8135d2292d5" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="d394be34-565d-4712-bada-0d1346317cd6" connectedTo="01bf486b-49fb-4263-8966-2ff301f9336a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9af4ccbc-8483-4c7d-87a3-302db788a292" value="39819.659">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b235bffc-f745-4892-8d87-18c14f8d583a" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="01bf486b-49fb-4263-8966-2ff301f9336a" id="5023db6e-6fe6-40b5-9417-741946caf955"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="69cc3352-26e9-4750-9373-4b17bfb2b007 09c3d5cb-58c0-42cc-a35d-ad285713c10b" id="6e5ded50-8dc9-4ff1-b1a2-97536095ee9f"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640602" scope="NEIGHBOURHOOD">
        <KPIs id="6a436540-3ff5-472b-81d4-650111147542">
          <kpi xsi:type="esdl:DoubleKPI" id="ab0103a8-9b9f-426f-be5a-17f31a489d05" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="aa0ea44a-f6a4-4a18-a687-0f1bed09db53" value="1477256.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="86942726-92d3-4361-979e-432da87f8562" value="343.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7b1e14e8-0f1c-47b9-8580-75f1ca90a57a" value="868.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bf40cb2f-c512-4e2f-8a6b-709c3130239b" value="50570.56819" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5ad88336-77e6-4aca-8340-61d1bda8a67a" value="41982.8144" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d0330c55-a712-4da0-af44-34b7e68db9cf" value="6990.7285" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ca7f7542-ca88-4c47-89b2-c0142998ce40" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="31810445-eaf6-49f7-b734-56911799ac99" value="8000.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="595a7e6b-7b6d-4506-b090-70d720da1d3d" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="4c0be5f8-6f7e-4be4-8155-5db182920d20" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 4c58845b-52bb-41ef-b962-762f3c4a00e3 cef479b4-0f24-4246-baaf-2bfaebef3dc6" id="2b97842d-cd5c-48cd-b64f-6637765a1d07"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="3ee9e7ce-59bd-42e0-bfc6-e839b66741a6" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="8f76fa5f-e00b-4353-b313-654708f8caa1"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="dc41a35e-380d-4e23-bac6-1e4988dc067e" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1499">
          <asset xsi:type="esdl:EConnection" id="423f78bb-12e7-432c-8d95-6d4c735412aa" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="89813702-5da3-4b7a-84e6-e21eabf5bebc" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8bf07c02-4967-42a1-a5c4-ccb5df60358f" value="29562.0476">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4083a7d2-5a4d-4824-9234-8a99a80c5972 ecb0c822-b61f-4250-872f-66a8f80d8449 4c58845b-52bb-41ef-b962-762f3c4a00e3" id="f2bb5827-5cfb-4fe3-a81d-c7754b9b8d11"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5619ec4b-2af6-457a-8690-361dea075d96" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="1b36d2d9-559c-4a70-80b6-28996960d2ab" connectedTo="9bdab2a8-ba76-4971-bfcd-6fec84e96510" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="96993bea-9ddd-4211-8614-210fe92e1206" value="34654.9823">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1ee81791-73b3-4bb0-81a4-bc56ac4fc776" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="ae7f199f-1525-4915-b757-2755ff1e6b5b" connectedTo="9bdab2a8-ba76-4971-bfcd-6fec84e96510" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="69978ce7-447d-4bd9-99f7-6f612da8aedd" value="11912.9">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b47b3ae6-6f4f-45ca-b29f-a7f49cbdb211" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="4083a7d2-5a4d-4824-9234-8a99a80c5972" connectedTo="f2bb5827-5cfb-4fe3-a81d-c7754b9b8d11" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a1ca5b2b-4581-4fe3-a6f8-1dbf74a38e4d" value="996.88729">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0bed89de-452d-4456-ac4e-e0dd3f08afe5" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ecb0c822-b61f-4250-872f-66a8f80d8449" connectedTo="f2bb5827-5cfb-4fe3-a81d-c7754b9b8d11" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="59e7fa55-c3ea-4e4f-bc16-88ff6e25211e" value="14169.52">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a0379552-e7e8-425a-a058-45a711fee7a8" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2b97842d-cd5c-48cd-b64f-6637765a1d07 f2bb5827-5cfb-4fe3-a81d-c7754b9b8d11" id="4c58845b-52bb-41ef-b962-762f3c4a00e3"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1b36d2d9-559c-4a70-80b6-28996960d2ab ae7f199f-1525-4915-b757-2755ff1e6b5b" id="9bdab2a8-ba76-4971-bfcd-6fec84e96510"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="8.739159439626418"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="91.26084056037358"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="26229.0" id="d3e36d81-d0a7-47ef-ad8a-2fb64c5df692" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="209">
          <asset xsi:type="esdl:EConnection" id="3af2085c-32c4-498c-b5e8-161378c19631" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d7480c6-a4a6-4382-8f10-fd0dc04787a8" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4c957110-5e2c-45e9-a45a-2bd76d5b707c" value="12420.7668">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0ff664aa-25bb-4c37-bffd-c5e826add7a7 cef479b4-0f24-4246-baaf-2bfaebef3dc6" id="dfc95177-ae74-445f-972e-f7ad86615b0f"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="31e1cb98-5327-4919-9bdb-8bf0d3fd0192" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="108f19b4-8e32-4fae-a261-c82415877fc1" connectedTo="d7c9bbdf-5422-4bdb-a63a-ccebef6af282" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="223829db-7320-4dbe-8e34-1570edb7c88d" value="3802.41652">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6c5c9922-3cd5-4737-8539-1fafba2ce522" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="343adb14-8b01-4f57-939e-df07aa4c9555" connectedTo="d7c9bbdf-5422-4bdb-a63a-ccebef6af282" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3239e278-fcb0-4dc4-8e4a-95f7c8d96b02" value="200.269364">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c2bd97db-19d7-4771-bfea-8f00a1421026" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="98c855ad-0acd-4b83-a162-988ba26cb274">
              <profile xsi:type="esdl:SingleValue" id="fccbaff2-e634-480d-ad29-165707ffae80" value="2400.28176">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="92e7da1c-1674-44cb-a33f-ea7241210c80" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0ff664aa-25bb-4c37-bffd-c5e826add7a7" connectedTo="dfc95177-ae74-445f-972e-f7ad86615b0f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f1ce1827-90ea-41a0-b459-f70d0597fa3b" value="10608.008">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="0c1eb5bc-cba1-420e-ba09-eacbf074b4bf" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2b97842d-cd5c-48cd-b64f-6637765a1d07 dfc95177-ae74-445f-972e-f7ad86615b0f" id="cef479b4-0f24-4246-baaf-2bfaebef3dc6"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="108f19b4-8e32-4fae-a261-c82415877fc1 343adb14-8b01-4f57-939e-df07aa4c9555" id="d7c9bbdf-5422-4bdb-a63a-ccebef6af282"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640603" scope="NEIGHBOURHOOD">
        <KPIs id="a39d5e11-33ec-49c6-9e13-c7ea93643029">
          <kpi xsi:type="esdl:DoubleKPI" id="e42d7a01-955f-47a3-923d-d1550ad74edc" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="65ce546a-13ad-42af-be6d-7e328275159a" value="147219.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="44fd52e9-178c-48e1-8ff3-0e3b5de1e84b" value="421.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bdf8284e-523d-476c-8071-2c0552e30504" value="856.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="05e51a7e-b8ca-4058-9b2c-568f9727c73f" value="3473.663401" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="906730de-153a-42a7-8581-19f7d05b71d5" value="6412.404824" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9d146668-125e-41cc-ad8b-79c26ac5bd57" value="1426.6875" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8501885e-cb67-4192-a289-729778d3aee0" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="d59bc813-7e51-47af-bfb9-ed572ff2c8d0" value="7140.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="0581967a-af11-4371-ae7d-9a11ada9bfdc" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="2e08bd78-7749-4c88-96c8-a84bd088bad9" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 7a4f934a-eb2d-4616-8e74-64264c16f50e 8166c2ad-bcf8-4545-905c-4f9f4275d0af" id="51cd373a-f7cc-4117-a7eb-273e99d38f7f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="55075a3d-1340-4240-8d9e-834dc20e9768" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="b5c81742-5fbe-4640-917c-b791ce085b8e"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0e66fc5c-30d9-4ad7-bb70-5b397d9211f2" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="11">
          <asset xsi:type="esdl:EConnection" id="bfa105be-edd9-4063-9285-bc8d9fa592e7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="17931453-2d6e-44ee-8edd-0c8565a9c1a0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="da1d89f4-97a4-4fa5-a545-54a2a2422622" value="268.078724">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9064ee5d-69c9-4acc-96de-1e556322d9e2 968822f9-0cda-47d1-945c-f2adabd774d5 7a4f934a-eb2d-4616-8e74-64264c16f50e" id="c8a789b8-76c7-44cd-a22a-10795ace57b8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a9c89bbf-b0df-4bbd-aed8-704f90729810" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="aad47383-cfc0-4c79-a02c-a117e751c8b8" connectedTo="e9bd8c2d-deb9-4e21-b86c-10483b648b90" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="66085f55-2328-4629-af2a-6844ae3f52cc" value="385.647521">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a93d7cfa-a7e0-4f21-a12b-207d27b76b29" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="d2f7a122-57cd-449a-b89f-506def68913c" connectedTo="e9bd8c2d-deb9-4e21-b86c-10483b648b90" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ad0d150-9675-40b3-bf80-997495b30c18" value="96.1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c2c9532f-862f-44b5-bfe5-d47fdc100dd8" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="9064ee5d-69c9-4acc-96de-1e556322d9e2" connectedTo="c8a789b8-76c7-44cd-a22a-10795ace57b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5a5d1402-f122-4759-8af5-aacc354445b4" value="14.9070842">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="7686fc29-e486-46fc-b1c8-1a766980c957" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="968822f9-0cda-47d1-945c-f2adabd774d5" connectedTo="c8a789b8-76c7-44cd-a22a-10795ace57b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0dbddc6b-dd1c-4b66-95c1-b13c454ca569" value="108.27">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="433a3ee2-2971-4bc7-8622-f5068b473ca8" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="51cd373a-f7cc-4117-a7eb-273e99d38f7f c8a789b8-76c7-44cd-a22a-10795ace57b8" id="7a4f934a-eb2d-4616-8e74-64264c16f50e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="aad47383-cfc0-4c79-a02c-a117e751c8b8 d2f7a122-57cd-449a-b89f-506def68913c" id="e9bd8c2d-deb9-4e21-b86c-10483b648b90"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="20875.0" id="1c846954-0d38-48a2-9433-88d38dfcd426" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="48">
          <asset xsi:type="esdl:EConnection" id="b7620abe-5fbf-464b-a2b6-0f2c427739ca" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="6203647d-ff8e-4ca1-aefd-ba2899bc3ed5" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3ee77033-926d-44ab-8517-094361115001" value="6144.3261">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="6d69b469-3ae4-49f1-ad4a-5df847367e4d 8166c2ad-bcf8-4545-905c-4f9f4275d0af" id="2fd31a4c-3afc-450c-9cf5-40ccaa4c1fc3"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ae495fc9-4f0d-49f8-8052-9b20ca2b7001" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="40a12a91-c9c7-4115-a2e8-11cce32849b3" connectedTo="c229afe7-5517-48e5-b6bc-1128fcfd26bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="76a1fdbe-0a01-475a-87fb-7b11e27251c3" value="2902.65397">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7d502c22-d873-4386-ae1d-49978402d424" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4e0319aa-cec9-4835-bf65-8108730b3d34" connectedTo="c229afe7-5517-48e5-b6bc-1128fcfd26bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="abb8cd41-d4d3-439a-84f8-8f702bae64c1" value="89.2619139">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="af13bf3f-c66c-4b29-a55a-ce707d24f1cf" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f504e7f4-b5fe-40ac-a3c2-ae3bd7186b4b">
              <profile xsi:type="esdl:SingleValue" id="c326b0a6-574c-433c-908c-912c1353376b" value="1158.74958">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="afea71bc-8aca-4685-8d47-3ef5174e3ecc" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6d69b469-3ae4-49f1-ad4a-5df847367e4d" connectedTo="2fd31a4c-3afc-450c-9cf5-40ccaa4c1fc3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6189e45b-a9e7-4f87-abca-10b39d369323" value="4957.825">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="cb197c8a-01e6-459e-80a4-7502f436ccec" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="51cd373a-f7cc-4117-a7eb-273e99d38f7f 2fd31a4c-3afc-450c-9cf5-40ccaa4c1fc3" id="8166c2ad-bcf8-4545-905c-4f9f4275d0af"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="40a12a91-c9c7-4115-a2e8-11cce32849b3 4e0319aa-cec9-4835-bf65-8108730b3d34" id="c229afe7-5517-48e5-b6bc-1128fcfd26bb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640604" scope="NEIGHBOURHOOD">
        <KPIs id="be66dd6b-90b1-498a-b510-464c795cbe5f">
          <kpi xsi:type="esdl:DoubleKPI" id="b7337237-aef4-457a-85bb-c062ed847a9f" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="61e02f7e-a474-4881-852c-55f7fde417bd" value="1883790.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a96e37a6-ebaf-40db-afa7-c1c0b5bef9ce" value="330.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="be1004ff-442f-41cd-b80c-9d5b7163a9fc" value="778.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="93ce4649-6bb7-4f74-9401-6455d2cdaa07" value="74508.93629999999" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="29795f72-20b0-4637-9415-890c83ade03c" value="53261.683339999996" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cc423e12-31d3-4855-9ec2-fd273bfcf466" value="9268.3815" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b1ef31f9-cb7a-4148-a7ae-ba09608132c3" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="fe0694ad-993a-473a-a052-35c7e436f015" value="7300.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="dac20af1-de52-4cde-9e0f-77504a6a9c64" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="8930f03c-2665-4a3b-99b6-d7712a3b6360" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 b8e592f2-d9f7-4bab-b643-1ef9d030944a e49e7036-8969-4bc6-bb93-f171573c77a1" id="c4c01cfb-49ad-4550-a123-ea075eaa0b64"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="a0c69c7f-26a9-4860-8abc-4196c4e8c30a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5414be6e-612b-4eac-8480-8505d1a2c880"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="3256b11b-370d-4525-9e5b-28c47380da05" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="2266">
          <asset xsi:type="esdl:EConnection" id="9c761581-818c-4b54-83f8-462ae34ee883" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="916d3e00-3f8f-4188-a528-67e58e7faeb2" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d42799a-7429-4321-b6c4-bd32d56486d2" value="45291.1141">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0854c976-96e5-4883-b445-d57b1c28d6b5 f0b9baab-4708-4cd7-a851-9cf509ddf5a7 b8e592f2-d9f7-4bab-b643-1ef9d030944a" id="4572a968-1afb-4c9b-9d7c-7feb1a7bdfdb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0b1baa8b-c8bf-4078-984f-a276193b610c" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e6982d17-151a-4baf-a1aa-94c5eeeb8d9e" connectedTo="472f8e78-e9e0-4aa7-90fe-5b63eaa46cec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f8f91abd-b810-4526-b1c2-2ec59fa7b741" value="53726.2873">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="adc6ed39-1798-4181-83ea-943fc42bf526" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="01a3c25d-af2c-4e5a-bde2-4547bcdaed36" connectedTo="472f8e78-e9e0-4aa7-90fe-5b63eaa46cec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b8905f47-3b8f-44ee-8511-0e984fa35b9b" value="18165.45">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2c5b788a-69b7-4301-b620-5030736ff0cd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="0854c976-96e5-4883-b445-d57b1c28d6b5" connectedTo="4572a968-1afb-4c9b-9d7c-7feb1a7bdfdb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4b291f34-98b4-4235-9824-6f1002d26e7b" value="1399.99102">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="205f1ace-d7a7-427c-adfc-43c0f80f7d58" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f0b9baab-4708-4cd7-a851-9cf509ddf5a7" connectedTo="4572a968-1afb-4c9b-9d7c-7feb1a7bdfdb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e7722d85-e548-43ff-b7e4-eea7f68878e1" value="21638.61">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="116bdb23-5dcf-49f8-994c-f2e01e68cd87" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="c4c01cfb-49ad-4550-a123-ea075eaa0b64 4572a968-1afb-4c9b-9d7c-7feb1a7bdfdb" id="b8e592f2-d9f7-4bab-b643-1ef9d030944a"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e6982d17-151a-4baf-a1aa-94c5eeeb8d9e 01a3c25d-af2c-4e5a-bde2-4547bcdaed36" id="472f8e78-e9e0-4aa7-90fe-5b63eaa46cec"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="4.501323918799647"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="95.49867608120036"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="20111.0" id="322dc888-c0c6-496d-895e-6312ebe5a2ed" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="254">
          <asset xsi:type="esdl:EConnection" id="9e8aa066-cd2a-4c92-815a-865aa2a89e5a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="102bb4fe-2db5-4860-a016-93aa33c6e2dd" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f9e6aacd-d38c-455b-9972-c0623a924276" value="7970.56924">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="21bfbe02-2e5e-4533-8803-8189974061aa e49e7036-8969-4bc6-bb93-f171573c77a1" id="5e5ee697-c3e2-4f13-a071-1222d7e91cc8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="51f1bdef-4f1b-45dd-a392-18a99798a987" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="899a1ec6-4711-412d-a948-aa845115629f" connectedTo="ee9a6c9d-61c6-49a0-b6cc-300ada1e1bf9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e3b9988e-c4fb-41cc-91ee-fa9eccc9a46c" value="2485.84599">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="671e8144-32f7-4cca-8208-5055705f8c2b" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="53da77f4-bbc0-43a9-b1ae-c67b20690547" connectedTo="ee9a6c9d-61c6-49a0-b6cc-300ada1e1bf9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7bebf4d5-15d8-4571-a4e2-359e7e88f92d" value="131.353013">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="35644b5a-372d-4091-9fc3-1a436e742db0" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="b94dd770-4324-4a63-8025-fedff7390f35">
              <profile xsi:type="esdl:SingleValue" id="97af853f-e92c-4bc6-b8fc-de6f52e9da62" value="1344.1497">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b718c060-b17f-4c1a-bdf7-dd3c998f430f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="21bfbe02-2e5e-4533-8803-8189974061aa" connectedTo="5e5ee697-c3e2-4f13-a071-1222d7e91cc8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="09fb8bbe-e423-4734-acb9-57c56287cd93" value="6841.538">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8e5f2680-9a20-468e-a613-e8e0c7ada6ee" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="c4c01cfb-49ad-4550-a123-ea075eaa0b64 5e5ee697-c3e2-4f13-a071-1222d7e91cc8" id="e49e7036-8969-4bc6-bb93-f171573c77a1"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="899a1ec6-4711-412d-a948-aa845115629f 53da77f4-bbc0-43a9-b1ae-c67b20690547" id="ee9a6c9d-61c6-49a0-b6cc-300ada1e1bf9"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640605" scope="NEIGHBOURHOOD">
        <KPIs id="af5518ac-e40c-4afc-b063-407c24891a3d">
          <kpi xsi:type="esdl:DoubleKPI" id="5caeec44-96c2-432a-8a93-f4de580a278d" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a1340ada-4497-4fde-a0f7-4b2faa003f52" value="407137.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f599c7af-163c-47be-8c2f-4b7af35dec32" value="399.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a67389c8-7a5a-489a-97fe-18af7e362af8" value="1094.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8d46aef5-488b-441d-b82f-e1eec8654237" value="13404.837941" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0ce0d275-e139-49bb-8536-9ec09b2836c6" value="9317.29241" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2adb7734-b59a-49a2-8baf-6e9a6f35e845" value="1474.6689999999999" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2dcaa087-9419-42dc-8178-8dd1a9e10551" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="f95e41ce-4a96-4f20-86d8-02e2ba75ee2f" value="1600.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="10c811a7-0376-4cdc-a1e5-001f0942e248" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="f66ce5f2-60c3-4d95-a77c-a4e96d686052" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 5df674b7-761e-4355-8315-588e11ee8aaa b12e852b-55d6-4170-bf31-db17ab91ae3c" id="42d2db19-265a-4183-b2fe-a66b43bff102"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="0472c020-c82b-4cae-82fd-e317d77f457b" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="00d2222e-17af-4f6a-97b2-bcc34dd977ef"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="39df4fb9-1a72-49e0-9894-c56643ced06f" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="338">
          <asset xsi:type="esdl:EConnection" id="cd6e04a7-fcf8-4db7-a7f4-c71d7e99fb67" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="610a91e8-b235-486b-8592-7243d3213714" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="18be650e-ec66-4788-aee8-09b83ae9ce3c" value="7492.46166">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2b6560a5-2dd5-419a-857c-c58f56ee37cc 619cd8a0-7c15-4300-bec3-3e1b746edbdc 5df674b7-761e-4355-8315-588e11ee8aaa" id="b0fffa72-b283-4efb-9427-de69344a47d2"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="22ed3b98-b438-41f3-9ac7-47b9175c19e7" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="2f4e8e1d-abf9-4bb2-96e8-c7a7fa3379f9" connectedTo="8a0361b6-af2e-4ea2-b8d6-71f5bbee71ca" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="61cf557c-7ed2-425d-8f34-2888a1b93cbf" value="9885.63628">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="eee5f6f5-8da0-4e90-be70-9f3d93340b0b" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="49d0f059-b28f-4bc6-abc8-18864799e18f" connectedTo="8a0361b6-af2e-4ea2-b8d6-71f5bbee71ca" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d653b9d3-8998-4769-8f27-813fdf2846b6" value="2803.6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d7ccf7fc-23a1-4dca-a170-d7877b1b70ab" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="2b6560a5-2dd5-419a-857c-c58f56ee37cc" connectedTo="b0fffa72-b283-4efb-9427-de69344a47d2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1cef2e41-7a05-4e8d-9f0b-a8ea540a72d3" value="310.247297">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a14de80f-1c72-4d8f-b1a8-ee3ee28dd46a" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="619cd8a0-7c15-4300-bec3-3e1b746edbdc" connectedTo="b0fffa72-b283-4efb-9427-de69344a47d2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="be52e900-ddab-4837-92e9-455d03ff5aa5" value="3332.34">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="aca06296-e8dc-439a-9b12-842df8268db6" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="42d2db19-265a-4183-b2fe-a66b43bff102 b0fffa72-b283-4efb-9427-de69344a47d2" id="5df674b7-761e-4355-8315-588e11ee8aaa"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2f4e8e1d-abf9-4bb2-96e8-c7a7fa3379f9 49d0f059-b28f-4bc6-abc8-18864799e18f" id="8a0361b6-af2e-4ea2-b8d6-71f5bbee71ca"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="3.5502958579881656"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="96.44970414201184"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="4386.0" id="f6bbc9d6-3142-4133-84be-99e18cdf246c" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="68">
          <asset xsi:type="esdl:EConnection" id="a989e20f-216a-4cff-ac03-463f3156960c" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0b7ed9ed-61fa-42d7-b85d-8942f0f843f6" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3e9f3bc7-49d5-46ff-9614-702473a40441" value="1824.83075">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="387a6d73-e81d-4bb8-a51c-b595ef88745c b12e852b-55d6-4170-bf31-db17ab91ae3c" id="362e13b0-155f-450b-8fd2-c32715d2a6ea"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cc0e6988-060f-4570-a8ea-fb5a1c3c0993" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="823c86e9-7d69-41d0-afa5-20dccbf686eb" connectedTo="5b4c2927-17c5-48c3-870c-2817cd0844a8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4bf671ff-953a-48f2-a655-fdc48120e828" value="670.187695">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b016b7b5-25fe-4194-a57e-9a2031d721a4" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f834198b-6835-44e4-a826-eef0fd22c273" connectedTo="5b4c2927-17c5-48c3-870c-2817cd0844a8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e28ac8b1-75cc-4238-bdcd-f582ae73f2e7" value="45.4139467">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="1b44e9e8-29b6-489c-9f63-c53a6ddbfdb1" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="1c8a5bf6-3a10-4263-b13f-9725f292e50b">
              <profile xsi:type="esdl:SingleValue" id="10ed437d-0f69-4dd7-822c-64b8b770217f" value="531.486239">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b9ee938c-e019-42e1-9a9d-07ccb61f9d7c" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="387a6d73-e81d-4bb8-a51c-b595ef88745c" connectedTo="362e13b0-155f-450b-8fd2-c32715d2a6ea" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5f184034-8f9f-4e36-9fb0-ff9eaeecda83" value="1473.621">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d487b34b-b342-425c-82ff-29a47ac2155c" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="42d2db19-265a-4183-b2fe-a66b43bff102 362e13b0-155f-450b-8fd2-c32715d2a6ea" id="b12e852b-55d6-4170-bf31-db17ab91ae3c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="823c86e9-7d69-41d0-afa5-20dccbf686eb f834198b-6835-44e4-a826-eef0fd22c273" id="5b4c2927-17c5-48c3-870c-2817cd0844a8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640606" scope="NEIGHBOURHOOD">
        <KPIs id="ccd586f9-b580-4724-8d1b-f55faf399db0">
          <kpi xsi:type="esdl:DoubleKPI" id="2ddfd00b-3c37-4193-af5b-4237be31f019" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="641c0b6f-a270-408e-bb57-9ad1d4e104b4" value="41033.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4eac6b73-3fde-4470-83f2-3b963b3c9253" value="272.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9ea4bc49-0576-4676-975b-42873a0891df" value="334.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eca6a264-b970-4ff1-af9f-c5336774b2f6" value="2555.13163" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="950fabb7-9d1c-462e-858e-9d9a48eb61d5" value="4773.5186385" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4b635f8c-ef63-435d-8e31-8866ddc32d18" value="1041.649" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="05ef8b61-0848-4737-b488-f64eba626167" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="656069bd-c536-4286-b197-6979a08597bf" value="3200.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="15bcf132-b860-4e37-b518-26964a895079" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="dc298cba-8167-467a-965e-f4f524ed4198" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5331555b-7688-42cd-8b3d-1fceb9d1ec7c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="6050804e-89f7-4ac5-b1a8-2b40da8eb49c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="22e4191a-7f1f-4160-bdef-a6d21ba8c1e0"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="4e1319c3-5743-4ec5-9d6c-1f83a9f3f8fd" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:EConnection" id="e2389f7b-0ce0-41b7-b959-0e5f8c3ba46e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f706728b-bc53-4e97-8734-8a5082a2c856" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="05b39f10-7da0-4e93-ba90-80fdd94f26e5" value="66.2396185">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f4dbae77-b82b-4338-b820-e23935f96ec2 f138b1d5-9998-461f-a8be-b0a4d26be3ca 259ee139-0d33-4838-9267-6013641b859d" id="95232ed6-dd32-4816-a31f-016c42789baa"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b0e94a96-3e34-42a6-bd79-3d19b251d19e" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="fba0eb54-6000-420c-b609-80ab0339049d" connectedTo="e373d5b2-d6aa-4f54-9ba3-4e706bcafcc8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="eb99639f-c315-456b-9719-50693d945932" value="103.35153">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0f1b3c77-5690-49cc-a1ba-cd8e479c7710" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="a2bfa986-5594-4de2-aa34-fabf5e429cca" connectedTo="e373d5b2-d6aa-4f54-9ba3-4e706bcafcc8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c3337da3-4c29-4599-b1fc-5fbe80350276" value="26.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="53406b89-919e-4897-ad33-aa6e299d2cd9" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="f4dbae77-b82b-4338-b820-e23935f96ec2" connectedTo="95232ed6-dd32-4816-a31f-016c42789baa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="648f48d4-5235-4aaf-a11c-6e4ff0fa72da" value="1.62612226">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="946608ab-d8cf-4e7e-bf67-34ebe05f4513" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f138b1d5-9998-461f-a8be-b0a4d26be3ca" connectedTo="95232ed6-dd32-4816-a31f-016c42789baa" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c356b05f-6047-4d46-ba01-d5ae7bfd54e3" value="28.82">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2fce025b-153f-43ae-a560-d841834cc05b" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="95232ed6-dd32-4816-a31f-016c42789baa" id="259ee139-0d33-4838-9267-6013641b859d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="fba0eb54-6000-420c-b609-80ab0339049d a2bfa986-5594-4de2-aa34-fabf5e429cca" id="e373d5b2-d6aa-4f54-9ba3-4e706bcafcc8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="15506.0" id="43227b85-97cd-42e3-b5b2-0dd085061cd7" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="20">
          <asset xsi:type="esdl:EConnection" id="51e63f4c-b8d4-447d-b817-0207944e3c82" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e78db288-f32b-46ba-ae9f-1cd9635051d3" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8df64452-6817-4caf-b1c4-9a0bb0b510d1" value="4707.27902">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="66253728-d785-4c96-a0ee-cac3a0911389 16a76ab0-3e6b-4fa9-940a-3218d8635542" id="bf59f09e-66ef-44fd-8451-2b81d8557355"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dcf79108-1fdc-497f-a869-e06072c6f4cf" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b65e1555-b5c0-4b20-bbbc-63801d85f056" connectedTo="92fcccbb-460d-41b0-9bf1-2a815d4d3f35" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="44127bf8-6d34-4e61-b86b-7ee8bc86de1d" value="2357.62091">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e231eae9-81b3-4e39-90a2-763e5bdf3a1e" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="55cd3a43-4e5a-47b6-8469-9af676de62e0" connectedTo="92fcccbb-460d-41b0-9bf1-2a815d4d3f35" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="90d4ca67-b9bf-414e-89b9-648e261c6925" value="68.1591892">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="d7296d64-ef00-4fc6-a004-875bc44b7f3a" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="9f067126-4abf-4703-8e17-1e731ad683d6">
              <profile xsi:type="esdl:SingleValue" id="30f1702b-2204-4225-ab69-1cd2684b6e01" value="777.830089">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="8761f581-13c9-4a8a-9774-87a6c91906d8" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="66253728-d785-4c96-a0ee-cac3a0911389" connectedTo="bf59f09e-66ef-44fd-8451-2b81d8557355" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7588be99-6bed-446d-8aa4-41b08ac9e8e8" value="3929.706">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="ba6f0faf-9097-4aca-b81f-2710ce6b5909" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="bf59f09e-66ef-44fd-8451-2b81d8557355" id="16a76ab0-3e6b-4fa9-940a-3218d8635542"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b65e1555-b5c0-4b20-bbbc-63801d85f056 55cd3a43-4e5a-47b6-8469-9af676de62e0" id="92fcccbb-460d-41b0-9bf1-2a815d4d3f35"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640700" scope="NEIGHBOURHOOD">
        <KPIs id="6af1ddbe-dff3-424c-b24d-c9d4a77933b2">
          <kpi xsi:type="esdl:DoubleKPI" id="89af3abf-83dd-4add-9f5a-f54229341d25" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1094e6d2-bc44-4af7-96b3-fd5255f4a681" value="749240.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="85a993b5-0931-4108-bbef-b6bfc2b42458" value="412.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2f3ece17-6b4a-47d6-9557-48cb70d931b1" value="593.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="634a8755-6d03-4955-85fa-4507f3ce28d2" value="29095.31613" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="505b5ade-9f3a-409e-930f-fc0d0cbb4e44" value="71379.53529999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="34b90fb5-8965-4185-805b-5d8206fec109" value="10652.733" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="456ca477-b702-4482-b363-8f1485ce8ee3" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="ece4997b-3ec8-40b7-94c1-b7a1ddd864f5" value="15120.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="b4955398-faf5-4ac5-a153-53c62ab6caca" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="7514577e-1068-4cea-9bd1-ee9f7f26eb70" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="e6e61a04-9552-4a6a-b3bd-a01fa6416ddf"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="ad70a720-8e2f-4544-9fad-32c849a96a3c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="2220aa8c-4506-42fa-ae49-0164ba324366"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="cfcbff89-2eaa-4f79-a6fb-4fe051d00926" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="53">
          <asset xsi:type="esdl:EConnection" id="6c472fd6-15ec-4353-8a16-7cf230c560e8" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="b4965da2-995c-4470-8fd2-b0d2631158bf" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="250067c5-28b2-4f40-a68e-13d99a77a11f" value="1164.6114">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d8e6cbc2-59d6-4327-84a0-16df11f250f8 40cbfca3-1d6b-45c6-863e-72a91410ceab ba199e70-1ffa-4b72-aeb3-a40fb5468f31" id="2b9800aa-ab9b-4d49-ac6b-c1a4c6d93199"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5194921a-7e1d-430d-a33b-e6af2f6ed4bb" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7195ba3c-89cb-4621-8aac-d1c9267de7c5" connectedTo="2dd24fac-1649-41bb-bc29-f98985fb439c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8db6bf48-dbe4-42a2-bcfe-1950d3ccbd50" value="1836.91303">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="3edb2b10-bf96-4ff5-b007-55062d1c199d" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="ce88b710-67d7-4e75-b497-02059ced4137" connectedTo="2dd24fac-1649-41bb-bc29-f98985fb439c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fb86d7a3-550f-4661-8e52-2ad1dbd7bf57" value="505.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="47386a4f-73b5-41f6-8374-d8f678501ccd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="d8e6cbc2-59d6-4327-84a0-16df11f250f8" connectedTo="2b9800aa-ab9b-4d49-ac6b-c1a4c6d93199" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="de534cd1-51fb-4bd4-b0e0-6bcb7b1923d1" value="31.4216096">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="688e0d28-5334-44a0-9851-0915d13184cf" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="40cbfca3-1d6b-45c6-863e-72a91410ceab" connectedTo="2b9800aa-ab9b-4d49-ac6b-c1a4c6d93199" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0b7509f3-a783-4cab-8ff1-5218c5213785" value="493.74">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="90bea007-c0dd-40a0-a0f0-250ed419246b" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2b9800aa-ab9b-4d49-ac6b-c1a4c6d93199" id="ba199e70-1ffa-4b72-aeb3-a40fb5468f31"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7195ba3c-89cb-4621-8aac-d1c9267de7c5 ce88b710-67d7-4e75-b497-02059ced4137" id="2dd24fac-1649-41bb-bc29-f98985fb439c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="11.320754716981133"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="88.67924528301887"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="157402.0" id="98200c98-fa62-423c-9eef-7ac3ddd6ea68" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="183">
          <asset xsi:type="esdl:EConnection" id="0bb6832b-4b5e-4a33-a7e5-f0fa0f9bc485" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0d9165bc-99ec-477f-8ece-db2ea6112da5" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c9a4b792-f57c-4dbf-9e27-444f3894fdcc" value="70214.9239">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b7bd1a7d-cced-49de-8264-0339c103ed5e ae645644-93ae-4c78-ad8c-a88d994bdc80" id="9e2c83b2-8ec1-4980-bac8-e37a4bf92d1d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="df66b3f7-a99f-447e-8ac1-da040c842830" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="06d99132-5e2b-4e73-988f-9947fea8ae71" connectedTo="a3ce2175-8f6a-412d-bcc2-2f4f62a7df66" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6885caf7-1490-4679-9602-e7cccbd698cb" value="26126.669">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a995a430-b91c-4b05-8897-b8e6537dc8bd" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="fc125e3b-9423-499e-8c54-06d256f386a2" connectedTo="a3ce2175-8f6a-412d-bcc2-2f4f62a7df66" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8d4660bc-258d-47f3-b8ab-5ac0659a1c6f" value="626.034178">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="348718ba-ea93-4892-b669-68da78292ec7" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="40bc6c7a-3b0e-40e2-8dcb-e6cbf288e106">
              <profile xsi:type="esdl:SingleValue" id="5e53cc64-8ec9-4d7f-aec3-8a85a79549ae" value="9827.31817">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="79526bfc-2f8d-4f86-ab1f-eb71387c5be2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b7bd1a7d-cced-49de-8264-0339c103ed5e" connectedTo="9e2c83b2-8ec1-4980-bac8-e37a4bf92d1d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1d032fc7-7b0d-4ed3-8aa0-23fef96155b8" value="61498.791">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="52c97fba-0d1a-4c12-aacb-46cdeb87b32c" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="9e2c83b2-8ec1-4980-bac8-e37a4bf92d1d" id="ae645644-93ae-4c78-ad8c-a88d994bdc80"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="06d99132-5e2b-4e73-988f-9947fea8ae71 fc125e3b-9423-499e-8c54-06d256f386a2" id="a3ce2175-8f6a-412d-bcc2-2f4f62a7df66"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640701" scope="NEIGHBOURHOOD">
        <KPIs id="6aa7f4dd-8439-4789-8dbf-df47844aa2d5">
          <kpi xsi:type="esdl:DoubleKPI" id="17750216-6aae-44aa-9a36-266a9728cd87" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="23d19939-8f7b-46d0-abde-abf4e14704d8" value="1436476.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6132c166-fd46-496b-8e6e-182209f923bd" value="342.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="df496431-d782-451c-b2a4-4d7c8c295125" value="843.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="78e4f953-48b4-4aab-9a6a-1f70307df424" value="58092.284799999994" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="99372466-d863-49c5-b30d-b41998a78c10" value="52037.153600000005" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="146e424c-87e3-4f3b-b47b-4b2dadaca284" value="10602.2455" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5fc41fa9-21f9-4892-86c3-9c8c03781398" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="32725f60-64a1-4390-b0a3-b0eaa4b486e2" value="6590.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="0c80f6a4-18ca-479f-8370-e882a32e07ba" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="1f79c2cc-83e2-445b-9a62-c933ce3ed88d" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="738bd888-0eb2-4989-8bf9-9a9dfaf4c578"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="62001790-afcd-4e39-a871-333fee15f1dd" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="1111de79-f2b8-4ee7-a856-ddc4970384de"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="bd713562-5795-44d6-b45e-9c134cf3bc89" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="800">
          <asset xsi:type="esdl:EConnection" id="d1537f1e-23fd-47dc-a4c3-ecda100a9689" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="995aa2c0-0f39-47c8-a51f-5d142606187c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ed22fdd-7d0e-4948-a4d8-de3cdb0db3b5" value="15266.0307">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1e8fa9a7-294e-498a-9c7d-5bf08c8acd22 4f992ca3-5d9b-48f8-bda0-8632848a95ce 3eb8fbdf-ec19-445b-a2c1-1ff57308a122" id="4b96f3d7-b30e-458d-b5d2-e243e4ed4dcb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1746f960-309c-46c1-a281-cd643168327f" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="ca36b896-db4a-4751-8b82-ee9c86b1c09a" connectedTo="ea8e4853-bb38-4f1c-b153-5e4cdf14e8f9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c0738662-4df8-44f0-84c9-b57c025a1ba0" value="19482.579">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="037ca821-c46a-466c-bb09-1f25fb3ab560" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="bb58176b-7605-4f0f-81eb-dd92cac898a3" connectedTo="ea8e4853-bb38-4f1c-b153-5e4cdf14e8f9" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="92f60cdf-1f42-4e9f-855d-02bc26649852" value="6533.15">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fdecc260-0343-48b1-967d-c1b841652751" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="1e8fa9a7-294e-498a-9c7d-5bf08c8acd22" connectedTo="4b96f3d7-b30e-458d-b5d2-e243e4ed4dcb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6a343109-2cda-41aa-912e-de349c443c48" value="531.085164">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="45ff2561-cea7-4e85-a480-1b741fbb8f86" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="4f992ca3-5d9b-48f8-bda0-8632848a95ce" connectedTo="4b96f3d7-b30e-458d-b5d2-e243e4ed4dcb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0d3d1d8d-8cfd-46b9-b4c1-6ccd6ab024fb" value="7492.2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="eb6ae324-512d-48f9-8d99-c0467f8575eb" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="4b96f3d7-b30e-458d-b5d2-e243e4ed4dcb" id="3eb8fbdf-ec19-445b-a2c1-1ff57308a122"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ca36b896-db4a-4751-8b82-ee9c86b1c09a bb58176b-7605-4f0f-81eb-dd92cac898a3" id="ea8e4853-bb38-4f1c-b153-5e4cdf14e8f9"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="14.875"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="85.125"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="117327.0" id="e7d6388f-8aee-4eaf-8164-e8daf866c946" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="157">
          <asset xsi:type="esdl:EConnection" id="0e3015df-e652-419f-bb2e-9e890790fa2e" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="213248c6-5ae6-4028-bd1f-d31539c38d8a" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4cfec560-84b6-4382-aac2-223b39cc1cb4" value="36771.1229">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b3c19a6e-df48-4d22-912f-e7de34036db1 ea4ef400-b1dd-4231-991a-7ede79be829c" id="9aeeddd8-a5fc-4a83-ac37-577b4c94af12"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b1bd4771-32ce-4738-b608-8561b325ef21" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="0363452d-345a-45d8-8ea9-e44fe004efaf" connectedTo="8ec4f671-0afe-4b7f-b09a-da01c3379ecb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ff857ebc-fdcb-4a3a-98dc-b5563a8452de" value="28543.2239">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bf85f01b-a23c-4474-9af0-738bb74aabe2" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="2f995cda-f527-479c-8465-48a45615ccc9" connectedTo="8ec4f671-0afe-4b7f-b09a-da01c3379ecb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4a1e9e40-d411-412e-a1b2-ce28593fea09" value="3533.3319">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="5fb57e97-1750-4403-9907-0aa6b31cbd32" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="444cdb99-9945-49b3-b1e4-417bbf5d33db">
              <profile xsi:type="esdl:SingleValue" id="1a0381e7-7589-460a-8c79-0a4a7d86d72d" value="5739.14302">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="881ad332-c7d2-4fd6-a1d0-0fb1ad569c68" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b3c19a6e-df48-4d22-912f-e7de34036db1" connectedTo="9aeeddd8-a5fc-4a83-ac37-577b4c94af12" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3f4586e7-5ed9-4a2c-893b-cddb2100299e" value="26733.687">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c730576b-1590-4140-8621-2bf58cf55533" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="9aeeddd8-a5fc-4a83-ac37-577b4c94af12" id="ea4ef400-b1dd-4231-991a-7ede79be829c"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0363452d-345a-45d8-8ea9-e44fe004efaf 2f995cda-f527-479c-8465-48a45615ccc9" id="8ec4f671-0afe-4b7f-b09a-da01c3379ecb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640702" scope="NEIGHBOURHOOD">
        <KPIs id="729ff221-f453-4490-8863-e339d2b59094">
          <kpi xsi:type="esdl:DoubleKPI" id="5c91b7b0-5c60-45fa-8441-2e13790d7fc6" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2f0d3ebd-8da3-405b-a408-c9126ba7ecfa" value="1101450.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="03477ab1-5d81-4a4b-a98c-a143574ea569" value="358.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ca0da7e9-9b3a-47e7-b398-117ddc28a464" value="858.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5d4a7dea-716b-4c65-8445-d59178d35bd4" value="40684.19193" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cf160444-1a9b-422c-9e39-2305ab435004" value="29602.041100000002" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cb38a4d1-7544-4fc1-9535-858bdf62d76c" value="5307.9145" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a8cad40a-46f4-4cf4-8389-f63bb9874ce9" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="96440a7f-868d-4dd8-94cf-f839a09db780" value="5260.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="d57efe43-84f8-4935-96d3-55a2327e519f" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b8668aa5-ebab-4c99-aa12-fbb89d0d75a5" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 312de687-563e-4780-93cd-bc348bdb9786 ab4dad39-c589-4dd5-b028-96d0bf538f9f" id="bf72bb1e-27e8-4b4d-8914-7e6ce57c88b5"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="9418baea-db8d-48b2-8228-61a9db526bdd" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="31b3e770-8bb2-4e75-8e29-609ea9ecc3a6"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="49cdcf09-1a43-4fa2-a08f-6e9bf1f75ad7" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1123">
          <asset xsi:type="esdl:EConnection" id="37256257-59df-408f-aa4a-efbdae1c6f39" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="052841e1-fe3a-4016-9f02-4b48b70d6ee0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ae9488d8-c01e-4828-8ce1-23f607f589bd" value="23132.2919">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="186bad83-739a-4037-8aa6-6139686d040e 6302ac8c-8405-4445-b426-96c31955dedc 312de687-563e-4780-93cd-bc348bdb9786" id="e411dd3d-fea3-4dc8-a7a7-b3be766ec122"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d7e98de8-f1f5-4863-92c1-3798355faa66" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a48afcde-50d1-48c9-bba8-9d3a0a44ee3c" connectedTo="b0923165-f76f-4b1a-a6dc-5b8a8dcd1edf" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0b77c763-54f2-48b6-9eb9-cedf37ac70d7" value="28833.2596">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e14bdca1-964c-40ec-9b51-20745973ad7a" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="c2326e40-1c4b-4f1a-897e-27ecd31f9edc" connectedTo="b0923165-f76f-4b1a-a6dc-5b8a8dcd1edf" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="203ea104-16ab-4327-a086-59cc07d7eb24" value="9056.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d8288a44-f3d6-41e7-bb93-f9a693a5f969" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="186bad83-739a-4037-8aa6-6139686d040e" connectedTo="e411dd3d-fea3-4dc8-a7a7-b3be766ec122" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c2bc4ccd-8bf3-4d68-90be-5c6e162d4539" value="757.088352">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c5b08cef-ad5d-4a75-b6aa-74f5fd6bac30" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6302ac8c-8405-4445-b426-96c31955dedc" connectedTo="e411dd3d-fea3-4dc8-a7a7-b3be766ec122" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0c097ba3-5eea-429b-9bbc-56a59e3fec32" value="10753.63">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="832ab76f-8c70-47d3-9ad0-4cdfaac79519" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="bf72bb1e-27e8-4b4d-8914-7e6ce57c88b5 e411dd3d-fea3-4dc8-a7a7-b3be766ec122" id="312de687-563e-4780-93cd-bc348bdb9786"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a48afcde-50d1-48c9-bba8-9d3a0a44ee3c c2326e40-1c4b-4f1a-897e-27ecd31f9edc" id="b0923165-f76f-4b1a-a6dc-5b8a8dcd1edf"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="4.808548530721282"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="95.19145146927872"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="20713.0" id="d21749eb-ab62-4e34-ae7b-a6946f1cad68" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="176">
          <asset xsi:type="esdl:EConnection" id="6664f79e-5677-4b2f-a2d4-1bade5da8622" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1924ac7b-b2d8-4126-b766-fcfff5c585be" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e6656b8a-c3c5-4165-bbf6-2207d346e525" value="6469.7492">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0c7d7f23-a2b2-460d-9fce-25abfbec3975 ab4dad39-c589-4dd5-b028-96d0bf538f9f" id="905d3021-e525-452e-80a9-3e324d38792a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="36a401b8-53d6-4faf-b8f0-42004ffd6f67" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="458596da-594c-4d2e-88bc-82f202144c98" connectedTo="6dcf6ac7-079e-4db7-a166-a03d1012a516" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="53eeddbf-2f53-4db9-af28-31f0393b2336" value="2665.37295">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="895d2a74-adb6-4af0-8c73-09433e90b525" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="869f50dd-f566-4a19-bf17-013026c73e32" connectedTo="6dcf6ac7-079e-4db7-a166-a03d1012a516" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6e227b18-eda2-4866-8ef4-2a9bef2facf9" value="129.159378">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="e3c8b7e9-c1ed-4939-b6b8-1d6e35aa52f4" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="62f9e62b-d19e-4cf0-8783-0fa327dadf5e">
              <profile xsi:type="esdl:SingleValue" id="fee88831-c341-47ad-ac21-d522d3664d3d" value="1310.79473">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c500be7c-1aa1-4efc-b82a-dc26243cfa9f" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="0c7d7f23-a2b2-460d-9fce-25abfbec3975" connectedTo="905d3021-e525-452e-80a9-3e324d38792a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="33403982-9db9-43e8-800d-0eeb8d9902be" value="5297.096">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="adde67cc-f4e4-49f2-a41c-4d7140cd9e01" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="bf72bb1e-27e8-4b4d-8914-7e6ce57c88b5 905d3021-e525-452e-80a9-3e324d38792a" id="ab4dad39-c589-4dd5-b028-96d0bf538f9f"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="458596da-594c-4d2e-88bc-82f202144c98 869f50dd-f566-4a19-bf17-013026c73e32" id="6dcf6ac7-079e-4db7-a166-a03d1012a516"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640703" scope="NEIGHBOURHOOD">
        <KPIs id="eb824098-cc5e-4744-934d-984fb46d3d4b">
          <kpi xsi:type="esdl:DoubleKPI" id="53a4d3a8-9058-496b-92e3-694dd5d44b00" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a1a7e448-47f7-411b-997f-95d2ddb763cb" value="1067808.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="256d686b-7cc7-4aab-a3f5-540befefc23e" value="285.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a6b81f28-49d3-4a62-86a0-e713087ef22c" value="582.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fa00dfcd-7d5f-42cf-8e57-3ef44a6b4808" value="51697.55879" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="65da6a8b-c4e4-4981-be2d-ef8ca2499e6b" value="25343.169840000002" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d96a927a-2b97-4287-8da9-f3ca7970d9ac" value="3282.783" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="27c8b3f2-4513-4c2e-b289-9e8aef6f8989" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="ac597af3-910f-4d96-8cef-fe9087a61846" value="5920.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="1dc9135a-4d0a-4f95-a81e-6a82ef2ff21b" value="s2d_d_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="50887362-fee8-4082-94ee-f7f3bc1b3e9c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="f1947158-3d4c-4f9b-97b2-94b6cc0d6b23"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="eb603b98-e9fa-4b33-9f10-5305a8576f22" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="17bdb731-0ef7-4724-81f2-30662dbea074"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="17b47396-5699-42dd-b8de-85eedb923a41"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="31c71635-01d9-4c7f-bb3e-1e9badc7dabd" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="1595">
          <asset xsi:type="esdl:EConnection" id="a46d3ad8-5466-436c-8ba6-31dae1071520" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1b9ab90a-60aa-4bfa-9dbd-9ec716b5f90f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="28e18a5c-8f0f-4826-9d1d-6aac37af1427" value="15358.8416">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="874e0391-76fd-4c68-8c0d-dab6f9f4b816 8f1cd718-5fd7-41d2-9f7b-0290f92fc040" id="7211ae43-4d4b-4ad5-9db7-583bf1b9c8be"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="fb41e882-e43d-4c87-92f2-68c8567980f6" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="b685e715-18b2-4afd-8999-1f438813b5af"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a91278cc-99fe-4d66-8035-aee43024c0c9 c5d7124c-81fe-4d73-a9fd-224a77753891" id="392b1e13-e257-4f4b-a544-a86dcaf3028d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="127ddc2e-63cc-41b9-9ffa-e1d0a29f9ba7" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a91278cc-99fe-4d66-8035-aee43024c0c9" connectedTo="392b1e13-e257-4f4b-a544-a86dcaf3028d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="181e8d9f-3b04-4e92-85ed-5ce8a18d18d7" value="35496.3083">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="04c57eee-a254-4118-a69c-5a2b80c00be0" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="c5d7124c-81fe-4d73-a9fd-224a77753891" connectedTo="392b1e13-e257-4f4b-a544-a86dcaf3028d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="78d159b9-5427-4017-ba1c-b26aed4737c3" value="11540.3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b1da8008-3e04-4f87-843e-a4d511e6acea" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="874e0391-76fd-4c68-8c0d-dab6f9f4b816" connectedTo="7211ae43-4d4b-4ad5-9db7-583bf1b9c8be" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="efee7096-b283-4bd4-b22d-6a50b082ada6" value="17.5103648">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="842fc2d3-a249-41b3-9f67-001d6a2e7780" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="8f1cd718-5fd7-41d2-9f7b-0290f92fc040" connectedTo="7211ae43-4d4b-4ad5-9db7-583bf1b9c8be" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c3974354-85ee-4746-b61a-90525be55410" value="14250.52">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="13.35423197492163"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="31.724137931034484"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_C" percentage="4.952978056426333"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_D" percentage="49.96865203761756"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="31238.0" id="dcf72463-bd8d-4cbc-99e8-8972f38439fd" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="228">
          <asset xsi:type="esdl:EConnection" id="d190fd91-4417-4497-84a9-a73404273f07" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="29a9e838-7981-4482-9473-826c329538d7" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dd1f5af8-4282-4663-a40e-d55c21af1ea3" value="9984.32824">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="73c15be7-9ac1-48f4-b802-f6d94108facc" id="13258248-e2ca-4360-bc18-3bfac7de20f4"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="18d89f1c-d8aa-46da-ac58-d5692198250b" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="944ef9bf-f14c-4df3-8870-538bf682b608"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e39bf388-85a1-4b05-a08f-2d542ab6525b 83995771-1594-4db4-9a8f-ae029ca844f6" id="24d10e4d-282d-49f4-bb71-ccbd15d05e3c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bc00c727-23a4-43f9-b603-ed0fbf155196" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e39bf388-85a1-4b05-a08f-2d542ab6525b" connectedTo="24d10e4d-282d-49f4-bb71-ccbd15d05e3c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8b6c6093-9a01-41dd-af14-04e2d0c7b44f" value="4397.48334">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c786de9f-36c5-4253-a73c-71596ebbfbd9" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="83995771-1594-4db4-9a8f-ae029ca844f6" connectedTo="24d10e4d-282d-49f4-bb71-ccbd15d05e3c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0a6db343-7b76-46db-8bf8-c38665c88020" value="263.467152">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="9fb71fe7-d746-47b7-9220-fcd7b075db78" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="26e289b7-7c44-4605-b671-ba92546c54ae">
              <profile xsi:type="esdl:SingleValue" id="d29168b7-2f53-4596-8a3e-1cb303f5ae79" value="1679.4684">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ffc5aef9-e9ba-4f38-8e9a-2f0a097bc6a2" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="73c15be7-9ac1-48f4-b802-f6d94108facc" connectedTo="13258248-e2ca-4360-bc18-3bfac7de20f4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3a2b6512-8957-44dd-8005-9f98d3ce0af3" value="8550.463">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640704" scope="NEIGHBOURHOOD">
        <KPIs id="69673ad9-32f5-4ef5-8114-ac7db754d158">
          <kpi xsi:type="esdl:DoubleKPI" id="b04db4cc-8fef-49c0-aead-bdea277b4f15" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="dd0a040c-8528-41d7-9aad-d2d0b040eccd" value="172097.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="32e75126-7b6f-4c3c-b2c6-85e1a1784daf" value="85.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a481ff27-e1c3-4450-a272-40b4e14c9f9b" value="182.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="036a595f-854c-435f-8051-4634359959eb" value="34351.5856" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="12e84be0-d5c8-432a-9184-a848f6e5dee0" value="45325.338754000004" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5041ce94-c890-4f51-aaaa-083dc01cf4c7" value="3491.364" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b9d56c89-22b4-4fea-ae59-4de73f3922d7" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="19802e30-8b0f-4471-85e5-41b7bae7fd64" value="6520.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="adab34f3-3ee7-4858-aa71-7a4013ed1ea7" value="s2a_b_restwarmte" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="931f9728-eb41-499e-b545-515f5c1888f2" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="3d9155a6-93e5-465e-b00a-6f786dc2c6b2"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:GasHeater" id="3d847b20-0d9b-4dd7-a85b-090f07d8eb5b" name="collectieve_g_heater" aggregated="true">
          <port xsi:type="esdl:InPort" name="InPort" connectedTo="7fb6b20e-8958-4f83-abcd-1df12c35a00a" id="2c50a6ab-cfd5-499a-a4b7-78899773f487"/>
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3" id="11e6ae89-631e-462f-8701-8cf0adfc751f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="122504.0" id="16040b15-1c0e-4e03-84ff-194c7f26bb4a" name="aansl_rest70_collggheater" aggregated="true" numberOfBuildings="152">
          <asset xsi:type="esdl:EConnection" id="965ffeec-20ba-40e6-b33e-745fdb4efc62" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="8f3e5c67-a6c1-4b0b-b6b5-ffbc996a5f2c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="41024847-aae4-4af6-87a4-39c8b600d142" value="44983.7324">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e6934e3f-a8e5-464a-ba69-eba10efe236c" id="48d65782-1739-43e8-830d-69baddd643bc"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="166.66666666666666" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HConnection" id="4d44f03b-cafd-4bd0-990c-4386556f4117" name="Heating_mt_connector" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e70c7a2c-9f7b-4362-85ce-3941fedb35ff" id="268f4036-ce2a-4ff3-ba62-fbd1cf665ba3"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2cb516f7-eb98-460b-beca-996b189abb04 fd3f20f8-56c4-46bb-a092-fafa232c3874" id="349a8b1a-8b7b-4002-b7b3-5ab081bf3011"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="333.3333333333333" lon="166.66666666666666"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8fb028ea-5cdf-490f-be0e-bee17a5eee19" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="2cb516f7-eb98-460b-beca-996b189abb04" connectedTo="349a8b1a-8b7b-4002-b7b3-5ab081bf3011" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d48e3c66-555b-4422-9e7a-a44394b81daa" value="32937.5478">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f432b8b4-0d76-485f-8803-32935168aa2c" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="fd3f20f8-56c4-46bb-a092-fafa232c3874" connectedTo="349a8b1a-8b7b-4002-b7b3-5ab081bf3011" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="76459043-228e-4933-a904-a61fa00fd103" value="1414.03775">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="8cfc4272-0667-4819-9f51-ad203ca1dc8c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="e3c11630-9cb3-4134-a06e-c5ec90e0e0c3">
              <profile xsi:type="esdl:SingleValue" id="4eb7aada-ee96-42a9-b3ee-a0a079b2e201" value="16911.6529">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="333.3333333333333"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="525415b9-0f12-48f5-8157-da1e6cfad5f0" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e6934e3f-a8e5-464a-ba69-eba10efe236c" connectedTo="48d65782-1739-43e8-830d-69baddd643bc" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3f3553a8-ff3e-4d78-88ef-2ce1315f531b" value="44642.126">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="333.3333333333333"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640705" scope="NEIGHBOURHOOD">
        <KPIs id="ab2222c7-3944-4e83-8489-794726594f53">
          <kpi xsi:type="esdl:DoubleKPI" id="82f3d9a6-0a21-4235-a704-9ff36abe2c4b" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7a295655-d598-4518-9d00-d63a756e1600" value="217021.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3ec340f5-1399-4a60-aa67-93821c18d1ed" value="321.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5218ba05-7006-456f-b72a-083d27ae85a4" value="580.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="dbac8834-f48a-4ecc-9c39-afb3aef9fb36" value="11516.4778" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8bf34366-b597-4831-8966-a39804bea76e" value="22698.2296" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="77af72ef-681a-49f3-8873-516e229ee3f6" value="3231.7005" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bcca62de-a32f-452f-9a1b-b695803a7450" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="f3ad717b-c351-4456-a333-5eadf1014475" value="7480.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="e89759e6-3d35-4853-8a85-3ae204f657a5" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="162e4ed2-2c3f-4684-8bb9-2cf22ddf74df" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="89ad879c-9042-48f9-a3b6-3707100f476c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="8e24aa07-9587-4d2f-bfb0-ad5f4591630f" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="0dd33163-f659-4154-97b0-611f9a843cdc"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="48597.0" id="582ad044-1a4e-47ec-92f8-27ad7e3b4b1f" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="173">
          <asset xsi:type="esdl:EConnection" id="960a6da7-2d34-433c-b36f-8fb934e7a4c9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="08eb6dd6-9975-4d86-b17b-fe21c9cfdfb0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b161c45d-4ca4-4dba-8956-b3609cd15377" value="22698.2296">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e47d2a2c-4235-49d2-b72a-4a45af7cf0ec c5ac7164-4a17-4b7c-9b6e-45eead13dcba" id="45a6818e-2209-442f-80d2-bfb1693e2b45"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="df73bc82-9517-449c-897b-b5280868075d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3c3a3cd5-78c8-4467-8ec8-70d7eff7abf2" connectedTo="5d42f5a3-73b6-45f5-8b5d-ed4b6ab2ebc1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ab0620a9-efe0-40f9-9363-5ee7157c0747" value="11246.3314">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="bab130b0-a0be-4db4-8282-5acf9c13cdb9" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="da07d16d-a8e9-42f6-8074-6cca95e8e57d" connectedTo="5d42f5a3-73b6-45f5-8b5d-ed4b6ab2ebc1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cb07de74-74dd-458c-b678-1455d4e60487" value="270.146355">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="38e2e1ea-31e2-45ac-85a6-a23eaab43fd5" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="5b73d996-35c6-4cd4-9243-1efc53a3fa08">
              <profile xsi:type="esdl:SingleValue" id="acb97651-063f-41b9-81e2-5cd3d54dae72" value="5461.22233">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d1ac1a69-94ba-49c2-a965-7fa3ccf65d14" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e47d2a2c-4235-49d2-b72a-4a45af7cf0ec" connectedTo="45a6818e-2209-442f-80d2-bfb1693e2b45" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6c78f9b4-b3ea-4fd4-8b2c-19770b0ef755" value="18792.191">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c3a01448-f9e0-4212-8e72-13e846e9733b" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="45a6818e-2209-442f-80d2-bfb1693e2b45" id="c5ac7164-4a17-4b7c-9b6e-45eead13dcba"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3c3a3cd5-78c8-4467-8ec8-70d7eff7abf2 da07d16d-a8e9-42f6-8074-6cca95e8e57d" id="5d42f5a3-73b6-45f5-8b5d-ed4b6ab2ebc1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640706" scope="NEIGHBOURHOOD">
        <KPIs id="0691ffe5-ca8f-4825-827c-2e3e70385899">
          <kpi xsi:type="esdl:DoubleKPI" id="45f86be7-dcbe-417d-b5a5-b87e626250a8" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ece42ec6-272d-4fd8-b18b-5c69b4f41cf0" value="156768.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c7efa92e-dcea-4f51-a5af-056d6cf949c8" value="235.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="916d3c83-396a-4ef7-b88a-1e63a9635272" value="262.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7771baa6-be62-4ec0-ba33-dce13b2a90b8" value="11381.368243" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="71a8df53-49cd-4691-a1cf-22c32f418c4d" value="46971.4568273" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3244e48e-4569-4261-8188-b4638d5c71be" value="5167.533" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c32b3251-ba96-4d2f-80b1-5e6038fe0c8f" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="e9bf4074-175f-4b21-84fa-4e7f638fd242" value="4580.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="09e5a8ab-4e52-4d6b-9891-92466c1a8fc3" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="d8bc61a2-6489-4390-ae15-12055a86f3b0" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="47b959c0-c710-49cd-b97e-4d1c855770c0"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="f8865130-f518-43f8-ae7f-bae971ce49dc" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="faff8450-20b1-43a8-aaa3-b115433a5fe1"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="fc266b31-622f-4153-b4a9-0f48dfcef651" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="2">
          <asset xsi:type="esdl:EConnection" id="7d3ea06a-699e-49d6-91c0-96532ba1a3a3" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="5ab3e0a4-8502-4ae3-b8f5-29565ca13319" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9fc5309c-4aa6-45e2-991e-3882f5a15813" value="49.3286273">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="5bb14805-5e88-45f8-b327-8a02c63f7150 9744816e-151f-42ac-9393-5251b492759c bc4d3f42-2bab-4938-a923-1ba5dd1cc5c8" id="9444abbe-a891-4bf5-87f8-adaeea933260"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2bba29e7-54c0-43b4-b40d-ceed3c5f5b5b" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="fd54e6e3-9c74-4d5c-b206-2f128d8724a0" connectedTo="44ff38f2-9c74-46ef-bb9d-51927f0fd6f5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="440e3044-18f7-4569-9472-e3b4e0c3193a" value="82.3421433">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="cdc9ec71-c741-47f1-9e16-f3a6a5d1fe30" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f98a7c36-ab79-415c-9a07-0c8dbd49ef07" connectedTo="44ff38f2-9c74-46ef-bb9d-51927f0fd6f5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="53d5596a-d321-4766-83b7-a8bbf40b34e1" value="18.2">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5c96a928-db95-4014-a654-0d8760ec08cd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="5bb14805-5e88-45f8-b327-8a02c63f7150" connectedTo="9444abbe-a891-4bf5-87f8-adaeea933260" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ed697d6c-d794-448f-b526-7da8d1a08ea3" value="2.6571425">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5cf29b38-9f3a-4002-a8cb-be250f9f04ce" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="9744816e-151f-42ac-9393-5251b492759c" connectedTo="9444abbe-a891-4bf5-87f8-adaeea933260" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="36fe0ce5-1b4b-4282-baf8-2107f55f906b" value="19.16">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b649b464-2489-4e73-86ca-07ff2acf0553" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="9444abbe-a891-4bf5-87f8-adaeea933260" id="bc4d3f42-2bab-4938-a923-1ba5dd1cc5c8"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="fd54e6e3-9c74-4d5c-b206-2f128d8724a0 f98a7c36-ab79-415c-9a07-0c8dbd49ef07" id="44ff38f2-9c74-46ef-bb9d-51927f0fd6f5"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="77602.0" id="2e61a860-d090-4d46-aa5b-d4b2a7e01776" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="16">
          <asset xsi:type="esdl:EConnection" id="cba32a16-f986-4cab-973a-ecb3ae99a1dc" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="062e852b-54bb-491f-9f2d-063d197509bd" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bcb8518c-d5bc-47f1-80da-165b362a2b3f" value="46922.1282">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="df34f826-10fc-4693-9dd6-3818ec4cf5bb ce581d2c-8e98-43a2-b840-6d1f46d5a3a5" id="5077b39f-cdca-425c-ba25-bde97c2fd7b1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="1a9b7bd8-6700-4f20-9104-e9bdf4e8ad05" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f7669aab-e4ff-44f3-a28a-8a372953d6c6" connectedTo="a5fddbfd-2d48-46d1-8f47-2298604fcb10" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0d84668c-bf51-44c5-a257-0e51b3ca7468" value="10952.3258">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9c14da88-7e91-4283-be7e-9fd10f2ff42b" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="95d71ec4-15d8-41b7-9ce9-5a2d368f145d" connectedTo="a5fddbfd-2d48-46d1-8f47-2298604fcb10" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bb07cf1c-5516-4d67-9a77-5f79f9574e89" value="328.50028">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="402a7def-9494-4719-9f01-662b1fc0fb24" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="27209c0c-4e22-43c3-ad80-74bc9021eb35">
              <profile xsi:type="esdl:SingleValue" id="4e1eb4fa-f483-4a9f-b99f-839b4d27b386" value="4148.0302">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="5d9df8aa-1099-473e-8116-70ec98d04d05" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="df34f826-10fc-4693-9dd6-3818ec4cf5bb" connectedTo="5077b39f-cdca-425c-ba25-bde97c2fd7b1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f0797234-d09f-420d-bae8-2019360da95f" value="43238.339">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="158c370b-0a1d-4a56-a223-1bd86c40c059" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="5077b39f-cdca-425c-ba25-bde97c2fd7b1" id="ce581d2c-8e98-43a2-b840-6d1f46d5a3a5"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f7669aab-e4ff-44f3-a28a-8a372953d6c6 95d71ec4-15d8-41b7-9ce9-5a2d368f145d" id="a5fddbfd-2d48-46d1-8f47-2298604fcb10"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640800" scope="NEIGHBOURHOOD">
        <KPIs id="9527da3f-eaa8-4d2f-9229-540c9cdbdf1a">
          <kpi xsi:type="esdl:DoubleKPI" id="2cee97b9-aaaa-4523-99d9-3290b3118658" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4da4dfc2-c131-4264-9c9c-524bebcb3ab4" value="846650.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4f4b3bad-a824-4bf0-9da6-69a809e58a44" value="320.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="90ed7129-3bcd-4ffd-9fa0-4cc0e29f8bb5" value="774.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c36a3bc9-035d-4c81-a30c-6d6a06c88f38" value="38824.7425" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8cdda6d0-9317-488d-b4e8-6dd78dc0a89d" value="25516.10864" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f8319e85-8fff-4b08-b246-2cf06c99dc15" value="4337.6900000000005" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a7c13fb3-50d6-48d8-92bf-12d77efee480" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="2f5187a1-6904-44c8-9871-5adf2a4ab228" value="5060.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="022741c8-7cb8-4699-a071-d86c9da20f98" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="9153d0cb-e810-4dd4-9274-b6d6531ad079" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 2efc3cc2-8d97-4918-ad0d-076af5be0e97 c7ce4585-5219-4799-b0f1-0d74f3ccacdb" id="cad62f31-c4c0-4080-82fa-a673d63be638"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="9ae5c866-1b37-4ff5-a9e0-2dac58382aef" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="95d52673-de11-4f70-8315-89109c14cc46"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="c03307c6-86a1-411f-9775-d761a7233597" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="995">
          <asset xsi:type="esdl:EConnection" id="efe898e0-fd49-4ab2-9ed5-b908ac597f62" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c01d194c-4fe8-418a-a4b2-e2b3a7bc5170" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fe908d73-ea91-43a2-b289-806dfff8c144" value="20808.8249">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4197026e-5f39-4683-bda3-e71eb75211fc 288ae090-0b15-4ad5-8604-ca07e762e099 2efc3cc2-8d97-4918-ad0d-076af5be0e97" id="efab8147-e4cf-42f7-a83a-f39108261a33"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="99b32aa2-938d-4b3c-9df8-26a196ed77b2" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="5a3b5ca7-67d3-4b8d-96a0-3d04a790d5a9" connectedTo="8e428105-7c8e-4bdd-8c0c-26f81332716d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f30330c6-6239-428d-b55d-a8c10b6ecc1f" value="27644.2114">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="97b4d791-e8f0-49b0-b3a9-112259302f72" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="dda64990-6b96-4c8a-81fb-9b28be4614cf" connectedTo="8e428105-7c8e-4bdd-8c0c-26f81332716d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="456491ec-f076-45a2-9538-8ced56b5eae5" value="8327.6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bebf7a02-8dec-4817-a51c-2f9802e8d841" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="4197026e-5f39-4683-bda3-e71eb75211fc" connectedTo="efab8147-e4cf-42f7-a83a-f39108261a33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9da414cd-21a2-49ad-85b9-38e9ad2ee01f" value="310.348339">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6390f917-3e80-4fcb-8494-4a3182803e08" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="288ae090-0b15-4ad5-8604-ca07e762e099" connectedTo="efab8147-e4cf-42f7-a83a-f39108261a33" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8b3951a5-682c-42d7-939f-364bc23fc01c" value="9567.79">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="527a9655-09f6-436f-8dc1-380dae594007" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="cad62f31-c4c0-4080-82fa-a673d63be638 efab8147-e4cf-42f7-a83a-f39108261a33" id="2efc3cc2-8d97-4918-ad0d-076af5be0e97"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="5a3b5ca7-67d3-4b8d-96a0-3d04a790d5a9 dda64990-6b96-4c8a-81fb-9b28be4614cf" id="8e428105-7c8e-4bdd-8c0c-26f81332716d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="7.236180904522612"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="92.76381909547739"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="12860.0" id="57f30b17-8433-45ee-b663-5b2a1efe4f2f" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="25">
          <asset xsi:type="esdl:EConnection" id="c320a24d-4fb7-45f6-8dad-faed932c91f9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cc84bf4c-351a-4c25-98b4-a3dfd296a357" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b1b224ca-fbf3-490d-9ae0-fe688b4e569e" value="4707.28374">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="78ad8666-255c-4e61-bb52-f49f7e12cbb1 c7ce4585-5219-4799-b0f1-0d74f3ccacdb" id="1cd61811-e7f7-4af5-8311-acc853ccc12f"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="24bd34f8-d318-463b-825a-92940d91c196" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7d737138-1583-4bee-aaf4-db8ea6e0fa6f" connectedTo="bcd066fa-6af2-4c10-9338-9c04185c5555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="956aa189-7aa1-42d3-a44d-a05ba23d62e7" value="2718.91772">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4c727b95-31ad-4155-9186-f38e57781bef" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4d138baf-2de4-443f-8a4c-7cf4f7aa91bd" connectedTo="bcd066fa-6af2-4c10-9338-9c04185c5555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="97af8f76-13c4-4ebb-9174-528ebd19303f" value="134.013375">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a74c1bcd-659d-4e1a-9019-4c5158f48b9c" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="df4ad53f-aebc-4f1e-8525-b42c2f7eb883">
              <profile xsi:type="esdl:SingleValue" id="1fb1c012-abd6-4ff9-a911-0f4eb740b1d8" value="1060.67576">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d5ad1a04-f582-4642-9e56-1a58915227e7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="78ad8666-255c-4e61-bb52-f49f7e12cbb1" connectedTo="1cd61811-e7f7-4af5-8311-acc853ccc12f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="16e626f6-31b2-4d39-bb4f-ff89c22f7eae" value="3579.159">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b1794ff0-78b7-45bc-94aa-b5e6b1832c51" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="cad62f31-c4c0-4080-82fa-a673d63be638 1cd61811-e7f7-4af5-8311-acc853ccc12f" id="c7ce4585-5219-4799-b0f1-0d74f3ccacdb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7d737138-1583-4bee-aaf4-db8ea6e0fa6f 4d138baf-2de4-443f-8a4c-7cf4f7aa91bd" id="bcd066fa-6af2-4c10-9338-9c04185c5555"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640801" scope="NEIGHBOURHOOD">
        <KPIs id="f5475124-2fe7-42a2-bf37-88fd2934555f">
          <kpi xsi:type="esdl:DoubleKPI" id="2a4cf9e6-8f9f-44a5-893f-a4dd3a663659" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0f3f5a62-c8a0-414f-af57-e1656bf8601d" value="498953.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a6bb6bd0-d19e-4ee0-8bca-d03a9f8427e5" value="250.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="523c2898-a243-4e52-a980-9ec9bc9b9157" value="509.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c1497a71-9d03-447a-ad13-f8116400dbaa" value="30948.081199999997" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0925bee1-eb91-4cb5-9393-0956769b2a4c" value="19950.47222" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5273b298-e4a1-4322-b210-aae1c75650c2" value="3661.4165" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7eeda955-f765-4c29-b5c6-259aafa0e548" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="e6941f90-4eb8-4a2c-a688-352ac65ee40c" value="2900.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="fff1abd0-4165-4bcf-9ce4-3b804c5629a7" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="c8af7443-525a-43f2-912a-067f023710f9" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 6951fe93-b00d-457d-9ff3-64919fed30f5 f7a3bf4d-a350-4369-a69c-89d3a9b3e61d" id="51468568-1703-47cb-8644-b4c1a2ee1fd6"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="6497e3f4-974f-4f72-9bbf-473e09766ded" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="816aa50a-9881-414c-a968-a1cb2141494f"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="a1b89356-9dba-4ecf-b746-326be40c46c9" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="934">
          <asset xsi:type="esdl:EConnection" id="9b561420-cc54-452e-9574-d0069744425a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e962c64d-623d-4ba8-a3b5-ee6ede1c9566" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="35a27b86-41a2-4334-8729-f5aa6c7779d6" value="17932.056">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c60f04bd-9a07-4748-a915-2dec4f945213 7a4665b7-340f-4b56-ad05-95c0a06fc63b 6951fe93-b00d-457d-9ff3-64919fed30f5" id="34b5b5cc-0664-4d46-8308-de9c69d6fb82"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e25635c1-0504-48fa-88b4-cdba5f6fe2bd" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="1e157184-9c08-4b2c-a550-83e53cf6db6f" connectedTo="1b0e7538-c280-4bcb-9c38-ad25a221f545" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="113f8c6f-6f71-43e2-bf8f-105b53d397e4" value="22025.099">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="18e32b2a-44a3-4e9b-8ddb-b8a99c80a4c7" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="dac71dcb-e382-40c8-997e-721b27274066" connectedTo="1b0e7538-c280-4bcb-9c38-ad25a221f545" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5d53181d-d02d-45f7-8c54-ad9b47aed370" value="7318.75">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="398bbc27-de09-4efc-b044-07e1c96acb3a" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="c60f04bd-9a07-4748-a915-2dec4f945213" connectedTo="34b5b5cc-0664-4d46-8308-de9c69d6fb82" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3db1c9d0-26d3-41e2-8e37-d07fb2ceb889" value="5.08676344">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e877c1cb-67f9-4e2e-b2a0-11fe095ba7e9" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7a4665b7-340f-4b56-ad05-95c0a06fc63b" connectedTo="34b5b5cc-0664-4d46-8308-de9c69d6fb82" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f6c07efa-db47-4db9-b610-b8093747466e" value="8992.55">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b23f68c5-f38a-44b1-b993-6994c5b755ec" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="51468568-1703-47cb-8644-b4c1a2ee1fd6 34b5b5cc-0664-4d46-8308-de9c69d6fb82" id="6951fe93-b00d-457d-9ff3-64919fed30f5"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1e157184-9c08-4b2c-a550-83e53cf6db6f dac71dcb-e382-40c8-997e-721b27274066" id="1b0e7538-c280-4bcb-9c38-ad25a221f545"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="17.66595289079229"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="82.3340471092077"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="5901.0" id="1e76976f-1ca5-4a6c-9a7c-043214e496a0" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="17">
          <asset xsi:type="esdl:EConnection" id="d099faa9-d085-4878-b042-71a296b9e5ba" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="e9d9885e-a562-4dc4-8b3d-32eeaa1694b6" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ab7fdde8-f5a4-4484-8a6b-85b902b3f2bf" value="2018.41622">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="71803fa4-766d-4775-975c-3683e6c2174b f7a3bf4d-a350-4369-a69c-89d3a9b3e61d" id="4e89dbe6-7ee3-40e3-98a9-3e1ad0848b45"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5508cd4d-b2a5-4bd5-a070-76243afcc566" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="375842c8-19b3-46f7-854f-6684c82bb633" connectedTo="720c4bf3-9df2-47af-a730-fe2b613950b1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f8b57c26-8b8d-4650-ab24-935fe7d0bad6" value="1513.88708">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5c550d64-6abe-4c9b-b9ff-39ca504f1b72" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9e8365b8-4887-423d-b4be-9a47bf332c5e" connectedTo="720c4bf3-9df2-47af-a730-fe2b613950b1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="18e4df62-fc9d-437a-ae3f-60cc2cebc61f" value="90.3451167">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="131f6e53-7d2a-4466-9f4c-787723276975" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="8ee60c23-c49d-4ec4-a4ac-ecabfd050361">
              <profile xsi:type="esdl:SingleValue" id="46c9ac35-727a-4fa3-adcf-6527f0bd2209" value="429.131588">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="90895b01-0ecd-45eb-9eaf-5619b435ccc7" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="71803fa4-766d-4775-975c-3683e6c2174b" connectedTo="4e89dbe6-7ee3-40e3-98a9-3e1ad0848b45" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ff928486-39b3-4f45-9e04-ce9be8b04636" value="1423.493">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="237f44b3-414b-48ef-9698-749b78b5a215" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="51468568-1703-47cb-8644-b4c1a2ee1fd6 4e89dbe6-7ee3-40e3-98a9-3e1ad0848b45" id="f7a3bf4d-a350-4369-a69c-89d3a9b3e61d"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="375842c8-19b3-46f7-854f-6684c82bb633 9e8365b8-4887-423d-b4be-9a47bf332c5e" id="720c4bf3-9df2-47af-a730-fe2b613950b1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640802" scope="NEIGHBOURHOOD">
        <KPIs id="ef6212fb-cf43-454d-8a61-7251ca3b9377">
          <kpi xsi:type="esdl:DoubleKPI" id="f30e8c62-512d-41aa-8e03-52d030b17b22" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c1705c98-1f82-40d8-9fe6-e3789e1c942d" value="438204.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5ea2d3e9-a302-4661-864d-544a3d818cde" value="215.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2d04f462-1207-4eab-958c-5567ba75dd52" value="471.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6792d47e-85c7-4a3c-a612-a2395a4bd858" value="31434.40208" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="595d8d92-6e92-487d-83d0-884fc42ad96f" value="22910.6956" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="40a703d7-10e5-424f-9f46-b0949cf80a1f" value="3695.251" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ac858b5b-a570-47cf-b96a-12ed72d3c325" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="3853b0a0-9cc9-4999-b541-84a43d1505b4" value="5300.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="ceb4ed9c-6041-4432-9b66-ceff40a880ad" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b1fb7b7f-6fdb-47af-adf5-9864ac45d375" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 51e1d5ac-e97c-45df-b65a-0ea4dc1aa0f4 9c959e55-3c45-4ad8-993a-7af387801df2" id="b01ec123-a67b-4b4e-9e82-52ed360014b5"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="3b396d67-2f6c-4f0b-84df-0c7108d86ed8" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="983cf1d9-9d2f-45c6-b8d5-6ed662619a22"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="6fc3d7ac-b105-4f98-ba10-d7e9df142c9c" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="845">
          <asset xsi:type="esdl:EConnection" id="c7dbfbeb-6695-40ba-a8b6-e5a012eaf142" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="f728b1c9-5b49-48f6-9080-10491c589da9" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a2d3c67c-fd13-4d72-8359-aa63ce67d0cf" value="16763.2285">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7fffcdaa-8613-4288-8484-f5c397e4b3a1 2175a646-af3b-462e-9425-80081cf68dd4 51e1d5ac-e97c-45df-b65a-0ea4dc1aa0f4" id="682df39f-bde0-4e3e-919b-99fb0cb372a1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="617df524-41d3-46e3-98ad-85cb05c77eec" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="79c97fcd-251e-44d8-b31c-100694c58113" connectedTo="ab659199-40eb-42e9-8fe9-c58c3eb84d28" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c75b2ffb-43d0-4feb-a761-2c1e54159284" value="21724.7973">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4d7a2f92-6ba6-4c84-a34b-c8342a142dbb" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="0899efc6-ac1b-4682-8859-737e552e9baf" connectedTo="ab659199-40eb-42e9-8fe9-c58c3eb84d28" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6b0bf678-80ff-4a7a-8791-c1ed10c772dc" value="6895.65">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f32f2ae5-d787-4b0e-86ce-8512526bbd45" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="7fffcdaa-8613-4288-8484-f5c397e4b3a1" connectedTo="682df39f-bde0-4e3e-919b-99fb0cb372a1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa796ab4-f79d-45ab-9ff2-60db7728261e" value="1.7771828">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6f536d41-2371-4f95-81d5-3689604f34d6" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2175a646-af3b-462e-9425-80081cf68dd4" connectedTo="682df39f-bde0-4e3e-919b-99fb0cb372a1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="504c3541-b820-4669-b388-7b5b6b9c7739" value="7999.13">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="86af3096-f239-41d1-b20d-fe4b1cb0ace0" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="b01ec123-a67b-4b4e-9e82-52ed360014b5 682df39f-bde0-4e3e-919b-99fb0cb372a1" id="51e1d5ac-e97c-45df-b65a-0ea4dc1aa0f4"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="79c97fcd-251e-44d8-b31c-100694c58113 0899efc6-ac1b-4682-8859-737e552e9baf" id="ab659199-40eb-42e9-8fe9-c58c3eb84d28"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="13.254437869822485"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="86.74556213017752"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="11094.0" id="1776207d-67e3-4449-84ef-501d50c8d2cd" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="29">
          <asset xsi:type="esdl:EConnection" id="d67a954d-e8bd-4d64-b6aa-f608a967ac49" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="22cb1f68-a4fb-418b-8e1e-eb3c7494814d" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8cf9a46c-4785-4916-be1e-9a21741c9ff2" value="6147.4671">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2096b010-0f7f-47b4-820f-7c48d11865e8 9c959e55-3c45-4ad8-993a-7af387801df2" id="3a6be5d8-5ad5-4db2-9779-7f7ea5700f74"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7b86cd69-bad8-439f-9e48-28067f629c13" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="e1fd0afb-6393-4f54-94e8-34af2cc94b2c" connectedTo="91733e75-9e7a-44a8-bffc-c3acacc06707" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bb6e7caf-21be-4993-96e4-2b17e452ec68" value="2651.24292">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="93f6640a-fd34-4fe4-95bd-88572384b7e6" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f0de1924-f466-4e69-9405-38ba9fa0cfa4" connectedTo="91733e75-9e7a-44a8-bffc-c3acacc06707" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="90b23a1e-84e6-4cec-9407-83dc43841012" value="162.711866">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="f732a257-0c88-4011-b43d-1a407a549560" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="f15a9171-a74c-4fc6-862f-ac06d63f7c50">
              <profile xsi:type="esdl:SingleValue" id="e2aa28c3-0321-413e-ae18-b8743da21300" value="1225.17812">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3e18f28d-763d-424d-a552-b4e49b7895fe" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="2096b010-0f7f-47b4-820f-7c48d11865e8" connectedTo="3a6be5d8-5ad5-4db2-9779-7f7ea5700f74" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="62cb1efb-96eb-469a-b663-ce5d8d9e5d01" value="3762.478">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="550e1776-16f6-41e5-af48-72a29805fca1" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="b01ec123-a67b-4b4e-9e82-52ed360014b5 3a6be5d8-5ad5-4db2-9779-7f7ea5700f74" id="9c959e55-3c45-4ad8-993a-7af387801df2"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e1fd0afb-6393-4f54-94e8-34af2cc94b2c f0de1924-f466-4e69-9405-38ba9fa0cfa4" id="91733e75-9e7a-44a8-bffc-c3acacc06707"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640803" scope="NEIGHBOURHOOD">
        <KPIs id="0bc381ef-3d0c-4eb6-9559-8487af37e75d">
          <kpi xsi:type="esdl:DoubleKPI" id="05d8551b-12ad-4cf7-bcaf-5745ecd3948b" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="691c25af-cb5d-43cd-9935-905d77f6dbb4" value="276148.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d1d2d8d8-cfec-4fee-a98c-5c18af56aa1c" value="139.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e364fdf6-8133-4fe4-ae65-aaa498facd9b" value="281.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0d3eb3c2-da0e-40b0-96d2-b2563f2b9f40" value="32191.375229999998" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="616e468e-19b3-41b8-a664-48d93650887a" value="19391.961209999998" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ff1e779e-f6fd-455f-8cbb-93dd8ef0e444" value="3657.1639999999998" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="87721985-f74d-4ea3-a875-dec8aa0a989d" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="c74c8373-4d70-4df3-984e-5980b30c9cc6" value="4320.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="e8fe43d5-4bf0-4cb0-aa78-4920f7802aa9" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="aa39f753-ac05-439e-8d75-99a2f467ac69" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 cd570a20-4b8f-4ea3-8e7b-482c65b03c10 ce3fe004-ac8b-43f1-91a4-eade08c5a907" id="e4e86692-f57b-4756-aefc-3bfae88e6573"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="027ea297-32e0-4282-bbc0-9b9f4183bbc5" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="ffa48cad-b7f0-4cfb-b80a-9f9db17b9c25"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="18b69af2-1040-44af-9c25-3632f135d8a9" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="942">
          <asset xsi:type="esdl:EConnection" id="83d9aedf-6880-42de-8262-4cfe81184803" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="24932e1d-3b89-489b-8ebc-c48c2fbb7e1e" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="08288b5f-ee68-4b89-a286-c553e4d03434" value="17774.9452">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9d63f5f7-484f-483d-9a74-1ed17c52ac06 bc77ccc6-05b8-4cc5-9ec6-7902b9842629 cd570a20-4b8f-4ea3-8e7b-482c65b03c10" id="db6bdbb7-5da2-414c-924c-2101f5c02e39"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="82129bc1-506d-4f2d-bd14-0084bc2cbaaa" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b88002fe-3ea0-4404-9751-19b1b7f55ba1" connectedTo="74ddee22-0dff-4cd2-b4b6-8d3318a72d46" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a428c8ff-881d-419a-bcc7-272785a936f2" value="23090.7647">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="17b92b47-9a1b-4161-a016-12e325dd33e2" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="fafd0a3a-b291-4684-9f88-6443b497c19a" connectedTo="74ddee22-0dff-4cd2-b4b6-8d3318a72d46" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d01752d-0f76-406d-a1b0-0a6fdc5f80b1" value="7790.25">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b7adae2f-f9ec-41e2-b147-405d8d823e55" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="9d63f5f7-484f-483d-9a74-1ed17c52ac06" connectedTo="db6bdbb7-5da2-414c-924c-2101f5c02e39" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="259da070-76d7-4b04-987c-c6403e94117e" value="24.7129197">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4f663338-0ac8-41ef-aa05-6bc7c963e02e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="bc77ccc6-05b8-4cc5-9ec6-7902b9842629" connectedTo="db6bdbb7-5da2-414c-924c-2101f5c02e39" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3667f9a1-30c6-40e5-83f5-7fc1ad65ab47" value="8937.38">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="dc705176-b256-43d2-b82a-f6b125ca4be5" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e4e86692-f57b-4756-aefc-3bfae88e6573 db6bdbb7-5da2-414c-924c-2101f5c02e39" id="cd570a20-4b8f-4ea3-8e7b-482c65b03c10"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b88002fe-3ea0-4404-9751-19b1b7f55ba1 fafd0a3a-b291-4684-9f88-6443b497c19a" id="74ddee22-0dff-4cd2-b4b6-8d3318a72d46"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="78.13163481953292"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="21.86836518046709"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="5416.0" id="b4f9a26b-3425-4d68-bd0c-070890fc8d62" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="5">
          <asset xsi:type="esdl:EConnection" id="acac2aa0-b3c8-4684-af02-403aa3a260d7" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7a9c8504-63ef-489f-9e96-cd550d7f5b2c" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="535b5688-0ead-419c-affe-92ba402d8f5c" value="1617.01601">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="67b9dc1f-1c91-40c5-af42-c1547b884291 ce3fe004-ac8b-43f1-91a4-eade08c5a907" id="2930265e-1ea8-4b0a-a1f9-8dcd145b5deb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="30d83c86-3e2e-4b79-9195-eae743be077a" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="44036465-25c1-447a-bc2a-d3369d9f9257" connectedTo="63b54556-3d9c-4a57-966e-2315331e8644" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cb5b474a-af57-4769-b681-913ea7d4b9ff" value="1224.97585">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="24e1bd2d-c07b-40c7-9612-510985c9c03d" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="0edb10d6-9763-4f95-aec9-4e8f75d20d96" connectedTo="63b54556-3d9c-4a57-966e-2315331e8644" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="61943ade-a25c-457f-9c87-485444c50448" value="85.3846808">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="c4a70616-a035-40a9-97a3-aa7d9051b1be" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="0e37d965-bffd-4c54-be0a-29f3c3b6d3b1">
              <profile xsi:type="esdl:SingleValue" id="acc94699-6a1e-40ea-8eb7-f495d69d95d4" value="610.899936">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="6ffd42dc-663f-4adf-9f34-3a286fa1ad35" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="67b9dc1f-1c91-40c5-af42-c1547b884291" connectedTo="2930265e-1ea8-4b0a-a1f9-8dcd145b5deb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="726a3b4d-a85e-43bd-a9de-9bd67ad11b30" value="1064.13">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="7daaf9fc-c8e4-4604-bca5-76280f40607a" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="e4e86692-f57b-4756-aefc-3bfae88e6573 2930265e-1ea8-4b0a-a1f9-8dcd145b5deb" id="ce3fe004-ac8b-43f1-91a4-eade08c5a907"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="44036465-25c1-447a-bc2a-d3369d9f9257 0edb10d6-9763-4f95-aec9-4e8f75d20d96" id="63b54556-3d9c-4a57-966e-2315331e8644"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640804" scope="NEIGHBOURHOOD">
        <KPIs id="c84cc3c8-0e56-4cd9-bb2d-011cb195d71b">
          <kpi xsi:type="esdl:DoubleKPI" id="337a0c5f-e7ab-4c53-b998-d1927443c1ea" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2ff5f67c-8fc2-47d5-8748-6fb67b853237" value="16870.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7ebe9bb3-af30-46e5-9ae7-035d273d8116" value="766.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="454812ca-bc00-40c7-b876-fb5d26ea21cc" value="2410.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1360479a-a42b-48fc-8ac2-087e17ca04b6" value="304.23256241" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3d61d06b-1c33-4140-bcf7-0566078220ae" value="171.940083" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="582956e5-7227-4902-a08b-0a37f3b96192" value="23.128" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="50a39564-a45d-4520-a6bf-ac074c3a71d2" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="02e3554c-3ec9-4ca2-925b-449363dce7f5" value="200.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="854a90e0-6f7e-4d83-b62c-098786b2b17a" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="5694b226-e981-4115-8115-fc27cb1b868a" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 d79366eb-d9d3-479f-9053-20660cdb1e56 93ed5b07-aef7-4924-950b-2e80872333dc" id="33b81106-0f90-4c31-9ed6-2f1b064f2852"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="e966432a-39d7-41b3-86cd-113a0d398d15" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="281cf28c-ec4b-4b6f-9b83-f96b353e7c69"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="7e709324-5925-4e1f-87e2-8f7daeb4e610" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="6">
          <asset xsi:type="esdl:EConnection" id="c520f031-693d-443e-b8f3-dde66b409c79" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d53f3e44-1a40-4876-8325-5696617c07cc" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b1aa0dd9-5326-470a-999e-614af5fe53e6" value="155.959307">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="95fce61f-6394-471b-8b7e-d9bf2fde8026 86fa7caa-3652-412b-9bee-1d71fbf6bafb d79366eb-d9d3-479f-9053-20660cdb1e56" id="37e71782-bcb4-497a-935a-57a7a02dfc6e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="06a34d79-690c-4c0a-ae3d-4415041492a1" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="981652ec-a7c7-4c2f-90a4-89adab0c37e0" connectedTo="90b42834-1238-4250-ac25-e52338a71f89" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1a12c57c-c5a1-4b4d-a77d-8f5391107f2e" value="245.308196">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dfab7608-3703-4f2e-8f88-3ef49b874536" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="4129bdbb-d96a-485a-b1be-a3467a9055ab" connectedTo="90b42834-1238-4250-ac25-e52338a71f89" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="208f9f1a-0029-452f-8a09-dcd8cf58476c" value="57.3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c966808d-fd50-493f-b021-e6807fed62cd" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="95fce61f-6394-471b-8b7e-d9bf2fde8026" connectedTo="37e71782-bcb4-497a-935a-57a7a02dfc6e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d014c08f-23aa-42b5-a1de-6d962914b21e" value="7.3484986">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="fe0c7d84-0488-4634-bc38-53da82180c62" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="86fa7caa-3652-412b-9bee-1d71fbf6bafb" connectedTo="37e71782-bcb4-497a-935a-57a7a02dfc6e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="43d2c507-52d5-4b5e-b519-87950797949a" value="58.18">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a8d697d3-acd6-4226-b38c-0468d2c79c78" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="33b81106-0f90-4c31-9ed6-2f1b064f2852 37e71782-bcb4-497a-935a-57a7a02dfc6e" id="d79366eb-d9d3-479f-9053-20660cdb1e56"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="981652ec-a7c7-4c2f-90a4-89adab0c37e0 4129bdbb-d96a-485a-b1be-a3467a9055ab" id="90b42834-1238-4250-ac25-e52338a71f89"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="32.0" id="c48af8c8-1e83-4793-a7c5-6401b1568336" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:EConnection" id="b5ae3deb-3744-47d0-ba8c-4c536079e7fc" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="8752c737-ce11-4289-bfa4-ef32b497ead2" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c3c41e72-0f7d-404a-b0d0-4acfd8fe41fe" value="15.980776">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e6ad7757-00e0-4980-ac82-83319c6c1ab9 93ed5b07-aef7-4924-950b-2e80872333dc" id="32b3dd1f-79d2-4f02-8a62-b2354f85e914"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f18d3f71-9bbd-4f13-94c9-12a05738b76d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="93d879cc-56ac-48e2-bbbe-99f8c89c45b8" connectedTo="ec709b6f-ded6-4724-b620-8511eb662c98" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="43237ac5-9ab0-49fa-b543-c1c8fae9e762" value="1.50350964">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="526b6368-f4ea-4cf0-908c-039f625767dc" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="7e6cc937-050d-421f-90a8-2e6afca092b8" connectedTo="ec709b6f-ded6-4724-b620-8511eb662c98" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="781bb5bc-c2b1-4186-8b13-011ec8a3f3fc" value="0.120856768">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4a350296-e261-4624-93b2-d17b7269c22f" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="37e3b1df-c171-4e74-8d91-7fd6db46dc55">
              <profile xsi:type="esdl:SingleValue" id="51bec1a9-94dd-4a0f-a003-a6280bdcef96" value="3.81731159">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3096cbb7-66dc-40f9-8044-6907d9fe66bb" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e6ad7757-00e0-4980-ac82-83319c6c1ab9" connectedTo="32b3dd1f-79d2-4f02-8a62-b2354f85e914" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e81cc0d3-9625-40bc-8869-b5dff0ffede0" value="14.528">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="b284e1fd-defe-42bb-8ad2-f277e36f1553" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="33b81106-0f90-4c31-9ed6-2f1b064f2852 32b3dd1f-79d2-4f02-8a62-b2354f85e914" id="93ed5b07-aef7-4924-950b-2e80872333dc"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="93d879cc-56ac-48e2-bbbe-99f8c89c45b8 7e6cc937-050d-421f-90a8-2e6afca092b8" id="ec709b6f-ded6-4724-b620-8511eb662c98"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640805" scope="NEIGHBOURHOOD">
        <KPIs id="5cfd2b2b-4395-4d8a-98cf-9ec7928965d5">
          <kpi xsi:type="esdl:DoubleKPI" id="c9a0958e-ae6c-4f60-a56e-415fd7f94668" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0729ba5c-b920-4d4c-b1e6-0e5d1884b17c" value="55511.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ad708ccd-392c-4514-ad76-b37b4349eee2" value="103.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1bfcc7fa-372d-452c-a9f1-bbd2c743feb8" value="239.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7fe5c7e8-c515-4fa2-b079-1f8a328aedd5" value="8475.329862113" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="17d23fc1-f6d6-4256-b18e-7ec5f5aea73a" value="4596.02302292" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="fadd67f8-2519-40e9-82ab-396483aba3ff" value="808.766" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="38d074d8-4201-4e5a-9610-de0cf511ee8f" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="973fc385-b4ec-4d18-a664-1267d3f4d361" value="346.614" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="e0ca84d0-f0f6-498b-b9ea-4606187b1d74" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="2d649d74-9cf9-4d1f-a1f5-93565cc29df9" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 99ddb4f2-8ce7-42a7-bc1f-84e91da8b4c8 cb978ac5-9084-45fd-bbc4-945b31d62302" id="b91be541-3105-4ff9-8774-9e8b4f0fc9f8"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="48dd1420-04b1-4d92-828c-1412b9a3f1d4" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="9bfa175f-18f6-4726-abce-d8954d7f9fdb"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="5a1cec46-19f5-42cd-99e6-73bebf10c250" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="231">
          <asset xsi:type="esdl:EConnection" id="f6ac466e-bc5b-4cff-b11f-397a25f24e6a" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="ef9c586c-48b7-4321-b8de-23f98490b589" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7cacf1fd-2713-4322-91cd-e6e72f564f79" value="4593.98939">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4b21f36f-120a-4c5c-a5bd-0c495eb71807 81a342c2-7173-4742-9105-5ecac8922ad1 99ddb4f2-8ce7-42a7-bc1f-84e91da8b4c8" id="fb16e1cc-dccd-44d8-8b43-b68c5b8b03d5"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ad41bedb-6d55-4354-b589-f8947558c77e" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="1eacac0e-4ab9-49b1-8374-ff476d978b00" connectedTo="464930d2-9ab8-496e-a2cf-e7501263de45" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="68c9f2f5-cc04-4069-aa62-ac43dc7a52fb" value="6208.6045">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e5fce743-6122-490b-9381-9f754f76c82c" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="6a3a008a-5c3f-49b3-b29b-07128307ebb5" connectedTo="464930d2-9ab8-496e-a2cf-e7501263de45" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="15883c03-62e6-4429-9abc-cf6bf71bac0d" value="2266.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="1159d9bc-07b4-4384-b9a1-1e5944a6edbf" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="4b21f36f-120a-4c5c-a5bd-0c495eb71807" connectedTo="fb16e1cc-dccd-44d8-8b43-b68c5b8b03d5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="986ed976-567f-4fa9-8d5f-409bbb86fb5f" value="17.4714603">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3a8eb667-bdb1-4d17-a242-8435f2c4a6b5" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="81a342c2-7173-4742-9105-5ecac8922ad1" connectedTo="fb16e1cc-dccd-44d8-8b43-b68c5b8b03d5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="834ae146-dc79-4a3c-b4c8-944b185aab65" value="2175.44">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="43c93e2f-84f2-452e-90cd-2e3af306c080" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="b91be541-3105-4ff9-8774-9e8b4f0fc9f8 fb16e1cc-dccd-44d8-8b43-b68c5b8b03d5" id="99ddb4f2-8ce7-42a7-bc1f-84e91da8b4c8"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="1eacac0e-4ab9-49b1-8374-ff476d978b00 6a3a008a-5c3f-49b3-b29b-07128307ebb5" id="464930d2-9ab8-496e-a2cf-e7501263de45"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="91.34199134199135"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="8.658008658008658"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="4.0" id="aa7aaabb-eefe-461b-9ccf-aa5820fcf99b" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="1">
          <asset xsi:type="esdl:EConnection" id="029078cb-40ae-4712-8105-09197c04e655" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="45b9c74c-4e55-4cc4-89ed-26eca2c09c34" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7f8b0ae5-2813-47d4-b189-05e48b2e8fd2" value="2.03363292">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="cd0335d0-753e-43f7-ad80-b939ba64f856 cb978ac5-9084-45fd-bbc4-945b31d62302" id="e3888d48-82ec-483d-92a2-db22fc569560"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="00b767f9-d695-4a01-bda2-9ebf06d8b17d" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="40812ace-e5a5-4f12-a45e-492a7d89606a" connectedTo="52689784-ac7f-40ca-8e32-14fe9474ba04" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="867a4759-ac2c-47bf-b52d-bcf9504d332a" value="0.310255017">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="acc5ce59-1a18-4902-a721-7e23427913c8" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="97c312ed-b46e-4c28-9824-baa5bda9b75e" connectedTo="52689784-ac7f-40ca-8e32-14fe9474ba04" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7fb13317-acd1-4466-a0b5-a58bba7c6d0d" value="0.015107096">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0475ce2e-fa76-44ea-8f43-dacb2ad9fd8e" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="09c3f473-abd9-4aad-9be4-1bdc918a7549">
              <profile xsi:type="esdl:SingleValue" id="91d23c05-2f01-43be-a365-f91fde0dae64" value="0.476981617">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d7e1c203-0fcc-4e3c-9692-f419b0845272" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="cd0335d0-753e-43f7-ad80-b939ba64f856" connectedTo="e3888d48-82ec-483d-92a2-db22fc569560" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="72728122-9af4-4528-bce5-11f9fbbfc868" value="1.816">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="506e95f0-5a3a-4c1e-8efe-d05fddcf64f8" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="b91be541-3105-4ff9-8774-9e8b4f0fc9f8 e3888d48-82ec-483d-92a2-db22fc569560" id="cb978ac5-9084-45fd-bbc4-945b31d62302"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="40812ace-e5a5-4f12-a45e-492a7d89606a 97c312ed-b46e-4c28-9824-baa5bda9b75e" id="52689784-ac7f-40ca-8e32-14fe9474ba04"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640900" scope="NEIGHBOURHOOD">
        <KPIs id="64239049-7964-4b9a-ace8-b2af9cf709de">
          <kpi xsi:type="esdl:DoubleKPI" id="72c9faba-e3ab-4b83-be55-dda01c8e2529" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="57dbb1af-d507-4944-b1ba-59992eb5cb5b" value="285295.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e5dd4f0c-1235-4086-8cfa-1ae582c98d3a" value="289.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4ee707ff-f799-4538-a93d-ea6e863010b4" value="932.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3e75ee51-0514-4156-8900-9c20dfbb651e" value="11092.456400000001" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c184248d-ccf7-4482-94e4-ce877bf7a505" value="8471.270209999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1374f15c-0751-435f-bafd-134fcdc63333" value="1561.728" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="ab863492-97b3-440a-a64f-f0a62c42f256" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="3ec60048-75e7-4efc-b61f-9f63d90c8baf" value="1700.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="f2d92398-9be3-460c-aa96-caf8cccc2346" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="275befce-24e6-41e3-a3c0-538b7bb941de" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="6117456e-a739-442b-85d2-e6110182c8e7"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="7279ac9c-9d6b-4285-bceb-b9c9547dfee8" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="11581624-7d49-4ae1-877b-026741ce1969"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0dd0aa01-5e25-4ac1-a01a-40e97dbf6e42" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="210">
          <asset xsi:type="esdl:EConnection" id="201451b5-300b-4def-ab91-c17bffa97f9b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="54fc5b43-d366-4440-9365-28f32a1cbb42" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c1ae7693-58d2-41a5-94a5-91829794d359" value="4427.72618">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3f5ebbfc-dbbf-4fb9-a77b-6f1abfe9da56 7d6a838f-a9bf-4fb2-ba52-0937be93efbf 096d5386-0939-4d7d-9d7c-9d6454fd29ea" id="14c2772c-fb71-449c-a8ba-d8a6a1e0eb58"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="988ac7fb-cba4-4f3c-a7f2-367b20972965" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="ef20743e-c886-4120-b3da-1653cdd3b129" connectedTo="2b76a251-f0d3-4b0d-8460-7ce95de3f98d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9192c72c-0ae6-422c-9136-cb28106f4ed7" value="6547.40329">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="2466aa3f-739b-41ae-9b5b-0254c2350bee" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="9404f8e8-a40e-4d4c-8515-5fa9119f109a" connectedTo="2b76a251-f0d3-4b0d-8460-7ce95de3f98d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ce5bb112-5060-4f07-b1aa-1503da3e5901" value="1861.85">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="ad9cad83-8155-454d-934b-2f43e6cae8c9" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="3f5ebbfc-dbbf-4fb9-a77b-6f1abfe9da56" connectedTo="14c2772c-fb71-449c-a8ba-d8a6a1e0eb58" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="02d6a33c-05ba-4b2f-a5e4-c905a8674658" value="143.843098">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="91e8d1f1-8c32-4d50-b90e-879f980efa0e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="7d6a838f-a9bf-4fb2-ba52-0937be93efbf" connectedTo="14c2772c-fb71-449c-a8ba-d8a6a1e0eb58" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2f86285a-56e3-41a0-9e9e-b924d154819c" value="2002.07">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="bfbd4991-b453-49d5-a92d-cef5e53ada01" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="14c2772c-fb71-449c-a8ba-d8a6a1e0eb58" id="096d5386-0939-4d7d-9d7c-9d6454fd29ea"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ef20743e-c886-4120-b3da-1653cdd3b129 9404f8e8-a40e-4d4c-8515-5fa9119f109a" id="2b76a251-f0d3-4b0d-8460-7ce95de3f98d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="21.428571428571427"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="78.57142857142857"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="12432.0" id="1cb2bfd0-d971-4ac5-b0c5-182e5fdafc7a" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="15">
          <asset xsi:type="esdl:EConnection" id="0112ec17-d467-4bd3-af0a-d27c6d7fae20" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0194aa20-e12a-4b8d-8ccb-dbf6215d44c4" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="df09cf21-40a2-402c-9753-78ecb7d23b0e" value="4043.54403">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="6fc04790-9b64-4a2c-9d70-bc7fe1c3a8f8 91cee005-c80f-4043-85df-667d8f82a634" id="cfa21efe-98ad-4402-a407-f2cf3a1e86f1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="c6ea9947-0553-488b-aa4a-598641bcfd36" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="9358ec6a-89cd-4224-b505-ef5710f8300b" connectedTo="a5a45e65-6060-4e9f-961d-01b3715be4ef" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="73fd856f-0537-4e56-a721-566f82720496" value="2417.29656">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="7f37d910-d59b-4cd5-aaf5-8f119c8c8f55" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="38a30262-26ba-40c1-91bc-2d8c72b11198" connectedTo="a5a45e65-6060-4e9f-961d-01b3715be4ef" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="900330f4-0801-49b8-851d-f6e4f302599a" value="265.906557">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="ae8f8800-e835-412d-97b8-8f4f4050af63" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2dcd84fc-ad5b-4473-98dd-cf644c63bced">
              <profile xsi:type="esdl:SingleValue" id="aeee4818-c352-48ae-bd53-4248c7f55ae8" value="2282.84135">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d2d87a8e-c7f1-4ec8-b5ae-32e3b0a41302" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="6fc04790-9b64-4a2c-9d70-bc7fe1c3a8f8" connectedTo="cfa21efe-98ad-4402-a407-f2cf3a1e86f1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="898aa27e-734b-43e3-b6e9-799761486028" value="2982.215">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="e016d883-bc54-4fe9-8815-0c4f5f6c9817" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="cfa21efe-98ad-4402-a407-f2cf3a1e86f1" id="91cee005-c80f-4043-85df-667d8f82a634"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9358ec6a-89cd-4224-b505-ef5710f8300b 38a30262-26ba-40c1-91bc-2d8c72b11198" id="a5a45e65-6060-4e9f-961d-01b3715be4ef"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640901" scope="NEIGHBOURHOOD">
        <KPIs id="d26e91d7-6a4e-4635-baa8-bf386e0e12b7">
          <kpi xsi:type="esdl:DoubleKPI" id="b6a32826-4815-4793-9449-2df82569ecc4" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cedf734b-d90b-4e0c-8c2c-35ab036041c6" value="27137.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="39272bde-ffb9-4efc-8999-e7e717014c7e" value="444.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a1bf963c-cc35-4a24-bb4c-3c92d22497fa" value="1508.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bcaf4b7a-e465-45a7-b03f-0e12cb53d427" value="829.613895898" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2c5756d1-575c-4161-8ef3-5f50558eccd6" value="435.2105884" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6d19be6e-fe79-404a-a92f-dd8839e974b1" value="60.564" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1f805b99-4612-4b55-93bb-6172ec857334" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="773aeb1b-f93e-40ff-8543-200e9dece63a" value="500.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="2097212e-59ae-4e40-af0a-ce4ae51500d4" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b8b415a6-80d5-4861-adbf-fee7ff05ca49" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 a4af3690-04b1-4639-ae83-e3ac7e1cf2e6 7638cc25-1df8-4ff4-b242-3e865a9e185e" id="63472c87-051f-4388-a0b0-ab18a4a07931"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="f08667ea-0c2f-41a3-85d0-05600c3f6000" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="aacff683-91ed-4685-8de2-3c80f2f4bd2c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="c788a272-d420-41e1-a463-f1d5b3c41764" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="17">
          <asset xsi:type="esdl:EConnection" id="a04cf72b-d2c8-4198-aa57-7aeb7427f923" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="1f50ec28-97d2-4647-b094-d5648f3a9fc7" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bbad3e3e-1218-4e98-a596-fa3274187f40" value="427.235621">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="63e00a19-58dd-490f-b428-2df58fbd70c3 13f3eb5b-a43e-472a-bf9b-c10b7b957ef3 a4af3690-04b1-4639-ae83-e3ac7e1cf2e6" id="7d164b1f-af93-4700-bd48-5003fda3d3bb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a244626b-4b1e-4ea5-a6f5-cd5fb8e891db" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b1d03aa7-6675-431c-8d14-4ca07ed4dac9" connectedTo="3eef66ae-a375-4782-8bcd-7cccd6d0b4f8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9708491f-22c7-4d91-98d5-43e8d8595f19" value="666.15194">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e5179222-6e69-40b6-8679-95acbe41b5b9" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="3f92e2e9-5b99-4e5c-823a-01abcceb225e" connectedTo="3eef66ae-a375-4782-8bcd-7cccd6d0b4f8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fe468cb6-007d-4c70-abf3-c335c121303d" value="162.7">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="79c645bc-6841-4bb9-b757-d2ef6bd43cda" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="63e00a19-58dd-490f-b428-2df58fbd70c3" connectedTo="7d164b1f-af93-4700-bd48-5003fda3d3bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="85375da0-bb32-437a-9496-e388b5b0efbd" value="19.4527359">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4bf23f4a-e3f4-40b2-80f0-ae9b8291762e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="13f3eb5b-a43e-472a-bf9b-c10b7b957ef3" connectedTo="7d164b1f-af93-4700-bd48-5003fda3d3bb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3ccc7794-6f9e-4ee6-8d25-da4bbed90473" value="161.26">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8748f00c-00c9-4b6c-a519-168f1630d143" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="63472c87-051f-4388-a0b0-ab18a4a07931 7d164b1f-af93-4700-bd48-5003fda3d3bb" id="a4af3690-04b1-4639-ae83-e3ac7e1cf2e6"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b1d03aa7-6675-431c-8d14-4ca07ed4dac9 3f92e2e9-5b99-4e5c-823a-01abcceb225e" id="3eef66ae-a375-4782-8bcd-7cccd6d0b4f8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="11.76470588235294"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="88.23529411764706"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="16.0" id="1ea6480b-8e47-4a17-945f-edf2126f091d" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="2">
          <asset xsi:type="esdl:EConnection" id="6f28dfdd-c403-4d47-947a-5856273def9b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="8adb0fdc-1d03-4314-bc63-d16c104639e7" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d1298912-1ea9-4826-8636-4356c29ae61b" value="7.9749674">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c1574ac9-1a54-4d9b-9fb3-26ac897780cc 7638cc25-1df8-4ff4-b242-3e865a9e185e" id="9beb28b1-1733-413c-b683-6617e13be12d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="13e518cb-7d74-4926-850b-00be1ebf1922" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="3f6fa86d-f525-4027-b233-597bafaa0fe7" connectedTo="03bb0998-c094-49c1-a004-ae639b08ac81" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6097f0e2-6213-49df-8e78-bed010659544" value="0.701527514">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="98847f64-0245-42c0-bfda-4d0df145ee33" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="10d78110-b3c0-435f-8f46-e7bfb2113acf" connectedTo="03bb0998-c094-49c1-a004-ae639b08ac81" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ead2e79c-fdaa-44c3-89d2-7308e6ed1e82" value="0.060428384">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0b583d69-df40-4041-83ba-12a51b27d222" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3d690f61-10eb-44e0-886a-b986cbf6ea15">
              <profile xsi:type="esdl:SingleValue" id="ab1f1ab6-48f3-474d-a23a-107bfb0b1533" value="1.90623873">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a5bdeb51-0876-40d9-bd83-a91d12626337" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c1574ac9-1a54-4d9b-9fb3-26ac897780cc" connectedTo="9beb28b1-1733-413c-b683-6617e13be12d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b87c01eb-d8bd-4125-9358-551f7f30fa20" value="7.264">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="bde6a5c2-72e1-40be-9d69-8058e389c1e6" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="63472c87-051f-4388-a0b0-ab18a4a07931 9beb28b1-1733-413c-b683-6617e13be12d" id="7638cc25-1df8-4ff4-b242-3e865a9e185e"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="3f6fa86d-f525-4027-b233-597bafaa0fe7 10d78110-b3c0-435f-8f46-e7bfb2113acf" id="03bb0998-c094-49c1-a004-ae639b08ac81"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640902" scope="NEIGHBOURHOOD">
        <KPIs id="ebea3a47-7768-4465-8688-fe02fdb04517">
          <kpi xsi:type="esdl:DoubleKPI" id="69c39aeb-cebf-45f9-8fc4-28da3479dd50" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="84c2176d-a563-450a-aeca-e10ebe765cd5" value="28109.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="93504e8c-b4e5-42f2-91c4-ba8ef82aaead" value="277.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="99173bee-3c3c-4e93-bfef-44bfcd844d80" value="803.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f51f83aa-beab-461c-9783-b008b6e6f1d5" value="1577.981217" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="21e9affa-a132-46b8-8fce-26643cb2e3e4" value="1661.3836769999998" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="406f8e81-35e9-4e99-8a2e-9779a108bb62" value="230.279" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8ae1d88f-f381-4f38-a9f4-5bf5f7711a12" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="73e49c0b-bb3e-4304-bc4b-7197833591ec" value="800.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="fccae177-f03c-4d3a-a1eb-f73ab157bfb6" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="3dd857f1-bfa1-44ae-90d2-2a972fc1da22" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 a44bb7da-8c5f-43a7-951f-d42167e0dde4 621d2ec0-2202-4d6a-b402-ddd51f4fb5cf" id="2a4b1688-03e6-46c3-96c4-36cd4dfe8111"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b1ef5b63-093c-40e8-bd9d-515bd572261c" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="6a8d9487-0548-47aa-82d0-51cd2b0f77d1"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="bd203230-c165-4450-a983-d10a7fb1c85f" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="14">
          <asset xsi:type="esdl:EConnection" id="935960de-c232-4f86-a3ad-62620a36e66d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d79a4784-4f4a-46a4-a650-cef035fb0146" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9ea8a415-bc4d-48e7-b7ce-254090919638" value="344.627157">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9917673c-7f38-4dff-baea-d4062134a303 ddc4ead4-5387-49d5-b7bb-f504b34aa9de a44bb7da-8c5f-43a7-951f-d42167e0dde4" id="bd5b8486-d516-48a4-aba6-19840b65262c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="58107baf-6b4b-4902-9449-bb4411875984" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bde696f2-24c5-4803-8b80-ce5576dbad54" connectedTo="db130f2f-1ea9-4449-a54a-2c9772c6c6a7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fefd0fc2-4f61-4fb3-9778-c2d9c576be4d" value="545.564542">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="9a247558-a715-4286-abc3-65b50a36ede0" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="1ca1a55c-f16a-4496-9d42-0878b085bb16" connectedTo="db130f2f-1ea9-4449-a54a-2c9772c6c6a7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6f0098ed-e384-47ff-8d2f-21005e24b4a5" value="131.5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="266b12e7-186c-4049-87bc-74a10f1720be" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="9917673c-7f38-4dff-baea-d4062134a303" connectedTo="bd5b8486-d516-48a4-aba6-19840b65262c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0fff356d-f156-4676-8c4f-7f06a4bf4596" value="12.6040776">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="e6f9e2af-cf75-4f0e-b7a6-1514d7270a7e" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ddc4ead4-5387-49d5-b7bb-f504b34aa9de" connectedTo="bd5b8486-d516-48a4-aba6-19840b65262c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4828d1dc-a2a9-4e51-8795-5da20e0bb359" value="133.12">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="46e29ae2-e9ae-4919-82be-ab2d2680375d" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2a4b1688-03e6-46c3-96c4-36cd4dfe8111 bd5b8486-d516-48a4-aba6-19840b65262c" id="a44bb7da-8c5f-43a7-951f-d42167e0dde4"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bde696f2-24c5-4803-8b80-ce5576dbad54 1ca1a55c-f16a-4496-9d42-0878b085bb16" id="db130f2f-1ea9-4449-a54a-2c9772c6c6a7"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="21.428571428571427"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="78.57142857142857"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="2726.0" id="4f5bc0da-5123-4caa-b846-c4afb51a02af" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="8">
          <asset xsi:type="esdl:EConnection" id="587a104c-b05e-4ea2-b208-be8396cd073b" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="9ecb5c91-83cc-4c6e-80ed-ce864a597091" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5819556b-d7ef-4cc6-9fbd-ce99a025f781" value="1316.75652">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9aa9c923-9ed3-4793-bbcf-bb3b6aa9e7c3 621d2ec0-2202-4d6a-b402-ddd51f4fb5cf" id="0ba0b5be-5a39-4bc0-a508-87576b9ea68c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5b889e81-7b83-45fe-80c4-3cd9208d990e" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="54967c1a-c76f-427b-8fbf-6bb33cd9b326" connectedTo="261b022d-e685-441b-acb8-e8151c772e3a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5c7cb603-701c-4e81-ab78-e0f1be3fd5af" value="862.960598">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8b6c0662-25ca-4db3-96bf-fe078b07328e" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="5baf4790-769b-44ec-88bb-eabdd9b3e2f2" connectedTo="261b022d-e685-441b-acb8-e8151c772e3a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="946cab4c-b085-4c9a-8034-ee3150b42f1e" value="37.9560769">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="a1c31674-48ea-4d22-8b73-9dd733e727ee" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="efb09acf-4612-4a77-b85b-10e41fc98342">
              <profile xsi:type="esdl:SingleValue" id="501a8661-1620-49be-8ea3-d7ac111f1e86" value="439.656421">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="2965aba5-c35b-470c-b105-71d322c75593" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="9aa9c923-9ed3-4793-bbcf-bb3b6aa9e7c3" connectedTo="0ba0b5be-5a39-4bc0-a508-87576b9ea68c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6d1a1ca2-3f69-4e7b-901e-23e30abcab7a" value="935.029">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="807aeba4-203f-4ceb-a436-cd528e64513b" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2a4b1688-03e6-46c3-96c4-36cd4dfe8111 0ba0b5be-5a39-4bc0-a508-87576b9ea68c" id="621d2ec0-2202-4d6a-b402-ddd51f4fb5cf"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="54967c1a-c76f-427b-8fbf-6bb33cd9b326 5baf4790-769b-44ec-88bb-eabdd9b3e2f2" id="261b022d-e685-441b-acb8-e8151c772e3a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640903" scope="NEIGHBOURHOOD">
        <KPIs id="5cedc903-4d96-4925-8306-6de682dd22c0">
          <kpi xsi:type="esdl:DoubleKPI" id="7dc4d3b8-2c88-43e5-8ce8-38940e262689" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c8badc32-beed-4d0d-930b-f11f81cdab00" value="129949.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f25fc995-2be6-45aa-92e3-db06945f5dc9" value="231.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d2eac951-74a4-47eb-be60-da9710f34bcd" value="602.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="41f2595e-ccf3-4625-b219-71d98d64bfd9" value="6256.66659" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c00f2aca-6d93-4cf6-8db7-46db048c0c89" value="7675.28266" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e5c3df83-7ce6-4d41-8527-385d11b3d83e" value="1637.972" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2a41ead0-2680-465f-9cc6-030323ee140a" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="368497bf-8ed2-4300-a566-753f68a5e84c" value="2000.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="da483fff-2b9a-4da5-af78-bb32741df384" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="e6e75752-4f64-4dc6-9c05-0d2ed2e92a1f" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="41ec059f-d9bc-4398-a871-7de8d95888fc"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="610341f3-b310-45f5-9912-ea4894002b66" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="5f260fa3-e044-4999-a08e-718242c1c66c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="c4f76021-65c9-44cc-8cc8-31f5827cfeca" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="43">
          <asset xsi:type="esdl:EConnection" id="ddc07d12-46ce-458f-8790-1ef36c5da361" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c84850c0-fab0-4adf-93ec-5d222007b20e" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="196e3101-1d51-4998-bb35-34c9bd46e765" value="1032.33872">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="448c2557-f328-4062-bf80-1c72420edba9 61666814-3d92-4bf5-85d6-04d0675a7747 fa174752-7957-4d62-9803-9b8dde4249d6" id="311f3b1b-46d2-4b7f-a8fd-57a5f58be185"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a3652505-dba6-4344-8b86-5396c51c5a93" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="4e26d5fe-e550-43b2-affa-c8eed4672c50" connectedTo="70967490-e9b4-4e0c-8a7b-cdcf73554217" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c47189bd-2ff3-45e4-a750-0923b9fd1fd0" value="1665.95193">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="45c8ab5d-503f-493b-9b66-de848ac8fb37" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="d8f47175-d4b5-4d7c-8ffe-efaae662322c" connectedTo="70967490-e9b4-4e0c-8a7b-cdcf73554217" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e09824e0-e471-4e5c-98e7-6e13578d7887" value="388.5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="18b3c81a-010b-47c9-a0c2-e16818e20161" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="448c2557-f328-4062-bf80-1c72420edba9" connectedTo="311f3b1b-46d2-4b7f-a8fd-57a5f58be185" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="26779661-f1b0-4e21-9b9a-bc66697a4d4c" value="55.0457519">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b0ae75ce-893a-4a0a-89f7-b7031c15732b" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="61666814-3d92-4bf5-85d6-04d0675a7747" connectedTo="311f3b1b-46d2-4b7f-a8fd-57a5f58be185" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7fde33cc-5411-4bb2-a302-8fb387e46582" value="414.88">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="a7ecf15b-e366-431c-be01-0dafd4e5cf1d" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="311f3b1b-46d2-4b7f-a8fd-57a5f58be185" id="fa174752-7957-4d62-9803-9b8dde4249d6"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="4e26d5fe-e550-43b2-affa-c8eed4672c50 d8f47175-d4b5-4d7c-8ffe-efaae662322c" id="70967490-e9b4-4e0c-8a7b-cdcf73554217"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="2.3255813953488373"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="97.67441860465115"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="22368.0" id="66b2caf9-9a54-407f-a11c-f2de41e432db" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="15">
          <asset xsi:type="esdl:EConnection" id="bf36105a-5b79-4798-b4b8-5db31ee27c22" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="0fa3d386-6bdd-4a8f-9e6b-b53e5e662269" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a1803a86-e19d-40ca-905f-76dfbef05e2e" value="6642.94394">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e3ac7fb2-2720-4592-a04a-9c2c5101b929 e21067bb-cd4d-4bd9-b083-f1e3e1ce1332" id="738131f0-5ec1-475d-ad55-12373abe6834"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="07a45dad-ce11-4f58-8f96-e5af10e8acff" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a38b7759-e2bf-4e7d-9906-ad2217058656" connectedTo="0633e3a2-c9a1-4c32-a84d-0947e35de35a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="476628c9-9fd3-477d-a8f6-d4ab6e8bc060" value="3989.1341">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6a6c9862-5b4f-4c0f-a0ec-de156b2dae6f" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="b4489748-91af-4c38-9a23-85d9b46319d9" connectedTo="0633e3a2-c9a1-4c32-a84d-0947e35de35a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="740bacf3-745a-4dcf-9928-4dbbf80c2c60" value="213.080559">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="334a3955-d9a0-4bf7-aabe-edf9b2eef6ce" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="2c33d363-5806-4830-bb3f-2d1662619671">
              <profile xsi:type="esdl:SingleValue" id="b72f8b01-a598-4268-a98c-c23adf3c5f33" value="1799.29934">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="cc9b5b6b-412d-4724-91d7-0749fb985fc6" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="e3ac7fb2-2720-4592-a04a-9c2c5101b929" connectedTo="738131f0-5ec1-475d-ad55-12373abe6834" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="66c3c212-203a-4787-a277-3455ebc97d9f" value="5227.776">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="2029e789-2858-48ba-8daa-c772b606725c" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="738131f0-5ec1-475d-ad55-12373abe6834" id="e21067bb-cd4d-4bd9-b083-f1e3e1ce1332"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a38b7759-e2bf-4e7d-9906-ad2217058656 b4489748-91af-4c38-9a23-85d9b46319d9" id="0633e3a2-c9a1-4c32-a84d-0947e35de35a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640904" scope="NEIGHBOURHOOD">
        <KPIs id="d6373f93-699c-48f4-8c50-87c7917bc8d2">
          <kpi xsi:type="esdl:DoubleKPI" id="6b9fdf5a-d5ef-4bf1-b126-b22905dcd74a" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f6dd0295-5f06-460d-95f0-3aed97659a10" value="184843.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b107bc6b-a687-4de5-a91f-24516d4e9ae5" value="469.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="07b20f93-35f8-4bb7-adb4-70efb293dca8" value="1777.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="80266510-29e1-49a4-aeb6-85c9da607906" value="5024.644836" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8839c77e-8a53-48c2-8445-26ccc424c1aa" value="2698.499175" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="1d0176be-c4a9-4ea0-bb2c-a2ea4db2aafc" value="393.407" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2b5c9d40-534c-41ca-9abf-58e35b57e406" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="87e9647d-5cad-429b-b1b5-73caa59cc3aa" value="2200.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a733137c-1709-45ad-b885-9cae6df075c6" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="c0e3e9d7-86fb-4060-9740-71797ac0d886" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 c38efdff-ea42-4b0e-96f7-4ffedaf51afb de7850a0-3a8a-4c6c-817b-0ad52b6c47ef" id="97413e67-125c-4633-83fa-433f2af9459c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="58335835-2a7e-4792-a149-47febb957df6" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="b906512b-9077-43c0-90c1-428b54249816"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="0af47027-e7df-4e8e-8ec5-eea3da46d66a" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="98">
          <asset xsi:type="esdl:EConnection" id="2ea848c2-21a2-4ddd-ad0c-606d742daaf9" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="cac1a6e4-e75a-496f-ab6d-cc3450412218" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b1a621b9-6dc4-49da-bb1f-7cde38aa8e39" value="2479.88838">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9564e527-6bb1-48d6-bc69-9f9169a6fed3 1ccd38e8-f5eb-421d-8097-aaa91e34e038 c38efdff-ea42-4b0e-96f7-4ffedaf51afb" id="e8d4d3bf-d06c-4b0e-820b-df8c3dbbb0b8"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="70920b69-2700-436f-ba78-7317d781f4b6" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="d3e9bb23-8551-48d7-9ad8-d26a88d6fb0b" connectedTo="507ebd4d-09ee-4ea3-ba70-6fc715b4d804" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f5d00ea2-65a3-4f65-bbcb-20cb2cb90c10" value="3926.82564">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="083119a8-572a-41fb-97a4-8c94988fb192" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="7a879dc3-032a-4506-8cc2-6f66033c3a0f" connectedTo="507ebd4d-09ee-4ea3-ba70-6fc715b4d804" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="23c63bf9-260e-47f3-935d-22d9537f8a80" value="895.3">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="d86c7af5-b14a-4048-9b75-966a95b39874" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="9564e527-6bb1-48d6-bc69-9f9169a6fed3" connectedTo="e8d4d3bf-d06c-4b0e-820b-df8c3dbbb0b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5fe70aae-d9b6-4586-95cc-3b1041e8c53d" value="112.989437">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="b7be6579-2cfb-4957-999f-abc230abdda8" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="1ccd38e8-f5eb-421d-8097-aaa91e34e038" connectedTo="e8d4d3bf-d06c-4b0e-820b-df8c3dbbb0b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d610edde-94e8-48a0-a18f-576ecfc6a2f8" value="940.59">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="8ffc7fb5-5bb9-403a-9444-eb4faf8daa60" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="97413e67-125c-4633-83fa-433f2af9459c e8d4d3bf-d06c-4b0e-820b-df8c3dbbb0b8" id="c38efdff-ea42-4b0e-96f7-4ffedaf51afb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d3e9bb23-8551-48d7-9ad8-d26a88d6fb0b 7a879dc3-032a-4506-8cc2-6f66033c3a0f" id="507ebd4d-09ee-4ea3-ba70-6fc715b4d804"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="7.142857142857142"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="92.85714285714286"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="758.0" id="d0b6c700-a2d5-42dc-9f3b-98a9e6b972a7" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="7">
          <asset xsi:type="esdl:EConnection" id="7194fd8b-26ca-4d31-b898-52eb49ece46d" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="7f06b11e-6b01-4944-9725-42613a1ef91a" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="96703004-b09d-4227-a4a9-f2b7a0de87cf" value="218.610795">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="664dcd06-4945-493d-bbcb-b50453ee3419 de7850a0-3a8a-4c6c-817b-0ad52b6c47ef" id="8c2779bd-2eb2-424c-86e8-481c83eb4f1a"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="20146c9a-8ef4-4ed9-8191-8c8940dfdbdc" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="a2d3a2f7-af7d-4a53-aefa-4bff642dc3e8" connectedTo="ee2b1d98-c20e-48d7-bec9-0d16e0056118" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7759faa4-92a4-47f3-8573-37f2b4bf4682" value="178.264752">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dc283614-367f-4bcf-ab0a-b1cabc7a3227" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="b71eabef-a39c-4743-896e-ccdf9897ce7e" connectedTo="ee2b1d98-c20e-48d7-bec9-0d16e0056118" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a4ca450c-53f6-44e1-9fee-758faeda069e" value="24.254444">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="b4c2c67e-ea11-482f-ab4b-95565e9954c2" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3ac9d797-3478-480d-a197-e99b66ae750f">
              <profile xsi:type="esdl:SingleValue" id="29a8cd49-29c1-41fe-ae77-b935b4d33361" value="179.474299">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="4aa818be-d7d4-46ff-b40c-e2161d9ff5ae" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="664dcd06-4945-493d-bbcb-b50453ee3419" connectedTo="8c2779bd-2eb2-424c-86e8-481c83eb4f1a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e5a4126e-fb55-441a-854e-dc716e2b6d09" value="110.132">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="17b0d40a-e738-4c44-836c-cceb6ccf186e" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="97413e67-125c-4633-83fa-433f2af9459c 8c2779bd-2eb2-424c-86e8-481c83eb4f1a" id="de7850a0-3a8a-4c6c-817b-0ad52b6c47ef"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="a2d3a2f7-af7d-4a53-aefa-4bff642dc3e8 b71eabef-a39c-4743-896e-ccdf9897ce7e" id="ee2b1d98-c20e-48d7-bec9-0d16e0056118"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640905" scope="NEIGHBOURHOOD">
        <KPIs id="396c4e4f-a811-4f31-8d76-491816ae865e">
          <kpi xsi:type="esdl:DoubleKPI" id="4bdd6e97-bd4e-4ed2-9584-86d2364e4388" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="cb59a0cd-f2ea-419d-a26d-5394abf98207" value="128852.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="79cc48fa-482a-4c31-8d27-f4f006091a27" value="275.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="61e88fae-80a4-4afd-b357-5efe5e8eaa4c" value="1023.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="59de7272-f34b-4ef9-9e80-f5827dff8bcb" value="4313.19953" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="87516af2-254b-43dd-9c02-cf4bb37aa60c" value="3370.562371" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8c62c4cb-3d74-4fbf-814e-8d3deb63d3f3" value="917.357" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d0a1734d-a66a-4b06-a3ae-4eea93ae0007" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="4528185e-d63f-4bb0-9d8e-f5f85a26e80d" value="1400.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="aa222c7a-08b9-4c73-a2cd-2eb3d4381502" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="4280c6c2-2460-4b54-9631-520dd8bfaaf3" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="23ef407e-5e2d-4a4c-ba5d-33fe1514b37c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="0f98befc-d6db-4ec3-b654-1622f3541163" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="8cb68a12-aae4-476d-a47b-7cebd9e17fec"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="c09efda1-7e97-4556-9935-eec818e89d50" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="33">
          <asset xsi:type="esdl:EConnection" id="887ed5da-e3e5-4608-85d7-f49a3f4b8570" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3dc4eb2a-9c1a-42b0-88a0-56286681bf90" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="568aedb7-3e48-47b4-a7f9-7427ee9f1b23" value="803.109421">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="d919b6d4-904b-495c-8bd6-12a1e06c6af1 b5e3a836-9a4e-40cb-9a5c-0b076508c9a0 3da5802d-946b-4060-89ce-ce7328f56499" id="26941a06-e341-4326-88c8-5b72b30fd91b"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8c01947e-a3ef-4d4c-8f47-c14887fa416b" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="9e644848-1f0d-4a70-a6bd-9e801c9112f6" connectedTo="433da1aa-9c14-4c75-ac02-e95e986ecd92" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="98bbf063-763e-4499-a5ef-048a925148bc" value="1325.60156">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a14493ca-342e-4076-a062-8dcbc68c71fb" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="15f98637-a567-485a-9fbc-32457b70f896" connectedTo="433da1aa-9c14-4c75-ac02-e95e986ecd92" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1d1d9f54-d9fc-40a6-818c-6bd3791c0031" value="304.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="27747aad-70bc-4a0d-bc25-dc82e44a8265" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="d919b6d4-904b-495c-8bd6-12a1e06c6af1" connectedTo="26941a06-e341-4326-88c8-5b72b30fd91b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fd02880f-d46f-4e4a-ab5d-c0dd4b366a82" value="41.3995242">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="35382430-7209-45b8-ac51-17a13f84b2d5" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="b5e3a836-9a4e-40cb-9a5c-0b076508c9a0" connectedTo="26941a06-e341-4326-88c8-5b72b30fd91b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bed82759-e5c0-4272-8130-055eb1766afc" value="319.19">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="715896be-e3fa-40dc-b556-7b5903bb0c4d" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="26941a06-e341-4326-88c8-5b72b30fd91b" id="3da5802d-946b-4060-89ce-ce7328f56499"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="9e644848-1f0d-4a70-a6bd-9e801c9112f6 15f98637-a567-485a-9fbc-32457b70f896" id="433da1aa-9c14-4c75-ac02-e95e986ecd92"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="6.0606060606060606"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="93.93939393939394"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="12058.0" id="f57018a9-fa3f-4b2c-b893-c3661fd91a6c" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="82">
          <asset xsi:type="esdl:EConnection" id="03250b28-ce3a-4677-a231-b873c2df10ab" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="45eeba40-62eb-45bd-9f51-cc5dbe21c770" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f980c860-d475-4634-9e61-71772c4354bc" value="2567.45295">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f8f6515f-efc5-42f4-882b-1f8074a08127 f74180a2-323b-4a37-9f05-a003f53c7101" id="2e29afa1-066b-4a75-b5fb-cde975df7a6c"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="4fd879e8-87d2-4242-b55d-829bdad021cc" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="5f43fbf8-e792-4a8d-8be8-91819c26b61d" connectedTo="ed973fc0-f514-4302-b894-4ebb639e8617" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2c5a2c48-fdf8-4592-a157-fa245a851819" value="2371.57262">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="685fd02e-6992-4612-bf7d-1b0bad5c8a7d" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="2055b609-3796-47a7-97c2-ba4c39c64f18" connectedTo="ed973fc0-f514-4302-b894-4ebb639e8617" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="96e80611-79ad-4953-978a-fad16a6f4ba4" value="311.62535">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="9b82917d-480f-45dd-9190-fccbd0a9f1fd" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="4ff9be3f-bf59-4fff-9143-22a836c70ad5">
              <profile xsi:type="esdl:SingleValue" id="6666c57c-a7fe-4950-8147-7d0df2253412" value="2082.41186">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3675e088-22c0-4a3c-a8a4-287e03292d2e" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="f8f6515f-efc5-42f4-882b-1f8074a08127" connectedTo="2e29afa1-066b-4a75-b5fb-cde975df7a6c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d26a1ec9-67d8-498b-9cdc-fd89c5f63a07" value="1525.556">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="af5483b1-6481-426e-bb2b-a8a62635e105" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="2e29afa1-066b-4a75-b5fb-cde975df7a6c" id="f74180a2-323b-4a37-9f05-a003f53c7101"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="5f43fbf8-e792-4a8d-8be8-91819c26b61d 2055b609-3796-47a7-97c2-ba4c39c64f18" id="ed973fc0-f514-4302-b894-4ebb639e8617"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640906" scope="NEIGHBOURHOOD">
        <KPIs id="b13a844a-58b4-4fd4-8d29-8059d859e0f3">
          <kpi xsi:type="esdl:DoubleKPI" id="17ff5200-6d9a-4408-ad00-0ef1a64e70f5" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="6d9f8980-bedb-4794-9231-71665e7a25cd" value="197503.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f7182b17-9056-4418-9bf7-b718151659a0" value="527.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a2af789a-2ef8-4df6-a36a-b42569c69800" value="1955.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e2fb1ea8-5d66-4c77-b9cf-af894c7dbf29" value="4858.019228" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d8bb1d14-58b1-4628-9657-5c61ea40643b" value="2673.374973" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a48a86ac-5ea5-448f-a562-77cc071ef7cd" value="375.991" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="821dd7cc-00e7-4783-8e11-6333529389ca" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="1f444635-f5e0-4642-b21b-39fad969564a" value="3200.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="a0b2b821-fccb-4433-b312-f87bce8ec0ad" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="e9039038-4758-46dd-b88e-7b213aea8421" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 2b5d66b7-2daf-41b6-8525-e1228691c9e2 65371b89-3c7b-4791-bf9e-da3de6f30568" id="f452462c-3bd2-420b-b624-cfc242437454"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b41feed1-e884-49bd-9852-623b23f0c073" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="c57c8a46-f033-42f6-8651-e28f5217a421"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="dfcec548-44fb-409d-a2ec-922a2e755c55" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="95">
          <asset xsi:type="esdl:EConnection" id="9596bdf4-a0f3-4415-bb7b-c61d9617e778" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="007620be-1b02-4a1e-a581-902cb06c081f" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="530d0e59-6fd4-4638-abbf-07b14afcad79" value="2425.53844">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="000b13f4-df0b-44ca-ac90-818b2e573908 63784c69-4404-42da-9dc8-ae2f414649ba 2b5d66b7-2daf-41b6-8525-e1228691c9e2" id="c7142bb2-f7c4-4112-9cb0-1e752e32534e"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a08343cd-20f2-45a9-9db7-465982e7cb61" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="7565877c-fb46-4665-a799-06ff19e7f07d" connectedTo="b2f8f8c1-f9b1-4502-9b50-c3d3e958dfb1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8d293df4-5cdd-4e24-af94-d7c1270cd4df" value="3914.96858">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="0c6e72f0-f5fc-4620-852c-1725988ec09c" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="b71d495c-9616-4901-ab5a-fc8bcd0a29cb" connectedTo="b2f8f8c1-f9b1-4502-9b50-c3d3e958dfb1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1ee74fa6-aee1-4bdd-9123-3ba9ac272276" value="850.6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="51dbeb8a-fe03-4e3d-b139-55ba043697ca" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="000b13f4-df0b-44ca-ac90-818b2e573908" connectedTo="c7142bb2-f7c4-4112-9cb0-1e752e32534e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8cd014be-5026-44c6-baa2-e84db539ae5f" value="114.792163">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="f083fbb5-d597-41aa-843d-3589433be92c" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="63784c69-4404-42da-9dc8-ae2f414649ba" connectedTo="c7142bb2-f7c4-4112-9cb0-1e752e32534e" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d699d9b9-5b06-48c8-819a-62a807acf3e5" value="905.56">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c90a325d-8505-4d47-aac8-9fcbd27d8671" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="f452462c-3bd2-420b-b624-cfc242437454 c7142bb2-f7c4-4112-9cb0-1e752e32534e" id="2b5d66b7-2daf-41b6-8525-e1228691c9e2"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="7565877c-fb46-4665-a799-06ff19e7f07d b71d495c-9616-4901-ab5a-fc8bcd0a29cb" id="b2f8f8c1-f9b1-4502-9b50-c3d3e958dfb1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="6.315789473684211"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="93.6842105263158"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="654.0" id="a5309afe-2151-44b3-998d-46725069bb74" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="15">
          <asset xsi:type="esdl:EConnection" id="d107dbc5-8641-4ad3-9edb-ba1c9c995cd6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="c4fda9de-a8f2-450f-919b-8330ef814da1" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bf6667d9-c6c9-4439-9027-6e48e4312048" value="247.836533">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="cbfdb2b5-8c74-43bb-a57d-558fd18b166c 65371b89-3c7b-4791-bf9e-da3de6f30568" id="051a22c1-e3dd-4249-aac6-f4affd8d4574"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8c58f47b-72da-4664-a3c8-7a7449afe2c5" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="b6d51f4b-d502-4e0d-950d-5359d065b9db" connectedTo="776c654e-3ea4-4dec-a5f8-4c5fc3f4b6ee" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e8ff3614-8eb6-4b80-92a3-173c67263781" value="80.0870001">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="6cb89881-00bd-4474-9f2e-33c2ff45b8a0" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="93c2e47c-21e4-474f-889f-2497cb78f177" connectedTo="776c654e-3ea4-4dec-a5f8-4c5fc3f4b6ee" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7d869448-e502-47a7-9d09-283a90813499" value="12.363648">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="4eff945d-8acb-4724-a96d-710c3924bf1b" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="3da6bde6-2f6e-4323-8a17-e9409930fb08">
              <profile xsi:type="esdl:SingleValue" id="cfab919d-e74a-40ca-ab6c-701222873535" value="119.604837">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bca14316-4132-4942-9e7e-bc4b60f25df3" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="cbfdb2b5-8c74-43bb-a57d-558fd18b166c" connectedTo="051a22c1-e3dd-4249-aac6-f4affd8d4574" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="22a96a5a-66b9-4447-ac63-ffd45b12832e" value="188.691">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="c4c26a36-335c-47f3-9183-3c0b35951220" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="f452462c-3bd2-420b-b624-cfc242437454 051a22c1-e3dd-4249-aac6-f4affd8d4574" id="65371b89-3c7b-4791-bf9e-da3de6f30568"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="b6d51f4b-d502-4e0d-950d-5359d065b9db 93c2e47c-21e4-474f-889f-2497cb78f177" id="776c654e-3ea4-4dec-a5f8-4c5fc3f4b6ee"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640907" scope="NEIGHBOURHOOD">
        <KPIs id="f2d6c29c-d25e-498b-8ee3-549faa6732dd">
          <kpi xsi:type="esdl:DoubleKPI" id="281cd718-ee97-4b00-a35f-4cf790d34fa3" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="da31b9d2-da19-4ad0-b1b8-dc4a1e32bfeb" value="32111.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2537242f-5b90-4fe0-94bc-86576e01ca4b" value="290.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="83510a3c-c31a-4129-a9a8-138de0d013b1" value="973.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="eb24fdb4-8d3d-4321-9661-54d77be114de" value="1614.31647" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f82e0c49-21e8-46bd-8ce8-b58c6841b68e" value="968.7035539999999" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="02bea04f-d22f-49a1-868a-0e795b8f23d7" value="160.965" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="8b908344-8fd2-493f-b242-f31d70ff2099" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="ddc3fc6e-4f3a-46b2-b7e7-f78260d3ded1" value="680.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="62d6e69e-c57c-42c9-9442-0b6896e61d6c" value="s1b_b_bodemwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b7404d40-1c05-439c-b3bb-7149c63fab59" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="9ad319ad-6a4d-4db2-8185-4414767eef57"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b5d1ff07-d60f-45ab-bc6f-8d4b5d4bbfed" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="56d47d2e-7ada-4dae-be2a-fbb892168371"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="a18a8a0e-a184-409d-82e4-61b205711079" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="23">
          <asset xsi:type="esdl:EConnection" id="2a4f319f-a565-4ef9-8cf6-466bf8875799" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3e2b9803-abaf-46c1-ac13-fa04ed0b25f9" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="662f74c7-5c30-4d5a-b123-cf05c77bf15c" value="548.519019">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="0cd1bfde-6af7-40b7-b1a3-65ddc16c513e 986906cd-ffdd-466c-8951-bbaa1d63d999 c4c445b7-b21c-4794-b1b0-231a3cd215f5" id="928c3d4e-91a5-489b-bf74-5ef9f3685c57"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e1c64854-5a2c-4286-a820-1a2daed24c76" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="f2211ebf-00cc-4001-930a-a5471599cdf2" connectedTo="604707b6-dcc2-45ca-82cc-a34f725b427d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5e16f4d2-5c3f-4b11-b6f3-481427795199" value="945.281101">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e5a9ab2b-681e-4353-a010-ea633f6d2fac" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="60889ac6-d8ac-4478-b168-2005e6fc0401" connectedTo="604707b6-dcc2-45ca-82cc-a34f725b427d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7ee3956c-592f-4144-a30c-ad23b9b9e508" value="215.4">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bf808e4b-1574-4405-92d0-bfaca85af571" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="0cd1bfde-6af7-40b7-b1a3-65ddc16c513e" connectedTo="928c3d4e-91a5-489b-bf74-5ef9f3685c57" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7c446ea4-16d3-41a4-9f26-16f4f8a95ad2" value="22.3190745">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="3bbacf6c-789a-4b74-8b8c-dd9b28be32cc" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="986906cd-ffdd-466c-8951-bbaa1d63d999" connectedTo="928c3d4e-91a5-489b-bf74-5ef9f3685c57" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1fbf976b-dac6-4de9-aed4-45d0cf8ea8c5" value="220.36">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="d3e4c983-72de-466f-a255-8453eeb87fd5" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="928c3d4e-91a5-489b-bf74-5ef9f3685c57" id="c4c445b7-b21c-4794-b1b0-231a3cd215f5"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="f2211ebf-00cc-4001-930a-a5471599cdf2 60889ac6-d8ac-4478-b168-2005e6fc0401" id="604707b6-dcc2-45ca-82cc-a34f725b427d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="21.73913043478261"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="78.26086956521739"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="1210.0" id="02bd5245-aa26-4d0f-8c3f-90ae0bbe78d0" name="aansl_ewp_bodem" aggregated="true" numberOfBuildings="3">
          <asset xsi:type="esdl:EConnection" id="ab65668f-5d96-4be6-b2e3-0be0008e42a6" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="3042296d-d609-405f-b074-897ab9016d39" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5e3d1f4d-f2b1-4996-92b7-b5dfe3ae5fdb" value="420.184535">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ba57e30c-1fe8-4d9f-964f-24e1663bcff1 eb372145-766a-4149-9506-480baf2c02bb" id="d9c195e8-83e6-4875-ac9e-057063f51f81"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e1575562-d226-4042-b32f-e599938f8b46" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="34edc2fe-6617-4c31-9668-cd93d1cd9f1a" connectedTo="073b5883-431e-437b-bec6-60e6420255b1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="cff2874e-1919-40a8-b8fb-c6b10427164f" value="407.458263">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="5403e9a8-f329-4773-910a-91b9a04cba19" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="a7b5f26f-7c83-449a-90f0-d21a0e6a497f" connectedTo="073b5883-431e-437b-bec6-60e6420255b1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ae560f42-8688-4965-bcf7-5c80068c80d2" value="46.1771073">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0cc2e9c8-4437-420c-9e19-48e448fabeb5" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="60e72a0b-1e1e-4b1e-850d-2c1678dc49c1">
              <profile xsi:type="esdl:SingleValue" id="9a189e3a-7e4c-4af0-bd79-90398b935d8a" value="54.3389364">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="bf35f239-67d3-4f58-a160-0102d0c45b42" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="ba57e30c-1fe8-4d9f-964f-24e1663bcff1" connectedTo="d9c195e8-83e6-4875-ac9e-057063f51f81" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3263634b-75d9-476c-8931-cf6696c7c86e" value="282.052">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="7fa40bd3-ffb8-4868-86bd-5153e4072a43" name="eWP_bodem" source="SUB_SURFACE" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="d9c195e8-83e6-4875-ac9e-057063f51f81" id="eb372145-766a-4149-9506-480baf2c02bb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="34edc2fe-6617-4c31-9668-cd93d1cd9f1a a7b5f26f-7c83-449a-90f0-d21a0e6a497f" id="073b5883-431e-437b-bec6-60e6420255b1"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <area id="bu01640909" scope="NEIGHBOURHOOD">
        <KPIs id="d1858593-ef8c-4c35-aa7a-c9ba2b2a1ec4">
          <kpi xsi:type="esdl:DoubleKPI" id="7969e937-9bcd-4fb2-b944-7423ea1338eb" name="CO2 uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="53cf37a7-4a96-451c-8849-ff4e8492e4c8" value="263574.0" name="Nationale meerkosten">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b30b4ff3-b9a8-4daa-9662-1ae5552c3b49" value="467.0" name="Nationale meerkosten van CO2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="2bc5de0d-bcf8-43f8-9a21-380b13754503" value="1607.0" name="Nationale meerkosten per WEQ">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e6fa7f2a-081f-4312-b3a3-31a7e5a04574" value="7649.627389" name="Total warmtevraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="646a4a37-4fa7-49d7-ae47-32367883f51e" value="4381.8316159999995" name="Total elekvraag per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d7abc8d8-0b6d-4a02-aa19-7b1be7a314d1" value="624.6765" name="Total capaciteitsvraag elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bc8f3331-9469-40a3-a62d-de4e83b58610" name="Totaal aantal nieuwe MSR per buurt"/>
          <kpi xsi:type="esdl:DoubleKPI" id="f80a8d92-70de-4455-bc08-9446019f1b37" value="5100.0" name="Huidige capaciteit elek per buurt">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
          </kpi>
          <kpi xsi:type="esdl:StringKPI" id="22cee2af-1d78-46e6-a5fb-3270cb4c2066" value="s1a_b_luchtwp" name="Strategie"/>
        </KPIs>
        <asset xsi:type="esdl:ResidualHeatSource" id="b3e37eda-c239-4d3c-90a0-cf34c6ff55da" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4 9d1163a0-d86a-44ee-a0da-0cf59db336cb 04d722fa-d940-48a8-bf50-5c1c3f3cf4fc" id="7cf66476-ce54-4305-a1c7-f712b4c615d9"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:ResidualHeatSource" id="b9641146-a25f-4503-9422-012ac9f22b85" name="h_air_15" aggregated="true">
          <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="135103bc-876c-4f56-ae89-1867caf430a4" id="383310dd-3868-4d42-b891-d02d17dc989c"/>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" id="7b73f059-8185-41df-97ab-18a7a8aa6aec" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="153">
          <asset xsi:type="esdl:EConnection" id="b26edd9a-6998-45cb-b0c6-e22ba5bf0f37" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="39d05c81-7d18-4819-9c18-7c9891527c2d" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2d22f0bc-bf13-4fa4-b8b7-8f1723a23741" value="3799.63345">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="57e6e4c9-b75f-45d3-ad76-418b9e726395 cc071f48-ff3d-4c2d-a368-89e13438f375 9d1163a0-d86a-44ee-a0da-0cf59db336cb" id="1fb08b20-8316-4f5c-9011-0322d6b4a0fb"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="369c871e-9115-4651-865c-ba1e2b696022" name="Woning vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="ba433f79-c81c-4a6c-b227-b509f7ca4a04" connectedTo="b71330c0-ec65-4733-b780-8e915e95b4f0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9ef826ac-9fc4-424a-9d7e-352a9f3c8a2a" value="6001.72823">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="b444d6d6-0bf0-44f9-8ffc-255428b1ebbe" name="Woning vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="f60370f9-d6a4-4e8a-9ce3-184a2667a451" connectedTo="b71330c0-ec65-4733-b780-8e915e95b4f0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8c8d3c53-6e39-4211-9a19-694a7cc390bb" value="1393.95">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="96786724-08af-49c7-862d-676c6356493f" name="Woning vraag elektrische ventilatie" aggregated="true">
            <port xsi:type="esdl:InPort" id="57e6e4c9-b75f-45d3-ad76-418b9e726395" connectedTo="1fb08b20-8316-4f5c-9011-0322d6b4a0fb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="aaf2ee0a-b087-47a7-bc29-30fd05b1217a" value="181.189178">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="c57da9e9-c5c2-497e-8e5c-611683daf1c1" name="Woning vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="cc071f48-ff3d-4c2d-a368-89e13438f375" connectedTo="1fb08b20-8316-4f5c-9011-0322d6b4a0fb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d8efd02f-75e8-4ac7-81fe-37f5e2806ae6" value="1444.15">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="724c3fc8-4013-4dff-a1aa-b56811575144" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="7cf66476-ce54-4305-a1c7-f712b4c615d9 1fb08b20-8316-4f5c-9011-0322d6b4a0fb" id="9d1163a0-d86a-44ee-a0da-0cf59db336cb"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="ba433f79-c81c-4a6c-b227-b509f7ca4a04 f60370f9-d6a4-4e8a-9ce3-184a2667a451" id="b71330c0-ec65-4733-b780-8e915e95b4f0"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="RESIDENTIAL" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_A" percentage="14.37908496732026"/>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="85.62091503267973"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" floorArea="1341.0" id="5f8bab66-09cf-444a-9bd4-cbdb4a8a6166" name="aansl_ewp_lucht" aggregated="true" numberOfBuildings="20">
          <asset xsi:type="esdl:EConnection" id="772918b3-50d3-4ae2-99d3-624a0aa04534" name="Elektricity_connector" aggregated="true">
            <port xsi:type="esdl:InPort" id="d53361d1-9a3d-48c8-96e3-7ec8c3ec81c0" connectedTo="b70fabe7-f43d-4993-9130-4e396804f555" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="95e4118a-7abc-4d8a-8bd0-0fb5479bbac7" value="582.198166">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="c74dc6ca-a72c-4ac9-ae80-9058ee278d30 04d722fa-d940-48a8-bf50-5c1c3f3cf4fc" id="2213d33d-021f-4748-9acb-c22082fca4f5"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="125.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a3bc69d7-c608-4c3c-901e-ee2ae3bb8b86" name="Util vraag ruimteverwarming" aggregated="true" type="SPACE_HEATING">
            <port xsi:type="esdl:InPort" id="bd3f0dc3-b43a-44ed-a2ef-c3c4db7ec473" connectedTo="ea6ba2c2-e60f-4712-95d7-1b1007fde16d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="80301015-06e8-496c-966a-983fe3a20c89" value="234.436141">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="100.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dc38c5c2-04f4-4b6b-a4ea-cb0f3d8acf6b" name="Util vraag tapwater" aggregated="true" type="HOT_TAPWATER">
            <port xsi:type="esdl:InPort" id="435f5133-8492-4380-823b-779dd87c51b0" connectedTo="ea6ba2c2-e60f-4712-95d7-1b1007fde16d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0cde96e5-0a3e-4cc5-a190-f80157a31a1d" value="19.5130183">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="200.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" id="0d7b92c4-5ea0-45ed-98ba-1ae30e1405ea" name="Util vraag koude" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" id="17f8b9eb-f818-4a36-8437-13ba57f28729">
              <profile xsi:type="esdl:SingleValue" id="51489e55-046c-4679-b325-8ad7e0162fc3" value="210.157635">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="300.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="129109e1-c654-4356-b9ea-a77a91331c25" name="Util vraag elektrische apparaten" aggregated="true">
            <port xsi:type="esdl:InPort" id="c74dc6ca-a72c-4ac9-ae80-9058ee278d30" connectedTo="2213d33d-021f-4748-9acb-c22082fca4f5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="e3ee7717-cfde-4ec2-9a17-ccd3ac173c9f" value="451.634">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference"/>
              </profile>
            </port>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="400.0" lon="375.0"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="addd7320-8b07-45d7-ab77-39dd469e9547" name="eWP_lucht" source="AIR" additionalHeatingSourceType="ELECTRIC" aggregated="true">
            <port xsi:type="esdl:InPort" name="InPort" connectedTo="7cf66476-ce54-4305-a1c7-f712b4c615d9 2213d33d-021f-4748-9acb-c22082fca4f5" id="04d722fa-d940-48a8-bf50-5c1c3f3cf4fc"/>
            <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bd3f0dc3-b43a-44ed-a2ef-c3c4db7ec473 435f5133-8492-4380-823b-779dd87c51b0" id="ea6ba2c2-e60f-4712-95d7-1b1007fde16d"/>
            <geometry xsi:type="esdl:Point" CRS="Simple" lat="250.0" lon="250.0"/>
          </asset>
          <buildingTypeDistribution>
            <bin buildingType="UTILITY" percentage="100.0"/>
          </buildingTypeDistribution>
          <energyLabelDistribution>
            <bin xsi:type="esdl:EnergyLabelBin" energyLabel="LABEL_B" percentage="100.0"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
        </asset>
      </area>
      <asset xsi:type="esdl:GasNetwork" id="af38796b-d6fc-444a-b9ea-d9effc6ad9a4" name="Gas_network" aggregated="true">
        <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="e171dd90-86fb-4bd0-90fa-050f5576bf37 4320d695-dee4-4fce-bcd5-c6dcb566bc6b 71c28452-ba50-4109-a0f6-2673fcff265a da2eb6e3-477a-4206-8cf5-a02be874f8d9 9f992475-6fea-4da4-88f6-3fac51d7d5e3 6d834311-a760-4644-8fe8-db19f1fd0974 3d0fc78e-a61b-4221-9a0c-48759668eb4a 28f27a07-a26a-4196-b2b2-8f2f1c1098e5 14c21b50-e9b5-4e66-b44b-426679a1832d 17bdb731-0ef7-4724-81f2-30662dbea074 2c50a6ab-cfd5-499a-a4b7-78899773f487" id="7fb6b20e-8958-4f83-abcd-1df12c35a00a"/>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" id="0830532e-e25c-4ac7-8250-e227cb5d1b8e" name="Waterstof_network" aggregated="true">
        <port xsi:type="esdl:OutPort" name="OutPort" id="b62c1a61-9e9a-4e58-866b-907c3311650f"/>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="a6370225-7722-44e6-8144-d4d5e401d7b7" name="Heating_LT_network" aggregated="true">
        <port xsi:type="esdl:InPort" name="InPort" connectedTo="7170f56e-5593-4590-abb2-251aaf4ea688 59c988e0-3b9b-4fe3-bb75-ff37ac3f192a e3d9796a-ac5b-4c2a-9564-4f5c70d3da51 18c3c3a3-e7be-4675-8545-f539254e601b 7cfb9f47-7b82-4ed8-b37a-9cc21e866963 57e6000f-a0cc-47ff-8fcf-86e6602f1a6a 585fe593-3160-4ffc-9d68-5c0ebcf7ee0a a1056c2c-7333-4f8a-a6a3-8296657ba1d2 3bf9bc1e-c473-4746-a6e3-9428e4defbd7 a9acee1a-4e6d-47c4-968b-2412196b649b 5947760e-7d80-4352-a618-4de0bc99c95d 1299f96e-e7f8-4bd4-848e-e87853515815 ac7df454-0ea1-4f65-827f-441cb86f85f7 d56ad9b2-6755-4c1f-8463-42079e986dfa 18d6dbcb-25a6-430d-91eb-eb9669aef07c cfc21abd-0c30-431a-8b8c-dab890afea27 b36ab3d3-1af6-497c-a2d3-04c99f71f451 07661eec-0383-447a-96da-491846962e2b 819b0204-4003-4c0e-ac82-2994f76ff0ae 7301d045-7239-457e-8e6a-bc68ff8b33a6 5ebd5435-28fa-487c-9d2d-8292e4eb9552 740873b9-53c8-43ab-b099-a0b9d9b79781 f879ec65-33b4-4619-894c-705f534ae849 216d5c1b-8378-45a9-beba-307c57f28748 6ca452ce-0e6a-4d3d-85b7-bae44cc850c2 69b41367-7294-4e05-8eab-9bfa423e6c27 2fe4bfa6-72e2-4119-845e-f14ecd5eadef f29f7663-c6b8-4eab-a976-8833c40a36ea 9616ec56-0d20-4329-b649-7a66c5b64fe1 638feae5-042c-4182-be3f-f661972e547f 9a59b175-009c-48a3-a930-0e923616de62 ff40f5bb-ade4-4a5b-a91d-cfbb9f6cac2f cf6f4aec-3761-4bf0-b11f-5ccb409fe625 77dd78f2-49eb-4027-9ef2-a7a561777930 935e6354-9a9b-4431-859b-9bbed23ab2d3 3a26ee7c-46f7-4445-b99d-bc2454c2957f ebbbb173-f2e3-4c8d-af40-bc08349c303d d55fd3be-e274-4b2a-97b6-551b1df024dc bad63ba8-ad08-435d-8aa4-657a878a3407 938cd662-df76-4ecd-b873-abeb1cd4d00a 2e238739-e392-48b6-8b0a-88d201b28ebe 99f05a6d-27d5-4e3b-874f-57188c02bb2f ee151b02-b71f-44e1-9fbd-db1ee7f492f5 c77451ec-a4f7-40b9-a79e-ea4027505689 7c761f81-bfb3-44b4-a505-ddcc0f192ceb b781f52e-94ef-4c91-84ff-c472af2ec1ff b0cd98da-1c50-419b-97a6-16954400856c 9d2da031-7ab7-4405-9e90-91be5178cd2d 145e1b11-0f6f-4411-baa6-c8ac04ba2cde f5c75255-25eb-49a8-8eee-fef2c41ad874 5e7e8609-ebed-4c0f-a208-d1ac90b816ad 6a2c588a-9df3-441f-8001-f31509942963 ccdcdbf6-d683-4fba-b06e-cb0f35500425 e12da794-4d3b-4e81-8bab-8aa5188eedbd 5f1f7bfc-ece0-4738-a49b-3d3cb4c22915 33d5ff5c-c934-478f-a52f-b77204dcb41e 87d4bbe5-7de7-4daf-b874-dc4cd3a2f0df 74366cc5-ad4a-45e5-adbc-243bdf1642ad e1919b74-d8ef-42de-8356-dbd786cc87c4 8e81f335-db0e-4477-90b7-fc89875a79db c8b19f43-0694-434e-b446-713b767fb5a3 2b97842d-cd5c-48cd-b64f-6637765a1d07 8f76fa5f-e00b-4353-b313-654708f8caa1 51cd373a-f7cc-4117-a7eb-273e99d38f7f b5c81742-5fbe-4640-917c-b791ce085b8e c4c01cfb-49ad-4550-a123-ea075eaa0b64 5414be6e-612b-4eac-8480-8505d1a2c880 42d2db19-265a-4183-b2fe-a66b43bff102 00d2222e-17af-4f6a-97b2-bcc34dd977ef 5331555b-7688-42cd-8b3d-1fceb9d1ec7c 22e4191a-7f1f-4160-bdef-a6d21ba8c1e0 e6e61a04-9552-4a6a-b3bd-a01fa6416ddf 2220aa8c-4506-42fa-ae49-0164ba324366 738bd888-0eb2-4989-8bf9-9a9dfaf4c578 1111de79-f2b8-4ee7-a856-ddc4970384de bf72bb1e-27e8-4b4d-8914-7e6ce57c88b5 31b3e770-8bb2-4e75-8e29-609ea9ecc3a6 f1947158-3d4c-4f9b-97b2-94b6cc0d6b23 3d9155a6-93e5-465e-b00a-6f786dc2c6b2 89ad879c-9042-48f9-a3b6-3707100f476c 0dd33163-f659-4154-97b0-611f9a843cdc 47b959c0-c710-49cd-b97e-4d1c855770c0 faff8450-20b1-43a8-aaa3-b115433a5fe1 cad62f31-c4c0-4080-82fa-a673d63be638 95d52673-de11-4f70-8315-89109c14cc46 51468568-1703-47cb-8644-b4c1a2ee1fd6 816aa50a-9881-414c-a968-a1cb2141494f b01ec123-a67b-4b4e-9e82-52ed360014b5 983cf1d9-9d2f-45c6-b8d5-6ed662619a22 e4e86692-f57b-4756-aefc-3bfae88e6573 ffa48cad-b7f0-4cfb-b80a-9f9db17b9c25 33b81106-0f90-4c31-9ed6-2f1b064f2852 281cf28c-ec4b-4b6f-9b83-f96b353e7c69 b91be541-3105-4ff9-8774-9e8b4f0fc9f8 9bfa175f-18f6-4726-abce-d8954d7f9fdb 6117456e-a739-442b-85d2-e6110182c8e7 11581624-7d49-4ae1-877b-026741ce1969 63472c87-051f-4388-a0b0-ab18a4a07931 aacff683-91ed-4685-8de2-3c80f2f4bd2c 2a4b1688-03e6-46c3-96c4-36cd4dfe8111 6a8d9487-0548-47aa-82d0-51cd2b0f77d1 41ec059f-d9bc-4398-a871-7de8d95888fc 5f260fa3-e044-4999-a08e-718242c1c66c 97413e67-125c-4633-83fa-433f2af9459c b906512b-9077-43c0-90c1-428b54249816 23ef407e-5e2d-4a4c-ba5d-33fe1514b37c 8cb68a12-aae4-476d-a47b-7cebd9e17fec f452462c-3bd2-420b-b624-cfc242437454 c57c8a46-f033-42f6-8651-e28f5217a421 9ad319ad-6a4d-4db2-8185-4414767eef57 56d47d2e-7ada-4dae-be2a-fbb892168371 7cf66476-ce54-4305-a1c7-f712b4c615d9 383310dd-3868-4d42-b891-d02d17dc989c" id="135103bc-876c-4f56-ae89-1867caf430a4"/>
        <port xsi:type="esdl:OutPort" name="OutPort" id="8b9099da-05cc-41d8-ab58-6b140452f8ff"/>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="126dd539-961b-449f-a1cc-a43b1726ebd8" name="Heating_MT_network" aggregated="true">
        <port xsi:type="esdl:InPort" name="InPort" connectedTo="71b14ee2-2147-4f81-868b-c065be40ac9d 08bd2d8f-b1a2-4312-a9a2-018ba24c5704 896dc33f-702a-496a-b098-bfe7102bfe6b b8f34ca8-a815-4288-99cf-b3216c7b1cc7 881ae7d9-2dbd-465b-b0e7-f66a0d959f93 369fe8fc-c48c-4079-9590-b889471fb99b 54991863-8ee1-4e0c-aefd-f656c13f3f1c 178ca646-ed82-4694-be87-d12b61c3b13a d18475b2-7718-4eb9-9495-0ef4c6bbed5e 17b47396-5699-42dd-b8de-85eedb923a41 11e6ae89-631e-462f-8701-8cf0adfc751f" id="f11ee18a-06d4-4d1d-8ba0-31604c5dcfc3"/>
        <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="2b71b718-8e2c-4a89-ad20-9145b8e28c0d 6576370b-ef52-462d-b85f-1235f30b3107 ea89fd4a-c6b2-431c-a154-78ff342610b9 6a46c0f7-2ce3-44c7-8251-c440fa022367 d1beba91-256b-4141-a57a-a0fb4044fb74 a9530f3e-f58b-4290-85b9-88d0565485fb d8e5abd7-1e08-4778-9a63-efac041017b7 edf63b10-6d38-4953-b7df-f6f36b12a7f5 92f4b69c-1ce3-41fa-8365-ecaecc22f479 0b30cba1-99fb-45e3-b489-353cc821fec8 81739635-126b-4d02-af3f-c1447cab6788 347fc012-27e4-4e4d-967e-377379fe1a0c 19fbd4db-d48c-4c30-b0b7-6fbc9bbd8d8e 20cad579-bbd0-45fc-be03-f0afc58202c7 13c02f7b-b317-4f48-921e-a3c8dee037aa 238c2537-bc4d-4b08-a0eb-44c4d6d489f1 fbc56d21-222a-4a34-9a76-8da6f2ecc171 1d13333e-1a1a-4421-aab3-b5a13a322210 b685e715-18b2-4afd-8999-1f438813b5af 944ef9bf-f14c-4df3-8870-538bf682b608 268f4036-ce2a-4ff3-ba62-fbd1cf665ba3" id="e70c7a2c-9f7b-4362-85ce-3941fedb35ff"/>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="bcdad0aa-d44a-48d9-a3cc-1e6aa5fa9f90" name="Electricity_network" aggregated="true">
        <port xsi:type="esdl:OutPort" name="OutPort" connectedTo="bc1d7c84-3510-41b3-a53a-c1801d68a24c 0a5b076b-09ee-4c43-abc5-5183c47dbf59 7d2bfc04-a273-4bfa-89bc-b8b0d0235737 b16b6279-b25a-4496-9c12-3f6d3d6f263a c6a74707-0683-4058-aa3e-bd63eb7d27b1 2c34cbf3-b801-4bb4-b160-4b1965089af8 bae18bc8-ab1c-4fca-b313-fd4b02d433fd 341de4d4-ba40-4cb7-be16-d49fb3a01e4c 4fbf6511-0391-4c85-9f07-9e17c1e4eb08 9163ec50-3c6a-4912-b57a-3b3a7b631efc fc67de8a-4a80-40e3-8303-3bd596a0ddb0 3bf535db-c129-49dd-a3ea-62b0d904135f cf9b5005-f437-4c10-bbdf-0b9515979f79 d22a817f-4cbe-4d75-8fba-d412509565eb 496acd6c-f720-48ae-b015-8987e11812ca 01af495c-64eb-4bca-9481-1a3a7cdcfd9e 1197b1c7-3e15-4012-a88f-e8103523d65c 8d7aea80-06d4-44e7-a079-a3407737bb34 1b0182f7-bd18-40c7-b8dc-9e6dffdd0ab0 d3dc56a6-74a3-4fc5-8791-3c59361a31d2 a2dfb43a-48fc-487a-a0fa-897f20adbb1f 62d9f707-9bc0-4715-a52e-8fad89f7bc49 409ce200-0774-468c-b84c-4aabf5860d64 809d8e5a-1d1e-49e3-a063-a4a95ed58b73 ddd245c3-9836-413a-9198-9029c707b0f2 d1a8f4de-41eb-4801-85ef-ca7483714d45 ebd1e7bf-09a4-4e7e-a6ae-4e600ad936ea ba197c50-97d4-45ee-a726-446e8983338b 92d6de35-ccb4-41d7-a7a5-c6ee66c034d0 aa38454d-46e2-4623-a97e-d03a56bc60d8 4b21447f-c8e1-4233-9a06-6e44ff69579b 57cc560e-531f-4dc5-8e9f-2863572dc00b 36065d45-0d15-4f6a-a425-3ae8d3112ae4 d98b9554-cca6-47b4-8e84-54a2f2b4a6a0 985a2b20-9a97-45a0-b143-a0a690acc957 ccf6680b-e160-458f-8e36-a1d76eaea970 75770387-f1dc-4fc8-b909-b1832a40d8ab 70faf4aa-5c11-4d99-b039-6ff203600da9 4e8e5dd9-90a2-4bea-b5c6-9ce37d3ef89d 1b85905d-dfdc-4bdc-83b2-684bd45d1255 9aa5f531-48ed-4caa-a956-d2c64a75c721 79c321fa-6203-42d7-83b0-b37ab3ac392f d63fbb34-0be4-4c10-8c69-78758a5843a9 f2644a06-30f5-4707-9768-ee779cb7fe07 5d0e97af-493c-45a9-9514-18d79721bf34 d54760d6-1ad2-43dd-b9f3-227d4afc5207 f85ee54b-a143-497e-b8fb-cd814d783b93 7c56f97c-0235-416f-8432-978b6575513a 83afd7b9-9036-4571-9891-9bc78ef6c7b0 9c872a13-0e2b-4c04-8261-d50946c32e88 dc5ddd0c-2dcc-400e-a2fe-5b0fd4bb2d19 184d195f-d2fa-4392-ae20-57077407f421 497e66d4-0a1a-4aa7-8773-b68b36d39f0e 1a5caa46-7553-497d-b1f4-ad3be6ba990f 88cdf758-2db2-4972-a51e-420b6c4629f9 01cb9895-b450-434e-a3bf-83f18191e291 fc683e5a-68ca-41e4-a3b3-50a5c6ccce82 2b630ee4-098d-4702-b7c6-ee041b2d8181 d6c27884-f513-4129-b993-33f34459a1bd 55a8ad9f-8565-4a46-941b-737a6c43676f 1b8f7c55-767d-47ef-b8a3-f312b97cb7fc cb14f70c-36de-4e59-a44a-769cc08c17bd b11e7caf-fd67-4454-97ff-55bb1205edb3 bd19361d-2bdd-4e20-94b3-e0bcbc050229 9a9137d9-1feb-4f38-8f95-27882fc3b5be 940c6b45-1a41-4be2-bfaf-93835fcaef29 9b10aa8b-fdd1-4b2d-870d-aa5b79ed2379 b654402c-e3bf-40c5-a775-fbc50eb3eb7c 341f4034-9e50-4815-b548-9cac8c123750 16416849-12b6-4636-8328-f66a184c5a94 89813702-5da3-4b7a-84e6-e21eabf5bebc 9d7480c6-a4a6-4382-8f10-fd0dc04787a8 17931453-2d6e-44ee-8edd-0c8565a9c1a0 6203647d-ff8e-4ca1-aefd-ba2899bc3ed5 916d3e00-3f8f-4188-a528-67e58e7faeb2 102bb4fe-2db5-4860-a016-93aa33c6e2dd 610a91e8-b235-486b-8592-7243d3213714 0b7ed9ed-61fa-42d7-b85d-8942f0f843f6 f706728b-bc53-4e97-8734-8a5082a2c856 e78db288-f32b-46ba-ae9f-1cd9635051d3 b4965da2-995c-4470-8fd2-b0d2631158bf 0d9165bc-99ec-477f-8ece-db2ea6112da5 995aa2c0-0f39-47c8-a51f-5d142606187c 213248c6-5ae6-4028-bd1f-d31539c38d8a 052841e1-fe3a-4016-9f02-4b48b70d6ee0 1924ac7b-b2d8-4126-b766-fcfff5c585be 1b9ab90a-60aa-4bfa-9dbd-9ec716b5f90f 29a9e838-7981-4482-9473-826c329538d7 8f3e5c67-a6c1-4b0b-b6b5-ffbc996a5f2c 08eb6dd6-9975-4d86-b17b-fe21c9cfdfb0 5ab3e0a4-8502-4ae3-b8f5-29565ca13319 062e852b-54bb-491f-9f2d-063d197509bd c01d194c-4fe8-418a-a4b2-e2b3a7bc5170 cc84bf4c-351a-4c25-98b4-a3dfd296a357 e962c64d-623d-4ba8-a3b5-ee6ede1c9566 e9d9885e-a562-4dc4-8b3d-32eeaa1694b6 f728b1c9-5b49-48f6-9080-10491c589da9 22cb1f68-a4fb-418b-8e1e-eb3c7494814d 24932e1d-3b89-489b-8ebc-c48c2fbb7e1e 7a9c8504-63ef-489f-9e96-cd550d7f5b2c d53f3e44-1a40-4876-8325-5696617c07cc 8752c737-ce11-4289-bfa4-ef32b497ead2 ef9c586c-48b7-4321-b8de-23f98490b589 45b9c74c-4e55-4cc4-89ed-26eca2c09c34 54fc5b43-d366-4440-9365-28f32a1cbb42 0194aa20-e12a-4b8d-8ccb-dbf6215d44c4 1f50ec28-97d2-4647-b094-d5648f3a9fc7 8adb0fdc-1d03-4314-bc63-d16c104639e7 d79a4784-4f4a-46a4-a650-cef035fb0146 9ecb5c91-83cc-4c6e-80ed-ce864a597091 c84850c0-fab0-4adf-93ec-5d222007b20e 0fa3d386-6bdd-4a8f-9e6b-b53e5e662269 cac1a6e4-e75a-496f-ab6d-cc3450412218 7f06b11e-6b01-4944-9725-42613a1ef91a 3dc4eb2a-9c1a-42b0-88a0-56286681bf90 45eeba40-62eb-45bd-9f51-cc5dbe21c770 007620be-1b02-4a1e-a581-902cb06c081f c4fda9de-a8f2-450f-919b-8330ef814da1 3e2b9803-abaf-46c1-ac13-fa04ed0b25f9 3042296d-d609-405f-b074-897ab9016d39 39d05c81-7d18-4819-9c18-7c9891527c2d d53361d1-9a3d-48c8-96e3-7ec8c3ec81c0" id="b70fabe7-f43d-4993-9130-4e396804f555"/>
        <port xsi:type="esdl:InPort" name="InPort" id="6141f953-d704-4ede-96de-7012488bf31b"/>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
      <asset xsi:type="esdl:GenericProducer" id="eaf6bc37-0cec-41ee-96a5-ac6172d1812d" name="Green Gas Producer">
        <port xsi:type="esdl:OutPort" id="cc7bfe73-0b51-4434-84ee-7253a2b2c377">
          <profile xsi:type="esdl:SingleValue" id="93c78c8a-22c0-4cdb-b354-8349ca3d33c0" value="245670.525918"/>
        </port>
        <geometry xsi:type="esdl:Point" lat="nan" lon="nan"/>
      </asset>
    </area>
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000"/>
  </instance>
</esdl:EnergySystem>
