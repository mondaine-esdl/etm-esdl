<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="a7e7f5ed-6b28-4be7-8104-94c040b2cb19" name="S1a_B_LuchtWP_Havenstad">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="4cf2dc6b-c5b3-4552-9f53-e74ad86ef0a9">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="7796a7d9-d345-4e6c-916d-36fc1fc6b8f3">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr" unit="JOULE" perTimeUnit="YEAR" multiplier="GIGA" physicalQuantity="ENERGY"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cost_EURO_yr" unit="EURO" perTimeUnit="YEAR" physicalQuantity="COST"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="energy_GJ_yr_ha" unit="JOULE" perTimeUnit="YEAR" multiplier="GIGA" physicalQuantity="ENERGY" perUnit="HECTARE"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="GRAM" physicalQuantity="EMISSION" id="cost_EURO_TON" multiplier="MEGA"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="emission_TON_yr" unit="GRAM" perTimeUnit="YEAR" multiplier="MEGA" physicalQuantity="EMISSION"/>
    </quantityAndUnits>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="28b09098-c08f-4c55-af86-a2d37b9070e5" aggrType="PER_COMMODITY" name="y2050">
    <area xsi:type="esdl:Area" name="Havenstad" id="Havenstad">
      <area xsi:type="esdl:Area" scope="NEIGHBOURHOOD" id="bu03631000">
        <asset xsi:type="esdl:AggregatedBuilding" id="ea8326cb-e5f1-4516-876e-cb8d4f5479a2" aggregated="true" numberOfBuildings="14577" name="aansl_ewp">
          <energyLabelDistribution xsi:type="esdl:EnergyLabelDistribution">
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.9998627975577965" energyLabel="LABEL_A"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" percentage="0.00013720244220347122" energyLabel="LABEL_B"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_C"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_D"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_E"/>
            <labelPerc xsi:type="esdl:EnergyLabelPerc" energyLabel="LABEL_F"/>
          </energyLabelDistribution>
          <geometry xsi:type="esdl:Point" lat="52.398468294711215" lon="4.858879998536358"/>
          <asset xsi:type="esdl:EConnection" id="cfaed087-a6be-4750-a760-a7019d9a8c67" aggregated="true" name="Elektricity_connector">
            <geometry xsi:type="esdl:Point" lat="250.0" CRS="Simple" lon="125.0"/>
            <port xsi:type="esdl:InPort" id="1e18a7d2-aad8-4a14-b2ba-d596a0228c59" connectedTo="3fdce7a6-b49b-4705-8234-c9b97858871c" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="ac6cc5a5-53b5-4e59-92d9-251cfa58b964" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
            <port xsi:type="esdl:OutPort" id="6c2172e5-713f-4c8f-88b0-9d0fd3010ae6" connectedTo="1a9004e7-bf6b-4bb1-b11b-a27729ad1c66 d3d627d5-ecdb-4d97-bf22-a1dd1a90c29a" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a6b542c5-018e-41a4-9233-d8a2ca9ea799" type="SPACE_HEATING" aggregated="true" name="Woning vraag ruimteverwarming">
            <geometry xsi:type="esdl:Point" lat="125.0" CRS="Simple" lon="375.0"/>
            <port xsi:type="esdl:InPort" id="f5e6d685-2f34-4455-ae86-d417bad71e00" connectedTo="b800cf8f-e98f-457c-b725-17f49867b897" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="21a1d407-e3ef-486b-b25b-4980d99c2886" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="306952fc-c5eb-4b5a-b1b1-c8dd55218ff1" type="HOT_TAPWATER" aggregated="true" name="Woning vraag tapwater">
            <geometry xsi:type="esdl:Point" lat="250.0" CRS="Simple" lon="375.0"/>
            <port xsi:type="esdl:InPort" id="b7cf9667-d36e-4db6-af95-599a6798d8dc" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="f94b198d-048b-411e-8055-04d389908bca" value="1.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="77d5f805-5e2f-491b-b25c-cedfab1e4013" aggregated="true" name="Woning vraag elektrische apparaten">
            <geometry xsi:type="esdl:Point" lat="375.0" CRS="Simple" lon="375.0"/>
            <port xsi:type="esdl:InPort" id="1a9004e7-bf6b-4bb1-b11b-a27729ad1c66" connectedTo="6c2172e5-713f-4c8f-88b0-9d0fd3010ae6" name="InPort">
              <profile xsi:type="esdl:SingleValue" id="1085ac6e-8a77-467f-bc13-0e9d02acecc6" value="2.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energy_GJ_yr"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatPump" id="6848c258-c04b-4ce4-8b65-59dc1d0e861f" source="AIR" aggregated="true" name="eWP_lucht">
            <geometry xsi:type="esdl:Point" lat="250.0" CRS="Simple" lon="250.0"/>
            <port xsi:type="esdl:InPort" id="d3d627d5-ecdb-4d97-bf22-a1dd1a90c29a" connectedTo="6c2172e5-713f-4c8f-88b0-9d0fd3010ae6" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="b800cf8f-e98f-457c-b725-17f49867b897" connectedTo="f5e6d685-2f34-4455-ae86-d417bad71e00" name="OutPort"/>
          </asset>
          <buildingTypeDistribution xsi:type="esdl:BuildingTypeDistribution">
            <buildingTypePercentage xsi:type="esdl:BuildingTypePercentage" percentage="100.0" buildingType="RESIDENTIAL"/>
          </buildingTypeDistribution>
        </asset>
      </area>
      <asset xsi:type="esdl:GasNetwork" id="5065ba5b-b7b2-44a3-b0b9-441417d04709" aggregated="true" name="Gas_network">
        <geometry xsi:type="esdl:Point" lat="52.40448720910138" lon="4.85449069084389"/>
        <port xsi:type="esdl:OutPort" id="4a838148-4ab1-4e99-b5a9-84d7a107941a" connectedTo="638a0f88-a328-4beb-b0ff-f55aa2fd24db 0e1b9e18-d5fb-48a5-b52c-892a2b92d941 d6f9625c-afe5-455a-a0ea-72a816b4307b ebe267e7-33ee-4a68-be73-90118ad195eb 66d0b186-7378-4490-ab4d-ded9fd69aa5c 2a5b43a8-efce-4e9c-81ec-14a9240df63f d93d8474-88e9-4b59-9b53-4a8a5957fc2a d7d146a0-b949-49fa-87f7-b984bea7487a 5acfbde7-fd43-4016-a385-cf511cbb5852 49af3daf-7109-4772-b7fc-2629658ef1b6 4504cfc7-682a-48c1-9a2b-2cdcd43d384f 74c12f64-3df4-4b4a-962f-8c17f5784f7e e79e5c15-1222-4950-a919-69b94f241900 0fa518aa-cef1-47b2-b20c-c2c3464245d9 e25be05d-7d9d-46f6-9ab2-b8004183a5f7 78ceef53-83c4-47ce-b509-66dfe3682313 b44c7f83-fcb6-47ca-bd4b-6ab86028727a 76dafb42-52d8-4b35-8bb9-3879062f93d2 f8438aa9-86a3-4121-aecc-50e9442980a1 fcc040e1-cb9c-43e7-bb36-246a2c910075 8caa6b73-7bea-4f90-a388-ea9cb11ba461 ac43c2da-4948-423e-b46a-bbd7d4b1349d c98579cb-e4e2-48e9-9da9-8a465214dcd6 b76eeec8-ba48-4998-ba8b-12d11f537961" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="7bf17814-0990-479a-8b0a-ba9b35f9a379" aggregated="true" name="Heating_LT_network">
        <geometry xsi:type="esdl:Point" lat="52.404619050337175" lon="4.854530486068745"/>
        <port xsi:type="esdl:InPort" id="ec943498-1f8d-4fe4-8f21-2b32153f7bd8" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="bfcaf995-badf-4c00-86a9-ad7d27191d96" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" id="5ad84a84-3ef9-417f-8243-93f85c6540c7" aggregated="true" name="Heating_MT_network">
        <geometry xsi:type="esdl:Point" lat="52.40466291235313" lon="4.8536048592352214"/>
        <port xsi:type="esdl:InPort" id="051fae5e-4adc-4a22-ae1a-0bb74f9425b4" name="InPort"/>
        <port xsi:type="esdl:OutPort" id="a5fe19db-85c6-4605-8551-c4704c6d1cf3" connectedTo="ba446a9d-8d89-4942-9c59-630ad35cb492 005dccb0-6840-43f1-b879-a8a595887576 8689a8ae-7926-44d3-a1e3-cf2e9c39f30b 977a5a82-4678-484b-811d-f9ae6e56f841 f8e5d6e1-e0d3-487e-9172-0f9cf517ff35 057a83a3-4683-4b15-8f70-e342e2cf48ac 6b6d0561-dafb-47db-a47e-2eaf37e63e05 3b18164c-30b6-4624-bb29-f6e82efa0247 89a04390-b6c6-47ba-b34a-ab7b655c692c 617c3adc-d158-45b2-97aa-19a65ff16354 3a70428f-f8fa-4160-97c8-e817b9fc3c77 5180a232-c02d-4b06-83e4-31487b8cfb9f bcc1d90a-dcc6-4543-958f-bad66de85a0b e961448d-4fab-48b3-a30d-470a4b6775e8 db88beef-ae64-445f-ad83-917d39318ddf 027fcf8b-5fc0-44ab-a1f1-6d52bff56eb5 26301d40-5189-454c-8cbf-c35a13d4a92c 50337342-73c1-484c-a185-df5bed41eb6d bea8fe3e-45b4-413f-b26e-c77d30b2949f 3445e375-71a3-4f1a-a2e2-ac02c7e52457 d770f670-2e0b-4c69-894e-648d06d50328 8a181e94-62a4-44ba-bb8c-f0990855db5d 80ceadbe-3887-4900-91b0-5d9d36e7afaa 8b575ab3-bfaf-4232-ad3b-3f06dd323346" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" id="a347a918-c101-422b-a010-0f673b3e007c" aggregated="true" name="Electricity_network">
        <geometry xsi:type="esdl:Point" lat="52.40834410729299" lon="4.859775477566006"/>
        <port xsi:type="esdl:OutPort" id="3fdce7a6-b49b-4705-8234-c9b97858871c" connectedTo="1e18a7d2-aad8-4a14-b2ba-d596a0228c59 3b320a6e-53dc-4af6-86cc-a92265c07eb3 e4c3b360-3aa5-4261-9804-6a47c585da1a a5ebbd05-0b46-4eb3-8509-17991f737ef5 873ee026-0a5d-4ea4-8718-dc31832ba7c1 7970e5ab-525c-45fe-87e3-860eeaee8014 661af296-3a40-44ae-aba6-43b2b1e76822 119015ae-77f7-4077-9103-5fd53ef036ab 40a4e5d4-0d33-4f2a-bda8-66d46db06ce0 cf165596-e059-4f5f-a31b-db7225bf0c66 0a444c11-780e-4169-8e3d-d9b89e82b621 59077103-569a-4b0e-9451-2eb84553f287 248f2ba9-310d-4b36-b08f-43a850e94746 2535ff14-305c-481c-bb1b-ba7138540bcb e30cf167-5167-4b6b-a072-6000f37b471b 835f87ee-f536-4561-9baa-b1cc330d496d 6fd4c8f6-9902-4474-a026-4b2588053ad4 63c80ecd-34b4-4357-b3bb-1f2f236a56da 140c6436-6c9e-4689-8e6e-1e8da0a2ddf2 ec22d747-9649-4742-8be1-a355c3160d79 08f5a228-8000-405c-9045-3342872d5d46 77badcc6-6cc3-4a1f-b463-e18cfa722738 ea90f814-e9f5-4a31-9ab3-ac575d1e5b8f f2a016d7-6452-4b71-8137-eb4e911bf0cb 1576535a-fdcd-48bc-8f93-a3c4fe43706a 569d644f-80fd-4861-b510-1924047d256a 14053ccf-d25e-44a3-bbb7-2548652aa4b0 30501742-1d8e-4019-992a-ef111a3a6654 8304c9b8-d99a-4334-8882-146271adc941 65af3321-53b2-443a-a514-6f4f5b2c2304 77d4ce53-bc3d-4fc0-a64a-748a6d8eca9d 7b84ba2e-47d5-4f97-9da7-ef11e087b3b3 2ba6f613-a4a4-405b-a806-79061ecdb390 a66062a1-1a90-4a40-be84-9f5937ca4ea6 0a8a960f-4e7c-4b73-bee0-638b41a287eb c35f71ab-9465-44de-a64f-857aabf60d8f ec04dec7-309b-46ab-aba8-fb1f0f909363 117d9090-762e-4c27-b27f-df919055dfb5 d45bbc83-8e70-4875-aeaf-692c1051decc 07ddde9d-0cff-4f0d-9a98-a659c09c2ecf 7f16b6b3-64c5-4dd2-a093-631a2b3b7f9e 74cb6cce-0422-4add-9e67-90acda533dcf f03a8aee-4146-4d43-8e9d-85cb69062ce6" name="OutPort"/>
      </asset>
      <asset xsi:type="esdl:WindTurbine" technicalLifetime="25.0" power="3000000.0" id="28598cd5-395a-4f10-8693-f145a40d86b9" installationDuration="12.0" fullLoadHours="1920" type="WIND_ON_LAND" description="" rotorDiameter="100.0" height="150.0" surfaceArea="200000" name="WindTurbine_2859">
        <geometry xsi:type="esdl:Point" lat="52.40105732894292" CRS="WGS84" lon="4.852008819580079"/>
        <port xsi:type="esdl:OutPort" id="da0f4bd8-b25b-4340-8d61-1f04ea4eb48a" name="Out"/>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" value="49.19" name="Fixed operation and maintenance costs (per year)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe / year" perUnit="WATT" perMultiplier="MEGA"/>
          </fixedOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1391.99" name="Initial investment (excl CCS)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe" perUnit="WATT" perMultiplier="MEGA"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:WindTurbine" technicalLifetime="25.0" power="3000000.0" id="ff7da79d-32a7-43e8-b421-56ff39033997" installationDuration="12.0" fullLoadHours="1920" type="WIND_ON_LAND" description="" rotorDiameter="100.0" height="150.0" surfaceArea="200000" name="WindTurbine_ff7d">
        <geometry xsi:type="esdl:Point" lat="52.40980190564938" CRS="WGS84" lon="4.86419677734375"/>
        <port xsi:type="esdl:OutPort" id="3a2b713f-57e7-49f9-b8c3-04a9e8709a32" name="Out"/>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" value="49.19" name="Fixed operation and maintenance costs (per year)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe / year" perUnit="WATT" perMultiplier="MEGA"/>
          </fixedOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1391.99" name="Initial investment (excl CCS)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe" perUnit="WATT" perMultiplier="MEGA"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:WindTurbine" technicalLifetime="25.0" power="3000000.0" id="1c86256a-3abf-4dba-9b16-bce6d210c148" installationDuration="12.0" fullLoadHours="1920" type="WIND_ON_LAND" description="" rotorDiameter="100.0" height="150.0" surfaceArea="200000" name="WindTurbine_1c86">
        <geometry xsi:type="esdl:Point" lat="52.406869785671105" CRS="WGS84" lon="4.8678016662597665"/>
        <port xsi:type="esdl:OutPort" id="efb49369-9729-491d-8b74-bcfcc9811e9a" name="Out"/>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" value="49.19" name="Fixed operation and maintenance costs (per year)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" perTimeUnit="YEAR" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe / year" perUnit="WATT" perMultiplier="MEGA"/>
          </fixedOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1391.99" name="Initial investment (excl CCS)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="EURO" multiplier="KILO" physicalQuantity="COST" description="kEUR / MWe" perUnit="WATT" perMultiplier="MEGA"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:PVPark" power="20000000.0" id="a8f30fe9-47eb-4588-97e2-6ba0af9db9e6" fullLoadHours="867" surfaceArea="101240" name="PVPark_a8f3">
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.3960151961965" lon="4.881572797894479"/>
            <point xsi:type="esdl:Point" lat="52.39759088621236" lon="4.884287528693677"/>
            <point xsi:type="esdl:Point" lat="52.39478316462824" lon="4.888561628758908"/>
            <point xsi:type="esdl:Point" lat="52.39347355633155" lon="4.885909259319306"/>
          </exterior>
        </geometry>
        <port xsi:type="esdl:OutPort" id="f5149957-0f69-451e-bc11-b5f35c79ad40" name="Out"/>
      </asset>
    </area>
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000"/>
  </instance>
</esdl:EnergySystem>
