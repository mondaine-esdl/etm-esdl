<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="Vesta Resultaten PerPlanRegio" id="71472ef7-28af-4921-9e3f-7e66e6420477">
  <energySystemInformation id="energy_system_information">
    <quantityAndUnits id="quantity_and_units"/>
  </energySystemInformation>
  <instance aggrType="PER_COMMODITY" name="y2030" id="fe8fe1b7-2d66-4a29-9ab8-0bdab3027bda">
    <area name="Havenstad" id="4dbd17ab-f568-4848-a444-5926b8646f2c">
      <KPIs description="KPIs" id="kpis">
        <kpi xsi:type="esdl:DoubleKPI" value="6837418.181818181" name="Elektriciteitsopwek uit hernieuwbare bronnen" id="4bad0731-d647-45c1-848a-9b98f5a3a94f">
          <target value="500000000.0"/>
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" multiplier="MEGA" id="energy_demand" physicalQuantity="ENERGY" description="MJ"/>
        </kpi>
        <kpi xsi:type="esdl:DoubleKPI" id="0a021268-12fe-4bc0-80c3-220ebcc5d182" value="0.25542011863578684" name="Aandeel hernieuwbare elektriciteit op eindgebruik">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT" description="%" id="share_of_energy_demand" physicalQuantity="ENERGY"/>
        </kpi>
      </KPIs>
      <area scope="NEIGHBOURHOOD" id="bu03631000">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="6517cbb7-caf6-45c7-bd64-c5e2a4ad7654">
          <port xsi:type="esdl:OutPort" id="df91084f-2481-46e5-801e-a129897a992c" name="OutPort" connectedTo="3eb24dd3-780d-4eca-af67-c05e3f9b2e2a"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="233" aggregated="true" name="a02_aansl_ewp" id="d0f88cb0-8ad5-46c0-baf8-74612cbcf590">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="317a4818-d01b-422d-90db-0c20c44c6562">
            <port xsi:type="esdl:InPort" id="3eb24dd3-780d-4eca-af67-c05e3f9b2e2a" name="InPort" connectedTo="df91084f-2481-46e5-801e-a129897a992c">
              <profile xsi:type="esdl:SingleValue" id="938d986d-fb57-461e-8def-982238e8c756" value="112707.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d49853a0-74cb-4ad7-a2d3-024bb75004b0" name="OutPort" connectedTo="65137c69-9104-4f7c-839a-62a7557ce2c5 76aa1a78-b220-437f-af0f-c27b859fc9ba"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="f84b59dd-3fcb-4a61-bb42-8c9ccc0fadc7">
            <port xsi:type="esdl:InPort" id="6b3e6ded-67ba-4e68-91b7-af7bd7e73670" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="9defb0b1-0482-4850-abe3-8f2efd9036f8" value="39358.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="07357074-ca57-4927-87a4-3c8d471908b1">
            <port xsi:type="esdl:InPort" id="4cf12689-f583-4c9c-924a-1b52827c0909" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3f4c374f-a2e8-4882-a6c8-1d320943949c" value="1789.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="89490ed6-1425-4c2c-aea3-21d66da84bfb">
            <port xsi:type="esdl:InPort" id="3efc20ee-031c-4e5d-89cf-aa4baabebca4" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="84c59494-91b3-4eea-810b-ad247cac258d" value="26835.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="e80e17f6-1be1-4d75-9886-ae54379d61ed">
            <port xsi:type="esdl:InPort" id="38513d32-2564-4d24-beac-b12f66e698d8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d656471f-160b-4434-a1c8-cc76e2824f08" value="94817.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="95f2d81b-5491-4649-a358-48de2d91dbb0">
            <port xsi:type="esdl:InPort" id="947a3df8-878f-4459-9e42-1d2fed7aa244" name="InPort" connectedTo="eb444328-c828-40d4-8743-12186a050b5c">
              <profile xsi:type="esdl:SingleValue" id="5e5e66ab-6cc3-4e2d-93aa-54c56d814875" value="41147.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="3682e099-4183-4002-8d6c-c4b6b0edf182">
            <port xsi:type="esdl:InPort" id="65137c69-9104-4f7c-839a-62a7557ce2c5" name="InPort" connectedTo="d49853a0-74cb-4ad7-a2d3-024bb75004b0">
              <profile xsi:type="esdl:SingleValue" id="a6021823-afd6-460d-b18d-7c0b9031fc22" value="94817.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="eaffba8d-8c75-4094-a2c8-85be4f0c9432">
            <port xsi:type="esdl:InPort" id="76aa1a78-b220-437f-af0f-c27b859fc9ba" name="InPort" connectedTo="d49853a0-74cb-4ad7-a2d3-024bb75004b0"/>
            <port xsi:type="esdl:OutPort" id="eb444328-c828-40d4-8743-12186a050b5c" name="OutPort" connectedTo="947a3df8-878f-4459-9e42-1d2fed7aa244"/>
          </asset>
        </asset>
        <KPIs id="32e830c6-6fce-4356-8efd-62a8463c3887">
          <kpi xsi:type="esdl:DoubleKPI" id="914f8c6d-a215-499d-b57c-810a5ec8ff34" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="946e7a5c-40c1-47b6-83fc-7d74b0f31c34" value="511353.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="4be9e834-b105-4253-9ee4-1c58c62e02db" value="197.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d2f5c980-2a86-447a-8336-72779feafac0" value="286.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03631001">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="379acae8-c41f-45ce-a185-c986039494fc">
          <port xsi:type="esdl:OutPort" id="9de4f1a3-4b33-445b-ab2b-7f198ce61329" name="OutPort" connectedTo="22a8fa32-b811-47bb-bb65-6dc190968dff"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="50" aggregated="true" name="a02_aansl_ewp" id="a79e9f4d-98eb-44ad-bd35-ffdabfb7ec9b">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="a1516274-e7bd-477b-a3f4-7b0c4eb0013f">
            <port xsi:type="esdl:InPort" id="22a8fa32-b811-47bb-bb65-6dc190968dff" name="InPort" connectedTo="9de4f1a3-4b33-445b-ab2b-7f198ce61329">
              <profile xsi:type="esdl:SingleValue" id="cfe01417-05d9-4166-956b-f50bfbf4b39b" value="31590.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ea2fdf87-4507-4dfe-a18e-a580aa466d2f" name="OutPort" connectedTo="062030f7-129d-4768-b90c-9f173bc444a5 e5ed70db-5f64-4823-ab5e-1c0a71dbef9c"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="412ba186-2ac2-4400-9302-76cd94f50411">
            <port xsi:type="esdl:InPort" id="5ba88c00-5344-4580-a6e3-e221372c8980" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="11ac4aed-e248-4d8e-9622-f19a10ff79f8" value="15552.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="78a166f6-9198-49e1-9241-6238ddc9dd03">
            <port xsi:type="esdl:InPort" id="9bb39f52-f9d9-4469-bdc4-f9798ac9c10c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ad896f6-8c7e-40b8-bdea-cee0bb66ad09" value="486.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="b52a9ccd-10b7-4e23-9b1f-b08a5bc6eab6">
            <port xsi:type="esdl:InPort" id="538cbff3-3e3a-480a-8868-0cbb431088a2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="79188209-3df4-420a-bb33-a2298af6d75b" value="7776.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="07d5a449-9a58-479b-9067-27f369f31851">
            <port xsi:type="esdl:InPort" id="cfcc0ede-3f04-42fb-abc9-76a5af3d80de" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="51c6aafd-ae35-48c8-85e7-f692f76b869a" value="24786.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="2cf884f6-609a-4078-b6b5-1686f4e6948a">
            <port xsi:type="esdl:InPort" id="334a11d0-834e-46d3-9675-5fdf6613c299" name="InPort" connectedTo="8b3d2988-849c-4153-8286-58f6da9e759c">
              <profile xsi:type="esdl:SingleValue" id="9fd597d1-9546-4371-91d8-ce20c645de9d" value="16038.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="56b850e2-7f6e-484b-a979-e62834348aa7">
            <port xsi:type="esdl:InPort" id="062030f7-129d-4768-b90c-9f173bc444a5" name="InPort" connectedTo="ea2fdf87-4507-4dfe-a18e-a580aa466d2f">
              <profile xsi:type="esdl:SingleValue" id="8a581462-3aa1-4ae1-a713-365c423dae7a" value="24786.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="0176a287-c804-4161-a614-5af9d0aa1832">
            <port xsi:type="esdl:InPort" id="e5ed70db-5f64-4823-ab5e-1c0a71dbef9c" name="InPort" connectedTo="ea2fdf87-4507-4dfe-a18e-a580aa466d2f"/>
            <port xsi:type="esdl:OutPort" id="8b3d2988-849c-4153-8286-58f6da9e759c" name="OutPort" connectedTo="334a11d0-834e-46d3-9675-5fdf6613c299"/>
          </asset>
        </asset>
        <KPIs id="8dd80434-edcb-4ae9-9b93-66da3e880706">
          <kpi xsi:type="esdl:DoubleKPI" id="4ec509e9-689f-46e9-b536-f0bc78555a30" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="a4b756f1-5e81-4f3e-88ed-342e7367892c" value="202293.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="629216e6-a288-420c-8844-7ea7639e2ee7" value="194.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="80151c60-3cbb-44c5-b136-e91f6fd1cea7" value="417.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03631105">
        <asset xsi:type="esdl:GasNetwork" aggregated="true" name="Gas_network" id="c373d917-24b2-4b70-8ffb-396fc21c494a">
          <port xsi:type="esdl:OutPort" id="cfcc4f09-3652-4411-b448-c62e4915c943" name="OutPort" connectedTo="4d688ede-28c1-4b4c-b546-a88ceb43ec34 f98cd907-d8c0-461b-a116-6d1439e96dc5 2ea9906e-ace5-4f64-9927-bcc1f038cd1d"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" aggregated="true" name="Heating_MT_network" id="91584603-942b-482e-afab-f34098597667">
          <port xsi:type="esdl:InPort" id="b451f3b9-8e8e-4274-b2ad-34996a7deed1" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="e7f3303c-3cf0-4737-8912-8265530cdda2" name="OutPort" connectedTo="daa2f486-d3b3-4c29-8ebe-5e590db901ce 14466031-193d-4abe-b93a-54a82ede43a8 1f2c8c43-a177-4b79-b008-4b9bbaf8bbcd"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="a754fc76-c369-4401-9478-97b74abda64b">
          <port xsi:type="esdl:OutPort" id="11137e82-6e2d-4b4a-b9dc-d69ca7df7409" name="OutPort" connectedTo="0069c985-f374-48c7-8673-5d9d3442bb20 f24a6803-23ae-44ac-a81b-5ed532ede6a8 97be4db2-43a0-4541-a5c1-3433ea2df52c"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="460" aggregated="true" name="a02_aansl_ewp" id="211dc5fd-8a70-4c1c-8d88-7babcebda98b">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="ccf263bc-7a32-4e7b-b16a-902b6f21ec40">
            <port xsi:type="esdl:InPort" id="4d688ede-28c1-4b4c-b546-a88ceb43ec34" name="InPort" connectedTo="cfcc4f09-3652-4411-b448-c62e4915c943">
              <profile xsi:type="esdl:SingleValue" id="13de9d77-2cd6-4559-8dcb-346438210b32" value="27465.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8176f467-8d26-48ba-b99d-a76554df2179" name="OutPort" connectedTo="fff1ac38-37ff-40f1-82b6-114d410e3884"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="58f32b44-308c-42fb-836c-373fa6d279a4">
            <port xsi:type="esdl:InPort" id="0069c985-f374-48c7-8673-5d9d3442bb20" name="InPort" connectedTo="11137e82-6e2d-4b4a-b9dc-d69ca7df7409">
              <profile xsi:type="esdl:SingleValue" id="b13fb90e-42c7-4a2f-affe-f3d72f12e061" value="291129.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="df716d81-3bae-45c4-a85d-529e3231d96d" name="OutPort" connectedTo="ffe9e218-21d4-4ec8-a1bd-79b5f4e5adca c9a57be7-0e2f-4365-9009-bac67bac5129"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="91a25bc0-8862-4fcd-b906-f845ae958e6d">
            <port xsi:type="esdl:InPort" id="daa2f486-d3b3-4c29-8ebe-5e590db901ce" name="InPort" connectedTo="e7f3303c-3cf0-4737-8912-8265530cdda2"/>
            <port xsi:type="esdl:OutPort" id="aeaae43a-7b39-4c05-bbe2-a7b8aee8460a" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="45e5ba86-6e93-451b-8b01-2f20a9e7bc09">
            <port xsi:type="esdl:InPort" id="eb35a671-0d73-4855-8e5b-ef2a311ebdea" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0ddc3820-4d66-45c2-aa50-387f8db52ded" value="153804.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="817138ac-bb72-496c-a540-dce26684df39">
            <port xsi:type="esdl:InPort" id="cfd2a42b-dfe1-47df-ba39-1f485622caec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="32256dd4-b1b0-442f-8e01-ad3d453f0b3a" value="10986.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="ebb0f310-4dd5-4842-a6af-f5e6a12b2820">
            <port xsi:type="esdl:InPort" id="123a031f-689a-41fe-a33e-2fb540b80bec" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7493d6c7-2694-4a06-b52e-872935bba83d" value="82395.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="23fd0798-27b1-427e-ab6b-db5cfc51d54b">
            <port xsi:type="esdl:InPort" id="9ead98a6-a5cd-4eb7-825a-4d48484606a3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a9d659e8-b0ea-4712-a1d5-de054a088530" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="74825867-3374-43b4-b72a-18bdd7a203d4">
            <port xsi:type="esdl:InPort" id="59370adc-6a3f-4896-a7dc-d4a48e009ab7" name="InPort" connectedTo="49292f20-61a2-4f8b-9e37-e875ffda65ae a7bf44c5-e660-4694-b688-1d6709801309">
              <profile xsi:type="esdl:SingleValue" id="72e0c753-c740-441e-864f-e286270ce85f" value="164790.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="edeb05df-2a82-44a6-9ca2-b7a47cc6cb92">
            <port xsi:type="esdl:InPort" id="ffe9e218-21d4-4ec8-a1bd-79b5f4e5adca" name="InPort" connectedTo="df716d81-3bae-45c4-a85d-529e3231d96d">
              <profile xsi:type="esdl:SingleValue" id="0c32c1a5-d2bb-41b9-9ccf-5b3dcd68cc04" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="a85aadba-d8e6-4c63-96bd-37c8fb9f3170">
            <port xsi:type="esdl:InPort" id="fff1ac38-37ff-40f1-82b6-114d410e3884" name="InPort" connectedTo="8176f467-8d26-48ba-b99d-a76554df2179"/>
            <port xsi:type="esdl:OutPort" id="49292f20-61a2-4f8b-9e37-e875ffda65ae" name="OutPort" connectedTo="59370adc-6a3f-4896-a7dc-d4a48e009ab7"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="d6832c08-0897-4e2c-a63a-322d4f7dc8d6">
            <port xsi:type="esdl:InPort" id="c9a57be7-0e2f-4365-9009-bac67bac5129" name="InPort" connectedTo="df716d81-3bae-45c4-a85d-529e3231d96d"/>
            <port xsi:type="esdl:OutPort" id="a7bf44c5-e660-4694-b688-1d6709801309" name="OutPort" connectedTo="59370adc-6a3f-4896-a7dc-d4a48e009ab7"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="586" aggregated="true" name="a03_aansl_mt" id="f88c61c2-dcb9-49ef-9810-0271a79add6e">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="fe008fba-3225-4969-8f4f-b773b3876236">
            <port xsi:type="esdl:InPort" id="f98cd907-d8c0-461b-a116-6d1439e96dc5" name="InPort" connectedTo="cfcc4f09-3652-4411-b448-c62e4915c943">
              <profile xsi:type="esdl:SingleValue" id="46b2b053-4560-40f8-8c03-3114f0220d2e" value="27465.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="90455dc6-a294-4dfc-b533-f10227fd2885" name="OutPort" connectedTo="0e095209-c1a5-4607-a43d-08ac83714d6d"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="3d30697d-2c23-4478-9eee-67c8183ac701">
            <port xsi:type="esdl:InPort" id="f24a6803-23ae-44ac-a81b-5ed532ede6a8" name="InPort" connectedTo="11137e82-6e2d-4b4a-b9dc-d69ca7df7409">
              <profile xsi:type="esdl:SingleValue" id="6b2d8e70-61ab-4a8e-8a9d-4540da7c613d" value="291129.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8d99893b-5362-4bf1-a21d-4f6be744075a" name="OutPort" connectedTo="b2b2d46f-3cd3-4e11-af1b-2adb35608a48 6aa70a1f-0fd1-48e6-b54e-03a1409efb06"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="fefcea1e-1804-4aaa-bf96-76357e1c49df">
            <port xsi:type="esdl:InPort" id="14466031-193d-4abe-b93a-54a82ede43a8" name="InPort" connectedTo="e7f3303c-3cf0-4737-8912-8265530cdda2"/>
            <port xsi:type="esdl:OutPort" id="9ac91d37-53ba-4071-a206-03ceff6b404f" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="3eaacc81-6ff6-498d-8e1b-8030885a625e">
            <port xsi:type="esdl:InPort" id="13e36254-0d22-4f97-9f3a-2e12d6a16270" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6b2e34ce-b2fb-4ea8-8fdb-aa63e715f313" value="153804.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="a427054e-f8b3-46e1-8db6-4b20948c405f">
            <port xsi:type="esdl:InPort" id="9eff6ba9-94dd-42c4-b4cf-31571f09439f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="afa835d7-dd57-41d7-8f11-29a65e5f161c" value="10986.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="e034113b-7806-4cf1-bd09-755b749795fb">
            <port xsi:type="esdl:InPort" id="b244316d-1ae3-4444-b365-3015ff0251e1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ea1c516e-1d9d-4925-98d5-4f0764fcab5d" value="82395.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="a0ecab2a-eff8-4be4-9108-c79f931f4764">
            <port xsi:type="esdl:InPort" id="3cbe6f82-7262-41f9-9cae-244965ef4454" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8492d7ab-cb41-4656-a97b-9452a1631d59" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="2be4ab71-bacf-4e67-b8c8-a79ac5fa9c72">
            <port xsi:type="esdl:InPort" id="bf1a70ed-71c0-40c8-abb2-800d24b98062" name="InPort" connectedTo="6c8b6395-21cf-4a63-931f-fdced32a9fa1 4c2bd401-282b-4b3e-b374-8de2b1ba551b">
              <profile xsi:type="esdl:SingleValue" id="a0c36075-e0bc-4887-8641-4f8f54b947bf" value="164790.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="46f98b83-7cbb-44fc-8440-c04bb001a80d">
            <port xsi:type="esdl:InPort" id="b2b2d46f-3cd3-4e11-af1b-2adb35608a48" name="InPort" connectedTo="8d99893b-5362-4bf1-a21d-4f6be744075a">
              <profile xsi:type="esdl:SingleValue" id="9f7f243f-fa07-4ac6-8052-e89c74985f5a" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="15b54812-b9e4-485e-a06d-51e2bb4611f3">
            <port xsi:type="esdl:InPort" id="0e095209-c1a5-4607-a43d-08ac83714d6d" name="InPort" connectedTo="90455dc6-a294-4dfc-b533-f10227fd2885"/>
            <port xsi:type="esdl:OutPort" id="6c8b6395-21cf-4a63-931f-fdced32a9fa1" name="OutPort" connectedTo="bf1a70ed-71c0-40c8-abb2-800d24b98062"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="d46ec91a-e0dc-4749-87d0-1da789ffec11">
            <port xsi:type="esdl:InPort" id="6aa70a1f-0fd1-48e6-b54e-03a1409efb06" name="InPort" connectedTo="8d99893b-5362-4bf1-a21d-4f6be744075a"/>
            <port xsi:type="esdl:OutPort" id="4c2bd401-282b-4b3e-b374-8de2b1ba551b" name="OutPort" connectedTo="bf1a70ed-71c0-40c8-abb2-800d24b98062"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="586" aggregated="true" name="a19_aansl_mt_restwarmte" id="cfacc95b-f20b-4292-a5df-006628cedf86">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="c472b461-a94e-4405-a3ae-e60cd5b5ef7b">
            <port xsi:type="esdl:InPort" id="2ea9906e-ace5-4f64-9927-bcc1f038cd1d" name="InPort" connectedTo="cfcc4f09-3652-4411-b448-c62e4915c943">
              <profile xsi:type="esdl:SingleValue" id="2761997f-7048-4735-a169-da3b9f74cc44" value="27465.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="d2ff020a-5500-49f4-a972-1361b517853e" name="OutPort" connectedTo="b52189c6-d7bb-4c7b-a0cc-7c7f4d762f51"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="ea95cb00-51c3-432f-a09b-76c001235f9f">
            <port xsi:type="esdl:InPort" id="97be4db2-43a0-4541-a5c1-3433ea2df52c" name="InPort" connectedTo="11137e82-6e2d-4b4a-b9dc-d69ca7df7409">
              <profile xsi:type="esdl:SingleValue" id="e827530d-e34c-4c7d-83f6-7096b6138067" value="291129.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="0a5ef025-0bf1-40ab-921d-718944511cee" name="OutPort" connectedTo="950baafd-3bfd-4d94-b854-fb3efc9a5188 9d081e81-8211-4e50-a878-9cd20cc3e8ec"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="898dd5d9-3e8e-4a9f-be72-1ffd8df97d7d">
            <port xsi:type="esdl:InPort" id="1f2c8c43-a177-4b79-b008-4b9bbaf8bbcd" name="InPort" connectedTo="e7f3303c-3cf0-4737-8912-8265530cdda2"/>
            <port xsi:type="esdl:OutPort" id="c32c5d18-185c-43eb-bbb9-22afb457a1bf" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="990975be-4b42-41b3-b20d-e6a98667147a">
            <port xsi:type="esdl:InPort" id="350185b6-6838-4b30-840a-0527d019a35d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="0eab99ba-deb0-47d6-89d0-ed5694621bfd" value="153804.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="02a1c7ae-7b76-4608-93d0-b04925d480a1">
            <port xsi:type="esdl:InPort" id="2e8248ac-5d6c-4113-a2e2-68667c009987" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1c5d18c5-5ca4-42e5-ac91-b38673db581c" value="10986.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="a0570aaf-0546-4bf6-9e23-e07c00b0231e">
            <port xsi:type="esdl:InPort" id="93d347de-60f0-488e-b2ae-48d841fcca43" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="36659d58-8126-4bbf-87d9-8327bb7cdf5c" value="82395.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="692211bb-743a-4099-b271-8b0898f9aef9">
            <port xsi:type="esdl:InPort" id="fe91d65d-c1af-4e2c-9899-4afda462df6f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="dcf2a174-e41a-4047-881e-403b822966d0" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="919be044-bc3b-41e3-94ca-441460fec9ff">
            <port xsi:type="esdl:InPort" id="7fe5d7c4-3492-41ab-af13-5be3887d7c43" name="InPort" connectedTo="defcee04-0a40-436c-9914-caf5f96ba6e9 ba1b6b71-75f0-4537-80d3-f00ae9cd64ba">
              <profile xsi:type="esdl:SingleValue" id="5c67d21b-7c32-4139-827c-369b5a741201" value="164790.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="ccd367d9-21e8-4bb9-bd50-d64ce0e74d26">
            <port xsi:type="esdl:InPort" id="950baafd-3bfd-4d94-b854-fb3efc9a5188" name="InPort" connectedTo="0a5ef025-0bf1-40ab-921d-718944511cee">
              <profile xsi:type="esdl:SingleValue" id="84ccfd14-0772-43ee-8c0a-d2080d1cb661" value="247185.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="dafdf935-3252-44e9-84f5-0ad535dc48e2">
            <port xsi:type="esdl:InPort" id="b52189c6-d7bb-4c7b-a0cc-7c7f4d762f51" name="InPort" connectedTo="d2ff020a-5500-49f4-a972-1361b517853e"/>
            <port xsi:type="esdl:OutPort" id="defcee04-0a40-436c-9914-caf5f96ba6e9" name="OutPort" connectedTo="7fe5d7c4-3492-41ab-af13-5be3887d7c43"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="55fc5273-4c3e-4719-b39f-b272fb8285e9">
            <port xsi:type="esdl:InPort" id="9d081e81-8211-4e50-a878-9cd20cc3e8ec" name="InPort" connectedTo="0a5ef025-0bf1-40ab-921d-718944511cee"/>
            <port xsi:type="esdl:OutPort" id="ba1b6b71-75f0-4537-80d3-f00ae9cd64ba" name="OutPort" connectedTo="7fe5d7c4-3492-41ab-af13-5be3887d7c43"/>
          </asset>
        </asset>
        <KPIs id="f558eb19-ddd8-437c-bd84-b726c4c48e9f">
          <kpi xsi:type="esdl:DoubleKPI" id="0418d4a1-1419-4364-b9a7-7054008005a8" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c8ffe5b0-7f58-4a17-81be-4a8df0e0c681" value="2059109.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="486d4301-5245-466b-9bd4-391506b11d6e" value="201.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e7bb5cf2-8310-4bd3-a869-1d6f088db176" value="375.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03631306">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="1acd18e9-36ae-4c16-a7a1-766c7ba63c0d">
          <port xsi:type="esdl:OutPort" id="763e74d1-7bfc-4584-b232-aa2cbb868d4c" name="OutPort" connectedTo="24ea804f-1c49-4e01-bfdc-cec8bb036834"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="39" aggregated="true" name="a02_aansl_ewp" id="564c79ed-0973-41d1-8536-17d41c8452bf">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="64f263bc-695d-43e8-8c7b-76cfb1d38616">
            <port xsi:type="esdl:InPort" id="24ea804f-1c49-4e01-bfdc-cec8bb036834" name="InPort" connectedTo="763e74d1-7bfc-4584-b232-aa2cbb868d4c">
              <profile xsi:type="esdl:SingleValue" id="c4eda7cc-aeba-47ed-a80d-1daf1f1d73bf" value="8036.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4911f343-34f4-4e63-8acd-141e74445155" name="OutPort" connectedTo="d393aa00-b561-447a-ad23-c58d3305b054 8a972058-8087-4ae4-ad75-db8efbdca4a3"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="ccff82d5-6cc2-48b1-bad3-89cff0b6d075">
            <port xsi:type="esdl:InPort" id="3a5f764e-1987-4b80-ba68-74b6008c9422" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1d39907a-4e4c-4fb9-a639-4c7a294ec94c" value="3280.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="b240b9d1-763b-4c00-a86e-6800697c1a60">
            <port xsi:type="esdl:InPort" id="5b85f0fc-d77a-43e6-9eeb-80a177dd718a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="981eed5e-a0b7-4b60-9845-b006fa203305" value="328.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="3f19e0fe-8bc8-4d81-990a-dc2d979c30d4">
            <port xsi:type="esdl:InPort" id="165825ed-f5e1-4be0-8c1a-89291b62c142" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4d0ac219-54f5-472c-8532-90729583f213" value="3608.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="f828f43b-30a2-408a-980f-158a2e6ff41f">
            <port xsi:type="esdl:InPort" id="2ab541dc-342d-40eb-bb03-22f6bf166bb2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="92ce5b60-6373-4fdc-be39-6a99f93b4afb" value="5904.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="069a68e4-fa06-42c6-8254-abe346c6d00f">
            <port xsi:type="esdl:InPort" id="13ac5a50-1b4f-405f-896b-c014c9f72d2f" name="InPort" connectedTo="7a038acc-03f7-47b1-bbd0-f2ce9eab8bde">
              <profile xsi:type="esdl:SingleValue" id="6738c8ce-00d7-42b9-9efc-9525d7ad63ee" value="3608.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="e3f76c7b-60ff-4c8c-9d9e-572c8d6589a4">
            <port xsi:type="esdl:InPort" id="d393aa00-b561-447a-ad23-c58d3305b054" name="InPort" connectedTo="4911f343-34f4-4e63-8acd-141e74445155">
              <profile xsi:type="esdl:SingleValue" id="73ff0964-a5ff-4979-b20a-0cdcd6e6047b" value="5904.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="d9196f89-4154-438e-9f42-0de3762318c2">
            <port xsi:type="esdl:InPort" id="8a972058-8087-4ae4-ad75-db8efbdca4a3" name="InPort" connectedTo="4911f343-34f4-4e63-8acd-141e74445155"/>
            <port xsi:type="esdl:OutPort" id="7a038acc-03f7-47b1-bbd0-f2ce9eab8bde" name="OutPort" connectedTo="13ac5a50-1b4f-405f-896b-c014c9f72d2f"/>
          </asset>
        </asset>
        <KPIs id="9a579e7f-13f7-4eec-bc43-1e9d15233b7c">
          <kpi xsi:type="esdl:DoubleKPI" id="27a58dc8-d35a-4aa2-8d69-f2dd404051a7" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c6171a6e-5942-475f-8822-80fcea3672ee" value="103349.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="597067e4-1c0c-433a-977c-ae34c63d7b7b" value="185.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="b598cb2c-3524-433b-b708-5f8bfd86f428" value="632.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03631307">
        <asset xsi:type="esdl:GasNetwork" aggregated="true" name="Gas_network" id="f5738eb1-cdc6-454b-a2b4-042ea020c0f9">
          <port xsi:type="esdl:OutPort" id="b5a110d9-51d7-4e53-aaea-7671bfb0f86d" name="OutPort" connectedTo="5d348577-f935-4998-880c-a964dd67b584 0da50186-98f8-4d0e-a79b-435789a82b31 c5f98e0b-52d5-4a67-b1bf-b90530d63d12"/>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" aggregated="true" name="Heating_MT_network" id="a9bae7db-6a16-4a2d-9fe3-51737632ce1d">
          <port xsi:type="esdl:InPort" id="f7ca8343-15ab-482f-aada-ae35c7af8616" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="c5f6a68f-aa08-4f78-a9e6-db65987cbd16" name="OutPort" connectedTo="4c8920fc-2cbb-4ac3-bcb2-1563225827bc 42e13850-9e40-4d41-acbb-42cfac8b268a f404cde2-5c60-440d-9f8a-e2c5b124945c"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="029061f5-df8a-4554-a247-c5a82a7abff5">
          <port xsi:type="esdl:OutPort" id="52175d88-cbd0-42c9-bd52-b31963178f23" name="OutPort" connectedTo="b247df02-f7f6-49a0-9228-040e5ea7e8fc bda2b84b-301f-463b-94d3-266d4a9999b5 3f08797b-b53c-482d-a78d-abaf12d9da8a"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="11" aggregated="true" name="a02_aansl_ewp" id="5e9424d2-50d8-4b46-a999-5b7c0d55ea08">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="80be39e1-2111-4d26-bec6-545628c1a878">
            <port xsi:type="esdl:InPort" id="5d348577-f935-4998-880c-a964dd67b584" name="InPort" connectedTo="b5a110d9-51d7-4e53-aaea-7671bfb0f86d">
              <profile xsi:type="esdl:SingleValue" id="32770f78-bf40-4789-9897-6912bacec4f8" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8ac39b66-b0b1-4b7a-9f76-4a7697ebe6c7" name="OutPort" connectedTo="b09b0ea8-0c86-4e67-9381-0a482288ed75"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="1a1e9249-15a9-4251-a429-eeedf752c9eb">
            <port xsi:type="esdl:InPort" id="b247df02-f7f6-49a0-9228-040e5ea7e8fc" name="InPort" connectedTo="52175d88-cbd0-42c9-bd52-b31963178f23">
              <profile xsi:type="esdl:SingleValue" id="a29efbea-fe90-470b-833a-139fe0b7996d" value="8113.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="bc482cc5-4a2c-46e3-ab6f-4d5026db86a8" name="OutPort" connectedTo="9f2da942-4e71-4527-aff8-08d549bb59f8 87e5a0df-de75-4cf8-b435-938570e0869c"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="ac3105ac-d8c0-4807-88fb-d9f4a52ff160">
            <port xsi:type="esdl:InPort" id="4c8920fc-2cbb-4ac3-bcb2-1563225827bc" name="InPort" connectedTo="c5f6a68f-aa08-4f78-a9e6-db65987cbd16"/>
            <port xsi:type="esdl:OutPort" id="2d00ac3c-f7b7-492e-9155-ee3e7e5cbefe" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="7fc7e885-2006-418d-ae4a-a132206c7707">
            <port xsi:type="esdl:InPort" id="d93f38c4-8566-413b-a0db-53fad42a9b57" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="6f0d5e44-9fa2-4d23-a777-dfe44acf7f4f" value="1463.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="2b214cbd-c227-474f-b85d-5c419ae0beb0">
            <port xsi:type="esdl:InPort" id="cbd26364-b803-4afd-aaff-6bf1d8064ed7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="99c7c8e2-7d63-4133-b738-2cb20dd49766" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="211d48d0-aaaa-4d89-912e-f5890bb3a692">
            <port xsi:type="esdl:InPort" id="70135fb3-b904-4515-91b9-424445f59aa1" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="01963961-fdeb-4a2f-8cf4-7055c1116763" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="c570d0ff-27ae-47b8-ada7-e03de3a29a68">
            <port xsi:type="esdl:InPort" id="f475563a-ab7a-4e7a-b102-43a33ba42e14" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="495a8983-5919-4c87-8f84-226bd4ce244e" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="d5ceebb9-4b57-4db6-9a20-b07ffe5950ee">
            <port xsi:type="esdl:InPort" id="841a6298-9775-41b7-bcca-cb504343944f" name="InPort" connectedTo="ba025492-6bd5-4db6-93d3-bdfb3fc309a3 b2786753-ba53-4ccd-8efb-bce33cf9069a">
              <profile xsi:type="esdl:SingleValue" id="7e641c02-1804-4c7b-9b43-07e49790c859" value="1596.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="dcbb082c-f814-4bbf-8170-8c7532d04602">
            <port xsi:type="esdl:InPort" id="9f2da942-4e71-4527-aff8-08d549bb59f8" name="InPort" connectedTo="bc482cc5-4a2c-46e3-ab6f-4d5026db86a8">
              <profile xsi:type="esdl:SingleValue" id="38d6d9e2-af9c-4685-9295-2429071fd232" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="29b7bb99-804b-484f-af5d-c2c3aa7bec7e">
            <port xsi:type="esdl:InPort" id="b09b0ea8-0c86-4e67-9381-0a482288ed75" name="InPort" connectedTo="8ac39b66-b0b1-4b7a-9f76-4a7697ebe6c7"/>
            <port xsi:type="esdl:OutPort" id="ba025492-6bd5-4db6-93d3-bdfb3fc309a3" name="OutPort" connectedTo="841a6298-9775-41b7-bcca-cb504343944f"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="2e87867a-fb01-43a8-9542-ccb5648889c4">
            <port xsi:type="esdl:InPort" id="87e5a0df-de75-4cf8-b435-938570e0869c" name="InPort" connectedTo="bc482cc5-4a2c-46e3-ab6f-4d5026db86a8"/>
            <port xsi:type="esdl:OutPort" id="b2786753-ba53-4ccd-8efb-bce33cf9069a" name="OutPort" connectedTo="841a6298-9775-41b7-bcca-cb504343944f"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2" aggregated="true" name="a03_aansl_mt" id="4ceb5591-8df3-42c2-8145-9e430877c116">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="8f691cf3-30e8-42ab-84f0-8ec03746453e">
            <port xsi:type="esdl:InPort" id="0da50186-98f8-4d0e-a79b-435789a82b31" name="InPort" connectedTo="b5a110d9-51d7-4e53-aaea-7671bfb0f86d">
              <profile xsi:type="esdl:SingleValue" id="eda3ae5f-47a6-429d-9f1d-33639faeb3be" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="537350ac-1279-411d-9bd8-18e533f54363" name="OutPort" connectedTo="6e576e7f-453f-4896-8164-ac643949acb9"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="0292cff5-b714-4d8d-80a7-192ac3a5470a">
            <port xsi:type="esdl:InPort" id="bda2b84b-301f-463b-94d3-266d4a9999b5" name="InPort" connectedTo="52175d88-cbd0-42c9-bd52-b31963178f23">
              <profile xsi:type="esdl:SingleValue" id="cc30d315-9af4-4b06-84a4-ac376a6cbc0f" value="8113.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ba74d809-4030-46f7-9d0b-1338ea71ccda" name="OutPort" connectedTo="1302b9ae-d3bd-4199-9e79-3a400abcfb7e 44e40551-c84f-41b6-9ad9-62821d78360f"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="bf0f5e5e-2d49-4945-968c-415843957ade">
            <port xsi:type="esdl:InPort" id="42e13850-9e40-4d41-acbb-42cfac8b268a" name="InPort" connectedTo="c5f6a68f-aa08-4f78-a9e6-db65987cbd16"/>
            <port xsi:type="esdl:OutPort" id="0f4e8639-ef44-451f-8b83-f586ddeeaac2" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="844b2fa0-b6c5-48df-a48d-4f23f0924d98">
            <port xsi:type="esdl:InPort" id="287ef101-8112-4b8a-96d2-5513bb3f4ace" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b8803457-0d30-497c-a7e2-89d60cf23704" value="1463.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="12be4adb-5975-4da8-a004-8de6fb3782b3">
            <port xsi:type="esdl:InPort" id="74dbbb04-3375-4084-b5e2-5ed5b4a07748" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="91c455be-e557-4166-aa6d-9c5c010306f4" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="15de527a-1b98-45e5-b868-9a9742903737">
            <port xsi:type="esdl:InPort" id="2b2935be-d5bc-4df3-b646-2b4467b682b2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="7ad5fb61-ab52-4a37-87db-622138392397" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="f44327f6-50a8-4be2-9f07-2ec9f1221d3b">
            <port xsi:type="esdl:InPort" id="66e9025c-d0b8-496e-9066-a61b1a9f58b2" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="8b3ea230-45f3-4b2a-9c3a-0c38f84e15cf" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="0f6ed58e-ff18-417e-b094-d38a30058f61">
            <port xsi:type="esdl:InPort" id="3214d67e-1490-4891-b04a-0e1cdc7db679" name="InPort" connectedTo="be286b2b-57c3-4ace-a035-8f186ef73f07 48f838de-e8e0-4b1c-b337-f1c05b56ac59">
              <profile xsi:type="esdl:SingleValue" id="a4147c81-ea0a-4415-b753-b262e088b98d" value="1596.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="691783af-bf4a-4d9f-a1c4-47d214d67e95">
            <port xsi:type="esdl:InPort" id="1302b9ae-d3bd-4199-9e79-3a400abcfb7e" name="InPort" connectedTo="ba74d809-4030-46f7-9d0b-1338ea71ccda">
              <profile xsi:type="esdl:SingleValue" id="547f9d8c-517a-4c96-9701-28993f7e6ddf" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="7c77a9e6-4986-4e02-9828-79498e209941">
            <port xsi:type="esdl:InPort" id="6e576e7f-453f-4896-8164-ac643949acb9" name="InPort" connectedTo="537350ac-1279-411d-9bd8-18e533f54363"/>
            <port xsi:type="esdl:OutPort" id="be286b2b-57c3-4ace-a035-8f186ef73f07" name="OutPort" connectedTo="3214d67e-1490-4891-b04a-0e1cdc7db679"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="1a2035cf-2735-4061-a3a6-f037e1f10e2e">
            <port xsi:type="esdl:InPort" id="44e40551-c84f-41b6-9ad9-62821d78360f" name="InPort" connectedTo="ba74d809-4030-46f7-9d0b-1338ea71ccda"/>
            <port xsi:type="esdl:OutPort" id="48f838de-e8e0-4b1c-b337-f1c05b56ac59" name="OutPort" connectedTo="3214d67e-1490-4891-b04a-0e1cdc7db679"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="2" aggregated="true" name="a19_aansl_mt_restwarmte" id="56738005-a0df-433b-9afb-75aa29a10db3">
          <asset xsi:type="esdl:GConnection" aggregated="true" name="Gas_connector" id="269c7b53-8e9d-47c3-bc96-ab103d547383">
            <port xsi:type="esdl:InPort" id="c5f98e0b-52d5-4a67-b1bf-b90530d63d12" name="InPort" connectedTo="b5a110d9-51d7-4e53-aaea-7671bfb0f86d">
              <profile xsi:type="esdl:SingleValue" id="336131a2-cbf5-4c01-9169-fb8116558c4e" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="04badc06-e8f4-4bf2-91be-74b79f25c2e9" name="OutPort" connectedTo="b498eb9b-f2a8-4e4d-9b46-87183fd80110"/>
          </asset>
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="01cd6f54-35ee-449c-908c-0407f8780c04">
            <port xsi:type="esdl:InPort" id="3f08797b-b53c-482d-a78d-abaf12d9da8a" name="InPort" connectedTo="52175d88-cbd0-42c9-bd52-b31963178f23">
              <profile xsi:type="esdl:SingleValue" id="77245ab4-c073-427e-9280-400b9b300460" value="8113.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ea04edc1-6d13-4165-b286-77413bbed777" name="OutPort" connectedTo="bf121f91-d1bc-41c0-9054-b75549e048ac dd6b5eac-e1d4-4cfa-8de5-8b5734a71413"/>
          </asset>
          <asset xsi:type="esdl:HConnection" aggregated="true" name="Heating_mt_connector" id="e02d393f-5bef-4c29-b28c-c45355c3a0e3">
            <port xsi:type="esdl:InPort" id="f404cde2-5c60-440d-9f8a-e2c5b124945c" name="InPort" connectedTo="c5f6a68f-aa08-4f78-a9e6-db65987cbd16"/>
            <port xsi:type="esdl:OutPort" id="35581202-3474-44f0-8651-5ad88e61bf6a" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="426fe193-8e01-40b6-a9d2-bbd64b80567f">
            <port xsi:type="esdl:InPort" id="f73b20f8-d62c-4e64-a377-84f058c5bc14" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="49593fc4-d9b7-4d1d-8905-b0ba029ff8ee" value="1463.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="fa3e4a8d-8f54-4fae-85d8-2baaae1f033c">
            <port xsi:type="esdl:InPort" id="d7ab9526-508f-4973-9644-feb3afe2246b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d1b09e53-eb9b-4de4-a302-40326f971afe" value="133.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="9b2caea6-012e-4699-a9d8-e3ede8b56599">
            <port xsi:type="esdl:InPort" id="1952ca1c-a5e4-43ed-9872-3a275502f3a0" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ad673fa4-22c0-4939-8510-578b9adefd26" value="2128.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="31d0d4f3-2bf0-4dfc-9a80-0c2b322271d9">
            <port xsi:type="esdl:InPort" id="004f6a14-64b3-4301-a473-dbcc192eeb61" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="4e187699-60c1-486e-9ad4-08785c651239" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="907c9c99-60ea-4282-a35c-8eec9909f6b2">
            <port xsi:type="esdl:InPort" id="4fd0799d-bd49-4207-b76e-11bc79a0f730" name="InPort" connectedTo="13970870-09ab-40d1-ac43-75935d5749b2 72f023c3-1eb7-4b64-8583-dd726b216c28">
              <profile xsi:type="esdl:SingleValue" id="dc9f9780-e5ef-4951-a92a-a3e506b4597c" value="1596.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="810e9526-dfde-43a9-943c-1fc9d33552e5">
            <port xsi:type="esdl:InPort" id="bf121f91-d1bc-41c0-9054-b75549e048ac" name="InPort" connectedTo="ea04edc1-6d13-4165-b286-77413bbed777">
              <profile xsi:type="esdl:SingleValue" id="8847d2bb-abfe-46ec-8b54-01e434e44387" value="7182.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" aggregated="true" name="Gas_heater" id="9590e02f-b9f2-4384-be69-3122da0c7de4">
            <port xsi:type="esdl:InPort" id="b498eb9b-f2a8-4e4d-9b46-87183fd80110" name="InPort" connectedTo="04badc06-e8f4-4bf2-91be-74b79f25c2e9"/>
            <port xsi:type="esdl:OutPort" id="13970870-09ab-40d1-ac43-75935d5749b2" name="OutPort" connectedTo="4fd0799d-bd49-4207-b76e-11bc79a0f730"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="7f99d24d-a322-4831-867a-73af39268df0">
            <port xsi:type="esdl:InPort" id="dd6b5eac-e1d4-4cfa-8de5-8b5734a71413" name="InPort" connectedTo="ea04edc1-6d13-4165-b286-77413bbed777"/>
            <port xsi:type="esdl:OutPort" id="72f023c3-1eb7-4b64-8583-dd726b216c28" name="OutPort" connectedTo="4fd0799d-bd49-4207-b76e-11bc79a0f730"/>
          </asset>
        </asset>
        <KPIs id="7020f887-4a10-4654-8eac-615322972b1e">
          <kpi xsi:type="esdl:DoubleKPI" id="0cdba753-339f-44f0-80ba-e2bb0011265f" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="aa91e830-f3f4-4986-9c1b-b12a37a13395" value="127362.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d6876498-1889-4040-b7cd-036ff12ef936" value="740.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="54c0e658-464d-4b57-b9b9-3e8da89d1bc0" value="959.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03633600">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="7f687e19-8cdf-41e3-aae1-87d8514ed0cf">
          <port xsi:type="esdl:OutPort" id="c2653335-65f0-471f-ba9c-3d9902f52717" name="OutPort" connectedTo="1a9ca939-910a-4a61-8ee4-0a5904aa8cca"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="240" aggregated="true" name="a02_aansl_ewp" id="76fa4331-4fce-4c1b-8ba3-701371eddf88">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="23773f20-919c-4d19-800b-35cf9e6427ae">
            <port xsi:type="esdl:InPort" id="1a9ca939-910a-4a61-8ee4-0a5904aa8cca" name="InPort" connectedTo="c2653335-65f0-471f-ba9c-3d9902f52717">
              <profile xsi:type="esdl:SingleValue" id="66824281-7fa2-4af8-8808-3f466b8d8632" value="29900.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="4734356c-1621-43fd-96ed-7abe3a3a9a01" name="OutPort" connectedTo="5bda2c42-14c4-45fd-8229-a2fa9f2e065f f9ec927a-a4d7-44c6-a513-7fa666179bd3"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="21378fcb-5727-46fa-ae4a-dcfa73aae01d">
            <port xsi:type="esdl:InPort" id="25e23ae2-2ee3-492b-ba43-b7b851f4ad27" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5637608b-6289-433f-92b8-f28c7852a84c" value="14300.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="66ea9c03-1f50-493e-934f-b809223f9cea">
            <port xsi:type="esdl:InPort" id="b3aeb1f4-43a6-4794-ba46-37bbee8cc43d" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa608754-c1dc-4ac7-ad27-4df5d2ac928f" value="1950.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="478561cf-54d9-486f-8dbb-016d83adec9f">
            <port xsi:type="esdl:InPort" id="f240cc68-c9b0-4f6c-847b-65a33eae8dfb" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="72cda1fa-dd26-4f8c-bf99-8478971187c1" value="8450.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="8e9e3d9b-b48c-4a03-934a-0451b4df4622">
            <port xsi:type="esdl:InPort" id="6d376ad9-100b-4658-9bf7-8f38b9c82373" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="136ede25-3cba-4892-80b3-435843587f4f" value="22750.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="a11c4789-2497-4fce-b13e-9a5b8b573c10">
            <port xsi:type="esdl:InPort" id="a59ce85d-8e7d-4c30-ac03-d3b61757d834" name="InPort" connectedTo="b3ef55f4-a69f-4718-89a7-0578ef469a78">
              <profile xsi:type="esdl:SingleValue" id="93f22efb-45cc-48cd-b1ad-c3ae4b29430a" value="16250.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="d6030b29-50b2-4547-9c0a-25acc1815bbb">
            <port xsi:type="esdl:InPort" id="5bda2c42-14c4-45fd-8229-a2fa9f2e065f" name="InPort" connectedTo="4734356c-1621-43fd-96ed-7abe3a3a9a01">
              <profile xsi:type="esdl:SingleValue" id="62bdcbce-bce2-4e13-a93c-1359aec2a3d5" value="22750.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="7f7bb4db-323a-4317-9dde-5c8f28e0bad8">
            <port xsi:type="esdl:InPort" id="f9ec927a-a4d7-44c6-a513-7fa666179bd3" name="InPort" connectedTo="4734356c-1621-43fd-96ed-7abe3a3a9a01"/>
            <port xsi:type="esdl:OutPort" id="b3ef55f4-a69f-4718-89a7-0578ef469a78" name="OutPort" connectedTo="a59ce85d-8e7d-4c30-ac03-d3b61757d834"/>
          </asset>
        </asset>
        <KPIs id="3be6eb68-4f26-4fa0-b8f7-d5ff5884113e">
          <kpi xsi:type="esdl:DoubleKPI" id="4cf8de03-ca6d-469e-b2c7-1c88c4cfb71f" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e2abf24b-86c2-4a07-ad78-e5c67f08b908" value="313603.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="584b3fbf-b8da-4516-b539-2b78737f4e72" value="263.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="3dfea694-2a70-4dcf-8b32-44dc4b0cbc40" value="483.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03633601">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="b77499fa-7551-42bb-ab9a-8a97aeb3c5ae">
          <port xsi:type="esdl:OutPort" id="f59f0c1e-d9b7-4e6a-a88c-d967a5b78485" name="OutPort" connectedTo="a1ba26d7-a833-4ad6-8934-37dd3fc82373"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="105" aggregated="true" name="a02_aansl_ewp" id="84020701-9a8d-4223-a536-b09f117392ce">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="0a22e63c-d139-45e4-99a9-f13acbe82d84">
            <port xsi:type="esdl:InPort" id="a1ba26d7-a833-4ad6-8934-37dd3fc82373" name="InPort" connectedTo="f59f0c1e-d9b7-4e6a-a88c-d967a5b78485">
              <profile xsi:type="esdl:SingleValue" id="bba63b7a-110c-4b1c-8dcf-b32385bdfd2e" value="87352.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="176b160e-e0b7-493a-a430-f728ab57c6bd" name="OutPort" connectedTo="fd54400b-d382-478b-b582-aa2e8d9f314f a1783f43-5fc0-4778-b722-934c1122cda1"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="867eb696-0d64-48a6-9c52-a0af08591a55">
            <port xsi:type="esdl:InPort" id="8a7a6953-5e75-4f4c-8b97-20c68da76965" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="bd078f6e-914e-47c4-98d6-f8454f533528" value="35800.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="a54d9790-df67-4076-9591-30da5b85ae18">
            <port xsi:type="esdl:InPort" id="9790ecc9-a86a-4fb3-a09a-8e05106b3967" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="83826532-68fc-417b-8dab-a4c1fdc974b0" value="1432.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="059c6847-ea62-4975-9352-c7df5d88ed9d">
            <port xsi:type="esdl:InPort" id="3df32f46-cb11-45cb-af33-4c55e3724e86" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="29d29565-339e-41ce-87e2-571e0efa15d3" value="21480.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="6bf48930-7e42-4afd-8eba-b9806219daa9">
            <port xsi:type="esdl:InPort" id="3e1bc512-a78c-483b-9855-9ff6770f7421" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5e8f9d64-ad1a-4991-87db-5028116e836d" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="f007ca54-0d70-47e4-9453-b6efd5b95941">
            <port xsi:type="esdl:InPort" id="aebabaf8-1302-4a91-978d-c4f288431df7" name="InPort" connectedTo="5c752bad-2a55-43d7-9a84-47142ceb82fb">
              <profile xsi:type="esdl:SingleValue" id="3217bc52-ddc5-4cf6-921e-1651857fa2a8" value="37232.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="02088d99-31f4-404d-a90d-98392c462f7d">
            <port xsi:type="esdl:InPort" id="fd54400b-d382-478b-b582-aa2e8d9f314f" name="InPort" connectedTo="176b160e-e0b7-493a-a430-f728ab57c6bd">
              <profile xsi:type="esdl:SingleValue" id="75893435-18a7-41d7-98ef-6c0c226e84f2" value="70168.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="df09e240-a9c5-44de-8eda-72324fae27b2">
            <port xsi:type="esdl:InPort" id="a1783f43-5fc0-4778-b722-934c1122cda1" name="InPort" connectedTo="176b160e-e0b7-493a-a430-f728ab57c6bd"/>
            <port xsi:type="esdl:OutPort" id="5c752bad-2a55-43d7-9a84-47142ceb82fb" name="OutPort" connectedTo="aebabaf8-1302-4a91-978d-c4f288431df7"/>
          </asset>
        </asset>
        <KPIs id="3e66d289-3866-4170-b0e6-637093543f21">
          <kpi xsi:type="esdl:DoubleKPI" id="3bd4f2a3-47db-4cbc-8d37-e349ee31cb6a" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="f73d8327-7bc9-4006-b9c4-4c46afeb077f" value="706360.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="815b15e1-dd9b-4d5a-ba1d-6d00773a26c4" value="147.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9ee93854-bf1b-4e3f-9d37-a21da664c9df" value="494.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03636601">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="25fb6bfa-156e-493b-a29b-3a22d12e93b6">
          <port xsi:type="esdl:OutPort" id="c8c5b8e4-473e-434a-a467-b35285f48eee" name="OutPort" connectedTo="57d4cff3-160d-42d0-95eb-0cd93de5b1b8"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="180" aggregated="true" name="a02_aansl_ewp" id="47f4d01e-c914-410f-a853-1798db84e596">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="92512f6e-a2f9-45e6-bc65-9d0125b62a19">
            <port xsi:type="esdl:InPort" id="57d4cff3-160d-42d0-95eb-0cd93de5b1b8" name="InPort" connectedTo="c8c5b8e4-473e-434a-a467-b35285f48eee">
              <profile xsi:type="esdl:SingleValue" id="486bc89b-4e05-464c-9354-5e8cf11ad7e4" value="6780.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="38ccc24e-5948-49fb-8140-ba56d8ece996" name="OutPort" connectedTo="bf73304f-29b7-4944-b2e8-0f357985a418 4010993b-208a-4bae-a428-101f53d0083f"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="437a3c0f-0dbd-481b-9cd7-42d218a673b0">
            <port xsi:type="esdl:InPort" id="be473fe4-4348-430e-9f73-50278a9750b8" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="a5bbec6c-2740-4fbe-834b-64794df8e650" value="5198.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="66f4ac5c-b839-40c5-a30b-67e4b3778652">
            <port xsi:type="esdl:InPort" id="e5f2c04b-5373-432a-a72b-28cefe806101" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="2fad117f-af6d-453f-a78e-1c45d3726efc" value="1356.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="b64ea06e-be2b-4932-bcb8-4889e74be812">
            <port xsi:type="esdl:InPort" id="93000ef4-8e79-4da6-9c50-dbc75fa447be" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="74ae6f2a-d599-4011-a2d1-d0ff393586d7" value="1356.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="8ccda05b-eb48-47ad-a67b-e8236348b519">
            <port xsi:type="esdl:InPort" id="312db6fc-c388-407a-bf22-bd5dc11dd238" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="14a059b0-4760-4cbb-a12b-00ae84356320" value="4294.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="9397c5ed-08b5-4c0a-8f8d-e5b0a1fc74c5">
            <port xsi:type="esdl:InPort" id="2ec8ecc8-b77c-4f18-b4eb-7cd8a9232d88" name="InPort" connectedTo="49a8c34b-418e-4457-8e76-1fd6c479a870">
              <profile xsi:type="esdl:SingleValue" id="c9734fd1-462d-4180-857b-612be19e09e5" value="6554.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="1ef7f63c-8886-4ef2-b839-b281084459fe">
            <port xsi:type="esdl:InPort" id="bf73304f-29b7-4944-b2e8-0f357985a418" name="InPort" connectedTo="38ccc24e-5948-49fb-8140-ba56d8ece996">
              <profile xsi:type="esdl:SingleValue" id="94eaa8b6-cec6-4253-9786-315fabc608e7" value="4294.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="2149981e-6668-4342-b121-444dee7fc186">
            <port xsi:type="esdl:InPort" id="4010993b-208a-4bae-a428-101f53d0083f" name="InPort" connectedTo="38ccc24e-5948-49fb-8140-ba56d8ece996"/>
            <port xsi:type="esdl:OutPort" id="49a8c34b-418e-4457-8e76-1fd6c479a870" name="OutPort" connectedTo="2ec8ecc8-b77c-4f18-b4eb-7cd8a9232d88"/>
          </asset>
        </asset>
        <KPIs id="9f058c98-5d36-4f7e-9b47-71463ab21bec">
          <kpi xsi:type="esdl:DoubleKPI" id="2d21e270-71d3-44c1-b1d7-5f2c37beab8d" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c84f0ae5-5b02-4743-b71e-fbb42314a81b" value="169543.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="c78b77f7-660c-4bbc-a59b-ed70d9841d34" value="334.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="88690426-7bf7-47e8-8aea-e49fbb9de172" value="753.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03636602">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="a7836760-49ef-4bb3-a32d-5b762560e60c">
          <port xsi:type="esdl:OutPort" id="757277c2-348f-4049-b5e3-719202f04877" name="OutPort" connectedTo="613f6a04-eb32-473f-8900-96036857587c"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="553" aggregated="true" name="a02_aansl_ewp" id="27390d7f-b038-4401-83b5-a5fdb666d827">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="3147cdca-044e-40ec-9b60-4a5a03bc21bb">
            <port xsi:type="esdl:InPort" id="613f6a04-eb32-473f-8900-96036857587c" name="InPort" connectedTo="757277c2-348f-4049-b5e3-719202f04877">
              <profile xsi:type="esdl:SingleValue" id="89a32b67-b3ea-4890-b237-c56c0b87a4d6" value="12738.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="006ae419-b745-4164-99f3-fd93c30a28eb" name="OutPort" connectedTo="ac388e9b-8859-4820-8c2e-d8afe328490e a83e0a0a-3720-49d5-a8ab-587cbbf5fcaa"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="33d463c3-afff-4a67-a357-a169ddcf7157">
            <port xsi:type="esdl:InPort" id="c7babdb0-0c23-416c-acde-08b3748d45a7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b0fd860f-d916-4902-988e-ef80ea8eb07a" value="11580.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="22293cc9-5ba6-4f0a-99b5-e4b1a2a018b1">
            <port xsi:type="esdl:InPort" id="4401de81-e54d-43d4-831c-78301ff53cc7" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="b4e2f4d1-0e2e-403d-8992-54722e9a766b" value="4053.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="d5ea297a-fe69-4bc6-b6cd-e3e13db85705">
            <port xsi:type="esdl:InPort" id="279e1baa-b93e-482a-bc27-0b81384e258f" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="23a6ff78-89dc-431d-87de-6e308ec0a3a1" value="579.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="f0389dff-f336-457a-a72d-2a0c39809d90">
            <port xsi:type="esdl:InPort" id="40699836-1161-40d5-9027-0eabeaa900b6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="de0a8e1d-5620-43cc-9a29-370373a12b42" value="7527.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="be323040-023c-4d37-9656-dca9eb2ffe11">
            <port xsi:type="esdl:InPort" id="36c44ccd-5b3e-46d3-aa93-249f9470aa9f" name="InPort" connectedTo="b3799b19-cfea-48d8-b243-2bf29b8a4aca">
              <profile xsi:type="esdl:SingleValue" id="4458cf52-81a3-4130-bc37-8fdac8ac690d" value="15633.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="40c0e7ce-5873-4066-b07f-6b46793f797b">
            <port xsi:type="esdl:InPort" id="ac388e9b-8859-4820-8c2e-d8afe328490e" name="InPort" connectedTo="006ae419-b745-4164-99f3-fd93c30a28eb">
              <profile xsi:type="esdl:SingleValue" id="0f51c240-41b9-4498-9cbf-d599c8fb5ec4" value="7527.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="e254d2bd-26b2-4fd9-a9ea-f4cab7181da5">
            <port xsi:type="esdl:InPort" id="a83e0a0a-3720-49d5-a8ab-587cbbf5fcaa" name="InPort" connectedTo="006ae419-b745-4164-99f3-fd93c30a28eb"/>
            <port xsi:type="esdl:OutPort" id="b3799b19-cfea-48d8-b243-2bf29b8a4aca" name="OutPort" connectedTo="36c44ccd-5b3e-46d3-aa93-249f9470aa9f"/>
          </asset>
        </asset>
        <KPIs id="63453bab-afd2-44be-aafb-9ec2ee210901">
          <kpi xsi:type="esdl:DoubleKPI" id="33d2f112-48ee-4dc6-a5e6-b707c45ca309" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e8de0c3a-6c90-46b6-9f17-112b2c268219" value="257769.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="5566cde2-d4d6-47bd-a0a8-dddc5a3074bd" value="257.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="d04a3315-ac86-4e3a-bd2a-301274c88b10" value="446.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03636604">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="b9ab424c-b611-4ab4-a062-1aa0af755eda">
          <port xsi:type="esdl:OutPort" id="c19f1ee3-bfb2-4905-b88d-7ed0a64269e2" name="OutPort" connectedTo="21e19d22-27f6-41b2-894a-6124a69c9858"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="3" aggregated="true" name="a02_aansl_ewp" id="35b31b06-83d8-473a-a2bd-6093b03d03d2">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="91e94462-9caa-4f6f-adac-a2f9d5b13dfe">
            <port xsi:type="esdl:InPort" id="21e19d22-27f6-41b2-894a-6124a69c9858" name="InPort" connectedTo="c19f1ee3-bfb2-4905-b88d-7ed0a64269e2">
              <profile xsi:type="esdl:SingleValue" id="e1596f61-8c78-4fa0-ad56-5052760270df" value="90.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="8cb4e85c-df76-4e3b-8a1c-be7b746b58bc" name="OutPort" connectedTo="492a9e5a-2a05-44c8-be1b-611d54087e54 18fef346-aecc-408d-806a-1cc4deafab19"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="fef3ee60-bd11-4a2d-8410-365ce91f51be">
            <port xsi:type="esdl:InPort" id="91d92404-63e5-4e98-85a7-8c7429fbafe5" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="54241de7-8629-426e-8106-6f22c2b408a8" value="81.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="4b70ad00-72f8-4b32-800f-ccf10f20802f">
            <port xsi:type="esdl:InPort" id="b6b79adf-438d-446e-b050-e9b25c530c49" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3567e88b-1188-4095-a5fe-e09a955acbc1" value="24.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="51d8bbd1-ee74-4e54-b210-bca4c51c2084">
            <port xsi:type="esdl:InPort" id="0ce9cd45-87ad-41e8-b78d-4b32b9c145e3" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="d4d3978d-0445-4d38-92f2-3bf84ef14c2f" value="9.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_ventilatie" id="8ba56234-735a-469e-bf55-85204e354f47">
            <port xsi:type="esdl:InPort" id="2aa0de06-289c-4c5e-a582-466fe832927c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="911d1322-4dd3-4c57-a423-ef85a1854fa1" value="3.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="7d79c20f-285b-4b37-871c-9c3e55692ecf">
            <port xsi:type="esdl:InPort" id="13f8ce1a-a0f0-42d2-b8e5-bd600712a8ee" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="c590cacf-0406-4307-b47d-be4300837b64" value="54.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="66ab21ca-8c15-4856-8ee7-437d71c915b9">
            <port xsi:type="esdl:InPort" id="c432c128-b963-4fdc-b190-203e60a8f107" name="InPort" connectedTo="d5f30837-1ff3-4dc8-9c22-f6988ccf792d">
              <profile xsi:type="esdl:SingleValue" id="87808a71-75ec-4e64-a5d8-172d43091b24" value="105.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="e14bd6a9-3f1e-411c-8af5-fda6e33eb107">
            <port xsi:type="esdl:InPort" id="492a9e5a-2a05-44c8-be1b-611d54087e54" name="InPort" connectedTo="8cb4e85c-df76-4e3b-8a1c-be7b746b58bc">
              <profile xsi:type="esdl:SingleValue" id="d4422451-4078-4074-921a-193b6fe78453" value="57.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="9bbeaf3b-7bd0-4d7d-8c79-7c385be5383c">
            <port xsi:type="esdl:InPort" id="18fef346-aecc-408d-806a-1cc4deafab19" name="InPort" connectedTo="8cb4e85c-df76-4e3b-8a1c-be7b746b58bc"/>
            <port xsi:type="esdl:OutPort" id="d5f30837-1ff3-4dc8-9c22-f6988ccf792d" name="OutPort" connectedTo="c432c128-b963-4fdc-b190-203e60a8f107"/>
          </asset>
        </asset>
        <KPIs id="935b01c3-5376-472f-b1de-2a1a66e10064">
          <kpi xsi:type="esdl:DoubleKPI" id="cceba897-da6a-4784-82df-93079c417ed2" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="7f143d7b-be1f-49c5-8873-ee4b3b3a741b" value="6059.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="65fb4703-4f9a-4514-a455-f8805a5f6bef" value="1030.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="9e4ef08d-b03a-441f-a03a-a6bb6c091a3d" value="2525.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="bu03637104">
        <asset xsi:type="esdl:ElectricityNetwork" aggregated="true" name="Electricity_network" id="56ef7b8b-69fa-4bcd-8d23-f7511f0e97c7">
          <port xsi:type="esdl:OutPort" id="bbc07bd9-3f85-44d6-b711-9610aab9c89b" name="OutPort" connectedTo="56bc2d4f-8a32-409c-8fc1-78f6ed8c2e47"/>
        </asset>
        <asset xsi:type="esdl:AggregatedBuilding" numberOfBuildings="59" aggregated="true" name="a02_aansl_ewp" id="28d0958a-0ad4-4a90-a059-ad050ad60179">
          <asset xsi:type="esdl:EConnection" aggregated="true" name="Elektricity_connector" id="505dd215-ebe9-4a87-92a3-b5321c3dc1c9">
            <port xsi:type="esdl:InPort" id="56bc2d4f-8a32-409c-8fc1-78f6ed8c2e47" name="InPort" connectedTo="bbc07bd9-3f85-44d6-b711-9610aab9c89b">
              <profile xsi:type="esdl:SingleValue" id="2570f77b-4fb6-4dfa-9a65-f8087bb24747" value="38619.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="ae208aac-a448-4212-99cd-ede90d98f506" name="OutPort" connectedTo="343ae2a5-1e10-4adc-b1bf-fb3d196dfcc4 60e0fc81-3417-4a81-bfba-46d87388a6f1"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SPACE_HEATING" name="Vraag_Ruimteverwarming" id="b63889d9-8380-4c00-9508-054dd8d1e03f">
            <port xsi:type="esdl:InPort" id="88167a03-35b5-4d7e-83c8-8f06e919ad00" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="5d918eda-d2a3-4250-bd76-614fd2f33b2d" value="13486.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="HOT_TAPWATER" name="Vraag_Tapwater" id="bd1d1c2e-af34-4098-bf34-59ab50cb6821">
            <port xsi:type="esdl:InPort" id="64763839-cc38-4caa-8f76-f1bb8430c81b" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="29164434-775d-4c56-8c0c-b9c7bdf7d997" value="613.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CoolingDemand" aggregated="true" name="Vraag_Koude" id="8032fbed-7132-4ad9-b6d0-5297aa4b94fa">
            <port xsi:type="esdl:InPort" id="d1da3dea-602b-40d9-9ed1-3b929265cb39" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="3099f1be-d1ba-414d-8c29-41992f06bda7" value="7969.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektrische_apparaten" id="cee252f4-c7b9-4f63-a055-5b52a904b346">
            <port xsi:type="esdl:InPort" id="2b298f63-3e99-46fe-bf6a-a599d136393a" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="fa90b6d9-a900-4459-bd4a-69797b205d20" value="31876.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" aggregated="true" type="SH_AND_HTW" name="Vraag_warmte_totaal" id="bdeb0213-76d2-4e8b-b41b-f0f16870f62d">
            <port xsi:type="esdl:InPort" id="3a1b0c2b-31cc-4674-b277-ff73367667d8" name="InPort" connectedTo="0794f042-c9d1-4e82-8a0d-07eaf0758e8b">
              <profile xsi:type="esdl:SingleValue" id="b49b9316-2f50-4612-92ac-c302e5aa4d58" value="14099.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" aggregated="true" name="Vraag_elektriciteit_totaal" id="5444e02c-527c-46e2-ba7a-3a2f3c11886e">
            <port xsi:type="esdl:InPort" id="343ae2a5-1e10-4adc-b1bf-fb3d196dfcc4" name="InPort" connectedTo="ae208aac-a448-4212-99cd-ede90d98f506">
              <profile xsi:type="esdl:SingleValue" id="5e23fec0-a8a9-4b49-a57c-07460e4e2e04" value="31876.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" aggregated="true" name="eWP_lucht" id="3657d27f-cf94-47ab-8c11-36b6122df9a6">
            <port xsi:type="esdl:InPort" id="60e0fc81-3417-4a81-bfba-46d87388a6f1" name="InPort" connectedTo="ae208aac-a448-4212-99cd-ede90d98f506"/>
            <port xsi:type="esdl:OutPort" id="0794f042-c9d1-4e82-8a0d-07eaf0758e8b" name="OutPort" connectedTo="3a1b0c2b-31cc-4674-b277-ff73367667d8"/>
          </asset>
        </asset>
        <KPIs id="9be45eab-bb82-4705-a7cb-58a6216f1db2">
          <kpi xsi:type="esdl:DoubleKPI" id="82fcd5b8-2ba5-436c-a4ec-017845217b84" name="co2_uitstoot">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="e5e94992-748d-472f-93b5-fe6f7c1d70e5" value="129213.0" name="nat_meerkost">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="bc9ad9f4-8030-4311-8c99-accf85067aa1" value="148.0" name="nat_meerkost_co2">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" id="0ed7c90e-e04a-4286-ac43-ed35824ddaf7" value="211.0" name="nat_meerkost_weq">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference=""/>
          </kpi>
        </KPIs>
      </area>
    </area>
    <date xsi:type="esdl:InstanceDate" date="2030-01-01T00:00:00.000000"/>
  </instance>
</esdl:EnergySystem>
