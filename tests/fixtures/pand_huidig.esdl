<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="EPS - Tholen - Geen maatregelen" id="449e5549-58c3-44eb-92b2-4c536ddfa485" description="">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="8376e17f-aab6-4308-aa77-0891804e9706">
    <profiles xsi:type="esdl:Profiles">
      <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="59d8b6b3-2adc-43fb-a8ea-715a55588b23" profileType="ENERGY_IN_TJ" database="energy_profiles" field="E3B"/>
      <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="3e566900-390b-44cb-aaf2-e47077f21dc8" profileType="ENERGY_IN_TJ" database="energy_profiles" field="G2A"/>
      <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_Zon_deBilt" id="14d48b6a-d39c-42d5-9df5-3151b739ec96" profileType="ENERGY_IN_TJ" database="energy_profiles" field="Zon_deBilt"/>
      <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="e1d79c57-64dd-4925-8d3c-376bfaf7bc74" profileType="ENERGY_IN_TJ" database="energy_profiles" field="5_werkdagen_07-18_uur"/>
    </profiles>
    <carriers xsi:type="esdl:Carriers" id="44fd3f5e-e842-4314-893b-761fe4cecd8e">
      <carrier xsi:type="esdl:EnergyCarrier" emission="0.649" name="Elektriciteit" energyContent="3.6" energyCarrierType="FOSSIL" id="30c1b7ac-3e88-4736-8096-21fc82367514">
        <energyContentUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" perMultiplier="KILO" multiplier="MEGA" perUnit="WATTHOUR" id="2b410976-2a8d-4a91-8854-3e31b875b2e2" unit="JOULE"/>
        <emissionUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" perMultiplier="KILO" multiplier="KILO" perUnit="WATTHOUR" id="a4af28fc-9f61-4069-af27-f7a78093f39a" unit="GRAM"/>
      </carrier>
      <carrier xsi:type="esdl:EnergyCarrier" emission="1.79139" name="Aardgas" energyContent="31.65" stateOfMatter="GASEOUS" energyCarrierType="FOSSIL" id="81d05cce-0eb1-4adf-abe4-ce50d7d65ced">
        <energyContentUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" multiplier="MEGA" perUnit="CUBIC_METRE" id="0ceea58e-d5ca-4cf1-97c3-e45018128c89" unit="JOULE"/>
        <emissionUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="EMISSION" multiplier="KILO" perUnit="CUBIC_METRE" id="2bdd15a3-e4b6-41ff-aa6b-f3c5d17897a9" unit="GRAM"/>
      </carrier>
      <carrier xsi:type="esdl:HeatCommodity" name="Warmte" id="b62966bb-3206-454f-8a8c-0e43d8f22f97"/>
    </carriers>
    <sectors xsi:type="esdl:Sectors">
      <sector xsi:type="esdl:Sector" code="B08553" id="2caf40b6-36e8-4a56-b7ea-1719843f70c3" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02562" id="1eb1161a-7fa3-4d5a-8a0b-0358f9eb9acb" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45192" id="67c23e51-64f5-424a-8898-422c6520aaf7" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45192" id="84c7087c-1232-47cf-b4eb-390c6f3e40d1" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46382" id="9b015bac-25a8-472c-a85c-23c7c366ad72" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45112" id="165d79af-29d9-4e32-8273-fdc83e84e208" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47819" id="e768b89c-4c80-4206-bb5e-a3f49f2c26b0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02223" id="7a0f4ca3-63c1-4af2-8552-6994a694c72a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46382" id="92e8ea5f-e7be-4fae-a27b-b5f30fa0e6c4" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45204" id="9947e3a3-bbb9-4221-ac57-c6e70d53e512" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="aa464893-dfe6-44be-a3f6-239326c2acb4" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, A03102" id="7846ad12-988b-4957-ba9d-bf9188a574ea" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M70221, G45312, G45311" id="84b511de-ad39-47eb-9234-4dca48dcde18" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47892, B08010, M70102, B07112, G45402" id="7dc45edc-da18-435f-8efe-48e444c5adb2" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46331, B06420, G47911" id="b5946dd6-06e4-4b05-9d93-9a6275bc1008" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="L68204, K64303, B06420" id="90b5beed-64c6-40ff-8652-86ba1b32d9d7" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, A03832" id="cc555708-abf1-4b4b-ad8a-f9959c1c14d0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02229, M70102" id="3f766879-f289-457f-9137-bb543283381f" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B07112, G46901, B06420" id="a483ebfd-f88f-4775-a936-277d1bbab88e" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02041" id="b150bb27-37bc-47e7-a562-b7d516260f1a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02221, M72192, M70102, B06420" id="73e3e21b-6b0d-4e82-bfa6-4ec24e915a07" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02221" id="de195a1d-fa74-4c28-aa65-6067f46abce1" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="908286fc-1a9d-414f-b0c1-658daba93344" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="cad4cbd2-8cdd-4b62-9eb9-88714da9a217" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B08560, M70222, B06420" id="ade50278-c890-4059-b8fd-f11567e993c2" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02320" id="eb9afe19-40a3-4a91-99b0-1fcc49ad0e98" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46331, K66191" id="b13cf999-a694-4a64-b2d5-44e4ba2d909e" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="L68204, A02561, B06420" id="f9ee83f4-372d-4936-a455-1c9e39cd96c1" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M69102" id="c95c4019-3af8-489b-981a-c7da5377ef2a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46699, B07112, Q87301" id="de449109-82be-48c2-912f-518e068a112b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47526, G45112, B08130, S96022, F43221" id="bf8b0fb0-8902-4923-bf66-1f50d801e3ae" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M70221, G46694, M70102, B06420" id="987db65d-aa70-4bfa-9f05-a65fc9ac2bb0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47819" id="523b65c9-630b-489d-9e73-c9d55f1550a7" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="cdabd9e1-0528-48b8-9f51-40e4f342e8b1" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06201, G46772" id="7d477dff-b218-4521-b7f9-8875f5421d9d" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="3be265ae-68a9-40ed-aef9-e027a1b7cd89" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M69101, G45401" id="d55ed7d9-c65a-46f7-b524-bbf8e5f7f44a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46492" id="8a0652c4-4212-4f5c-b523-aebe193c55c1" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02042" id="71a01aad-e119-4b1e-a94c-9d374a809fc7" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, B06201, M70102" id="8aa2008e-a165-4bd6-9cc9-fe559743ff3d" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="244d8534-4252-4bf0-8c9b-d88af8aae33c" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A01071" id="116367ed-8ec1-42a0-9e18-fea05535a779" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="365e5ad7-2c2c-4f33-b77a-b37ab241173f" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="9f34e7d3-16cd-4419-a907-42499087f496" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06831" id="18579223-15f5-49c9-a3f5-e3f6268205ab" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06832, B06420" id="41c2425b-8361-4465-83c6-cde6dcbf8ac0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="85a6f774-5cb9-4de7-ae27-a2a7665ee7d0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45204" id="6d1f4eaa-68c4-42f7-ac88-982697344782" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46712" id="bb44dd3b-a1bf-42d6-9e36-857c05be11e2" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="c13153c7-9457-4748-8c39-befd04fba4af" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M70102, B06420" id="cbe7f3e4-71e5-437d-a1c3-5153c782edff" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, B07112" id="535b8f22-68f5-4d23-b5ed-378ea5c37494" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47819" id="07c68f19-8dba-4695-a967-f53447620497" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M70102, G47918" id="594c714b-60a0-42ac-98ae-1b28b1ed2981" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06831" id="b80b944b-f7d8-4395-ad15-a49fddbfa123" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B07490, B06420" id="d9e69fd1-d05f-4ba3-b3f7-28509f75add6" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M74101" id="2e46b4fc-3e20-4a95-b792-877b334d770b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="M70102, G46473, B08219" id="6022680d-e90e-49be-90b7-60e31b7ab28b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="5db135b6-c748-44fd-ba3d-98bc0d98ac77" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45112, G46693, G46697, G46699, M70102, A02511, A02899" id="17efb39d-0f99-4d01-aa6d-384e3e909e0a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46694" id="236ddf17-7d02-4613-a1fb-0c216952125b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02562" id="d5d84dd7-e9a6-4cf2-bed5-b430cb5bff1b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46751, A02221, M70102" id="66ce756d-8cc4-4867-882b-1d347b6e4c13" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A03012, A03315" id="601b2e98-31ed-4086-90ed-e96e54f0539a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B08211, G45112, H52291, G47911" id="dd8992ae-a6d8-447d-ad4d-1656a4227470" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="62fe7401-a9c2-49b8-95c8-3888ce74a990" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="C29201, B07311" id="0a1cfdca-b473-4a26-8795-7d9eda8fa744" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, A02562" id="c9fd826f-6eee-4a20-934d-1ce65075f117" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06202" id="b3827439-ccce-4a6b-a7d2-7960cb2634ee" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02512, L68204" id="8eb1eaf7-3bbb-4e39-9665-4ff5998c9196" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06630, A02511" id="90970e8a-1e2f-4fd7-8c21-d0830ba3cd72" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="R93212" id="693dd886-a325-4f19-be28-0c502fa56002" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46499" id="ab36d360-5836-4b05-b357-deb0b3daec25" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B07112, A02511, B06420" id="a48fd149-a88e-4847-bdc0-1ee408ea1455" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B07021, M70102, G46496, L68204, M71203, A02221, K64303" id="e8c15233-22af-423a-b151-404a7731adc0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="K64923" id="c86ac4a0-8b00-449d-b61b-3ccab6d45191" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46491, A03832" id="1eb3c57a-0090-45fa-aa5c-2b30bf607100" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="685f061e-d73a-4230-9173-7356fe675815" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B07112" id="54e9794e-feee-4397-b7a4-c16ad5f24cf0" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02223" id="a64a47e6-05da-420a-a1e8-d347667a05e4" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02899" id="6fe53beb-5f1a-4711-b880-63a50b770bae" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02561, M70102" id="5f3d2421-244b-408e-a94c-57fcdf679901" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06201, B06420, B07112" id="dfdc6730-6b7f-4d9d-90d6-4770257b3495" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="F42112" id="4e92dd6d-d561-4b1a-8d38-926378e35e66" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, A02561" id="16284970-105f-40c3-8054-dba1f630f6c9" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="R93212" id="7a74cfa6-ec04-4b1d-adc1-5687629dc4a2" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46471" id="85612ed1-53e7-4e7e-b919-0f8abf479a5b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47793" id="ed07f95c-d125-42eb-b227-7a7b15a0b7da" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="4be0bb6f-88b4-46c1-8a54-249aa7f3c75f" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46492" id="4b7591c1-478d-4028-bdc7-8e0aa96bf82c" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45402" id="8d21efb2-4c15-458c-87f4-ec6c8c32a076" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="0e2faac0-df77-4b37-acaf-449b26a7df2b" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B08130" id="85ae35d9-610c-4598-b71c-a8eae8d278ea" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A02221, A02222" id="26524ded-9fde-416c-bd10-8ca34b2cc2a5" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06832, F43999, G46738" id="b1cc9ee0-bdb4-4e23-b8db-094ae92549ab" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47819" id="c845ae35-afe4-44cb-b100-cca2bd386e16" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, F43999, A02620, G45112, P85592, F43221" id="c2dd9f03-47f0-481a-93e6-b2d6ba75d24a" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46693, C16231, R90011, B06203, B06420, G47915" id="9d76ba95-9440-4b7a-9660-200965bccf2d" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="R93119, B07490, B06611, M74201, B06420, B07112, Q86919" id="f0aae038-05ae-48a6-92e8-439652b47297" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, M70102, B06312, B06201, D35113, B07912, B06311, G46383" id="f6b2200d-109b-438d-8417-46621f95a89c" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="13cfdd2b-fc25-4fbc-b453-93d12048fc07" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="A01020" id="67dd8776-f4ba-490f-8fad-dff5bd9e06ef" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420, G46742, C32999" id="12aa54aa-c54d-4906-8761-a1499c3a55fc" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G46694" id="019a556d-e433-4c84-92bb-88db9e882ff4" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47528" id="e6238626-e8d6-4330-8979-931f6cde8ed4" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B08553, G45402, N77399" id="cf0b223d-fa46-499d-9444-cdb52a9a3c87" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="71786725-6d40-4c04-92fb-b2ee07194d58" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="2a36b3be-4249-464e-9250-cd89059b88b5" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B08020, P85592" id="67b855ee-4568-4078-9d15-e62431b06230" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="" id="208e5572-1388-40cd-8d36-b5047cbb99bc" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G45202, G45312, B06420" id="cfafebaf-b0e0-4796-bbb6-816eca277931" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06420" id="f6729acb-3636-4ba9-b4d6-c0953f09e3c6" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="G47763, M70102, M70222, M69203, M69202" id="bca2fc67-a06e-4a88-ba22-cdf6a96c44bd" name="SBI codes in building"/>
      <sector xsi:type="esdl:Sector" code="B06831, A02711, B06420" id="d3389253-9ad0-448a-bd90-37ae3426801a" name="SBI codes in building"/>
    </sectors>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="115e74b1-929b-49ad-90bb-45dc66fb4434" name="Huidige situatie">
    <area xsi:type="esdl:Area" id="1efa5784-5c3c-4bae-b5b7-680427b73ca4" name="Bedrijventerrein(en): Welgelegen">
      <asset xsi:type="esdl:ElectricityNetwork" name="Elektriciteitsnetwerk" id="7ebd26c1-ba75-41ca-844f-8e6fa793d4bb">
        <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fd3d3fbd-fd05-4063-99cd-949d9959a3d3" id="c21a5180-0792-42f9-b5f0-e08f4dfc4f74"/>
        <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="2e3a52b5-d6ab-4598-b7f7-033d8d785217" connectedTo="149ac251-9e7d-47c2-bd43-1ea7936e93b9 691c69cd-cf12-40f2-a537-3775093e9a51 801b8084-7f10-47f9-b342-3fc4a3087569 5f1c060f-0be3-4dac-a9fb-5e236643c6ba 3e16c458-6550-4876-8e57-b2c60be152c7 fe058e76-a9e5-4c5c-be9f-af14c2edb521 03e0fc47-70e6-4eab-9b61-5677f570c45e 0f6e6de7-701a-43a2-a98f-7f88acb39462 027f2d3b-d4a8-422a-a79e-42d7b4bf97af 2b3eb552-c29e-4a96-b96b-f8a6951fda37 0d899f9c-312a-40e5-8728-3bdd9b32f468 a937e01e-56d4-4068-8b64-16769acd679c b5678003-5f7a-40c0-9a6b-351a517782f9 3b2ee6ea-6f72-4c1a-b438-0446d74a193f d469fb02-a130-459d-bcf9-a1d2e0106602 6fc28e02-b5a4-4795-ac19-e4adce172cd2 2e7d4217-fb18-4ff8-bdd4-3533c5f1c25a 2b8d1cda-c1a3-4bb2-a901-3165fc25c28b f70d680c-93ea-4bf8-a86c-23110a9ec248 0381866c-6874-48cf-8533-47a17bfa2f30 11e00d87-888c-4e63-abb7-9c38edf95bfa 288380f9-2ba3-431c-803a-30ab6e8c4caa 83091d76-0061-4d82-a3a1-6cf125f3bea5 2b91d57e-987d-4022-b1a0-ee0d5c922b95 39cc1e5f-d757-4f94-8c90-95456438e618 2da7806a-657a-4376-9ac3-be7034292eba b3d3b89c-2bc9-47e0-8a8b-43fba2a221a2 60cbe387-ae31-4352-a57f-e9d183844638 eaf3f409-afa0-425b-a066-17727dfb6f67 b0d22d3c-c72a-45c6-bb00-ef48cdd44b05 92d8971b-b0fc-4a5c-8091-dba1c99ec9a2 3c1b9aed-9489-4b9e-b31f-51813ec0eecf 07a38655-31c1-4ec7-902f-e4d0a4a3e1d8 9272cc44-de0b-444f-8c56-b3b7cdadbf5b f3864504-2097-4d19-933a-431423c2d869 d237615b-0edf-4290-acf2-260793047e3e 55cb0b84-1e01-4a43-90d1-c17dc687aca6 7c55f573-f5bd-4ebc-9135-86cc2a4d1f48 c0c824c5-92d2-474d-be00-54c298b1cb7a 5ff873ce-3f58-4628-999c-49a0a4c6b91d 7ba8d6dd-287e-4496-8bdc-e4e9024a64d4 68e9afc3-c849-431b-9ac0-e405851f62d4 b5248065-caa9-428f-aca5-9d3c241d7ab2 76122d05-3178-4091-812d-9916fb7cee99 5f88ce97-e9de-4511-90da-865d17bb4ebf 413c0d0b-2858-491b-aba2-0f79a825ffe7 bf732d53-324e-44f9-8ab9-6e48eacb5230 0b978353-75eb-4513-8a69-812876784e43 b985ee2b-9fdd-4d7a-a5a3-b9ee1006c4fd dd1ef6df-0343-4cfc-a9f8-4218d1e349f4 9e596fa0-a73c-40b5-b07c-2abb87c93fbb 882226d5-5d95-4438-962b-ebf007cb44e9 ad3525e3-637e-4547-8d08-fc023af1ffce 1d64a45e-4b5c-4edc-9bf8-56043d802530 99cf18fc-1ff1-4000-8307-5868ce7b179f 23556d33-4971-4c0f-8708-7b384cfde7be df56ae0d-0f8a-444f-b600-675f55351aa4 a21d0b08-591f-4910-a023-c5e4fe24852b d844aadf-942e-43d4-a275-0792ba1341a6 33906a42-bde4-4189-867e-6ff6857f2d4e 2c40efcf-7394-4e81-b8c6-6dddf4f15545 32aa3792-04c2-4e3c-8b07-d92c055d8b8c 0e449913-978b-408f-94dd-ef5f2053e563 07dfa3c3-4233-4904-b326-8e419580fb96 2c6c61d5-dcc8-465a-93db-6ba5e37e4455 a4dafb29-237b-45de-bdb4-5aa2d9ff36ab 36f34bc3-0c68-46f3-a050-12e05fae10be c4681872-f7cc-4c7c-ae86-9b14fef1769e d55259b1-22cb-494a-a7d0-041b3848f3d9 8d45451c-155a-4b1d-a386-058cf78bd629 1cfd823f-ca78-4d85-a5b5-d4f750f0c254 c819db62-8b13-4d0b-bb7e-a012a92ca362 b7b667a5-2bba-4aea-944b-3ee5150facb6 28a4e5ac-e563-41b6-bca9-e73020beed8a 66303a1a-0407-47fb-b4be-d4c83e796f56 5512ec01-5208-445d-a539-dc91c0b60a85 9fb7031c-fbb6-47a8-bc72-295e8f3c6088 fdb75dd9-f2c8-4009-bb57-d4d67db2178f b8ac1134-7388-4237-bc90-f4726fb0964c 20977a46-1ba7-4038-80b3-a87b10f5b3c2 21974b69-3c53-424a-afa7-df989b0db778 9c071390-7a91-41d7-957f-bd6d4c2cc2bf 3e98ee2e-25df-4eca-82d0-f6f77eda6208 e13aec2f-1190-4205-9ff9-7f8ed79081e5 d8f5166e-d554-4486-8831-3694c651bb07 32c61aac-eb9f-4652-a3b8-5a3260148bdf 500d68ba-8a4d-4a63-94c3-2d8405c6287c 53011989-6abd-46cd-81e9-79454433611d 55766750-c67f-4a4d-bbce-a6e5a97285e9 3a1f7fc9-949e-41d6-9b2b-ba12ddbe49dd 8d31905e-ca87-407f-b78e-01b36e74bac2 43654b76-a370-4bbe-8fa2-39693721ee49 127c39b0-ab1f-4d96-9601-7b162886c575 4e9d4347-172d-4706-bcae-8e08be6ab6cb 23c49f76-d851-4973-bfb0-bd9c373e56cc 958d522a-fba5-451a-b684-3a9bebb416e5 a2893c81-5008-4f75-8381-3cd3573e068b 6e9fdd9c-c478-479f-a518-022ea82e9e10 6863eafd-b96c-49e3-b146-8aae61ce957b 290f93bd-e51b-4101-8bc0-9cac42d8e394 4a1d38c4-90b2-47f5-9c9b-ae5328571743 c854989b-fcb1-4caa-a3f2-afec35d3dd13 a17e5099-0e9e-4338-82b2-c24c866180df 5a0f27bc-6f08-4bb6-b864-978e9365c62d 953e5f3d-9428-4684-a4ee-317abfdceb06 158916b3-ab6a-465b-bb40-81a8b410a48e 56f87682-4d56-402c-851f-159f88902f18 9fc05fd9-1777-4022-90d3-5078b5e1865d 520cb6c8-d744-4d18-9329-823c20b9aa44 8a4c0f6f-885e-497c-bf09-ff0f48d5d8b0 0c157bf9-b59f-4843-8e91-afe4d40f1449 5e67ed20-9f41-4138-a125-d9cd14384e1a 054bf959-a055-46bf-87de-3076a69645fc 1cd84e71-8954-4bea-90be-6cefc594b657 f51d39ad-b6e7-418f-a9f2-eb2441681e56"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Elektriciteitskabel Teruglevering" id="2278f293-85ff-4793-b861-db425d7ea585">
        <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="149ac251-9e7d-47c2-bd43-1ea7936e93b9"/>
        <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="dc6ad0ae-68c2-4a9b-a5bb-c4718b194366" connectedTo="0a95821e-5109-4dd6-984a-0181dea7f8ec"/>
      </asset>
      <asset xsi:type="esdl:Export" id="825f42dc-5f4a-4f2c-9efa-2fa619e1ca38" name="Elektriciteit teruglevering" power="1000000000000.0">
        <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="dc6ad0ae-68c2-4a9b-a5bb-c4718b194366" id="0a95821e-5109-4dd6-984a-0181dea7f8ec"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="9ceb3684-3e5f-46cd-964d-1e3ad79146e3" value="0.1"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" name="Elektriciteitskabel Levering" id="44864807-0fb8-4942-9944-c89df44f6460">
        <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="101af8b9-9b7a-41f0-96b3-2a61b379b5a0" id="2e879f9c-50b5-4455-aa13-a6d1113b24ca"/>
        <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="fd3d3fbd-fd05-4063-99cd-949d9959a3d3" connectedTo="c21a5180-0792-42f9-b5f0-e08f4dfc4f74"/>
      </asset>
      <asset xsi:type="esdl:Import" prodType="FOSSIL" name="Elektriciteit productie" power="1000000000000.0" id="171b67f3-bb15-48c4-8bff-8a19a2e3a6f5">
        <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="101af8b9-9b7a-41f0-96b3-2a61b379b5a0" connectedTo="2e879f9c-50b5-4455-aa13-a6d1113b24ca"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="bd421f3e-a44d-40ed-80c3-e60ce74680de" value="0.9"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="Gasnetwerk" id="aaeda0c3-a76b-4b5c-9e0f-ab123e0c9ece">
        <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8cc496e4-8dc9-4202-aa98-3b1bcf115da1" id="c624aba6-2995-43a7-aa4d-bb015e95df55"/>
        <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="b995a9f9-f2c9-4403-946a-7268b655a2fd" connectedTo="841e082c-b2ee-4e2a-a4a3-531c4027951e c09beeb1-c634-46a6-aaa0-14ee3df5e6db fe1872ba-4d69-47ca-85e6-bef36bc92369 25636959-b968-438e-bf28-17993faf48b4 4b8c1551-e644-4c90-b031-96f99efbb266 1a689ac2-677a-4d42-b33a-d7f16660bdc4 90e4a127-5d9c-43cf-9025-538d377c266b adbdcbf8-c7e2-412a-a91a-416e651546d2 fb53fc3e-95b4-469f-85b0-d5754e15924d 7e73b180-4f8e-471d-a79c-427b3d1c374d 2e349ab8-0954-48af-939b-7e8b975b9465 5e313f8b-9508-4812-8625-5ade3a0c2ce4 be2daa8c-31ff-457e-8554-9ad997114a3e 009ae7ee-1354-4025-a2fa-b6bf5d41817c 4c08014a-8e2e-42ba-94bc-09512efa4e70 d2d412db-fb53-47bf-b2bb-07787c3b79da 647bb801-20fe-4f2d-a508-71e67baded01 963d3b80-4ed1-415d-a7d2-86dba20a3460 d81df1f4-8496-4549-9ad5-e50baf0cc98a b16ae425-fca8-42c8-9e08-8d6b248c134f 7f8d8f43-56bb-4adb-9cb4-df1ef169b932 3a7b3651-cdb5-463e-8796-a039453e1db6 479631a8-6c31-46b6-ba92-b5440db90b49 e768e017-8247-46b9-9dc1-bf19ada1694f 8c06db1e-0892-4ca1-80f5-779b07a1e190 6cedc848-02cd-45cb-9975-c92adf752481 b4045a24-d68e-4a37-a3aa-b02a8a96c2b1 eae658d5-375a-464e-9051-29370a68e443 a9f7a45a-7f72-47b7-a557-ecda013c9d17 33724107-b10c-4865-b33f-498db2de557a 63ab4876-ae7d-40d0-ae13-6fdb5c8c16d4 e3baa60c-1bb6-431b-9094-6c07b4949a24 8ddd3720-26f6-482e-b7dd-20b95dae85e1 d63f7735-5c9c-42f0-9022-a718a0d81d14 f3d38771-2b14-4a8d-9ad7-0262da73b031 f4d09279-f99f-4f0f-a3de-fb3ad5436056 6d136ab8-5d04-4194-88da-3e4a9837ad48 be75d7a6-b4ca-4730-a171-cddb597cc98b 64ec992c-2c0e-48a3-98fa-1537ab30283a 74b337a4-ba6b-4e56-8292-0b0eff7f0840 a2a73201-0b6d-498b-bf39-ef8d5ebf8c22 786af115-d42e-467e-8f36-55b6b665ed44 854434a0-d173-4ee3-9f00-b390eea052c7 164b6a11-9ead-4adf-8e80-14105be7832f 18eece73-b189-4991-8890-e2585610568c ea0f05e6-a4fc-482f-8842-917d029715db b47990f4-f2c0-45f2-842b-24c35c7355e4 118506e9-4a84-4dd4-a054-baa0747631e0 fc8ec496-4359-413a-9182-586e89f2536d 982574b6-ebef-4052-b4fe-726b2277c3d4 0bd6321c-9e26-4c8d-bc28-345d1bf0f9f8 149a0ccc-7885-42a7-b108-ad597152de07 8844a5cf-78b8-4e60-8179-7ce1f7557e7d 1f43346c-7f82-4a59-8d76-9e3e55037462 51665b7a-0c68-44d4-b546-66b29abe558c f528b021-bf3e-4734-a3f3-d5ea32421d4e eb019172-0e4d-4dc2-be89-86c2a81e7180 3cd08c43-9336-4c1f-9b1f-17fb646423f8 8534dd4e-6070-4b9c-89a8-b7361aec5b2d 0350203f-71cb-47ff-b9ba-4c3538d4a04a 92341646-a8a7-4bea-958a-658db30b015b 1fb835a8-13a9-47f0-b5ab-0286181c7fa3 9246e06b-1054-44cd-84f8-6ed6f8ba50a8 dcb6319a-805a-445b-ba6e-448394691a94 d0ab059c-0016-422e-b7de-2e59b0a7c1e6 9187ea74-c218-4de7-a463-bf775436d20f 32d6320f-3dae-4047-bdc3-78edbde3dedd 68d8d347-359c-427d-8fba-7ac06e8430c6 84d3c126-f371-4d71-b812-2c8cf428662a bdb990ec-1273-4f44-86f9-9903aa59559a a37d3ec0-61db-4a0e-9f9b-cee6ecfc5c8c c4fd0a72-9ccb-47da-bfc5-cbadae8c1c8d fec2aa4d-bc0d-49eb-b6fc-862163387bcc 879cb4ba-f0db-435b-82ba-0885d08014e2 e0e31752-39cf-4f46-8137-0ff3d6671938 dbb492c5-6212-48c1-bb6f-e0587db38cb8 e54c9524-d5a8-4776-8edb-ba1ddeab3d00 01bb3e9c-f5d6-4e7e-8168-3bd639d86b75 49e8217c-cde1-4ef8-8538-0d12e377ab16 3f2c269b-1f3e-4e8a-8be3-79a2859f4d90 ed1f4d82-437e-4cdf-9b50-c1421fcb6005 473ecc17-3e8c-433b-b7af-0e477233fd32 0a6b7514-d57f-412b-9de2-203876c32357 0f6ec0af-3aa8-42fa-a4f4-5d55e3a74897 728ffc77-3d7a-45ba-82b8-d915da3a68a8 7a7d8775-a413-4f4e-9819-7440a665d5b4 4bb15ca6-4ac7-40b0-9b23-82d7489906cd 858c2cdc-47b0-48c5-8e59-16aa2417fef0 5e1c893f-2273-4340-be78-31be18ea89a0 35d246bd-5b56-432d-ab5f-b126851bd910 d0671c0b-ae6e-4d1e-b42d-b5f622719dfa b05b5266-783a-4119-87c8-014d62719542 5ea24dd3-9ebd-471e-b71d-a1ec587cefc6 dd105483-ef6b-4ad8-9d5b-73d779143781 872eacc0-c25c-4f5e-926f-796d79b9c1a9 58484a41-b852-49a8-9a9c-54d8da88981d e94e1ef1-0f45-46d2-9a21-6c6cf3b74a81 90dcea05-bc6e-40a9-81d9-381cb1942b9b cf5ea7ba-5ff8-43ad-af98-76f55f700d64 10b6ba89-358d-40eb-a589-ec4272fb089b dcbb29f6-ac22-4578-9c22-06bb21e86029 9e579d59-1fed-475c-8d9a-6378e2ec16a5 294f28e9-ca36-4516-8130-ef12bc9551fb af4bd769-5164-4ce8-836c-2b7fd1f530ca cbd522aa-72db-41f0-8ba7-1f4d9f13c5d1 7755cdd0-7715-4a7e-813e-9f0aa13cd071 93dd9f37-d21a-41bf-adf6-fb8064b58690 b4f86ff6-bee3-42f5-b729-b0ecad826633 b42c49d6-06f8-4bbc-be76-44a748ed2271 186001e4-27c0-4402-83cc-27ec2c4b9e2d 5b064f1a-5173-4f54-bfd8-7b266ccc620a 29b64bd1-3567-4402-86ac-6f84203a14e2 46066766-7c51-4dc7-8c9a-e58624b4f075 35b01cd1-77ff-48fa-bfb0-567d4f35f9c6"/>
      </asset>
      <asset xsi:type="esdl:SourceProducer" prodType="FOSSIL" name="Gas productie" power="1000000000000.0" id="da5647f9-7bcf-4b62-9fb1-9404f765cc54">
        <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8cc496e4-8dc9-4202-aa98-3b1bcf115da1" connectedTo="c624aba6-2995-43a7-aa4d-bb015e95df55"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue" id="69eea77b-3aac-4064-8598-785f7515738e" value="0.9"/>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="253" buildingYear="1996" name="Pand van Dave Verkeersopleidingen" floorArea="231.0" id="8e687317-c14a-4d8e-aee0-8fd95edb2f76" sector="2caf40b6-36e8-4a56-b7ea-1719843f70c3" originalIdInSource="0716100000142629">
        <KPIs xsi:type="esdl:KPIs" id="64736ff8-05b8-43ca-8bdf-e60a4a8d5ed8">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5ba2cfc6-d584-4c22-bce6-0fe8332b3c61" value="5858.927307511774"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="15a6eb1c-148e-4f24-8824-5a2dea56c4a8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="846fb77f-a5a8-46aa-a27b-4eb766bac114" value="14107.345760869566"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="9dcc147d-e45c-45cc-af23-c01e9b1c4296"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="29dcea82-ffc3-434b-8e38-90fe8a3cb849" value="5858.927307511774"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="b8be5ee1-d2e5-4ef7-811e-1d52c7dd66cc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="77692d98-e4b8-4cb9-874f-103aca65daef" value="5858.927307511774"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="4b7c04c1-096f-49a4-ab79-bc99e515c74a" value="14107.345760869566"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="3977d055-cedc-44a3-aa10-380422eea3be"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="a3fc2529-4978-4d14-bf8c-06a3418c0db1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="cd25dfe5-5867-4ea2-a258-902a9ad3493a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="8f389319-5cb1-402f-b8f6-d3acee307bb6" value="14107.345760869566"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1a154d7a-6139-4b4d-9a0a-9c4378c13949"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="df49ed4a-e315-4dcc-a10d-082e1f86cd78"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3dbf7590-36b9-482b-99fb-5a4edacf6904"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a7378991-249b-4b52-8483-9fb475533a4c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="e10f09e9-e191-4339-9c85-8b455061cfd9"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="253.17307050011397" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.543961932702544" lon="4.228092703734132"/>
            <point xsi:type="esdl:Point" lat="51.54400000409267" lon="4.228057492408654"/>
            <point xsi:type="esdl:Point" lat="51.54395752495378" lon="4.22794017087236"/>
            <point xsi:type="esdl:Point" lat="51.54391958327946" lon="4.227975768207622"/>
            <point xsi:type="esdl:Point" lat="51.54391917655015" lon="4.227974639657749"/>
            <point xsi:type="esdl:Point" lat="51.543817906348885" lon="4.228069318060633"/>
            <point xsi:type="esdl:Point" lat="51.54380426575512" lon="4.22803179322153"/>
            <point xsi:type="esdl:Point" lat="51.543737772534314" lon="4.228093549975123"/>
            <point xsi:type="esdl:Point" lat="51.54375776268094" lon="4.228148602147333"/>
            <point xsi:type="esdl:Point" lat="51.54378094156405" lon="4.2282124681642985"/>
            <point xsi:type="esdl:Point" lat="51.54384319186157" lon="4.228154337469041"/>
            <point xsi:type="esdl:Point" lat="51.54385676821966" lon="4.228191734263941"/>
            <point xsi:type="esdl:Point" lat="51.54387159825106" lon="4.228177890642941"/>
            <point xsi:type="esdl:Point" lat="51.54396215468427" lon="4.228093332410833"/>
            <point xsi:type="esdl:Point" lat="51.543961932702544" lon="4.228092703734132"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="2c4b0ebb-1ae6-494b-899a-b311e372002d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fc22fe16-83e5-466e-b79e-430679a899de" id="01da49f8-b45a-4df1-9b7b-dd7b45c4fae0">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="76aaedc3-4b8d-470b-8355-2f1b101666c2" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.050786444739130444" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="4d4454cd-be31-4a4a-b8fc-f21b05b89129">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="09eb1bca-81e9-4d70-83e8-b97bbf67a2ed" id="32d9c839-21ca-4c26-afb7-4fd9ac715a5e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="d99a9a63-fb45-4dec-932c-a5db4741584d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.18543504928274765" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="9135574d-08be-48a5-a6c9-de22d3edf2d6" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c51e4a32-49c2-418a-b968-ff486e124714" id="49d4934c-6d4a-4cd0-85bf-dc1db0b8a7ee"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="09eb1bca-81e9-4d70-83e8-b97bbf67a2ed" connectedTo="32d9c839-21ca-4c26-afb7-4fd9ac715a5e"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="a6112c2c-9332-4ad4-bec5-2678f80a4608">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="fc22fe16-83e5-466e-b79e-430679a899de" connectedTo="01da49f8-b45a-4df1-9b7b-dd7b45c4fae0"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="691c69cd-cf12-40f2-a537-3775093e9a51"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="d839a59e-4f05-4bb7-b708-b60323a00312">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c51e4a32-49c2-418a-b968-ff486e124714" connectedTo="49d4934c-6d4a-4cd0-85bf-dc1db0b8a7ee"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="841e082c-b2ee-4e2a-a4a3-531c4027951e"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="616" buildingYear="1994" name="Pand van Onroerend Goed Ambachtsweg B.V., W. Buijzen B.V." floorArea="568.0" id="76509b1c-341c-4870-8d6b-8b0e34fa7c05" sector="1eb1161a-7fa3-4d5a-8a0b-0358f9eb9acb" originalIdInSource="0716100000071807">
        <KPIs xsi:type="esdl:KPIs" id="e58fc1df-b2be-4307-9c28-d71467f13839">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5e174414-f23e-4702-bf8f-8e048853a266" value="6233.27093092759"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="3b60ea5e-5ff5-42e0-83de-83ed5f7b0293"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e90835ee-6230-4c70-b549-b6e3f2ab2f7b" value="22572.969142857142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b1d44435-bca7-4eb7-890c-d83fbb8fce48" value="27577.268392774546"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d3465053-99b6-49f5-abf3-fe03b43b206e" value="6233.27093092759"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="61a3030c-25cb-484c-bfb2-257475d17d8b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="8ad3bede-5ae2-4adf-bec8-30ac20e6ea98" value="6233.27093092759"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="35721bed-b791-4fe1-aa80-c6559a3f7e66" value="22572.969142857142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="32b0b90a-f9ad-4b56-bb79-dafe7acce1ef" value="27577.268392774546"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="4eb26466-c97a-4c82-bbe0-e19ae1af53f0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a2c8028d-f1e5-4783-8345-5ee6a75006a8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ea1ec079-7642-4aeb-86f4-da2a49b2f7b1" value="50150.23753563169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="698268c7-37ac-46ba-a713-ae31b4134c14"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ed85272f-50e8-4551-a5c6-b7c41f9a1918"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3fc7caf6-888d-4f5c-9963-392b11b2f0c3"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="ce1ccc39-2c34-4bd3-ba0f-d5cf90ad5c96"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="3271362c-292e-464a-af0b-98c705e60dbd"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="616.9382450002395" height="5.890000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54334725395286" lon="4.228601925019648"/>
            <point xsi:type="esdl:Point" lat="51.543409470007894" lon="4.228770613408466"/>
            <point xsi:type="esdl:Point" lat="51.54344812046781" lon="4.228733946655006"/>
            <point xsi:type="esdl:Point" lat="51.54364410662649" lon="4.228548019295967"/>
            <point xsi:type="esdl:Point" lat="51.5435515046658" lon="4.228295796569171"/>
            <point xsi:type="esdl:Point" lat="51.54354965221219" lon="4.2282975449928495"/>
            <point xsi:type="esdl:Point" lat="51.54331635369007" lon="4.228518145154296"/>
            <point xsi:type="esdl:Point" lat="51.54334725395286" lon="4.228601925019648"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="5b29052d-c53d-41c0-b1c5-a0a1bb44da6b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="455215c1-2679-468f-b9da-a0ad8a92e3fc" id="d114da50-0466-4229-9e67-7787275cf8cd">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="5b6c93c3-f8f1-46d2-be34-61d67c0e0adb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08126268891428572" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="d555bcd4-7142-4029-9da1-4cdaece03081">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="455215c1-2679-468f-b9da-a0ad8a92e3fc" id="4c3f870c-0195-4fa5-a2fd-d4c8c5aa80f0">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="e58351ad-11c4-44d5-b689-7d4e4d288cd2" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09927816621398837" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="1f0f56bd-9814-434d-b5cf-6df736b68a54">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7455bc0d-c696-45ad-b43c-35d12b932980" id="6afa7f6c-9cb2-4f32-8985-0146797fb6ea">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="953e6ad0-f65a-41c4-b511-b55144f9a3fe" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.19728302496385822" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="546764c3-48f6-423c-ab53-0316e58135e3" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="aa2cc979-6052-44a2-b433-7f078c85fde0" id="1047920d-880a-4973-a3ed-45e29149cc37"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7455bc0d-c696-45ad-b43c-35d12b932980" connectedTo="6afa7f6c-9cb2-4f32-8985-0146797fb6ea"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="5509292b-b94c-41e3-afeb-e9f7f8e91ce7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="455215c1-2679-468f-b9da-a0ad8a92e3fc" connectedTo="d114da50-0466-4229-9e67-7787275cf8cd 4c3f870c-0195-4fa5-a2fd-d4c8c5aa80f0"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="801b8084-7f10-47f9-b342-3fc4a3087569"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="0c2dcdbd-0c3d-4be4-b295-adec7131cb86">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="aa2cc979-6052-44a2-b433-7f078c85fde0" connectedTo="1047920d-880a-4973-a3ed-45e29149cc37"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="c09beeb1-c634-46a6-aaa0-14ee3df5e6db"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="239" buildingYear="1994" name="Pand van Zuidhof Bedrijfswagenreparatie" floorArea="118.79408457489961" id="45d79ee5-30fe-4fc8-b1e4-b37ac4b47d18" sector="67c23e51-64f5-424a-8898-422c6520aaf7" originalIdInSource="0716100000142628">
        <KPIs xsi:type="esdl:KPIs" id="28a4acf8-05a4-4442-a209-a44e6db6e0d0">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5c96963c-b54a-440d-91ab-8d2c5b37c6cf" value="4968.368747247413"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7f756ff2-d40c-4202-beca-9ad5b7366214"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="0e71eac6-908c-46fd-80bb-613b8df6cdaf" value="7254.8451317926"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="4dfe4857-de14-4dff-8a6a-358686c5e8bd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="08fcc8a4-17bd-428a-ad76-45592b72e82e" value="4968.368747247413"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="07abafb8-b0aa-455c-8514-6e7b0cd0e69c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="d7d83003-3db0-40d3-b7e2-98a12c53f032" value="4968.368747247413"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="ade37387-ad69-4060-a975-2a7aff140b2b" value="7254.8451317926"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="fdbfcaac-70fd-4e0d-8bad-0eb5a9aeb94e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="df078105-d6f0-45cf-a875-e518564f4fb1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e94044e0-98a5-40dd-a277-0e3819811b90"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="20b37bb7-03de-4fca-bf79-de613f4b7bfe" value="7254.8451317926"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="340882ed-22d4-42be-8825-f5165d3e642a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="d07cba41-00f4-4f75-ad3a-2782518e7ac9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="a60ffa21-b43c-477a-9367-e80f7e9fbd87"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e8c80335-554f-418d-93d9-e56461a349e5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="7a53ee2c-e28b-4e35-a027-73a831e8e013"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="239.07884299982933" height="4.8100000000000005"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5437260760947" lon="4.2288884563056115"/>
            <point xsi:type="esdl:Point" lat="51.54375732815835" lon="4.228859027824785"/>
            <point xsi:type="esdl:Point" lat="51.54372311452363" lon="4.228765629048838"/>
            <point xsi:type="esdl:Point" lat="51.54364559331178" lon="4.228838507167987"/>
            <point xsi:type="esdl:Point" lat="51.543647145583954" lon="4.228842749356335"/>
            <point xsi:type="esdl:Point" lat="51.543585577260224" lon="4.228901697630584"/>
            <point xsi:type="esdl:Point" lat="51.543603354814444" lon="4.228950318857622"/>
            <point xsi:type="esdl:Point" lat="51.54359466210097" lon="4.228958484078424"/>
            <point xsi:type="esdl:Point" lat="51.54364034444864" lon="4.2290834657376895"/>
            <point xsi:type="esdl:Point" lat="51.54375749051643" lon="4.228973348570711"/>
            <point xsi:type="esdl:Point" lat="51.5437260760947" lon="4.2288884563056115"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="539cdfa1-cedd-4e45-bdae-5572b9cbe28f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="119f077a-b36c-4a11-92db-79cb7e587a41" id="97682200-ba15-46aa-86bd-4a6835896821">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="de1775c8-be61-4b04-ad0c-16a4256c3eca" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.02611744247445336" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="1e6bd0d8-c01c-4ea8-8851-3730d499c590">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="8fd101e9-88c0-4031-8805-1c881832cb27" id="1e3612e3-2f9f-41a1-84b6-95b5851b0161">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="61a177b1-8e07-411c-9f06-343046d4dde1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.15724887085038064" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="9eea1a50-1b19-43fb-b738-483ecf490aef" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="aabc552e-314a-4755-b0ec-8fde066aa291" id="f243413c-98fb-4a63-9b53-1cb6cee4190b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="8fd101e9-88c0-4031-8805-1c881832cb27" connectedTo="1e3612e3-2f9f-41a1-84b6-95b5851b0161"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="99126091-c2a9-4900-973a-ff5313771b66">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="119f077a-b36c-4a11-92db-79cb7e587a41" connectedTo="97682200-ba15-46aa-86bd-4a6835896821"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5f1c060f-0be3-4dac-a9fb-5e236643c6ba"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="3d7979c2-cf53-4ea7-8097-f5e65304e857">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="aabc552e-314a-4755-b0ec-8fde066aa291" connectedTo="f243413c-98fb-4a63-9b53-1cb6cee4190b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="fe1872ba-4d69-47ca-85e6-bef36bc92369"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="449" buildingYear="2011" name="Pand van Zuidhof Bedrijfswagenreparatie" floorArea="223.2059154251004" id="46566b57-4ab0-4651-93ca-cafd26e4983b" sector="84c7087c-1232-47cf-b4eb-390c6f3e40d1" originalIdInSource="0716100000212108">
        <KPIs xsi:type="esdl:KPIs" id="ab3fdb91-0e82-4b5c-957b-bc5e15425eea">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6a08826f-be2e-4363-a63d-73eb2c20ccc8" value="6318.631347113592"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="dec825cf-859f-4f41-8b2e-ad4869454102"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="5624051a-7516-4ceb-bce3-01960a6db19c" value="13631.355085598705"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="fa55c384-215f-4199-89a2-2c4261150c93"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="422b9a74-fca4-4e18-8203-206a454540b4" value="6318.631347113592"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="0fd3b41a-2a03-492d-adc0-0705c246a52d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="4ada32f6-9700-4a2f-9141-9c5db1cdb549" value="6318.631347113592"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="02065e8a-4373-49c1-b2fe-d9d7a4d643bc" value="13631.355085598705"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c7992f0b-96f9-47d8-a1c2-ddc730345c0a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="932cefde-7623-4804-9ce3-03f1af504211"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4752e992-7ed1-4851-9ab9-786e786e8ded"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="9085d574-96d7-44ba-ba5e-db0e5b571ae4" value="13631.355085598705"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="238a9888-2adf-4784-a9f4-8e0bad97b21b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="46d2a8f2-222a-4928-a60c-8774a13ee510"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="9d4d325b-64ab-4049-a0a0-bf55b41259d2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="3b19157c-16b7-46a3-b995-b3aa1efdd718"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="02652cc4-301f-4965-ba4b-afab67aebe96"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="449.2127045004914" height="6.71"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54359676406105" lon="4.228956513068536"/>
            <point xsi:type="esdl:Point" lat="51.54355754993589" lon="4.228852890857705"/>
            <point xsi:type="esdl:Point" lat="51.543381433546976" lon="4.229019236796671"/>
            <point xsi:type="esdl:Point" lat="51.543471374682774" lon="4.229265271013502"/>
            <point xsi:type="esdl:Point" lat="51.543647885427625" lon="4.2290987714826285"/>
            <point xsi:type="esdl:Point" lat="51.54364179620761" lon="4.229082102391822"/>
            <point xsi:type="esdl:Point" lat="51.54364034444864" lon="4.2290834657376895"/>
            <point xsi:type="esdl:Point" lat="51.54359466210097" lon="4.228958484078424"/>
            <point xsi:type="esdl:Point" lat="51.54359676406105" lon="4.228956513068536"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="8f8ee3da-1c42-48e0-b07d-3bda0a2dd1a8">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f9d9535f-ceca-4036-8576-071858d170ea" id="8cc3df32-a08b-4565-80f4-edd64e73258b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="addf02f7-b3c6-456c-b355-f996b590305a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04907287830815534" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="372c832b-b8dc-430f-bd70-32c5c37fa58d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="27fa14dd-7163-4584-b50a-bc244df862eb" id="80f9197d-ec6a-4f6c-bfeb-c9a8bfb96fb9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="62af7788-6fd0-4529-9f9f-6302431f96e4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.19998468213614515" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="cb0c90e6-d826-4994-b1f0-0a290fa0a1ed" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d5834aff-4b6e-4584-93df-06b193efb7bb" id="324e548a-6ac2-4af5-bc2a-20fb0d65e787"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="27fa14dd-7163-4584-b50a-bc244df862eb" connectedTo="80f9197d-ec6a-4f6c-bfeb-c9a8bfb96fb9"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="e3abf400-cf6e-46c8-a693-34a5ff828150">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f9d9535f-ceca-4036-8576-071858d170ea" connectedTo="8cc3df32-a08b-4565-80f4-edd64e73258b"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="3e16c458-6550-4876-8e57-b2c60be152c7"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b0d82b1a-d4ed-479a-b727-19b15317ea30">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d5834aff-4b6e-4584-93df-06b193efb7bb" connectedTo="324e548a-6ac2-4af5-bc2a-20fb0d65e787"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="25636959-b968-438e-bf28-17993faf48b4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="160" buildingYear="1996" name="Pand van De Zeeuwse Visgroothandel" floorArea="146.0" id="bc847736-a116-42c3-99ad-bb7e0c3cb46d" sector="9b015bac-25a8-472c-a85c-23c7c366ad72" originalIdInSource="0716100000071808">
        <KPIs xsi:type="esdl:KPIs" id="bb22bcb0-14a5-43eb-ad9a-b9e2ab2cd79a">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="adb0e3ad-39d3-4f72-b663-71d8f23f7c0c" value="1735.5894210077108"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="9f41cb5b-c16d-4113-bfcf-d6c8656960d8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="91a9a658-fbb6-4202-ac7a-5d2b0814db1a" value="6852.238857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a51f673c-731b-4446-9e5d-d4f5036d57c1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="38b7a12a-569d-4d2f-b3aa-40ddcb90dc64" value="1735.5894210077108"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e9134b9c-80c9-4d34-9be4-0426c27a1378"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="b686eea1-d12e-447f-97f4-4adaad9bb482" value="1735.5894210077108"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="6bd0dc5c-db12-4df1-a166-25a2333bbdd9" value="6852.238857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="0abfbf79-5492-462d-b7f8-89e3ea82228b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="0070fd01-db7f-4144-b9bd-a1045d00c48b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="69b524b7-25a3-4764-aa9c-9b2d12784dd2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="c7b9e98b-1dea-4355-b580-b6088fa997a2" value="6852.238857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="13d87356-8021-4e5b-83d2-c41abbcc3615"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="a160088e-c206-4bf9-9fea-e372246f78ba"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="fd053ddb-6347-4b31-a732-8125c2488637"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c5f97563-592c-4bd0-995b-55ecd119deb0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="3d3a2126-5f38-45ca-8fc0-23116165735c"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="160.06799300026842" height="5.39"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54385141815493" lon="4.229118207027764"/>
            <point xsi:type="esdl:Point" lat="51.54381511235035" lon="4.229018676406363"/>
            <point xsi:type="esdl:Point" lat="51.543659791248565" lon="4.2291644677594"/>
            <point xsi:type="esdl:Point" lat="51.543696068681804" lon="4.229263869128279"/>
            <point xsi:type="esdl:Point" lat="51.54385141815493" lon="4.229118207027764"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="813ed971-42b2-4cfb-b91a-1ab3070ec7c8">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="8a80e844-f690-4247-a17d-665f7f2938d2" id="3fc7f9c7-a927-4db4-b85b-8357f38f47bc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="2a35e8e2-269f-4ef4-b586-122aa80e28c7" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.024668059885714282" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a0b9b1c1-8c9d-42a3-85e2-b41203013713">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="dabca25b-438c-488f-bd51-e77383d7376c" id="06b7834b-f641-4415-82d0-d867f9a53bf9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f458ba9f-3c2a-4c61-a58c-d9df6aa89444" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.054931405174894046" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="2e41f2e5-2a34-40b6-923a-8cce0a2e36f4" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="66b6bfaf-8e66-4ce1-b336-ab4fdd3acda4" id="dd5c7756-5268-4f72-bdb9-5b4fcc7241ef"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="dabca25b-438c-488f-bd51-e77383d7376c" connectedTo="06b7834b-f641-4415-82d0-d867f9a53bf9"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="67a44068-fa32-4542-92ef-af5c2bf57cbe">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="8a80e844-f690-4247-a17d-665f7f2938d2" connectedTo="3fc7f9c7-a927-4db4-b85b-8357f38f47bc"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="fe058e76-a9e5-4c5c-be9f-af14c2edb521"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e17478ac-8c8d-4c31-825b-b4c3632619e5">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="66b6bfaf-8e66-4ce1-b336-ab4fdd3acda4" connectedTo="dd5c7756-5268-4f72-bdb9-5b4fcc7241ef"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="4b8c1551-e644-4c90-b031-96f99efbb266"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="301" buildingYear="1997" name="Pand van All Auto Service B.V." floorArea="281.0" id="f3ecfc6c-0e6d-4863-9999-447c05f156d2" sector="165d79af-29d9-4e32-8273-fdc83e84e208" originalIdInSource="0716100000214003">
        <KPIs xsi:type="esdl:KPIs" id="b234ac40-2112-49ad-9e33-d938442ea776">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="9fb1ccde-7fba-4fd0-9e54-0d447a0836ca" value="2188.4978318419376"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="809a7f2e-10cf-41bd-b4dc-cee7e9f4c1b3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="bfc63764-1ffe-482c-9c78-d35184d52328" value="13188.213142857145"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="f1130495-54ca-4418-a77d-4763e431758f" value="159.39363714285537"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="1f77a993-4baf-4f8a-a397-530af73ba18e" value="2188.4978318419376"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f5b505cd-f4ce-4776-8c41-536b6e67116e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="fd9dad9e-1496-401b-a3db-11b15259b4b4" value="2188.4978318419376"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="f223e189-9e4c-48c4-abc3-8c153f9be566" value="13188.213142857145"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="56c7d2ba-f2dd-4109-8467-45feab341872" value="159.39363714285537"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="730f2e67-6e62-475e-bd07-e4a93ef84fc8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="cff14344-c105-4959-b3e7-02241360eb2d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="4425afab-8ca5-4a78-b081-c4262fc450da" value="13347.60678"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="837224ed-4527-4743-9521-d14949d76f13"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="a7da0a8d-06fc-47c3-8448-2aa50944adcb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="2406dc3b-fe0b-425c-b3e7-d3617ee56ff2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e4544108-e34f-46f1-b39d-0a8d62d73705"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="21b8793e-b2bc-45ed-9dc3-0fd25539fbfb"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="301.95292699966643" height="5.74"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54422320779938" lon="4.229415478140247"/>
            <point xsi:type="esdl:Point" lat="51.54429250472219" lon="4.229603064031073"/>
            <point xsi:type="esdl:Point" lat="51.54444689953622" lon="4.229456272139627"/>
            <point xsi:type="esdl:Point" lat="51.54437759438997" lon="4.229268786961136"/>
            <point xsi:type="esdl:Point" lat="51.54422320779938" lon="4.229415478140247"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="3075c52a-8b80-40fd-8a0a-2ca2c5496373">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6c8470fb-286b-4101-a8a5-ae6d0d5666eb" id="e128881b-c017-422c-8414-6c77986b738d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="017cf5f9-d882-423e-8bfd-e699628fc693" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04747756731428572" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="24871745-be52-4602-bbed-a9734c08e022">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6c8470fb-286b-4101-a8a5-ae6d0d5666eb" id="dbe1841c-909e-4d84-ab04-bd3b645d0da6">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="ad1643ba-7fec-425a-ae31-4ff2d36ce4c9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0005738170937142794" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="9df247bd-9238-4e8d-8c3f-ba27fde7d7da">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="acba5b29-872c-4893-a3b6-25f2b6ca4e3c" id="243b5701-d38f-49a4-bd40-1c96a9766c5a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="6019a3bc-c918-42b3-a600-4fe446a4550c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06926595637779732" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="c536a163-1055-47c7-a5e7-4c174ca7dab3" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8ad92510-0752-46f4-8415-c2e239d1f669" id="57f62d28-dd97-4afd-a6af-7704e5d87920"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="acba5b29-872c-4893-a3b6-25f2b6ca4e3c" connectedTo="243b5701-d38f-49a4-bd40-1c96a9766c5a"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="b38b49c5-afe1-45df-af71-c4da5e3a2fb4">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="6c8470fb-286b-4101-a8a5-ae6d0d5666eb" connectedTo="e128881b-c017-422c-8414-6c77986b738d dbe1841c-909e-4d84-ab04-bd3b645d0da6"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="03e0fc47-70e6-4eab-9b61-5677f570c45e"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="6c4d6b9e-50c4-41cd-98fe-4acf137cf65f">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8ad92510-0752-46f4-8415-c2e239d1f669" connectedTo="57f62d28-dd97-4afd-a6af-7704e5d87920"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="1a689ac2-677a-4d42-b33a-d7f16660bdc4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="200" buildingYear="1996" name="Pand van Schot's Vishandel" floorArea="183.0" id="b94c6b3f-fd6e-4baf-910c-f4d21772be34" sector="e768b89c-4c80-4206-bb5e-a3f49f2c26b0" originalIdInSource="0716100000071809">
        <KPIs xsi:type="esdl:KPIs" id="51bf395d-92a3-44a1-92a5-dd90e3e0f4a0">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="0c664035-6bf6-464e-8421-2d32ff835599" value="2090.375609163341"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f740584e-e833-448b-8415-76186bcde229"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="af93ab6f-32b2-47b9-b398-768879ef3fdd" value="8588.765142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0d4399e9-32eb-4a35-bfa5-64acc39f5ffa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="21426a6f-1089-4d66-8011-a62b6e127336" value="2090.375609163341"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="8b55d1f1-2de2-4902-a0f3-a5419d2dc931"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="fe0780cb-2755-4545-8a48-fc7cc1b262d6" value="2090.375609163341"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="c5d10688-f8d3-44ba-8016-fd97e3f47649" value="8588.765142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="4c4eaa7c-82fd-4867-a939-4af5cf4f69da"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="feaabd21-69ff-4565-ad6b-2facf38e1890"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="26894713-58da-4181-9b03-b93fc264c79b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="a92974ad-196a-4b80-8940-c835fad4b26c" value="8588.765142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="6100ef27-5a81-424d-b639-5fd446008b3f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="7fea4e46-b3cc-4af3-a8ba-3a65264178f5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3b073a7f-3e5e-4b04-8a64-fc7433718d76"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="6f3da17c-bf94-4bbe-aec0-edba8c3612a6"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="be28e929-3987-4afc-a383-3e4427430eb2"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="200.800664999906" height="5.369999999999999"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.543696068681804" lon="4.229263869128279"/>
            <point xsi:type="esdl:Point" lat="51.54374162331357" lon="4.229388696037683"/>
            <point xsi:type="esdl:Point" lat="51.54389691844851" lon="4.229242977937271"/>
            <point xsi:type="esdl:Point" lat="51.54385180632759" lon="4.2291192783918845"/>
            <point xsi:type="esdl:Point" lat="51.54385141815493" lon="4.229118207027764"/>
            <point xsi:type="esdl:Point" lat="51.543696068681804" lon="4.229263869128279"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="ffecb034-a292-423e-8a9e-814c965c6692">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f2211530-b0e9-42dc-b585-76f562f82b21" id="849ff445-fe75-420d-b9cc-d0eb7eddbca9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="7b5b15e9-5fdd-479e-9a94-519a8998252f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.030919554514285717" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="6b1ad9e5-690e-49c3-8cc9-2ac112bcd24e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="a20bd8a0-3490-4836-a0bc-10c961fcd393" id="b6e34e2a-8cfa-4006-87d2-c14885dd48a8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="08191981-fbfc-4778-9b46-8aed3129838d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06616038803001974" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="ebb7d225-2f40-4dd2-82d5-4037019a31a4" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="109702ac-fcc8-4a3e-ae0a-96bcf3974abc" id="520909d2-777d-4df9-8a66-2a38a1fb1e31"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="a20bd8a0-3490-4836-a0bc-10c961fcd393" connectedTo="b6e34e2a-8cfa-4006-87d2-c14885dd48a8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4e55661a-a271-4f54-86a0-e98fcc39c943">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f2211530-b0e9-42dc-b585-76f562f82b21" connectedTo="849ff445-fe75-420d-b9cc-d0eb7eddbca9"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0f6e6de7-701a-43a2-a98f-7f88acb39462"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="62a81107-50b0-4876-95d6-fe361544c7da">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="109702ac-fcc8-4a3e-ae0a-96bcf3974abc" connectedTo="520909d2-777d-4df9-8a66-2a38a1fb1e31"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="90e4a127-5d9c-43cf-9025-538d377c266b"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="9507" buildingYear="1996" name="Pand van Holonite B.V." floorArea="6298.0" id="99966aa9-4f16-43e9-8b44-c57b9a1b6fb8" sector="7a0f4ca3-63c1-4af2-8552-6994a694c72a" originalIdInSource="0716100000289034">
        <KPIs xsi:type="esdl:KPIs" id="13283a61-3062-4cfb-8791-fe9a0a6ee177">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b834d218-94ef-4705-a236-dffcb44ccbdd" value="74261.83276633984"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="8427dde7-8a45-41cf-acee-5827b1f171ab"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="7b6dfa7e-df54-4f32-804d-c481251d6b61" value="311203.9737142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="157d54cd-d6f8-4ca9-a9d6-2a888957b42b" value="663270.3218343793"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="84950281-9093-485c-b5ff-63bae793252c" value="74261.83276633984"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="b731fd2b-a438-414b-8a37-2e2a8255b811"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="2d270922-2c33-4155-981b-f299f5b35508" value="74261.83276633984"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="68831f27-6a0b-4057-9a16-1518dbebbb21" value="311203.9737142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="2c219690-f2bf-4be9-9259-c7ef6a7948bc" value="663270.3218343793"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="943ed979-b0fe-4253-aa7d-70ac84ec7dde"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c0e361e6-00a5-4e5e-a368-4639b9781cd2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="4b9be270-719a-4717-9fb5-20e6f59b0b16" value="974474.2955486651"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="dd679e4c-3ab6-4fae-910b-4c170df6590d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="979c6347-f70a-4c1d-aa73-b668b4002dde"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="8fef9f9b-f758-4777-94c2-e5e659c5e34b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e3453d52-a041-4755-9de3-225b983fd598"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="d36870ed-d05e-4784-b2d7-b159019b8d99"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="9507.91631550034" height="6.42"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.545006975520835" lon="4.229079883353689"/>
            <point xsi:type="esdl:Point" lat="51.54481021194035" lon="4.229265458999343"/>
            <point xsi:type="esdl:Point" lat="51.545051026048704" lon="4.229923058498453"/>
            <point xsi:type="esdl:Point" lat="51.545193582206025" lon="4.230311849046517"/>
            <point xsi:type="esdl:Point" lat="51.54519807989228" lon="4.2303076111874685"/>
            <point xsi:type="esdl:Point" lat="51.545207604903695" lon="4.230333564704596"/>
            <point xsi:type="esdl:Point" lat="51.54519846730473" lon="4.230342202629589"/>
            <point xsi:type="esdl:Point" lat="51.54524186130378" lon="4.230460472225314"/>
            <point xsi:type="esdl:Point" lat="51.54547685075286" lon="4.230238690643974"/>
            <point xsi:type="esdl:Point" lat="51.545463738102505" lon="4.230202664169383"/>
            <point xsi:type="esdl:Point" lat="51.54549926349513" lon="4.230169003276203"/>
            <point xsi:type="esdl:Point" lat="51.54550983234806" lon="4.230199601560027"/>
            <point xsi:type="esdl:Point" lat="51.54572787165507" lon="4.229991873503224"/>
            <point xsi:type="esdl:Point" lat="51.54575561249344" lon="4.230067175332985"/>
            <point xsi:type="esdl:Point" lat="51.545818801351885" lon="4.230007506911359"/>
            <point xsi:type="esdl:Point" lat="51.54591885276276" lon="4.2302798124022"/>
            <point xsi:type="esdl:Point" lat="51.54624047091577" lon="4.230145915164677"/>
            <point xsi:type="esdl:Point" lat="51.545872714228246" lon="4.229144908579535"/>
            <point xsi:type="esdl:Point" lat="51.54567918647133" lon="4.229327737822443"/>
            <point xsi:type="esdl:Point" lat="51.545614113463934" lon="4.229150059014393"/>
            <point xsi:type="esdl:Point" lat="51.54553321933467" lon="4.229226399161223"/>
            <point xsi:type="esdl:Point" lat="51.54535777964021" lon="4.22874816661347"/>
            <point xsi:type="esdl:Point" lat="51.54512927167471" lon="4.228964239503882"/>
            <point xsi:type="esdl:Point" lat="51.545163536221885" lon="4.229057351667582"/>
            <point xsi:type="esdl:Point" lat="51.545118786629835" lon="4.2290999418976885"/>
            <point xsi:type="esdl:Point" lat="51.545041124285774" lon="4.229173113641715"/>
            <point xsi:type="esdl:Point" lat="51.545006975520835" lon="4.229079883353689"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b16f0559-ec15-4a93-b512-05e617ce0c6d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="cc397226-f292-4ad1-a5fa-3e8ff4479959" id="87e58d30-1b7e-4959-a5f4-71f79fc7d7b7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="96a480f5-9e8e-4378-8ec6-08602520e400" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.1203343053714285" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="3431eb3f-92da-4979-87a6-2ecf39e2d789">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="cc397226-f292-4ad1-a5fa-3e8ff4479959" id="81c651b8-4dc0-47af-b18a-6741effec3a1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="57f0153c-c0b7-4a32-a282-5a6321af9c5f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.3877731586037654" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="0a8dcd92-1a84-4d52-9110-6fc5342271f1">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d9fbf8e6-678e-4239-94cd-5461d84c3f79" id="d4e39e85-d016-4f8e-9921-94e99bd1dc7e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="20619206-7fed-4290-a402-5987b26a3844" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.350387007054656" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="d066f6bb-556c-473e-948a-1742ec91c769" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c0882121-175b-46b5-83a3-1bc54c0a8816" id="fc0f602f-d4a0-48cc-96d3-c8633804ac44"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d9fbf8e6-678e-4239-94cd-5461d84c3f79" connectedTo="d4e39e85-d016-4f8e-9921-94e99bd1dc7e"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="81922a66-d437-4a5b-92d3-5c6a4d4c163e">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="cc397226-f292-4ad1-a5fa-3e8ff4479959" connectedTo="87e58d30-1b7e-4959-a5f4-71f79fc7d7b7 81c651b8-4dc0-47af-b18a-6741effec3a1"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="027f2d3b-d4a8-422a-a79e-42d7b4bf97af"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="4010cafa-8ea7-4dfd-a516-6ce0d071f217">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c0882121-175b-46b5-83a3-1bc54c0a8816" connectedTo="fc0f602f-d4a0-48cc-96d3-c8633804ac44"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="adbdcbf8-c7e2-412a-a91a-416e651546d2"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="484" buildingYear="2008" name="Pand van B&amp;B Seafood B.V." floorArea="131.0" id="4f509eca-9334-4822-99cf-1e37953ce24a" sector="92e8ea5f-e7be-4fae-a27b-b5f30fa0e6c4" originalIdInSource="0716100000248831">
        <KPIs xsi:type="esdl:KPIs" id="a318c74e-5be4-4b48-be3f-0981821ff65b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="3f098549-77bb-48c7-a960-93c3973cdc67" value="3728.121714763416"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="ce6d24cb-d3e0-4f18-bec3-c91cd51e33c0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="31e2589a-8371-404b-9329-b3cab60bd12c" value="6148.241714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="3d571a4e-bc30-4ec8-b473-73befcfa91c8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="64c827f5-cf9f-424d-bb99-2f5a082cb262" value="3728.121714763416"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="1a106886-d357-43c7-a315-34db3136b293"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="5115d308-3e1b-4a61-ba3b-8ddcabb38c82" value="3728.121714763416"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="9252436b-f6ac-4493-bd69-2ea6f6f4cf43" value="6148.241714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="01a649cd-fd9f-4018-bbdc-dc3ef5205d65"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="14ddd285-4e30-43ac-b440-7cf19d39255d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="8280f960-3b0a-4a9c-a4bc-9b27305fcbea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="112c656f-8d93-4716-a429-d37243a9c547" value="6148.241714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="47f14a43-37b8-483b-8ea7-e2b7d50b8037"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="67074575-9387-453d-8b66-8fe21eea0333"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="98767777-501a-45e6-863b-7208133af7a2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="85e0ac2e-f96d-4e09-868d-d9b531b64f6f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="f1d1fc9a-9daf-4a11-a5c7-de2feaed9fed"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="484.7819349999804" height="6.710000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54395561905695" lon="4.229479748531354"/>
            <point xsi:type="esdl:Point" lat="51.543896754863056" lon="4.229317185380105"/>
            <point xsi:type="esdl:Point" lat="51.54360824682892" lon="4.229588220019796"/>
            <point xsi:type="esdl:Point" lat="51.54366748453504" lon="4.229750412552004"/>
            <point xsi:type="esdl:Point" lat="51.54395561905695" lon="4.229479748531354"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="41e0c10f-b175-4816-8712-52cd1a9cda04">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="965a8bde-a3c0-419b-8450-e9ab5ae4f857" id="e58bef07-284d-4cd5-9279-26dd4012fa08">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6e36e82e-396a-4719-a14f-d4a5484807e0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.02213367017142857" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="d41f2fcf-42f6-4aa2-acf0-4553f37ab5a8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="94bc9969-e132-40ce-b5d3-69b5c94e95b3" id="13e778dc-1772-4c90-a4e7-acb5f1a47c7c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f23ebe71-eb48-4267-8b5c-ddda6308bc66" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1179950522722621" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="50b95c6b-941e-4cbc-a727-d8c447a8d289" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="71979ea2-f4a9-4a63-b7e8-fb75ddb1cb61" id="2545db9e-c23b-4d43-9bbb-b8ad5b7128ed"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="94bc9969-e132-40ce-b5d3-69b5c94e95b3" connectedTo="13e778dc-1772-4c90-a4e7-acb5f1a47c7c"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4a3e99dc-d48d-4f50-85b4-eed31a3b29cf">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="965a8bde-a3c0-419b-8450-e9ab5ae4f857" connectedTo="e58bef07-284d-4cd5-9279-26dd4012fa08"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2b3eb552-c29e-4a96-b96b-f8a6951fda37"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="bdf95b28-36d0-4562-a2eb-d4dcf4211a7e">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="71979ea2-f4a9-4a63-b7e8-fb75ddb1cb61" connectedTo="2545db9e-c23b-4d43-9bbb-b8ad5b7128ed"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="fb53fc3e-95b4-469f-85b0-d5754e15924d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="450" buildingYear="1996" name="Pand van Autoschade Buijs" floorArea="287.0" id="f3b92718-1004-445d-b286-a83df18cf419" sector="9947e3a3-bbb9-4221-ac57-c6e70d53e512" originalIdInSource="0716100000000990">
        <KPIs xsi:type="esdl:KPIs" id="d7e449b2-d39f-42c4-8bcc-5ec1fe025aef">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4bec1bc6-da69-441b-87f3-d15da2af883e" value="4765.661769482576"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="32c4fa05-feff-4cf9-9a86-0cf17de0d251"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="fde55eae-d4c1-4e2d-a3f9-353ffc9baa8a" value="13469.811999999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e04d8632-b2a5-41ca-894d-9f0ba63780a3" value="162.7970600000026"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="e3be16cd-43b2-4b2b-bdcf-86641b5072b7" value="4765.661769482576"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="16ed831a-0f85-4afc-9624-07efa18ecc17"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="21d92964-2bb4-4b27-a24b-21c595afd498" value="4765.661769482576"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="044c5482-b727-46cd-9216-ba94166cfb85" value="13469.811999999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="0b2dedb8-4273-458e-b0b4-6d9bae0baedf" value="162.7970600000026"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="10a88c9a-63d3-4f43-9067-c0ac3110973e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c9b43d5f-da62-41fc-bb4f-9d4cbc3f9ac3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="20ac426a-e8af-48e2-a185-65219a6d2785" value="13632.60906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="2aa70e66-7ec0-4de3-ad18-257fe6aeef87"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="efc1e459-8873-43d8-9e2b-64b4cea96d36"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="9eb669e1-5805-4f4e-a719-19de3dec56f3"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="d1f5b389-7459-4cf9-8ecd-0d092fea478e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="dc90e586-1b5d-4f71-98cb-0305ce9c80e0"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="450.8634979999154" height="6.21"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.544664746395355" lon="4.229635720018342"/>
            <point xsi:type="esdl:Point" lat="51.54450908074776" lon="4.229782198374706"/>
            <point xsi:type="esdl:Point" lat="51.54457769834637" lon="4.229970235806459"/>
            <point xsi:type="esdl:Point" lat="51.54467918791606" lon="4.229874862464913"/>
            <point xsi:type="esdl:Point" lat="51.544693029634594" lon="4.229912787121758"/>
            <point xsi:type="esdl:Point" lat="51.54480021966412" lon="4.229812092446459"/>
            <point xsi:type="esdl:Point" lat="51.54478635979579" lon="4.2297741537758125"/>
            <point xsi:type="esdl:Point" lat="51.544787366203884" lon="4.2297732054420845"/>
            <point xsi:type="esdl:Point" lat="51.54471854971406" lon="4.2295850860025945"/>
            <point xsi:type="esdl:Point" lat="51.544664746395355" lon="4.229635720018342"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b5a780a9-e8e6-476f-a2b4-a117327df14c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="584f2c12-f7ce-431c-a047-8585110a240b" id="b16abbc8-3415-41db-8fc3-9bd518e4fe6f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e75b9168-f3ce-4f48-9cc6-02a6c98869b3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04849132319999999" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="88fa30f3-6383-471c-868f-7e7c758c03a5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="584f2c12-f7ce-431c-a047-8585110a240b" id="b2482da4-e47a-4c55-8f31-e1e48cd06bff">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d607b465-ce16-4fbb-92ce-f24033d7e9aa" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0005860694160000093" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="78e45a9e-0c43-46b3-ae02-3041d2a3bb92">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="8397973c-519c-4d8e-a156-0daf5e0eece2" id="76cf8325-a0a7-4540-9018-f9c5ec2339ca">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="bdc9c88c-4217-4759-b914-1326b536bae4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.15083319500412354" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="db1f09cf-fd96-4441-b334-d5766901d596" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="414be096-fe25-419a-8fbd-366a379dbb3e" id="10712fd5-7b66-4d37-926a-cd0e1588f025"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="8397973c-519c-4d8e-a156-0daf5e0eece2" connectedTo="76cf8325-a0a7-4540-9018-f9c5ec2339ca"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="ae36f189-eaa0-44b7-b7b9-9017de19ee53">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="584f2c12-f7ce-431c-a047-8585110a240b" connectedTo="b16abbc8-3415-41db-8fc3-9bd518e4fe6f b2482da4-e47a-4c55-8f31-e1e48cd06bff"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0d899f9c-312a-40e5-8728-3bdd9b32f468"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="fd1d997c-8198-4874-9aef-1a735a900b94">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="414be096-fe25-419a-8fbd-366a379dbb3e" connectedTo="10712fd5-7b66-4d37-926a-cd0e1588f025"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="7e73b180-4f8e-471d-a79c-427b3d1c374d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="100" buildingYear="1996" name="Pand van J.L. Scheurwater Holding B.V." floorArea="376.0" id="7dabc497-a5b1-4569-8d9e-872b4e427c15" sector="aa464893-dfe6-44be-a3f6-239326c2acb4" originalIdInSource="0716100000107310">
        <KPIs xsi:type="esdl:KPIs" id="9b0251ef-e032-44f9-b40e-2ec7d73266c6">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="09354ee6-0447-450e-9d46-44c964d3adbe" value="9321.986137116552"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d7e92ea8-c387-4a2d-bfa0-00ab1f73cab9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d886e577-9e3c-41b8-b80d-2aeacef6adad" value="22962.606086956526"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="98d98ba9-da4c-4c66-ac7c-937a73ead1ef"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="0e3b3665-00f1-498c-8dcd-42ea214062ed" value="9321.986137116552"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="df349d78-9fe0-4684-b754-219c89df49ce"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="d0a59dc5-404d-4b91-a94e-a0194f55f5cb" value="9321.986137116552"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="87000972-1097-49ae-8b96-fb7108b92a25" value="22962.606086956526"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="54dfc952-6e23-4e4e-8d4c-206cd6db0fbd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="881bfc7d-a584-4945-a880-6e5522922a88"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f06959cd-0d0b-4e4a-a414-f06083ccd3e6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="95d8b020-70b8-4fe7-9a4c-eef62eaf179f" value="22962.606086956526"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="987fa9c4-2fbe-42ad-9949-be89009fb4f6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="041e6b1e-9737-4042-8c51-6446c24ff6cf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="f79dff6c-2a9a-4e01-872e-c746a2a548e8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="7f9bc96b-afa5-4946-9acb-d90be6ae81d9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="dfdeaaa7-15f8-4554-bb4c-2f5c241e9571"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="100.6934430001176" height="14.936424410457825"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5439246302093" lon="4.2296809462824365"/>
            <point xsi:type="esdl:Point" lat="51.543946105513854" lon="4.229739897318479"/>
            <point xsi:type="esdl:Point" lat="51.54396815861373" lon="4.229719238413544"/>
            <point xsi:type="esdl:Point" lat="51.543965395793734" lon="4.229711667888698"/>
            <point xsi:type="esdl:Point" lat="51.54400532471119" lon="4.229674262490192"/>
            <point xsi:type="esdl:Point" lat="51.54400808753359" lon="4.229681833019379"/>
            <point xsi:type="esdl:Point" lat="51.54404546012408" lon="4.229646813805367"/>
            <point xsi:type="esdl:Point" lat="51.54399546086708" lon="4.2295097726771465"/>
            <point xsi:type="esdl:Point" lat="51.54395808888897" lon="4.229544849617434"/>
            <point xsi:type="esdl:Point" lat="51.543968974014376" lon="4.229574688989869"/>
            <point xsi:type="esdl:Point" lat="51.543934685867264" lon="4.2296715209857565"/>
            <point xsi:type="esdl:Point" lat="51.5439246302093" lon="4.2296809462824365"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="0caae1bf-a0f0-4c03-b1d8-c514332ec207">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="743f070e-07dc-49b3-aefc-e4766c53b607" id="5c0dbabb-154a-4819-adf0-b5350b4e74af">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="c47095fb-ba84-41a9-93b8-275b10ea415a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0826653819130435" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="fe6e6380-629c-46a7-a91c-34e6907ffd0d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6cddbfdc-6ade-42a0-bdf2-a10a341f9b4d" id="fe7a1754-b36a-467e-a801-a3c17f3c024d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="317035c5-5636-457f-8af1-68ece164b058" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2950408612397388" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="737d3f60-1803-4b28-a83e-257559c0c39a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="0c6032d2-30fd-4398-8c2b-7e2b27e89589" id="86704c79-1c7c-4918-a042-b37542c44149"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6cddbfdc-6ade-42a0-bdf2-a10a341f9b4d" connectedTo="fe7a1754-b36a-467e-a801-a3c17f3c024d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="bba8f546-aa04-42ba-82fb-3badba4dba8a">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="743f070e-07dc-49b3-aefc-e4766c53b607" connectedTo="5c0dbabb-154a-4819-adf0-b5350b4e74af"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="a937e01e-56d4-4068-8b64-16769acd679c"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="eff010ff-b590-4019-8854-e011c9d37375">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="0c6032d2-30fd-4398-8c2b-7e2b27e89589" connectedTo="86704c79-1c7c-4918-a042-b37542c44149"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="2e349ab8-0954-48af-939b-7e8b975b9465"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1915" buildingYear="1999" name="Pand van Klok Beheer B.V., Stijlinterieurs B.V." floorArea="505.0" id="b68d9751-589a-48bc-bda7-29aec7052176" sector="7846ad12-988b-4957-ba9d-bf9188a574ea" originalIdInSource="0716100000035309">
        <KPIs xsi:type="esdl:KPIs" id="17887e35-02bc-4fb8-bd1e-a0d5ae726c19">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="f118a9e2-a3fb-458e-8647-227d8543c298" value="3227.601950581527"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="cb16871d-d84c-44a2-878e-df3322020e9d" value="3449.091565713127"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="0a66cfbd-c78c-4230-a3b5-56fb24a42101" value="20069.27714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="90345e83-ff64-401b-9956-7da8e49428ba" value="21102.63825746751"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="62f2f0e2-d275-45b6-b24f-e8cb57e0b4e2" value="3227.601950581527"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f6a97a33-4fb5-406d-944e-a365a4167c23" value="3449.091565713127"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ad07075d-cb8b-4d8f-b66a-dcef4d6eb50d" value="6676.693516294654"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="d0ffab41-e276-4ab6-8ed8-b52accdb5d35" value="20069.27714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="cdcf02ec-1f9a-4078-b29f-7c4ccf428edf" value="21102.63825746751"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="744288a6-2ba4-4c22-b57a-3cf279cdcac9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e43789ff-810b-432d-9cde-d03d810e0af3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ba4ebdf3-d219-4c03-9c26-81078653e1ff" value="41171.91540032465"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="611483a5-9766-4cff-9f82-9bd9050e1ace"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ff08fc64-ad36-44e9-88c0-f27f6d5e6652"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="a7b4578a-b411-42bf-aa47-f7132191f1ab"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="fa1a649f-6a2f-4da7-8989-c7d83e594ad8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="a07f0311-bd6e-4404-b93a-882b826f7fe0"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1915.335464999573" height="5.87"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54490822876816" lon="4.2301580908970795"/>
            <point xsi:type="esdl:Point" lat="51.54483120879172" lon="4.229947602180956"/>
            <point xsi:type="esdl:Point" lat="51.544555071124066" lon="4.230207078108812"/>
            <point xsi:type="esdl:Point" lat="51.544632328720674" lon="4.230418006858276"/>
            <point xsi:type="esdl:Point" lat="51.54470940134525" lon="4.2306284508467"/>
            <point xsi:type="esdl:Point" lat="51.54476261811051" lon="4.230773732078854"/>
            <point xsi:type="esdl:Point" lat="51.544802048509304" lon="4.230736786577782"/>
            <point xsi:type="esdl:Point" lat="51.544820226300274" lon="4.230786870163166"/>
            <point xsi:type="esdl:Point" lat="51.544822387199574" lon="4.230793576773426"/>
            <point xsi:type="esdl:Point" lat="51.544967619492816" lon="4.2307444947555854"/>
            <point xsi:type="esdl:Point" lat="51.54496760437186" lon="4.2307438752035935"/>
            <point xsi:type="esdl:Point" lat="51.54510420529066" lon="4.2306973625966275"/>
            <point xsi:type="esdl:Point" lat="51.54506102893533" lon="4.230580168882608"/>
            <point xsi:type="esdl:Point" lat="51.545062258601455" lon="4.230579070705315"/>
            <point xsi:type="esdl:Point" lat="51.544985239379976" lon="4.230368580557778"/>
            <point xsi:type="esdl:Point" lat="51.54490822876816" lon="4.2301580908970795"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="958e865f-1acb-49a9-8117-558d0d4a7943">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="7484c03d-a338-403e-8f32-252bc5f329c7" id="c11be2d9-a033-4c7c-833a-1d08a4d478e4">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="eb253117-eab8-4996-82a5-1be56899a64d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0722493977142857" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="90a92551-dc50-40c8-b493-55b3ab754cf6">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="7484c03d-a338-403e-8f32-252bc5f329c7" id="e292544f-c1a3-40a1-afb8-4bf54bb2143c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="1eef2ed2-5547-4359-a608-b15d241974ca" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07596949772688304" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="2e1d5b17-19f5-47b1-a289-1b6f0f7e6c0e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="9ae55e1e-6c1a-47a6-963f-64a1eb406fb1" id="a2eb7aae-3c1f-4ec2-bcbd-43171f5dfbcb">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="591f91fc-86ba-448b-8368-4c7213be44af" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10215360173590532" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="ed04da20-615f-4256-8984-8fb580df8199" name="Gasketel" id="ef454b9f-8a05-4860-8c0d-12de4607ec4e" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a389900-c2aa-4692-b2e4-d1437cbeab58" id="ff48098a-7af5-491a-b894-82357cfe4657"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="9ae55e1e-6c1a-47a6-963f-64a1eb406fb1" connectedTo="a2eb7aae-3c1f-4ec2-bcbd-43171f5dfbcb"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="a03f8c9a-2bee-4504-9321-2838f87846c4">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a389900-c2aa-4692-b2e4-d1437cbeab58" id="2aee06ca-0f8f-4b16-997f-39b448891359">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="dd35ec48-a5d5-4b59-9f81-9885b9393102" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10916374805482046" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="5050a312-9a5c-468a-a8b8-f9556c853806">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="7484c03d-a338-403e-8f32-252bc5f329c7" connectedTo="c11be2d9-a033-4c7c-833a-1d08a4d478e4 e292544f-c1a3-40a1-afb8-4bf54bb2143c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b5678003-5f7a-40c0-9a6b-351a517782f9"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="8dd99e5a-5769-4cdf-8bfd-cff668d88eaa">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="3a389900-c2aa-4692-b2e4-d1437cbeab58" connectedTo="ff48098a-7af5-491a-b894-82357cfe4657 2aee06ca-0f8f-4b16-997f-39b448891359"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="5e313f8b-9508-4812-8625-5ade3a0c2ce4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1336" buildingYear="1997" name="Pand van V.O.F. Govers-Baselier, Govers Autobanden B.V., Govers Automaterialen B.V." floorArea="1269.0" id="5f7e3525-2332-4561-b3d2-ea5f5fd08993" sector="84b511de-ad39-47eb-9234-4dca48dcde18" originalIdInSource="0716100000070781">
        <KPIs xsi:type="esdl:KPIs" id="01910ef6-fa68-449e-bd8b-933a3cb663d0">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="12d44e01-7f6c-42bf-b316-b96f5b4f0cdc" value="10041.375201864443"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="3d0da59d-2e42-4e09-9453-f312e3f6a862"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="7b2f31d1-792f-432f-a090-c8e138ceed1d" value="54286.732285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b57e71eb-fac6-4897-91dd-19ec73571027"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="7c8a1766-3c5f-4d50-ab0f-b0d6da4cd6a7" value="10041.375201864443"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f4dcaee0-3380-4945-bab9-86a34f403fd0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9fa7a133-c004-44c6-801e-58b7192e5e7b" value="10041.375201864443"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="4680ff0e-0a55-4475-a8fa-cc711a637fb4" value="54286.732285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="3eb42a20-73a3-479c-9410-16c5eccd45cc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="13521072-c4ca-4cea-9f72-7312a05e4191"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="2a0e12ff-3ac5-475b-bfac-724762cc0361"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="7ef8ad1c-4ec7-4d47-9110-cf87b6f4eac6" value="54286.732285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="d449ad5d-9bcc-41ed-84c3-0c9ac857f2b1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="e8700d94-973b-490a-9589-372bcb4e1052"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="a930867b-1ac7-49f1-b6df-855277a3989b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="db131565-3523-4cf6-9439-6b69a5699695"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="a02afd3d-744b-4f2f-95e3-758778e50878"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1336.0074934998802" height="8.700000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.543966045097484" lon="4.230282831383233"/>
            <point xsi:type="esdl:Point" lat="51.543869365708524" lon="4.23037378361135"/>
            <point xsi:type="esdl:Point" lat="51.543968957476174" lon="4.230646046692474"/>
            <point xsi:type="esdl:Point" lat="51.544282705040345" lon="4.230350888790959"/>
            <point xsi:type="esdl:Point" lat="51.544183121427984" lon="4.230078609845184"/>
            <point xsi:type="esdl:Point" lat="51.544198627569216" lon="4.230064028678335"/>
            <point xsi:type="esdl:Point" lat="51.54413038631106" lon="4.22987766985935"/>
            <point xsi:type="esdl:Point" lat="51.54389782972312" lon="4.230096328365864"/>
            <point xsi:type="esdl:Point" lat="51.543966045097484" lon="4.230282831383233"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="dd845815-8d4f-408a-ba51-a476dbc38f01">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="ee181750-a991-42c2-953b-f9038a502111" id="42e6b6a3-57d0-4114-a5ce-a4feeecb0168">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="1a40d5ff-8243-42f9-85eb-d40190113e86" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.19543223622857145" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="5f5fa0bd-e100-4f53-925f-47faf2580886">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="e8abab92-17f4-42da-b26f-e8e414fb9946" id="8a20bb71-b287-46ae-bcf3-c14faae74c18">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="055b3edb-29ce-4612-9e02-c370167127fa" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.31780952513900956" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="3c9445b0-5f76-4b22-a8ed-acb3cbdd4038" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c339492e-bd57-4498-83ba-7a3e695916fe" id="6ca2cd34-b408-41a7-8647-dd95e55f6beb"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="e8abab92-17f4-42da-b26f-e8e414fb9946" connectedTo="8a20bb71-b287-46ae-bcf3-c14faae74c18"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="d0aacb47-5508-468c-ac97-d6ac103e0b93">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="ee181750-a991-42c2-953b-f9038a502111" connectedTo="42e6b6a3-57d0-4114-a5ce-a4feeecb0168"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="3b2ee6ea-6f72-4c1a-b438-0446d74a193f"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="cbdd36bc-42a8-4004-acd5-bca1fed1e06d">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c339492e-bd57-4498-83ba-7a3e695916fe" connectedTo="6ca2cd34-b408-41a7-8647-dd95e55f6beb"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="be2daa8c-31ff-457e-8554-9ad997114a3e"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="838" buildingYear="2011" name="Pand van P. Dingenouts, B&amp;B Beveiliging B.V., Ubels Holding B.V., Riseko B.V., VB-MotoParts" floorArea="517.0" id="5cbc3c78-b25d-4aef-8136-e3b2edf6e8d6" sector="7dc45edc-da18-435f-8efe-48e444c5adb2" originalIdInSource="0716100000290776">
        <KPIs xsi:type="esdl:KPIs" id="6304f1cf-6dd1-4a3b-ba3a-756eb61f6c95">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="9e9edc45-6e87-4837-9346-c96c7873da1d" value="5232.416226536128"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b3847c55-f1a8-4e45-b994-47974de0df18"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="556d98b2-2551-4559-8ab6-768756858d86" value="24264.434857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="392990e3-ff4d-460c-87b5-fa3f2c986e58"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="62db3de0-b8bd-4541-8cef-ddfd60716c57" value="5232.416226536128"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="95e62b37-8e0c-421e-b937-01c2ad0097f7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ba901ab7-32bc-4ddd-a0bf-e76eca55d704" value="5232.416226536128"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="a5c35395-a9ad-4542-a54f-7a65a8117e31" value="24264.434857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="f700dd47-f5e9-4af5-8245-d22f34f9a740"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="aa5414a7-ffc7-4f75-ab36-b367e20df7d4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f0b491a8-815a-48f2-9dc4-c545b8b2a10c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="335d8214-78f8-44f2-b79f-ab39e7755b69" value="24264.434857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="8fb39f8f-7fbb-4d3f-94f3-b3c555a17091"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="138a8fd9-795d-41e6-8999-51da5c56c960"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="dc045e52-2817-42dd-9b81-4a63beb023a0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e37e4ed2-6a77-4b6e-95e8-e98f89cf478b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="28ec45f1-4626-4b9d-904e-ca793fde1adf"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="838.7082395003457" height="7.689999999999999"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5443753897026" lon="4.230557430258109"/>
            <point xsi:type="esdl:Point" lat="51.544383327182146" lon="4.230550149449008"/>
            <point xsi:type="esdl:Point" lat="51.54432386689914" lon="4.2303880599308465"/>
            <point xsi:type="esdl:Point" lat="51.544316228145235" lon="4.230395549406307"/>
            <point xsi:type="esdl:Point" lat="51.544230797827055" lon="4.230475950850592"/>
            <point xsi:type="esdl:Point" lat="51.544147139911495" lon="4.230554692175432"/>
            <point xsi:type="esdl:Point" lat="51.54406327694934" lon="4.2306336114303"/>
            <point xsi:type="esdl:Point" lat="51.54397987726901" lon="4.230712114927249"/>
            <point xsi:type="esdl:Point" lat="51.54402669953776" lon="4.230839838392275"/>
            <point xsi:type="esdl:Point" lat="51.5441103219853" lon="4.2307611275430945"/>
            <point xsi:type="esdl:Point" lat="51.544132805300066" lon="4.230822072025078"/>
            <point xsi:type="esdl:Point" lat="51.544216418176596" lon="4.2307433035336"/>
            <point xsi:type="esdl:Point" lat="51.54423967096788" lon="4.230806607352047"/>
            <point xsi:type="esdl:Point" lat="51.54432332106495" lon="4.230727967449951"/>
            <point xsi:type="esdl:Point" lat="51.544368416369586" lon="4.230851050342679"/>
            <point xsi:type="esdl:Point" lat="51.54441230527116" lon="4.230809536904718"/>
            <point xsi:type="esdl:Point" lat="51.5444535713409" lon="4.23077095912817"/>
            <point xsi:type="esdl:Point" lat="51.54438520224675" lon="4.23058428430567"/>
            <point xsi:type="esdl:Point" lat="51.5443753897026" lon="4.230557430258109"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c16a3b68-61eb-4389-9da6-bc46cbe8add0">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e6f05946-757e-46f1-a746-fe26446c8073" id="fad483d6-5c85-4a0f-bbbe-92d59a07bf10">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="435c958a-5181-42cd-a523-0d67acba5df8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08735196548571429" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="91f6eb8b-7f62-408b-8cd5-b56158f52859">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="27e5d9da-d2f7-44e4-b609-72d97e64cf3a" id="2061802b-962e-4c11-ae70-eb0dff5f9161">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="9f5ae93b-414e-4559-8d78-3f2389fef2d1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16560597356986845" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="daa220f4-d95c-4bf5-a471-aca001e2a045" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="bc4e7397-b7f3-4863-977d-19a33f6a3c1a" id="2a6b34a2-2108-46dd-a815-25bf1b242f1e"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="27e5d9da-d2f7-44e4-b609-72d97e64cf3a" connectedTo="2061802b-962e-4c11-ae70-eb0dff5f9161"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="603a033e-35aa-4d29-95bd-8ebf5e12ec98">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e6f05946-757e-46f1-a746-fe26446c8073" connectedTo="fad483d6-5c85-4a0f-bbbe-92d59a07bf10"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="d469fb02-a130-459d-bcf9-a1d2e0106602"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="8c121f70-5e14-4d57-92d3-f2ecb2ce9439">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="bc4e7397-b7f3-4863-977d-19a33f6a3c1a" connectedTo="2a6b34a2-2108-46dd-a815-25bf1b242f1e"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="009ae7ee-1354-4025-a2fa-b6bf5d41817c"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="309" buildingYear="2016" name="Pand van Filiuskaas B.V., M.A. Holding B.V., MF Invest B.V., www.hollandskaashuis.nl B.V." floorArea="374.0" id="4e0ccd66-f0ce-4173-8b3f-8e04cce34527" sector="b5946dd6-06e4-4b05-9d93-9a6275bc1008" originalIdInSource="0716100000291817">
        <KPIs xsi:type="esdl:KPIs" id="68edc960-7d3a-4ab5-8902-296ce18db103">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="fa4becfc-b649-4e90-af3a-8674e0dc954e" value="4145.441792268286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b3971885-4f24-49d3-8add-fb940c418719"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="c9cbbe6b-172d-4a2b-8931-608f88e6a6a0" value="23938.15456521739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="05f12a1a-6d67-4176-9d16-6fc9f021ff0d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="b6cc7504-35a5-4812-8c93-807a95a60d36" value="4145.441792268286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="2f760fd4-0c3d-4494-a9d6-699987758063"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="441d9368-3f1e-4bb8-9ef6-abddcc3cacad" value="4145.441792268286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="a60ccd12-6d65-4d76-a975-e8246828839e" value="23938.15456521739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="a97d5d57-8c2b-440b-b9b5-ec1adbb7d4f3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="9429c668-baf9-4dc0-b46d-96e7b80cde8e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="d9a89034-110f-4120-978e-6903530ffa30"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="032b117b-2db3-4b27-90f3-dcf241f00fad" value="23938.15456521739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="6de24956-a74d-4c40-af8c-48b5e6d6b5d2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="75fc3549-59f9-4786-b568-72d7b31de0ca"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="381bac90-3df7-4a00-9922-2c398927403a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="666a6a43-aff6-4f3d-b21c-7064203a137a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="9ab37410-eb43-49a7-90b6-89300a3bbe86"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="309.47661149984026" height="4.833967881287767"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5444690505448" lon="4.225708949222889"/>
            <point xsi:type="esdl:Point" lat="51.544631161523455" lon="4.225575627905286"/>
            <point xsi:type="esdl:Point" lat="51.544568617235846" lon="4.2253798148453905"/>
            <point xsi:type="esdl:Point" lat="51.54440642502422" lon="4.225513081089725"/>
            <point xsi:type="esdl:Point" lat="51.5444690505448" lon="4.225708949222889"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="e5c6dfdf-4c35-44d0-b310-d8f914416b29">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e708dc76-f53d-4780-bf1b-ac8485048832" id="3ebdf8d8-af02-4d43-b61b-1d85c452cb75">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="899ca9b6-8b4d-4752-9d56-b215f2d5c531" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08617735643478262" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a650a533-68cd-4a01-bf71-a3f614099491">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="ece1eae1-3b15-4f66-bd9f-78c908b06548" id="ca9d6b9d-8032-4873-bf6e-edf948f3154f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="8d58ca3d-465c-4e30-9dac-e2b9e07210ba" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13120323272529125" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="13c16a69-2092-4c3b-bcbf-cef9f3f9778c" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e3193f14-08e5-4cda-8628-b96cce1ab2ab" id="ac558a83-604f-4d0e-9a1a-f2597b66d1e2"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="ece1eae1-3b15-4f66-bd9f-78c908b06548" connectedTo="ca9d6b9d-8032-4873-bf6e-edf948f3154f"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="2629ee2e-265e-42b1-a11f-c44a3094d1da">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e708dc76-f53d-4780-bf1b-ac8485048832" connectedTo="3ebdf8d8-af02-4d43-b61b-1d85c452cb75"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="6fc28e02-b5a4-4795-ac19-e4adce172cd2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e7351a50-6acc-49bf-9b73-c9d4812cb215">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e3193f14-08e5-4cda-8628-b96cce1ab2ab" connectedTo="ac558a83-604f-4d0e-9a1a-f2597b66d1e2"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="4c08014a-8e2e-42ba-94bc-09512efa4e70"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="41155" buildingYear="2011" name="Pand van Hemi Onroerend Goed B.V., Emelka Holding B.V., Beheermaatschappij Hemi B.V., Welgelegen Tholen N.V., Hout- en Metaalinterieurs Hemi B.V." floorArea="45448.0" id="ab06e202-0e45-42c7-9580-a87c520d4985" sector="90b5beed-64c6-40ff-8652-86ba1b32d9d7" originalIdInSource="0716100000283690">
        <KPIs xsi:type="esdl:KPIs" id="82374579-51da-42c3-8e59-eda6b4153289">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="af2b34b5-bb85-4d9c-bb73-32a9b25f7c5b" value="259928.57081597712"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="282368f1-1e5b-4e93-9e11-b78224e732f0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="651410d5-9e0f-4ef4-9997-3400e8b443e2" value="4566422.379999999"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="32d7c128-917f-43f4-970c-5290ecd2cad2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d1cda8a6-1804-4764-a77a-ab084c1582b3" value="259928.57081597712"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="4e231ccc-d02f-4abb-942d-8ab7daabfc8c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="e78d62a9-b762-48f2-98b8-8110f4c3c2d8" value="259928.57081597712"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="08488388-8a40-4a7b-9099-b166a2a50da9" value="4566422.379999999"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="ce062882-76ed-4029-bc72-4f7f4c70fe21"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="75616504-2b46-40c9-b831-7719878892fe"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="07ad561c-2463-48fd-a95c-f2e4c1b9e087"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="329efdde-4010-49c0-8aca-f0d115820517" value="4566422.379999999"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="ff82d902-a1e4-4719-acd8-d5a92f690564"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="f47a553f-9453-4c0f-8a3a-c2d1736a6d1a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="e968f805-5d34-41dc-bf43-87b8fcd75e72"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="0fe6b6a3-7c18-4807-b035-68c99c32c14e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="fec95a9e-ba4a-41f0-86eb-bcad9ce7535b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="41155.03507550427" height="9.97"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5442984489" lon="4.221976194937193"/>
            <point xsi:type="esdl:Point" lat="51.54441918638178" lon="4.222342331514752"/>
            <point xsi:type="esdl:Point" lat="51.54462261066618" lon="4.222958706492185"/>
            <point xsi:type="esdl:Point" lat="51.54463444846634" lon="4.222948657198151"/>
            <point xsi:type="esdl:Point" lat="51.54481659760883" lon="4.223499739768585"/>
            <point xsi:type="esdl:Point" lat="51.544804723812646" lon="4.223509789880882"/>
            <point xsi:type="esdl:Point" lat="51.545223415402845" lon="4.224777959989227"/>
            <point xsi:type="esdl:Point" lat="51.54539974506594" lon="4.22462822278836"/>
            <point xsi:type="esdl:Point" lat="51.546142468336946" lon="4.223997825888469"/>
            <point xsi:type="esdl:Point" lat="51.54627498947063" lon="4.223884887945705"/>
            <point xsi:type="esdl:Point" lat="51.54618624071415" lon="4.223615289075229"/>
            <point xsi:type="esdl:Point" lat="51.54623467893799" lon="4.223574097338997"/>
            <point xsi:type="esdl:Point" lat="51.546176925885554" lon="4.223399365531093"/>
            <point xsi:type="esdl:Point" lat="51.54612848772347" lon="4.223440557400303"/>
            <point xsi:type="esdl:Point" lat="51.546066143144834" lon="4.223251612810284"/>
            <point xsi:type="esdl:Point" lat="51.54549429011974" lon="4.221519115637919"/>
            <point xsi:type="esdl:Point" lat="51.5453500445495" lon="4.22108288802952"/>
            <point xsi:type="esdl:Point" lat="51.5454506373234" lon="4.220997449616353"/>
            <point xsi:type="esdl:Point" lat="51.545124745002155" lon="4.220010725287353"/>
            <point xsi:type="esdl:Point" lat="51.54467150772556" lon="4.220395930529287"/>
            <point xsi:type="esdl:Point" lat="51.54471783230649" lon="4.220535696541702"/>
            <point xsi:type="esdl:Point" lat="51.54421741120708" lon="4.220960857004121"/>
            <point xsi:type="esdl:Point" lat="51.544246054076915" lon="4.221047589229151"/>
            <point xsi:type="esdl:Point" lat="51.54379253512745" lon="4.221432827020778"/>
            <point xsi:type="esdl:Point" lat="51.54404355495004" lon="4.222192627661263"/>
            <point xsi:type="esdl:Point" lat="51.5442984489" lon="4.221976194937193"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="7e8233e8-ef2c-4324-bca5-48a07805cb35">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f995d619-4a86-4478-82d7-1500c639a883" id="3907ecc9-8845-4cd1-82ad-54a7fefaf89f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="0b1e1abd-5dee-4f31-9fee-d93edd2b5ae3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="16.439120567999996" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="f5151834-d30f-493e-82cf-0b4ac8f645c4">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="4810e6e4-7c60-4d44-95db-efdc923af71c" id="10327d8c-a2cf-4031-b264-d39439a08375">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="fd267850-1cae-4e9a-8326-30f42c54567e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="8.226739266325675" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="a7b7abc6-46f7-4c45-ba38-a93231d1e101" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ee4baf6a-0747-4010-b028-12f5c21c8f47" id="96788b34-c655-4d97-a408-6550a911df1e"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="4810e6e4-7c60-4d44-95db-efdc923af71c" connectedTo="10327d8c-a2cf-4031-b264-d39439a08375"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="3926cc41-97c3-4ad4-8db7-c4602b564f23">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f995d619-4a86-4478-82d7-1500c639a883" connectedTo="3907ecc9-8845-4cd1-82ad-54a7fefaf89f"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2e7d4217-fb18-4ff8-bdd4-3533c5f1c25a"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b2f47d52-642f-4535-93c2-28d784803d1a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ee4baf6a-0747-4010-b028-12f5c21c8f47" connectedTo="96788b34-c655-4d97-a408-6550a911df1e"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="d2d412db-fb53-47bf-b2bb-07787c3b79da"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2827" buildingYear="2016" name="Pand van Scheurwater Transport B.V., Scheurwater Holding B.V., Scheurwater Kunststof Recycling B.V." floorArea="1052.0" id="d85b57d1-42cd-4a08-9c52-6d320fb0085b" sector="cc555708-abf1-4b4b-ad8a-f9959c1c14d0" originalIdInSource="0716100000291705">
        <KPIs xsi:type="esdl:KPIs" id="d09e1595-5a00-4105-8a2f-a8651dce4a40">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6de354e3-166b-4d01-a1b5-8c239ab00f0b" value="5971.499845223164"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="973c2506-ad42-4cee-9986-77c3fcee4640"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3dd2bb09-77de-4cf6-8019-7830c596c554" value="45003.65828571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0ffe4477-f701-425f-b4b4-6ae8fcf2a12b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="028ea5a3-82ea-4008-a62f-6d8a06a71dd6" value="5971.499845223164"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="9d925a98-a20a-4934-b9f2-34f78b82e1b3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="bbdf7b19-ee3a-41ca-bb14-02129207d47f" value="5971.499845223164"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="0e46dc1a-9149-43d1-ae2d-f2346691120a" value="45003.65828571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="25cc4019-cce0-47ce-850b-00721c9f59eb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8621bee3-69c7-4843-a98b-4be5e6e54667"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="8b94105e-5ffd-4ef9-bf89-db29076d1aea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="b34b4b71-db7d-4a3b-8442-80eaba2dc92a" value="45003.65828571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="8ccccd9f-7b58-432c-a4ff-533fc3a15df5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="3411cdf3-9cc5-4f2f-8cd5-9b7bd8c36c00"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="bb5ccbbf-9157-4e66-bf1a-6c2c0496eef8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b5876c91-b152-4c17-9405-b7a3a9d19cc0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="26abdc84-4d89-410f-a0ee-dc9e0b9ae139"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2827.0143109999144" height="4.45"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.544637718671424" lon="4.225021831313788"/>
            <point xsi:type="esdl:Point" lat="51.54457773108278" lon="4.224834618189102"/>
            <point xsi:type="esdl:Point" lat="51.544445823333234" lon="4.224943338050318"/>
            <point xsi:type="esdl:Point" lat="51.54439677353724" lon="4.2247902448348365"/>
            <point xsi:type="esdl:Point" lat="51.544528697397325" lon="4.2246813512286705"/>
            <point xsi:type="esdl:Point" lat="51.54446809546396" lon="4.224492078668323"/>
            <point xsi:type="esdl:Point" lat="51.54433642796164" lon="4.22460051919477"/>
            <point xsi:type="esdl:Point" lat="51.544333339028896" lon="4.224590924469871"/>
            <point xsi:type="esdl:Point" lat="51.54402994976417" lon="4.224840617651713"/>
            <point xsi:type="esdl:Point" lat="51.54420252376911" lon="4.22538070001739"/>
            <point xsi:type="esdl:Point" lat="51.54426558715558" lon="4.225576281977482"/>
            <point xsi:type="esdl:Point" lat="51.544568319604" lon="4.225325470282448"/>
            <point xsi:type="esdl:Point" lat="51.54454777064977" lon="4.225261364338712"/>
            <point xsi:type="esdl:Point" lat="51.54467982990052" lon="4.225152482697021"/>
            <point xsi:type="esdl:Point" lat="51.544637718671424" lon="4.225021831313788"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="40bc302c-43c9-49e5-816d-930ccf21a2ee">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="094a0844-c864-4fc6-a620-dd87fdcdf3cb" id="6e210f2e-2a6c-4085-88db-4bbe35163d49">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a558b06b-623c-44b5-9821-bfa581a1dac6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16201316982857147" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b5652c52-b76b-42ba-b97d-5b106fb02662">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6ad50e66-ec5f-4277-87b9-cbe4102b8734" id="ad7a88df-bb15-4f88-bd6c-c55661bdb9f6">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f15b4380-e176-4d84-84ac-f64a2e160489" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.18899797010131314" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="79219f33-be29-4f0c-91a6-696b43be0287" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="2a1b8b96-c947-4f7f-b5c0-a86a03c29d6a" id="7d2a7a01-845f-4913-bcce-a98d1fb33b6e"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6ad50e66-ec5f-4277-87b9-cbe4102b8734" connectedTo="ad7a88df-bb15-4f88-bd6c-c55661bdb9f6"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="c2d75462-ac1c-4f66-a370-5d13452bba83">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="094a0844-c864-4fc6-a620-dd87fdcdf3cb" connectedTo="6e210f2e-2a6c-4085-88db-4bbe35163d49"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2b8d1cda-c1a3-4bb2-a901-3165fc25c28b"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b599f46f-e04a-446d-a949-7302428e35a0">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="2a1b8b96-c947-4f7f-b5c0-a86a03c29d6a" connectedTo="7d2a7a01-845f-4913-bcce-a98d1fb33b6e"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="647bb801-20fe-4f2d-a508-71e67baded01"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2201" buildingYear="2013" name="Pand van 360 Compounding B.V., Hazacom Holding B.V." floorArea="2253.0" id="dad2cb1c-a512-4a12-8af6-5dd3850c2fe1" sector="3f766879-f289-457f-9137-bb543283381f" originalIdInSource="0716100000291083">
        <KPIs xsi:type="esdl:KPIs" id="8391e51c-6d39-460c-8fa8-31a5fa21f4a6">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="61f50fc9-0dd3-4fca-93ce-8600361733ee" value="14244.436366164828"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="fd6d4941-2036-45ba-beee-2c170858ab3c" value="6801.04847724783"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="888da646-7f5f-4edf-a02d-0869d86de6de" value="102806.96485714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="3e8c4a0d-4c77-4137-a124-fc7fab3fb862" value="390934.4929711905"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="def9f6ba-e53a-4647-a94e-ba975b05f65b" value="14244.436366164828"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="7a67c94e-2b75-4751-b8f4-4cda68f9f838" value="6801.04847724783"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="3de5881a-f5b3-4d99-8172-abdd97124e20" value="21045.484843412658"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="147cf02c-f904-4bdc-a65e-119de1b9c91d" value="102806.96485714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="4464667f-0cd8-4403-9b3f-1bc41d4835cf" value="390934.4929711905"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="54c04e46-e9d0-4df6-9e4f-ac269e6c9ecb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="df098117-b538-47c7-bf19-ccaab7a6b6ca"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="769ccfe2-fe6a-4d9e-b044-d5ba804dd1ba" value="493741.45782833337"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="7bac534a-0a9e-4530-ab33-37385f9a74d7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4497400a-9f3d-4554-8a11-aaa2dec7cc34"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="a9684821-7555-4c43-b957-87508f1b36cb"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c06db7ad-2490-4669-8747-a824acce1762"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="8a38f4f7-863c-483a-9a97-5bbe88d1b534"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2201.403796501152" height="7.390000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54402195169515" lon="4.224847194532193"/>
            <point xsi:type="esdl:Point" lat="51.544333339028896" lon="4.224590924469871"/>
            <point xsi:type="esdl:Point" lat="51.54428949122487" lon="4.224454754098577"/>
            <point xsi:type="esdl:Point" lat="51.54442142720071" lon="4.224346205469539"/>
            <point xsi:type="esdl:Point" lat="51.54428860100537" lon="4.223932681956551"/>
            <point xsi:type="esdl:Point" lat="51.54384569967726" lon="4.224297291681781"/>
            <point xsi:type="esdl:Point" lat="51.54402195169515" lon="4.224847194532193"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="1c4f76a5-6cc3-47fb-a144-0a73c188ea82">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="036e30fe-30dd-438a-8e2c-7a9f4c5137ac" id="090621cf-d111-4454-bec4-252eb2696cae">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="b72eaf15-bc08-443a-92bc-87326adec237" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.37010507348571425" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="f3ba4f20-6946-4864-9cb3-4342aa59e174">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="036e30fe-30dd-438a-8e2c-7a9f4c5137ac" id="74f89b3a-b5f0-44b9-9c9e-6b6f8b21cac2">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="6e4b4f2c-0909-420b-90f0-2667f1b5d611" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.4073641746962857" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a6eda9f6-d7d5-4c19-8067-f37f776c5c99">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c8156f5f-de46-4701-8683-769c4e38d11c" id="53d29aac-9f7d-4af8-84b1-c4b99002525f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e89804d4-35fc-489e-a6f2-883fe37e36ea" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.45083641098911675" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="6012a35e-3f57-40a8-b5e8-70702803d556" name="Gasketel" id="b1a6e22b-5136-4462-a4b0-f324a315a37b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1033db80-7ecd-4b31-9678-b6b8c9be0868" id="cb826d2d-4934-48a6-a0ce-0f1b47e84d97"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c8156f5f-de46-4701-8683-769c4e38d11c" connectedTo="53d29aac-9f7d-4af8-84b1-c4b99002525f"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="2a8357a0-6cfc-43d2-bac3-6a5ff9a33b60">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1033db80-7ecd-4b31-9678-b6b8c9be0868" id="0ae19254-ef70-4778-a285-b5704f359fdd">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d7d21579-8a73-4aab-9ec9-edcfad600f55" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.21525318430489382" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="06875e6a-2e27-4391-a94c-9b066619d0fc">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="036e30fe-30dd-438a-8e2c-7a9f4c5137ac" connectedTo="090621cf-d111-4454-bec4-252eb2696cae 74f89b3a-b5f0-44b9-9c9e-6b6f8b21cac2"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="f70d680c-93ea-4bf8-a86c-23110a9ec248"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e784fcf3-f97d-4d9d-9fcd-b642eed215d7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1033db80-7ecd-4b31-9678-b6b8c9be0868" connectedTo="cb826d2d-4934-48a6-a0ce-0f1b47e84d97 0ae19254-ef70-4778-a285-b5704f359fdd"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="963d3b80-4ed1-415d-a7d2-86dba20a3460"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2328" buildingYear="2017" name="Pand van Sayers Techniek Nederland B.V., Blauw Beregening Groep B.V., Van Gorsel Im- en Export B.V., Van Gorsel Holding B.V., B&amp;B Bouw Tholen B.V." floorArea="667.0" id="37ce7e7b-12b4-455d-9db7-8d854a9e482b" sector="a483ebfd-f88f-4775-a936-277d1bbab88e" originalIdInSource="0716100000292007">
        <KPIs xsi:type="esdl:KPIs" id="59cae0e5-b896-4188-b71c-8bfaa618b0d5">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4719e3c6-397a-411f-86bf-e297939ac643" value="3773.313163560097"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="0a706fb7-f88d-495e-beec-4f3ed8b32e2d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3c1222df-a578-41aa-8119-854ff4db9a5f" value="31304.40628571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="28ad7442-84ee-4849-aa70-7325a48432fa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="2b637a1a-ace3-48d8-a7d7-a6a17631c0ff" value="3773.313163560097"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="fe71c651-d6e6-4af1-a00a-69c26d5216b1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="e4cf8d2c-026c-473c-87ff-12f258004388" value="3773.313163560097"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="e4e3f1bd-d870-4cd1-852f-927fb57fa897" value="31304.40628571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="6e10c7df-2283-4413-a1c8-11cb05c00643"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="fc4a06ac-6fc0-4adc-8c70-1b74c44699b2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e11ac2ee-f709-40e2-bcc2-f57df5b15965"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ace447a7-b6bc-4c87-9b04-ca6f5fa3075e" value="31304.40628571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="9fad0999-f613-4714-9892-053c961ffce7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="f0a2c89e-3cff-41e1-8a9a-7f2b16603058"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="82310ebf-e02c-4f86-9f68-fbc4872faa75"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="d1b41a63-2693-4c95-bd69-9e6fb4d0d250"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="e8ffefad-ba4d-4e6b-88e0-2eb847fb4345"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2328.997200000514" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.543883908561604" lon="4.222656704341001"/>
            <point xsi:type="esdl:Point" lat="51.54361657480737" lon="4.222885142005753"/>
            <point xsi:type="esdl:Point" lat="51.543918164375576" lon="4.223794394667666"/>
            <point xsi:type="esdl:Point" lat="51.54416573453902" lon="4.223505714257571"/>
            <point xsi:type="esdl:Point" lat="51.543883908561604" lon="4.222656704341001"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="9767d2f6-7c36-46f5-898d-f1798834627b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6e9a5f69-b3b3-4095-80f4-4818d9a76dc0" id="e8fb8e26-a1ff-4a58-8867-4cfb438260e1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a401c61b-6fa0-4857-a3c1-be10b152f233" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11269586262857141" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e7e95260-88d4-474f-8374-1eed98cd3b35">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="1ead8cc4-1c19-48b5-b939-d668d49e6e98" id="8cb19cae-b5bf-4442-8d0b-708ae691d65e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="4641e527-f76a-4092-9861-794199d2cb4f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11942536162667707" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="8fc14261-4e7b-4988-8de2-04d7c9028b0b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d8807ec8-8a7d-4ddf-92c6-abb9d6c5d69b" id="2b279e89-e925-4788-a0a6-d79fe2d8a539"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="1ead8cc4-1c19-48b5-b939-d668d49e6e98" connectedTo="8cb19cae-b5bf-4442-8d0b-708ae691d65e"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4354319d-a40c-4126-9664-ca9b512a8325">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="6e9a5f69-b3b3-4095-80f4-4818d9a76dc0" connectedTo="e8fb8e26-a1ff-4a58-8867-4cfb438260e1"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0381866c-6874-48cf-8533-47a17bfa2f30"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="986adcbb-61aa-4d8e-931b-e9e2f05fd5fb">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d8807ec8-8a7d-4ddf-92c6-abb9d6c5d69b" connectedTo="2b279e89-e925-4788-a0a6-d79fe2d8a539"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="d81df1f4-8496-4549-9ad5-e50baf0cc98a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1159" buildingYear="2014" name="Pand van Qlares" floorArea="1377.0" id="2ef6736c-96ac-405e-99b4-f476c2ee20a0" sector="b150bb27-37bc-47e7-a562-b7d516260f1a" originalIdInSource="0716100000291256">
        <KPIs xsi:type="esdl:KPIs" id="60b9eab9-035e-449a-8e16-de6b42461998">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="35856c3b-10db-4609-b3e3-a0afec3e0bc1" value="7732.8975607567445"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="fa80134f-b599-467b-ab20-b7227aac4fa8" value="361003.18301518937"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="b652a178-73de-4cc2-8d6f-b1a1d5e85952" value="58906.879714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="803b93ca-9817-4053-8a2c-c8108896520f" value="789380.9232005143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="4c62ab9c-9f8c-4324-a4be-079462294684" value="7732.8975607567445"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="6a44a67d-ee8e-4b6b-830f-00afa65cf06b" value="361003.18301518937"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9d5c0f33-1956-4fd1-b00f-714aeae7fa62" value="368736.08057594614"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="d056db13-e4a5-49c3-be6b-585a07953f62" value="58906.879714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="5fd70154-e190-4fac-8634-a6a2de6f918c" value="789380.9232005143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="edaf4743-e3f8-4bb0-9d44-c43a4b062117"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f3ae112f-0e30-4406-a72d-b5df135ebc31"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="186d9156-8f12-49ca-90e0-4d309b9631d8" value="848287.8029148"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="ddcd0685-3033-4bc1-a023-151513957338"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="fc0c5265-97a9-4d5c-9184-cef7780b3519"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c1b3c656-8492-4405-bfb1-456f2e1ea550"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="61ea1a27-15e9-4023-b451-409f347009ce"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="454713ee-654f-4868-825d-cbde2eebb50f"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1159.988946499772" height="4.748321108248666"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54365941430883" lon="4.222100119448542"/>
            <point xsi:type="esdl:Point" lat="51.54370575189209" lon="4.222061072703358"/>
            <point xsi:type="esdl:Point" lat="51.54365890019886" lon="4.221919649451546"/>
            <point xsi:type="esdl:Point" lat="51.54359944334358" lon="4.221740186941265"/>
            <point xsi:type="esdl:Point" lat="51.543531217681156" lon="4.221798263197301"/>
            <point xsi:type="esdl:Point" lat="51.54355186825497" lon="4.221860647982279"/>
            <point xsi:type="esdl:Point" lat="51.54352131228901" lon="4.221886689812862"/>
            <point xsi:type="esdl:Point" lat="51.543506456913164" lon="4.221842033103206"/>
            <point xsi:type="esdl:Point" lat="51.54340118866619" lon="4.2219319396958275"/>
            <point xsi:type="esdl:Point" lat="51.543415970960865" lon="4.22197648287213"/>
            <point xsi:type="esdl:Point" lat="51.543294771992684" lon="4.222079772489704"/>
            <point xsi:type="esdl:Point" lat="51.5434219396439" lon="4.222464247412131"/>
            <point xsi:type="esdl:Point" lat="51.54361406485741" lon="4.222300492775078"/>
            <point xsi:type="esdl:Point" lat="51.54357214281865" lon="4.222174715034447"/>
            <point xsi:type="esdl:Point" lat="51.54365941430883" lon="4.222100119448542"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="4a7f4484-343b-4c49-95e2-94ab58869eb5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2a64717d-90fe-4597-a7dc-e7e56682c8fb" id="97dd63b8-352f-4f2e-8c2a-38ebf228c496">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="1aba8605-d5be-4d4a-a79b-2b886884b958" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2120647669714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="a658e3b3-7ed4-421f-8f34-355ef883be95">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2a64717d-90fe-4597-a7dc-e7e56682c8fb" id="d89b7657-07bd-4da1-ac19-8b325ec2abde">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="49c6b72d-cb44-4fa8-befe-27f6fcd7baee" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.8417713235218516" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="0cfec78c-8ce0-454b-8be0-aa34a107e480">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="a05535fa-1da2-4000-a2d5-2c5cd3f93535" id="9c8e3943-2150-4758-a23b-f9790d17a3a8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="c55fad67-086b-4b41-b659-d6210aabb854" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.24474620779795095" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="a3185595-c4e0-480f-b195-c10d2e1b1bed" name="Gasketel" id="1ada140d-cf57-4831-b3ec-86b9bbefe6e1" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c0702aa5-ca66-4867-a3ee-5abcd6a7608d" id="19250dd4-0f1d-47a9-ad12-6e9b73b373b0"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="a05535fa-1da2-4000-a2d5-2c5cd3f93535" connectedTo="9c8e3943-2150-4758-a23b-f9790d17a3a8"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="bfc395c4-da94-4882-a6d8-fe79073b6f0c">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c0702aa5-ca66-4867-a3ee-5abcd6a7608d" id="35d4eb31-6e38-46f9-8c55-c9ffb24091cc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="b716cc70-7154-4da1-bd1d-55babffd8f2b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="11.425750742430743" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="1e3ade17-db40-47ea-9019-ad793b1e7ac6">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="2a64717d-90fe-4597-a7dc-e7e56682c8fb" connectedTo="97dd63b8-352f-4f2e-8c2a-38ebf228c496 d89b7657-07bd-4da1-ac19-8b325ec2abde"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="11e00d87-888c-4e63-abb7-9c38edf95bfa"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="ac8031cc-32ca-4ac6-8080-4cdc783fc4d7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c0702aa5-ca66-4867-a3ee-5abcd6a7608d" connectedTo="19250dd4-0f1d-47a9-ad12-6e9b73b373b0 35d4eb31-6e38-46f9-8c55-c9ffb24091cc"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b16ae425-fca8-42c8-9e08-8d6b248c134f"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2823" buildingYear="1990" name="Pand van H.A. Prince Kunststofbouw B.V., PKZ V.O.F., Kwatta Vastgoed B.V., H.A. Prince Beheer Bergen op Zoom B.V., Prince Projects B.V., Kwatta Holding B.V." floorArea="2961.0" id="702f2594-1886-48f4-b1a8-686ab847ba30" sector="73e3e21b-6b0d-4e82-bfa6-4ec24e915a07" originalIdInSource="0716100000036061">
        <KPIs xsi:type="esdl:KPIs" id="65d29559-c2fb-4457-b3f4-3f86e26f782a">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="1554a950-7006-4c4b-b390-3b1c946d3f24" value="27718.55112276711"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="39c353af-e020-4248-83c9-5913646ea90a" value="148943.2323046094"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="543fe56c-f045-41d6-854a-e066562eeafb" value="135113.81399999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e95168f0-41fb-4d53-924c-c3240513e433" value="1708467.833914702"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="6d3267bb-8d61-4375-ba47-823a0c85052b" value="27718.55112276711"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="3bbc9713-0a6e-48ba-a40b-2ee31ce1ff58" value="148943.2323046094"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="027c3159-d48e-465f-8c53-8455c8d439e1" value="176661.78342737653"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="9aaf74a2-3dea-44b9-9e78-1d2d912b2f84" value="135113.81399999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="156b554f-6399-4c7d-a949-2b0a70f17b12" value="1708467.833914702"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="cd50ef15-1bc6-4f19-b4e1-a53f3be193ad"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="05ef830c-95b2-47cf-9f2d-fdbedb0857e9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="1d212ff7-33c5-456e-8100-9acb0da68768" value="1843581.647914702"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="04b3ea30-8b61-4ff0-ba7d-e3061ae041fb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="7dd4c2a1-c860-4c11-a480-0607cb12427d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="7188e82a-2022-4ebc-bbd0-918bea5330ae"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="641ac161-76d2-4a67-9cfe-79a4df577d39"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="045d860e-1098-4404-89ac-a77ba2198090"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2823.5388530007185" height="8.01"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.539644150254226" lon="4.231530847868746"/>
            <point xsi:type="esdl:Point" lat="51.53963401510462" lon="4.231579512711157"/>
            <point xsi:type="esdl:Point" lat="51.539640319058435" lon="4.231599750233109"/>
            <point xsi:type="esdl:Point" lat="51.53959756471574" lon="4.231805104271368"/>
            <point xsi:type="esdl:Point" lat="51.539859103338415" lon="4.231944324232814"/>
            <point xsi:type="esdl:Point" lat="51.53994637314117" lon="4.231990772191274"/>
            <point xsi:type="esdl:Point" lat="51.540049130055586" lon="4.231494354108468"/>
            <point xsi:type="esdl:Point" lat="51.540149851853016" lon="4.231015961791352"/>
            <point xsi:type="esdl:Point" lat="51.539889246805195" lon="4.230876722518584"/>
            <point xsi:type="esdl:Point" lat="51.539852655018784" lon="4.231053364449774"/>
            <point xsi:type="esdl:Point" lat="51.539780786770734" lon="4.231014498232644"/>
            <point xsi:type="esdl:Point" lat="51.53977443972782" lon="4.231010810805281"/>
            <point xsi:type="esdl:Point" lat="51.53976698711392" lon="4.231010769798774"/>
            <point xsi:type="esdl:Point" lat="51.539761438891034" lon="4.231018767419486"/>
            <point xsi:type="esdl:Point" lat="51.53975275866564" lon="4.231044561362043"/>
            <point xsi:type="esdl:Point" lat="51.53975723723973" lon="4.231048382829286"/>
            <point xsi:type="esdl:Point" lat="51.53967347961948" lon="4.231300622242109"/>
            <point xsi:type="esdl:Point" lat="51.53966876139001" lon="4.2312980177521196"/>
            <point xsi:type="esdl:Point" lat="51.53966148018606" lon="4.231333477596678"/>
            <point xsi:type="esdl:Point" lat="51.53969236729082" lon="4.231349788593992"/>
            <point xsi:type="esdl:Point" lat="51.53965361223884" lon="4.231535912090933"/>
            <point xsi:type="esdl:Point" lat="51.539644150254226" lon="4.231530847868746"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c49f84ce-618e-49b6-a324-dbfa0424cfd5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b83c482f-a2c6-43af-abbd-30dfe412348b" id="f6605ca8-7a96-45f9-ac85-60233acb3512">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="5dedf661-a6cb-498d-aa3d-b6c1f497830c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.48640973039999996" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="f9aa4b2b-d096-4b75-8fb8-430cc09c0502">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b83c482f-a2c6-43af-abbd-30dfe412348b" id="a300ef8d-c987-45f6-acdf-64a081191258">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="e1da267f-c2a1-437b-a5b6-1fdf4ca3be32" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="6.150484202092928" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="596f96c5-f1f6-4023-bd46-85ddc75d5ec8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6dc71a66-b4a6-4b1e-b8ea-bf179b43c9f5" id="9fd10dd3-996f-4d25-bf4f-9bb08c306f46">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a6029ad6-de9e-4ee9-be6f-435cc9a6c58f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.8772921430355789" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="0ea3a8d7-5b21-47f2-8137-8cf8090e2414" name="Gasketel" id="eaf56b0c-5a57-41ed-ba5c-84414da8a8b4" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d3f61977-1b52-4e98-8dd9-791c6eb984ea" id="30f4d6a6-5e45-44e1-8331-1ba2396d7460"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6dc71a66-b4a6-4b1e-b8ea-bf179b43c9f5" connectedTo="9fd10dd3-996f-4d25-bf4f-9bb08c306f46"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="0948a576-1610-42ad-a9cc-3a7a96746b39">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d3f61977-1b52-4e98-8dd9-791c6eb984ea" id="d7208a19-443f-420a-816c-e1804f4d1891">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="0d52b92e-18c4-430f-8a0c-1dcfb9e2e654" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="4.714053302440887" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="f7e94001-246d-465a-ae78-dd3d95d92606">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="b83c482f-a2c6-43af-abbd-30dfe412348b" connectedTo="f6605ca8-7a96-45f9-ac85-60233acb3512 a300ef8d-c987-45f6-acdf-64a081191258"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="288380f9-2ba3-431c-803a-30ab6e8c4caa"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="03e8aabf-688d-470a-9a69-79796b1d4647">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d3f61977-1b52-4e98-8dd9-791c6eb984ea" connectedTo="30f4d6a6-5e45-44e1-8331-1ba2396d7460 d7208a19-443f-420a-816c-e1804f4d1891"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="7f8d8f43-56bb-4adb-9cb4-df1ef169b932"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2150" buildingYear="1980" name="Pand van Delta Glass B.V." floorArea="2638.0" id="4ab9852d-8530-42ec-83b1-c9c722b0a8d8" sector="de195a1d-fa74-4c28-aa65-6067f46abce1" originalIdInSource="0716100000248486">
        <KPIs xsi:type="esdl:KPIs" id="39dacb19-2bac-4de0-a021-e0e73cf005ba">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="d7f29f4b-3d11-4e03-9df3-dcf6b00aac2a" value="23031.084158440746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="3fc6f08f-2246-4876-a437-5631b6589c27" value="169279.53535212227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="fc3e4135-7fea-4388-a773-3a1b28e60f97" value="120374.95485714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="221942e2-ae29-406a-a34f-8caacde1c91c" value="1922652.6511457302"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="0d5d357c-ba22-4021-a4ba-b505871d3296" value="23031.084158440746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="19a1412d-235c-4697-9df6-cae9dd18db94" value="169279.53535212227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="31dc1773-7224-40cb-bf3a-aaec7413136b" value="192310.61951056303"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="acf015a1-1e14-4c06-a790-9631a7186c67" value="120374.95485714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="540b8e61-d572-457b-8e81-190906509646" value="1922652.6511457302"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="131ec027-263d-49fe-bf5d-339560e951eb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="816800dc-e792-4315-9a79-74efd9da40c4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="77a82689-a3bc-443f-b28f-2bf16c5267ef" value="2043027.606002873"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="adc46c17-1230-4405-9d9d-8ded94f8b3eb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="5ec4e657-3e8a-4afc-be63-b7e04d592dd9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="14db17b7-46b4-43e3-aae3-3917b8048bd5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="197efb86-39f0-49ec-8241-f641dbaf770a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="293b55a3-6b78-4725-bc09-42a402b11d8e"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2150.1577484995114" height="4.99"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5384872908757" lon="4.230927002544367"/>
            <point xsi:type="esdl:Point" lat="51.53848991639753" lon="4.230928881768215"/>
            <point xsi:type="esdl:Point" lat="51.53849017688394" lon="4.230927952574369"/>
            <point xsi:type="esdl:Point" lat="51.53898516160898" lon="4.231280624177903"/>
            <point xsi:type="esdl:Point" lat="51.53915198503584" lon="4.231399486792816"/>
            <point xsi:type="esdl:Point" lat="51.53923711069704" lon="4.231097425153874"/>
            <point xsi:type="esdl:Point" lat="51.53924455299603" lon="4.231070985493598"/>
            <point xsi:type="esdl:Point" lat="51.53924347568426" lon="4.231070220062723"/>
            <point xsi:type="esdl:Point" lat="51.53908023821294" lon="4.230954034893791"/>
            <point xsi:type="esdl:Point" lat="51.5390778663279" lon="4.230952351003787"/>
            <point xsi:type="esdl:Point" lat="51.53909321747839" lon="4.230896663375681"/>
            <point xsi:type="esdl:Point" lat="51.53910452455622" lon="4.230904678828975"/>
            <point xsi:type="esdl:Point" lat="51.53911555027702" lon="4.2308651886835165"/>
            <point xsi:type="esdl:Point" lat="51.539104151898925" lon="4.230857031408833"/>
            <point xsi:type="esdl:Point" lat="51.539106885288" lon="4.230847101796684"/>
            <point xsi:type="esdl:Point" lat="51.538982681966324" lon="4.230758408789796"/>
            <point xsi:type="esdl:Point" lat="51.53895327492694" lon="4.230863494660037"/>
            <point xsi:type="esdl:Point" lat="51.538580677064765" lon="4.23059865722989"/>
            <point xsi:type="esdl:Point" lat="51.538580844110726" lon="4.2305973700329496"/>
            <point xsi:type="esdl:Point" lat="51.53857825467488" lon="4.230595504321007"/>
            <point xsi:type="esdl:Point" lat="51.5384872908757" lon="4.230927002544367"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="7c7026e7-5291-4f6e-89b3-ab31a6539e7b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="7b0c34d3-3660-4092-accd-22f11603fcf0" id="c813d273-26aa-4a4a-a709-22446b8840ee">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="13253789-644e-40bc-a86a-e99ed12dec13" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.4333498374857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="b327fb91-0b08-4cea-9117-ae92995ea80f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="7b0c34d3-3660-4092-accd-22f11603fcf0" id="7664364e-6c4c-4ca7-8066-4832b9161110">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="505355ca-ef5e-43d1-b6a6-eb1c7b2ec503" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="6.921549544124629" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="5a1b4d9b-46f7-434f-a345-97293e9a5277">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="210a4ab3-c9a0-4779-9885-6fff3b2c27a8" id="a038cd8f-be47-44ec-b794-721e375a08e0">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="15b3eeb9-aeb1-4fbe-8e5c-bfd47d130f1e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.7289338136146496" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="60227bea-638b-41ca-aa51-4b300049995e" name="Gasketel" id="414c9e0b-238a-4ec4-b29e-45bc1a8692e6" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e55d2a06-1531-477f-be48-6b0943bdbd2c" id="3f35eb61-e624-45f3-8428-c446073128ac"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="210a4ab3-c9a0-4779-9885-6fff3b2c27a8" connectedTo="a038cd8f-be47-44ec-b794-721e375a08e0"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="a7404b3e-b6d6-4d6b-a6f8-d0b463be9e2e">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e55d2a06-1531-477f-be48-6b0943bdbd2c" id="91cc0b76-f068-4cf2-8d09-d14a6975a644">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d24080ee-a65f-4f1f-913e-693df46dc1b8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="5.35769729389467" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="b09813aa-33c3-418c-8246-68d5283e13b7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="7b0c34d3-3660-4092-accd-22f11603fcf0" connectedTo="c813d273-26aa-4a4a-a709-22446b8840ee 7664364e-6c4c-4ca7-8066-4832b9161110"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="83091d76-0061-4d82-a3a1-6cf125f3bea5"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="75a39894-27f2-4fde-a68f-6154bd1478f1">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e55d2a06-1531-477f-be48-6b0943bdbd2c" connectedTo="3f35eb61-e624-45f3-8428-c446073128ac 91cc0b76-f068-4cf2-8d09-d14a6975a644"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="3a7b3651-cdb5-463e-8796-a039453e1db6"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="4105" buildingYear="1996" name="Pand van Wimar B.V., Gebr. Wilthagen B.V., Vleeswarenbedrijf Wilthagen" floorArea="4633.0" id="52f7c44b-b0fa-47b3-a3a1-85ba370e017e" sector="908286fc-1a9d-414f-b0c1-658daba93344" originalIdInSource="0716100000213575">
        <KPIs xsi:type="esdl:KPIs" id="a2644548-5724-4751-aee8-84a233ab7074">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5a6a451c-7d8d-4294-bb1b-103f7d52f898" value="39193.90905772683"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="c8c36139-1035-4df1-bc2e-bceb4322e6d6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="bbdaf216-3959-45a2-a0d2-088f45b616be" value="211409.08485714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="bd100985-5f4f-4da2-94f0-7cb6ec1f93f0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3dfbc57d-d679-4980-91b0-97f51731d5ff" value="39193.90905772683"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="3850aa49-cd88-451b-b5f3-0a9f05335397"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="4d58d763-684f-4f07-a078-02dc71342e22" value="39193.90905772683"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="bb9a3cb9-cbe6-48ac-8f0e-4b0b81473dbe" value="211409.08485714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="768b4170-fa14-4bde-9a1b-1dd6343600bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f741e025-a5a7-4c68-a9a2-a0c47fe6f3bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="552d5934-1766-435d-b9b0-e28a50fb7f17"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="becfff2a-220f-4035-a8a9-027210bc84c9" value="211409.08485714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="38eefc63-9482-4c14-8402-cb131af1479f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="660e8ebf-302c-4f92-affe-6cba138b27ec"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="29d70447-7759-4911-8812-b14e404c2edc"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c1b5de35-1a9e-4db7-97f6-417c633c0e32"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="21b021a5-6b3c-4572-a7f1-19d3bb987fbf"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="4105.508339500051" height="8.43"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.545490061044944" lon="4.226417666535854"/>
            <point xsi:type="esdl:Point" lat="51.54553069741174" lon="4.226528506654984"/>
            <point xsi:type="esdl:Point" lat="51.5454610733568" lon="4.226594456908045"/>
            <point xsi:type="esdl:Point" lat="51.5455740317956" lon="4.226901990787572"/>
            <point xsi:type="esdl:Point" lat="51.545643486128014" lon="4.226836131682887"/>
            <point xsi:type="esdl:Point" lat="51.545825705684734" lon="4.226664595695003"/>
            <point xsi:type="esdl:Point" lat="51.54603133921075" lon="4.226471021285893"/>
            <point xsi:type="esdl:Point" lat="51.54593908160454" lon="4.226220424286651"/>
            <point xsi:type="esdl:Point" lat="51.54624801965929" lon="4.225928157075697"/>
            <point xsi:type="esdl:Point" lat="51.54613302614607" lon="4.225614199593106"/>
            <point xsi:type="esdl:Point" lat="51.54564724473788" lon="4.2260742510802"/>
            <point xsi:type="esdl:Point" lat="51.54564679305457" lon="4.2260731236532205"/>
            <point xsi:type="esdl:Point" lat="51.54561884259201" lon="4.226100019963077"/>
            <point xsi:type="esdl:Point" lat="51.54561686521203" lon="4.2260946207427"/>
            <point xsi:type="esdl:Point" lat="51.54555012478726" lon="4.225912476721466"/>
            <point xsi:type="esdl:Point" lat="51.5454148818685" lon="4.226040283020542"/>
            <point xsi:type="esdl:Point" lat="51.54541200838689" lon="4.226032455792164"/>
            <point xsi:type="esdl:Point" lat="51.54529564415624" lon="4.226142276310988"/>
            <point xsi:type="esdl:Point" lat="51.545420695388245" lon="4.226483379621663"/>
            <point xsi:type="esdl:Point" lat="51.545490061044944" lon="4.226417666535854"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="9f16bf2f-1488-40db-9fd6-da1a0e6f9f43">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="7af7e222-6d31-4d8a-b427-50a1cc5a74ce" id="334b6454-9a27-4fc7-b6cc-6a5074f77f60">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d5bee636-ed63-4e57-8eec-f9da1a17bb14" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.7610727054857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b27d40cc-2bba-498f-b9a5-6f2b2bae0b0b">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d389d5c9-66d2-41f8-9d01-4bbdb0a416dc" id="b5ace0b7-8c12-4e05-a878-370f87e31124">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="c9005250-8004-4d6c-8a6e-3e6d092afc6f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.2404872216770542" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="16e05465-07de-4868-8016-ebd3ddc9bd30" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="230e0225-6b8f-4ff7-8a14-bcca8749d3de" id="9ac29caa-e091-4f09-8cc0-397eec0abec5"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d389d5c9-66d2-41f8-9d01-4bbdb0a416dc" connectedTo="b5ace0b7-8c12-4e05-a878-370f87e31124"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="f6930ba1-5ed7-41e8-a7c2-f58de87f4729">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="7af7e222-6d31-4d8a-b427-50a1cc5a74ce" connectedTo="334b6454-9a27-4fc7-b6cc-6a5074f77f60"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2b91d57e-987d-4022-b1a0-ee0d5c922b95"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="fe794902-53e6-4ff7-8eec-7901957ca075">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="230e0225-6b8f-4ff7-8a14-bcca8749d3de" connectedTo="9ac29caa-e091-4f09-8cc0-397eec0abec5"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="479631a8-6c31-46b6-ba92-b5440db90b49"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="630" buildingYear="1997" name="Pand van Devotra B.V." floorArea="587.0" id="9b3455c9-c6db-4014-a021-971feeb6b859" sector="cad4cbd2-8cdd-4b62-9eb9-88714da9a217" originalIdInSource="0716100000289024">
        <KPIs xsi:type="esdl:KPIs" id="e16d5d1f-1b47-4625-aed8-8cc8faa77cca">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="47a35829-9456-4702-85f7-79ec0d31b179" value="4095.0744614779314"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="1252a28a-19fa-4009-8dc2-3ce2689ceb1f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="99e4e0c4-1997-45f2-ad83-1857d0be0bf1" value="23328.050857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b26eb474-0faf-4e67-850b-bc6d0bc98cde"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="9ec74c50-f43c-4ded-a110-4056d431a3d7" value="4095.0744614779314"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="5d802f3d-3a70-444c-ba70-d6b69d8ebb93"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="1e8089f5-0851-4aee-84c3-7518cf694160" value="4095.0744614779314"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="acbce7b4-87ec-4313-9c19-0f325029407e" value="23328.050857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="73cd7c1b-eb78-4291-ae82-08371b11872d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="9dff8c7d-f791-497e-a8a4-5a269e6f37c1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="2ceb2bdb-d35c-43bd-ae7a-5de1b6cb025d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="9419c838-3f22-458b-8cb5-eed2244eae50" value="23328.050857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="ab847642-8439-4a3d-bd90-85a422406c12"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="d213aeb5-4366-4d26-b254-3f5a39723210"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="b307b759-8224-4ead-a93a-1d7256c70f40"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="f1b0f95d-3d6a-4b09-9d99-6e2f2c7b5c36"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="d62b9ef9-5dca-403c-aee1-5b579e995f96"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="630.4755674998655" height="6.050000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.545248139684105" lon="4.226606038588764"/>
            <point xsi:type="esdl:Point" lat="51.545247215633566" lon="4.226603510345132"/>
            <point xsi:type="esdl:Point" lat="51.54521738890788" lon="4.226522065316971"/>
            <point xsi:type="esdl:Point" lat="51.54520327930837" lon="4.226483528141292"/>
            <point xsi:type="esdl:Point" lat="51.54520978077281" lon="4.226477407715759"/>
            <point xsi:type="esdl:Point" lat="51.545174602223824" lon="4.226381177769839"/>
            <point xsi:type="esdl:Point" lat="51.54517412172077" lon="4.226379863664199"/>
            <point xsi:type="esdl:Point" lat="51.54516877799087" lon="4.226384887642813"/>
            <point xsi:type="esdl:Point" lat="51.545162051090415" lon="4.2263665045817636"/>
            <point xsi:type="esdl:Point" lat="51.54514534509485" lon="4.2263607032298385"/>
            <point xsi:type="esdl:Point" lat="51.54513412854216" lon="4.226370880041182"/>
            <point xsi:type="esdl:Point" lat="51.54513101923622" lon="4.2263619343249275"/>
            <point xsi:type="esdl:Point" lat="51.54506989535329" lon="4.226419348348667"/>
            <point xsi:type="esdl:Point" lat="51.54507468283409" lon="4.226432533080278"/>
            <point xsi:type="esdl:Point" lat="51.544996161128935" lon="4.226505904304764"/>
            <point xsi:type="esdl:Point" lat="51.544919507057934" lon="4.226577252413046"/>
            <point xsi:type="esdl:Point" lat="51.54501160598748" lon="4.226828237831301"/>
            <point xsi:type="esdl:Point" lat="51.54508807760693" lon="4.226756606320205"/>
            <point xsi:type="esdl:Point" lat="51.545248139684105" lon="4.226606038588764"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="6460aa4f-e196-4c5b-8f22-6f84f0ace768">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="c4537143-758d-45e8-888f-930cf02a4596" id="60128321-12c5-4cef-8f1e-198f46b07799">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="14e9f4cb-502f-4a03-b5a8-dc1836c6a84c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08398098308571429" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="2ab0b05e-a4da-4c6f-b250-dec92b86e3b5">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="162eb71a-e682-48f9-8a37-472895ed9c34" id="696ff149-3858-4bef-bf77-891b4edd7812">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="d766c0fa-eaaa-45fb-9cf4-a428336ea95d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.12960910670577652" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="9bad427c-e268-40af-8e38-9e4cef993453" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e4c47bdb-3c99-45d5-9850-64d79850aba8" id="4ad2b6ec-ef7b-45d6-b5e9-545ee66f5401"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="162eb71a-e682-48f9-8a37-472895ed9c34" connectedTo="696ff149-3858-4bef-bf77-891b4edd7812"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="1a4a7656-cf2d-484d-9069-8e7ca03d1216">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="c4537143-758d-45e8-888f-930cf02a4596" connectedTo="60128321-12c5-4cef-8f1e-198f46b07799"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="39cc1e5f-d757-4f94-8c90-95456438e618"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="f3786241-8dbf-4b0a-a98c-976b9aff51a1">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e4c47bdb-3c99-45d5-9850-64d79850aba8" connectedTo="4ad2b6ec-ef7b-45d6-b5e9-545ee66f5401"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="e768e017-8247-46b9-9dc1-bf19ada1694f"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="460" buildingYear="1997" name="Pand van GRAIDCO Global Relief, Aid &amp; Development Company B.V., Devotra Projects, JV GRAIDCO &amp; DEVOTRA B.V." floorArea="273.0" id="ba1003c3-628a-4b9b-ac62-ec18f40643b8" sector="ade50278-c890-4059-b8fd-f11567e993c2" originalIdInSource="0716100000289004">
        <KPIs xsi:type="esdl:KPIs" id="9b1b675a-6c00-452e-b901-321396ac8035">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="7c8bb1d7-0407-46a7-8c1d-77e9b4f9a2b5" value="3547.574660442616"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="939b6b19-fc06-4496-864a-a852e44e3733"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="def99c38-3206-4883-b70e-72cbf6fd3956" value="27606.30204347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="5285753f-fa1f-4b71-bccf-e54d6f01938e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="61c2bb03-3264-44d0-91fd-9ae7dbc31fbe" value="3547.574660442616"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="61b3b357-be7a-4077-a279-c513e128c5fa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="f6255f70-2470-4da4-ab0b-c69b8482a984" value="3547.574660442616"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="fd0d317a-af21-4050-8ce6-81b5034457cb" value="27606.30204347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c3e4f53e-c61d-4548-b08d-052eb8fc611f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="62819db6-5055-497a-8fc6-1f531ce8bc02"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="b900f598-6b87-46e0-bee1-ebda9f9a80ee"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="38242483-c98b-40cb-ab83-3dd01bb6d529" value="27606.30204347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="b52bbeeb-ba47-42f3-a678-75b6ca23d1aa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="442c3fb2-f676-4531-871a-30c07acfc6c1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="96f6ff13-1787-41a7-8b1f-35dfd27d81bc"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="83633e73-8162-4ba7-a27d-e1d457727a3e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="fa7c9e95-dfab-4591-b1e8-598b6442ac4b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="460.5547259999835" height="6.08"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54531678376403" lon="4.226793511413665"/>
            <point xsi:type="esdl:Point" lat="51.545279722144265" lon="4.226692297486514"/>
            <point xsi:type="esdl:Point" lat="51.545248139684105" lon="4.226606038588764"/>
            <point xsi:type="esdl:Point" lat="51.54508807760693" lon="4.226756606320205"/>
            <point xsi:type="esdl:Point" lat="51.54501160598748" lon="4.226828237831301"/>
            <point xsi:type="esdl:Point" lat="51.54508068924884" lon="4.2270165205757655"/>
            <point xsi:type="esdl:Point" lat="51.54515689434672" lon="4.226944290558079"/>
            <point xsi:type="esdl:Point" lat="51.54531678376403" lon="4.226793511413665"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a8e85f64-868c-4981-a607-18b6cae10976">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="0507dbc4-9f70-4d61-8167-8f8b9fee1f43" id="387c9940-efa5-467b-9876-079fd45c6a45">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="597bb6ed-70af-4bb9-b3ce-7d4548b3e0ba" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09938268735652174" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="32aca1fa-eeb6-45a2-a452-ef52a29b7bec">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="69a9128f-90cf-4f65-b205-a3e041321dc8" id="d1656445-44b4-401a-b9f8-193d912ba0ce">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="7a8fa1d7-d007-4744-b8f6-a6fa0820be71" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11228073800300878" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="ef12def2-a97e-466f-aa71-3dbd47d041f3" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1120f966-997b-4960-bd8f-92481f8ae5e5" id="dea2d44d-6c17-4e09-a76d-03246996ed06"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="69a9128f-90cf-4f65-b205-a3e041321dc8" connectedTo="d1656445-44b4-401a-b9f8-193d912ba0ce"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="5f613baf-d887-4211-9b2b-f2bce91650ee">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="0507dbc4-9f70-4d61-8167-8f8b9fee1f43" connectedTo="387c9940-efa5-467b-9876-079fd45c6a45"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2da7806a-657a-4376-9ac3-be7034292eba"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b5a1b57a-e1bc-4b29-9a77-b440cb4c1062">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1120f966-997b-4960-bd8f-92481f8ae5e5" connectedTo="dea2d44d-6c17-4e09-a76d-03246996ed06"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="8c06db1e-0892-4ca1-80f5-779b07a1e190"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="10622" buildingYear="2005" name="Pand van Allied Mineral Products Europe B.V." floorArea="7165.0" id="227f6c4e-3797-43c0-8237-489174b12f20" sector="eb9afe19-40a3-4a91-99b0-1fcc49ad0e98" originalIdInSource="0716100000142855">
        <KPIs xsi:type="esdl:KPIs" id="759831d7-b423-4a2c-96ea-f7ef150ca461">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="880bc6ba-af41-492b-abba-5d16a22ea80a" value="55557.81862999184"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="dcf3ef17-c73a-43b6-96b9-d6636df8dd68" value="1267890.129096378"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="395be90b-db62-46c4-add8-3f46298775e3" value="354045.16857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="34576fd1-55f1-4c2d-8da1-a6740395ed16" value="2601953.3218939793"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="330c2491-36c4-43fa-87ac-37ead783ed17" value="55557.81862999184"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="83139138-41b7-4e34-be88-212f3a7de028" value="1267890.129096378"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="4c63cb0f-6059-4c91-9589-7807d182d9e5" value="1323447.9477263698"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="cc3c264d-c3d3-4078-b146-9c19c59ba4d4" value="354045.16857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="3b2d2ec2-2d73-4be8-8bb6-fde5a2569f85" value="2601953.3218939793"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="97063bdf-3056-439c-b1df-85814f170c9a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="679215f5-9f0f-469b-9be3-828b4b736783"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="c2171ec9-0903-4f01-beb4-ab922f5e2c5b" value="2955998.4904654077"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="992ef2dc-fe80-4986-b8d7-1c8e03de994c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="6a9c7cd8-2be5-441f-8611-337f38bd2e26"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="89a33ca5-f157-4801-81ee-8e81d4da7f3d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="dfbf16a6-03d6-4d69-8f19-4ff5317b9288"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="4a752a46-959e-4a4b-82f5-69d185d8a2f7"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="10622.506313498534" height="7.03"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.545832932665775" lon="4.227163383574443"/>
            <point xsi:type="esdl:Point" lat="51.545875155461765" lon="4.227278351314276"/>
            <point xsi:type="esdl:Point" lat="51.546012072422165" lon="4.227653285319289"/>
            <point xsi:type="esdl:Point" lat="51.54602334564548" lon="4.227684139327508"/>
            <point xsi:type="esdl:Point" lat="51.5459908374331" lon="4.227714683473942"/>
            <point xsi:type="esdl:Point" lat="51.54597938845677" lon="4.227683329354959"/>
            <point xsi:type="esdl:Point" lat="51.54595667537052" lon="4.227621135473585"/>
            <point xsi:type="esdl:Point" lat="51.545875760845675" lon="4.227697133443808"/>
            <point xsi:type="esdl:Point" lat="51.54589843694181" lon="4.227759227274"/>
            <point xsi:type="esdl:Point" lat="51.54593504240124" lon="4.227858955656512"/>
            <point xsi:type="esdl:Point" lat="51.54592993041388" lon="4.227863786203937"/>
            <point xsi:type="esdl:Point" lat="51.545949868730794" lon="4.227918135793528"/>
            <point xsi:type="esdl:Point" lat="51.545954971447316" lon="4.2279132766517895"/>
            <point xsi:type="esdl:Point" lat="51.54599149689266" lon="4.228013108243884"/>
            <point xsi:type="esdl:Point" lat="51.54607232118025" lon="4.22793705527763"/>
            <point xsi:type="esdl:Point" lat="51.5460608724063" lon="4.2279057154598885"/>
            <point xsi:type="esdl:Point" lat="51.54609344286353" lon="4.227875097727568"/>
            <point xsi:type="esdl:Point" lat="51.54624119641982" lon="4.228278766937615"/>
            <point xsi:type="esdl:Point" lat="51.54624290650805" lon="4.228277166216077"/>
            <point xsi:type="esdl:Point" lat="51.54678679637913" lon="4.227765619835433"/>
            <point xsi:type="esdl:Point" lat="51.54682557375238" lon="4.227729090409891"/>
            <point xsi:type="esdl:Point" lat="51.546903399628775" lon="4.227941582570089"/>
            <point xsi:type="esdl:Point" lat="51.54753076526592" lon="4.227351406168246"/>
            <point xsi:type="esdl:Point" lat="51.54742573870827" lon="4.227064893011915"/>
            <point xsi:type="esdl:Point" lat="51.54723037623622" lon="4.227249125189206"/>
            <point xsi:type="esdl:Point" lat="51.54715404479777" lon="4.227040602660651"/>
            <point xsi:type="esdl:Point" lat="51.54724957377994" lon="4.226950833888911"/>
            <point xsi:type="esdl:Point" lat="51.54721500124382" lon="4.226856746473472"/>
            <point xsi:type="esdl:Point" lat="51.54668398961331" lon="4.227355768086541"/>
            <point xsi:type="esdl:Point" lat="51.54659327875919" lon="4.227107750247904"/>
            <point xsi:type="esdl:Point" lat="51.54637575369883" lon="4.2265130287258055"/>
            <point xsi:type="esdl:Point" lat="51.54618140343687" lon="4.226695906726364"/>
            <point xsi:type="esdl:Point" lat="51.54621661467381" lon="4.2267918354349066"/>
            <point xsi:type="esdl:Point" lat="51.54583006738764" lon="4.2271554694905165"/>
            <point xsi:type="esdl:Point" lat="51.545832932665775" lon="4.227163383574443"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="f55ebdb2-17b0-4c0e-a6c6-12e668175297">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1ab76b3a-d878-40c3-8402-601252228883" id="52799de8-3fe6-44cd-98ea-7f838ad1744b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e18cfde5-98c4-46ff-91a7-a26886df46d0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.274562606857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="b171a026-51c3-41cc-87d7-8720441d8c95">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1ab76b3a-d878-40c3-8402-601252228883" id="31d94fc7-974c-4954-93ed-3a7d553798c4">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="10ce8f6f-bf12-4f96-b446-0821fe60c548" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="9.367031958818325" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="7e21f547-fd91-4070-a623-f8451005f366">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="da7546be-3c7f-43f3-b700-0f81c359482d" id="76d289b3-f287-4b7b-b56e-b8094d35a888">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="23878c89-b437-4680-9c63-6987b70ea1e5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.7584049596392417" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="ba495925-ee7d-4400-b53f-e5663a37c23a" name="Gasketel" id="c6507cfd-ac8b-490e-8ef7-9a57b89551ea" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="a093a811-6c59-49d7-89c6-9fc5fb05fd32" id="a14ea0d3-1579-4a5a-a575-e3246e2db93d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="da7546be-3c7f-43f3-b700-0f81c359482d" connectedTo="76d289b3-f287-4b7b-b56e-b8094d35a888"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="00f0ffea-a7fd-4e28-8c4e-060cca967d71">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="a093a811-6c59-49d7-89c6-9fc5fb05fd32" id="bfe4b244-b1c1-44cf-88fa-9277f29f542b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="898f10a9-4ed6-49a0-a210-18e052804954" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="40.12872258590037" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="3b3c1b14-0a7a-48fb-a860-af1268a63438">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1ab76b3a-d878-40c3-8402-601252228883" connectedTo="52799de8-3fe6-44cd-98ea-7f838ad1744b 31d94fc7-974c-4954-93ed-3a7d553798c4"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b3d3b89c-2bc9-47e0-8a8b-43fba2a221a2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="cd18b993-1f76-4f41-bcfb-4459bac1106e">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="a093a811-6c59-49d7-89c6-9fc5fb05fd32" connectedTo="a14ea0d3-1579-4a5a-a575-e3246e2db93d bfe4b244-b1c1-44cf-88fa-9277f29f542b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="6cedc848-02cd-45cb-9975-c92adf752481"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1407" buildingYear="2000" name="Pand van Zuneha/Slagersvleescentrale, Zuneha Holding B.V." floorArea="1337.0" id="76421a21-23f6-4e54-a1b2-fb64fa5b388d" sector="b13cf999-a694-4a64-b2d5-44e4ba2d909e" originalIdInSource="0716100000213576">
        <KPIs xsi:type="esdl:KPIs" id="7441db16-ba16-45ee-8f24-dda582555fb3">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="94543172-393b-47e3-8cfd-2a0bfe1bce29" value="9288.037855563567"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="c87aeadc-ef64-49fa-b2f8-4e78e2c9f715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="4546cd27-3f7e-45a7-b4d6-ed4387765b14" value="57195.714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="35377707-6467-4067-b468-e8d2d9e200fa" value="3451.0911705599938"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="1835ab5a-e5dc-45f2-8d98-845ddcc32947" value="9288.037855563567"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="d7532c8c-bb9b-4b13-a278-e2e194d9a4cf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="f7cc5395-d351-4324-8908-3d9f95ac1c45" value="9288.037855563567"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="1e9a4a6f-a79c-432f-8bd9-9bd4f7f79c42" value="57195.714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9eef66cf-55d2-43c9-b768-9fdd20c65921" value="3451.0911705599938"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="c6abf7d3-d59a-4681-8f40-c02a4881cba3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e68fb702-eda8-477e-a422-d12f3c12478e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="5a23c0af-cdb0-4aef-b251-01faaa3150be" value="60646.805170559994"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="95176593-2f29-4b72-a17a-98c8019de778"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="295f120f-a29e-4bd8-972d-050a35748193"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="94a8adc6-faf6-4433-a7d8-a1f4d6e85c4d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="becde089-a244-4215-a27a-12fc252fbcde"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="8932314e-22ef-4b9f-b388-9615ea3cfb01"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1407.0435349999914" height="5.31"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.546587367467" lon="4.2285161171093115"/>
            <point xsi:type="esdl:Point" lat="51.54659239046742" lon="4.228511375340947"/>
            <point xsi:type="esdl:Point" lat="51.54655574491311" lon="4.228412078555509"/>
            <point xsi:type="esdl:Point" lat="51.546653025863236" lon="4.228321202277614"/>
            <point xsi:type="esdl:Point" lat="51.54666658334031" lon="4.2283585154037695"/>
            <point xsi:type="esdl:Point" lat="51.54667798422056" lon="4.228347872671814"/>
            <point xsi:type="esdl:Point" lat="51.54668516518843" lon="4.228367657982891"/>
            <point xsi:type="esdl:Point" lat="51.54668478217287" lon="4.228368013777956"/>
            <point xsi:type="esdl:Point" lat="51.54670773853498" lon="4.228431212053008"/>
            <point xsi:type="esdl:Point" lat="51.54670812155074" lon="4.228430856258293"/>
            <point xsi:type="esdl:Point" lat="51.54671897115748" lon="4.228460712493861"/>
            <point xsi:type="esdl:Point" lat="51.546718579297455" lon="4.228461082931703"/>
            <point xsi:type="esdl:Point" lat="51.5467415356095" lon="4.228524281301073"/>
            <point xsi:type="esdl:Point" lat="51.54674223031626" lon="4.2285236292027255"/>
            <point xsi:type="esdl:Point" lat="51.54675375468155" lon="4.22855535699222"/>
            <point xsi:type="esdl:Point" lat="51.5467753344141" lon="4.228544094227384"/>
            <point xsi:type="esdl:Point" lat="51.546775592341945" lon="4.228544722028249"/>
            <point xsi:type="esdl:Point" lat="51.546845959705614" lon="4.228508295845875"/>
            <point xsi:type="esdl:Point" lat="51.54684554084982" lon="4.228506850337882"/>
            <point xsi:type="esdl:Point" lat="51.54683864536734" lon="4.228510414386311"/>
            <point xsi:type="esdl:Point" lat="51.5468318463222" lon="4.228476561954008"/>
            <point xsi:type="esdl:Point" lat="51.546832105662354" lon="4.2284764255793394"/>
            <point xsi:type="esdl:Point" lat="51.5468141795897" lon="4.228386555754937"/>
            <point xsi:type="esdl:Point" lat="51.546920714488266" lon="4.228286100109802"/>
            <point xsi:type="esdl:Point" lat="51.54678081580642" lon="4.227904889050383"/>
            <point xsi:type="esdl:Point" lat="51.54638801785565" lon="4.228274905992156"/>
            <point xsi:type="esdl:Point" lat="51.54650508492372" lon="4.228593821874858"/>
            <point xsi:type="esdl:Point" lat="51.546587367467" lon="4.2285161171093115"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="5195c1d0-90f3-4e46-981b-c5432a971e80">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f587729c-5d43-49d9-a6d6-6d4c9ca28728" id="5f2aa35c-cea3-4e8f-a200-f8f6c4e1b1ed">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6162076f-a6b9-4bf4-ab2a-d035f0dc77c6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2059045704" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="8d7ea13d-d0e7-40a0-bdc9-e01f979e491c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f587729c-5d43-49d9-a6d6-6d4c9ca28728" id="d246c62d-d292-4cc6-a6b5-fcfc31195e79">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d78a4215-2622-4dd9-b062-f6cec614829c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.012423928214015978" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="8f4cbc11-e816-4098-aba4-fdae6c46cc9a">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="879b1880-18ab-4c55-bf55-dabd2c7251e4" id="15636f8d-4d36-4383-8f55-c3bf48649bc3">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="99b15d47-4240-43a6-8bc9-2a470e2119a0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2939663981285869" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="9efd517c-e421-4f64-b974-525cd8295b3a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d3957f2a-2306-412e-9e5a-fb2a4e6075fc" id="71f27257-608d-4dca-881e-37da9fc3e621"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="879b1880-18ab-4c55-bf55-dabd2c7251e4" connectedTo="15636f8d-4d36-4383-8f55-c3bf48649bc3"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="8cbc2139-0e69-462f-9c88-1d7ae52131f8">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f587729c-5d43-49d9-a6d6-6d4c9ca28728" connectedTo="5f2aa35c-cea3-4e8f-a200-f8f6c4e1b1ed d246c62d-d292-4cc6-a6b5-fcfc31195e79"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="60cbe387-ae31-4352-a57f-e9d183844638"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="0abe7da3-53af-4028-8456-b4d49ab179af">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d3957f2a-2306-412e-9e5a-fb2a4e6075fc" connectedTo="71f27257-608d-4dca-881e-37da9fc3e621"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b4045a24-d68e-4a37-a3aa-b02a8a96c2b1"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2601" buildingYear="1997" name="Pand van De Buren Onroerend Goed B.V., De Buren Coating B.V., De Buren Holding B.V." floorArea="2472.0" id="652f2f6a-6e06-4f6a-910f-3dea1b6b85bf" sector="f9ee83f4-372d-4936-a455-1c9e39cd96c1" originalIdInSource="0716100000072096">
        <KPIs xsi:type="esdl:KPIs" id="b6119acc-1f3e-42c3-b72d-6ee4c3d8de4b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="03caf2af-eda8-4aed-acd6-a9c5c17b2253" value="16218.577424715973"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e6c4f5ea-6e6e-412a-83a8-0c975bb95a4c" value="58899.618818600546"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="9096ef8a-22e7-4f30-b4ac-8a373e5876f2" value="112800.18514285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="2f8e7355-2306-41fb-84cc-f2c6dd00b65c" value="333876.75131106423"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="147de169-29c2-42f5-b49b-150f0fd35c72" value="16218.577424715973"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f393c96e-b669-406d-97e9-f035514d926a" value="58899.618818600546"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="77ae2e0a-5de3-4ab6-af2b-a0311fd24bbc" value="75118.19624331652"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="17908903-4336-48aa-bb8d-46047749b735" value="112800.18514285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="18d88eda-350f-4a4a-828a-72cfd87c55c0" value="333876.75131106423"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="de37c9a6-18e1-46a2-8eb7-74eb0fb32cfd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="0398d8c4-142c-4dc4-a56d-ef127cef2856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="8ad5346c-8181-4238-84a0-2ff3e2b34987" value="446676.9364539214"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="034e3b99-67c4-47f4-b4da-56ba47dad4ec"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="fb11a0d1-f819-4aa7-bd92-d5422a7fd3c2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="de71d726-c2fb-4b1f-8ee6-c05daa7c47e5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="75a42d52-c5dc-49cb-a55e-cf366da7312c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="ea18cbeb-4ee3-4a16-9177-afdc5dfe19a3"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2601.718376000212" height="6.57"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54645929632957" lon="4.229607336904761"/>
            <point xsi:type="esdl:Point" lat="51.54653008600866" lon="4.229800459465466"/>
            <point xsi:type="esdl:Point" lat="51.5465689526111" lon="4.229763799964299"/>
            <point xsi:type="esdl:Point" lat="51.546660086376015" lon="4.230012432062822"/>
            <point xsi:type="esdl:Point" lat="51.546853718327576" lon="4.22983003165195"/>
            <point xsi:type="esdl:Point" lat="51.5468765299585" lon="4.229892311837893"/>
            <point xsi:type="esdl:Point" lat="51.54697464157891" lon="4.2297998742372735"/>
            <point xsi:type="esdl:Point" lat="51.546951793379016" lon="4.229737537223434"/>
            <point xsi:type="esdl:Point" lat="51.54712908915681" lon="4.2295703578660255"/>
            <point xsi:type="esdl:Point" lat="51.54689893319896" lon="4.228942533880401"/>
            <point xsi:type="esdl:Point" lat="51.54673981290107" lon="4.229092281860625"/>
            <point xsi:type="esdl:Point" lat="51.54680814629828" lon="4.229278748772331"/>
            <point xsi:type="esdl:Point" lat="51.546754441844804" lon="4.229329368564848"/>
            <point xsi:type="esdl:Point" lat="51.54650084614808" lon="4.229568403021778"/>
            <point xsi:type="esdl:Point" lat="51.54649765877195" lon="4.229559718329253"/>
            <point xsi:type="esdl:Point" lat="51.54647700383548" lon="4.22957904525772"/>
            <point xsi:type="esdl:Point" lat="51.546480182794184" lon="4.229587787832615"/>
            <point xsi:type="esdl:Point" lat="51.54645929632957" lon="4.229607336904761"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="87ee0983-fd4a-4593-b2bc-0e4c397240a7">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="0d54b1d3-eb10-4126-a797-7ebac0c29514" id="f0226013-bb11-48a4-8f9d-8c7293f26950">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="de00f830-6a24-49d2-ac3f-274838d210ef" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.40608066651428576" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="d44e7718-c354-4a73-972d-a4d9523fa973">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="0d54b1d3-eb10-4126-a797-7ebac0c29514" id="a552392d-9e71-437f-9f8b-694cb306281e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="952cac1a-edd2-4752-862d-83cbe26d4419" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.2019563047198314" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b63f2fc9-f11c-4866-8b46-0036cb9933e9">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7d18c62f-c90a-4de5-a815-4aad9822f21f" id="045def7b-e5f9-42ee-9b32-8fa6c3f33135">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="da7c0f97-40d5-49ad-ac75-d91ac1225000" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5133179754922605" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="873dc3f6-74a4-4993-8056-f0d5b999cf85" name="Gasketel" id="bdfecc94-8c1f-42e3-b94a-8310ce161dd5" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="5047f8df-0719-4acc-a0ba-98d39c763709" id="ce76db6a-f4b0-4b44-acc1-f79ad1694640"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7d18c62f-c90a-4de5-a815-4aad9822f21f" connectedTo="045def7b-e5f9-42ee-9b32-8fa6c3f33135"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="3a2eeed1-7c81-47dc-aaa4-bf8eb8cb4500">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="5047f8df-0719-4acc-a0ba-98d39c763709" id="91472c05-8655-4969-ab95-d90eddd058ec">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="99ad8cdc-cfbc-4e50-8a2c-60e491427d37" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.8641729356087071" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="e9c8719c-7586-4464-b26d-6bb86018fbfd">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="0d54b1d3-eb10-4126-a797-7ebac0c29514" connectedTo="f0226013-bb11-48a4-8f9d-8c7293f26950 a552392d-9e71-437f-9f8b-694cb306281e"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="eaf3f409-afa0-425b-a066-17727dfb6f67"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="28f98bdb-93a8-44be-bcbe-718470fd4fc4">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="5047f8df-0719-4acc-a0ba-98d39c763709" connectedTo="ce76db6a-f4b0-4b44-acc1-f79ad1694640 91472c05-8655-4969-ab95-d90eddd058ec"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="eae658d5-375a-464e-9051-29370a68e443"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="641" buildingYear="2006" name="Pand van Timmerwerken van der Male, Aannemersbedrijf van der Male B.V., Mr. K.J. van den Dool B.V." floorArea="300.0" id="8cae66d0-f2b1-4f05-bd04-1d8d53df4ec0" sector="c95c4019-3af8-489b-981a-c7da5377ef2a" originalIdInSource="0716100000035310">
        <KPIs xsi:type="esdl:KPIs" id="f8e15029-6a2b-4b46-ad68-ae9fdfceaf47">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="aa8297a0-ac0e-4a52-9bd6-25f351316420" value="2441.4776482127263"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f8e6394e-72cc-471a-b604-d820b1dc6c77"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="47372882-2c42-45f6-9b62-9c9099431218" value="14079.942857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="45aa1da7-53a4-48e1-8968-d3e3781a7b3e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3f9d952b-c44f-4dbd-ba61-2ef54b5c1761" value="2441.4776482127263"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="a8786d14-647f-43a1-aeb9-893712ce95fb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="cb729ef0-e600-4e2b-bc7c-33dcb325ff91" value="2441.4776482127263"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="909ef0b0-7222-40ad-b047-7536ce392ee3" value="14079.942857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="97bb7253-7499-4781-9c30-bfd15e6db861"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8fb24792-754b-4032-8a46-143d1d49f3b9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="cf475c6b-b618-4c05-b64d-a60b97346a71"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="45a32311-187e-422c-a66c-2bf236e126ae" value="14079.942857142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="a99a1a33-6a67-4a94-a0c9-a7bc267c4b81"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ac733276-48af-484c-b08e-64e3f33f04f8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="0d3da539-7601-42e4-8475-7208c9e6d8f2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b2e6a39b-4ed7-493a-8d8c-2db2389c0c7f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="52d44291-82d4-4e63-aa03-295ca5acc988"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="641.9952489991032" height="5.98"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.546992973531616" lon="4.228100530821931"/>
            <point xsi:type="esdl:Point" lat="51.54704092127128" lon="4.2282317781582375"/>
            <point xsi:type="esdl:Point" lat="51.54708887785131" lon="4.228363025543129"/>
            <point xsi:type="esdl:Point" lat="51.54713682529746" lon="4.228494273435155"/>
            <point xsi:type="esdl:Point" lat="51.54725467329704" lon="4.228383378554706"/>
            <point xsi:type="esdl:Point" lat="51.547206770518734" lon="4.228252114880558"/>
            <point xsi:type="esdl:Point" lat="51.547158858606515" lon="4.228120851713346"/>
            <point xsi:type="esdl:Point" lat="51.547110955534606" lon="4.227989588594474"/>
            <point xsi:type="esdl:Point" lat="51.547063043328826" lon="4.227858325982586"/>
            <point xsi:type="esdl:Point" lat="51.54694501665814" lon="4.2279692839928105"/>
            <point xsi:type="esdl:Point" lat="51.546992973531616" lon="4.228100530821931"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="531fd8ba-6853-41ab-8679-434bf084767d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="298b84f0-b375-4202-8add-4d40af1c80bc" id="76196758-e520-47c7-9857-6ae877bd63b9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="99b3dbd4-5ba2-42fe-9fee-23261fa44b7f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.050687794285714294" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="873d2af8-21f0-4f6b-bc52-0825f283ac95">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="4ceace2f-183c-48fb-893e-76dcf5d64cf0" id="bf95bdd5-4555-4012-baba-ebcc0568fc7b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="bdbe1aab-8e21-4755-8436-9d7930732b1d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07727276756593278" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="a35312f4-5852-410a-8ae2-8a31305b6f0b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="96162c12-6b1f-4301-9bd5-d281eb346ddd" id="ee6cf9fb-7b67-4173-bf65-86327f1666fb"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="4ceace2f-183c-48fb-893e-76dcf5d64cf0" connectedTo="bf95bdd5-4555-4012-baba-ebcc0568fc7b"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="1459b725-35bd-4edb-906c-7d01281d0064">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="298b84f0-b375-4202-8add-4d40af1c80bc" connectedTo="76196758-e520-47c7-9857-6ae877bd63b9"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b0d22d3c-c72a-45c6-bb00-ef48cdd44b05"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="a57a69f8-f63a-4a12-9948-d45de623bf0c">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="96162c12-6b1f-4301-9bd5-d281eb346ddd" connectedTo="ee6cf9fb-7b67-4173-bf65-86327f1666fb"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="a9f7a45a-7f72-47b7-a557-ecda013c9d17"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="730" buildingYear="2006" name="Pand van Vrotech, Dexon Technology Europe, V. O. F. Klasen-Oppenneer" floorArea="360.0" id="9faf9604-d0c1-460b-88b6-131861823282" sector="de449109-82be-48c2-912f-518e068a112b" originalIdInSource="0716100000283555">
        <KPIs xsi:type="esdl:KPIs" id="72cdd414-e5d7-4433-8e8a-e6463c3512d8">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b64b1acf-87be-46af-bcf3-7373314010fc" value="2120.2494775509967"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="47bbbedd-87b6-4113-bb7d-2cf1ba00ca09"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d86dc012-a8df-4395-a58d-842ecab4593c" value="16895.931428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="c15d99a3-896e-4529-ae63-71a12da692a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="65064e2c-8772-4c2a-b60d-c6b8d5427a49" value="2120.2494775509967"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="94bbe672-a35f-465c-9e0a-ccdbdec9aeb9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="fed6eb80-c3da-439f-84da-4bfab511ae1c" value="2120.2494775509967"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="099dad04-7b13-47d6-81b9-b6b38dab37dc" value="16895.931428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="460ba16b-8f21-4580-b687-99d8617bbfeb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="2beab7ba-25dd-4f2d-ab0f-53613d49207e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f761a0c1-b325-4d80-a5e1-60f3d208803e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="801408ed-5d34-455e-847f-d5665946185f" value="16895.931428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="128d158f-530b-4f01-a867-dfa4ffcee440"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4f834b48-df96-4a83-bbe5-c430a2d724c4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="7d01dc57-d810-4d15-a85f-3fa0f7c96034"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="18e08004-4818-4793-9fee-a80aa24ca128"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="719c89f9-15dd-491b-aa79-b45df45be369"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="730.0664069993285" height="6.01"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.547527022920974" lon="4.227421774843018"/>
            <point xsi:type="esdl:Point" lat="51.547449271505855" lon="4.227494926825688"/>
            <point xsi:type="esdl:Point" lat="51.54737152888784" lon="4.22756806391356"/>
            <point xsi:type="esdl:Point" lat="51.547293777235645" lon="4.227641200979797"/>
            <point xsi:type="esdl:Point" lat="51.54721602567948" lon="4.227714352209169"/>
            <point xsi:type="esdl:Point" lat="51.54713827393327" lon="4.22778748877324"/>
            <point xsi:type="esdl:Point" lat="51.547192754540944" lon="4.227937485705263"/>
            <point xsi:type="esdl:Point" lat="51.54727067158147" lon="4.227864691121652"/>
            <point xsi:type="esdl:Point" lat="51.5473485795883" lon="4.227791896516982"/>
            <point xsi:type="esdl:Point" lat="51.54742649653564" lon="4.227719101432512"/>
            <point xsi:type="esdl:Point" lat="51.5475044044493" lon="4.227646306327012"/>
            <point xsi:type="esdl:Point" lat="51.547582321303445" lon="4.227573510741676"/>
            <point xsi:type="esdl:Point" lat="51.54766022912392" lon="4.227500715135335"/>
            <point xsi:type="esdl:Point" lat="51.547604774432045" lon="4.227348637023551"/>
            <point xsi:type="esdl:Point" lat="51.547527022920974" lon="4.227421774843018"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="faec891c-f0ee-45aa-96a2-1d35ca0fa78e">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5ef1a6d7-176d-4c0b-b81b-0ab22e5be689" id="fb9674f4-97e6-408c-aa68-8ee53d26c66a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6786cfc9-9db1-4499-8998-1a3b9fc442b8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06082535314285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="29828e6c-02ea-48d3-a7aa-7321cb3fe923">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="86f33835-2411-4bbf-9ed7-bbcfef1bd5d4" id="a8b14e3c-d3e0-4013-93e1-83dbc820afca">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="4df1d361-c71a-4feb-9d3b-f588af9d1bd7" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06710589596448904" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="b2925968-0df2-4082-b2ee-30c31db24515" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="449c8c9e-176a-40a4-80c3-9bdc5faec1a9" id="ecbd3253-3046-4b93-9b6a-afed183a217a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="86f33835-2411-4bbf-9ed7-bbcfef1bd5d4" connectedTo="a8b14e3c-d3e0-4013-93e1-83dbc820afca"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="a23fa7e2-c091-4f0a-b4ba-6648424bb242">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="5ef1a6d7-176d-4c0b-b81b-0ab22e5be689" connectedTo="fb9674f4-97e6-408c-aa68-8ee53d26c66a"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="92d8971b-b0fc-4a5c-8091-dba1c99ec9a2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e6117942-9d6e-4c0c-8b26-68dcef40b19a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="449c8c9e-176a-40a4-80c3-9bdc5faec1a9" connectedTo="ecbd3253-3046-4b93-9b6a-afed183a217a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="33724107-b10c-4865-b33f-498db2de557a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1293" buildingYear="2005" name="Pand van Classico Parket, Autogarage Cramer, Florade Tuinen, BeautyQueen, Aarnoudse Installatiebedrijf" floorArea="614.0" id="0d721302-d0e0-4237-8829-ecd3de98f657" sector="bf8b0fb0-8902-4923-bf66-1f50d801e3ae" originalIdInSource="0716100000177177">
        <KPIs xsi:type="esdl:KPIs" id="ab14c690-fceb-4a6c-9940-0669bdffb521">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="16e675fa-b008-4583-9f9f-95fb4482c235" value="4365.150160165333"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="db7b0730-43dd-444e-96ea-d475ba18339c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="fe0c57a1-a7d0-44f2-b182-7e4525bc5e0b" value="28816.949714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="419de25e-109a-4c1d-a086-0e5e6250af2a" value="64.66503428571286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="9ab75cfa-fd2d-41ca-8c33-f050f9cb8396" value="4365.150160165333"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="ba6f9e5b-1f4f-4e9b-bec8-c3744eb1e242"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="45d4590f-d8b2-4248-a652-ef5ee5d00ae4" value="4365.150160165333"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="7e14d7e2-27e5-4a65-ac4c-454a043597f7" value="28816.949714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="16712698-fb2b-4503-9c70-cddaa1042245" value="64.66503428571286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="c0ac3bf0-8b9f-4ae0-a41a-9755e8ea3f60"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4f38baec-30e8-4034-8d37-c3a8c124bba5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="d81aa32f-9af2-4bdb-8826-756d42b702f6" value="28881.61474857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="26b9e374-3d66-4af1-b2bb-76eddbe40a60"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4406e877-d492-49e9-a53a-9c784700e9d9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="7b41037e-91c2-4bdf-94dd-5337a701fa7c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c604f9db-5a51-4634-a2e1-7e3f7ebe2e05"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="e69dec4f-fb59-44c4-82bd-3f90d787f104"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1293.2001160002724" height="5.970000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54736029368307" lon="4.228244189929158"/>
            <point xsi:type="esdl:Point" lat="51.54740615912636" lon="4.228369436066873"/>
            <point xsi:type="esdl:Point" lat="51.54752075031024" lon="4.228261910580375"/>
            <point xsi:type="esdl:Point" lat="51.547542758168134" lon="4.228321918954964"/>
            <point xsi:type="esdl:Point" lat="51.547621595953935" lon="4.2282476735979255"/>
            <point xsi:type="esdl:Point" lat="51.54769904428182" lon="4.2281747322175525"/>
            <point xsi:type="esdl:Point" lat="51.547776492562974" lon="4.228101790587754"/>
            <point xsi:type="esdl:Point" lat="51.547853548938726" lon="4.22802921915942"/>
            <point xsi:type="esdl:Point" lat="51.54779692854206" lon="4.227874646361924"/>
            <point xsi:type="esdl:Point" lat="51.54774030794189" lon="4.227720073950847"/>
            <point xsi:type="esdl:Point" lat="51.54766322508315" lon="4.227792675236502"/>
            <point xsi:type="esdl:Point" lat="51.54758575902114" lon="4.227865617667152"/>
            <point xsi:type="esdl:Point" lat="51.54750831088658" lon="4.227938559389621"/>
            <point xsi:type="esdl:Point" lat="51.547430844874" lon="4.22801151573561"/>
            <point xsi:type="esdl:Point" lat="51.54731503755487" lon="4.228120572133938"/>
            <point xsi:type="esdl:Point" lat="51.54736029368307" lon="4.228244189929158"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="ea6beee0-44b6-46cf-a6e3-f0f24e082b50">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="680b3af3-f04a-43b6-8cc4-1f714dd33283" id="871a63dd-36fa-497e-a304-e06678d2eeaa">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="4c782110-961e-4917-8e77-7e60524103a2" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10374101897142858" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="2d318833-d30d-431e-b541-25e447ddc38d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="680b3af3-f04a-43b6-8cc4-1f714dd33283" id="442c21ba-112b-4c9b-b800-ede5984b8e27">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="7974d833-7723-4f7e-9c10-8f35497a3e4f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0002327941234285663" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e57d3b02-2cb5-491e-96a7-48b38e46fbd9">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="85ee7b42-26bd-49cb-b70e-cb41b11fc61a" id="782028e9-39f7-4571-959c-d380439c2d05">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="dd037bd7-6b6f-422f-9742-6cd9d2418eb9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13815700256923277" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="d007cba5-f636-4ed7-97d3-e2b9d6f6933a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="0c708eca-8ace-44af-95a0-c4190184406b" id="c5ba54a1-a20c-444b-8238-7743ec5c48b3"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="85ee7b42-26bd-49cb-b70e-cb41b11fc61a" connectedTo="782028e9-39f7-4571-959c-d380439c2d05"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="a74ba14f-81d9-4843-af22-17fb66aa13ff">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="680b3af3-f04a-43b6-8cc4-1f714dd33283" connectedTo="871a63dd-36fa-497e-a304-e06678d2eeaa 442c21ba-112b-4c9b-b800-ede5984b8e27"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="3c1b9aed-9489-4b9e-b31f-51813ec0eecf"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="8e9fa199-eead-40eb-8d01-8c06df9691f3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="0c708eca-8ace-44af-95a0-c4190184406b" connectedTo="c5ba54a1-a20c-444b-8238-7743ec5c48b3"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="63ab4876-ae7d-40d0-ae13-6fdb5c8c16d4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="3746" buildingYear="2005" name="Pand van Emme-Lotte Beheer B.V., Bergen Stainless &amp; Steel Products B.V., A-Firm International B.V., Hy-Lok Benelux B.V., B &amp; J Holding B.V." floorArea="3647.0" id="de2b6408-499d-4adf-8847-f3e76c5dc409" sector="987db65d-aa70-4bfa-9f05-a65fc9ac2bb0" originalIdInSource="0716100000142879">
        <KPIs xsi:type="esdl:KPIs" id="230a451c-3c21-432c-915a-fecd853103df">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="3fd4bc1f-00b0-4819-b7aa-fc469d4a45a0" value="25397.512647327694"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="db46f2d5-2307-4ccc-9d1b-fc40a8d2efb1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="eeff6aa3-f965-475c-84d7-bebe014eff47" value="166416.77800000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="01c8eb75-1f38-45d2-b210-cff5c0adc84b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="9e24e22d-b147-4a63-9f5d-847c442d2c3e" value="25397.512647327694"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="90b3cb6a-eb32-4c80-8e67-f2e7aaef68b5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="dc28f455-3d61-4bf1-9f48-5b5038f408fa" value="25397.512647327694"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="19ecb16c-b9ac-4494-8e97-8b67108bfbd7" value="166416.77800000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c32819c1-ec19-400b-b1bb-4c5d7e06c217"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8038488b-aa16-410b-9c31-7e0a8c258dde"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="9466b831-109e-4cf5-8550-b97f191a96a7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="d2d56c32-afdd-45a0-a26e-d4f20ed66217" value="166416.77800000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="41df52dc-1694-4a2f-8a1b-754d4bee7179"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="b5109406-5df2-4282-ae44-55a5eeaef43a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="964a8edf-f36f-41d6-817e-6b63ec09d871"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="ace5cbd3-aa82-445a-a453-9d2bb4f7ae2c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="8f62b740-9418-4b12-bb54-8a5538478419"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="3746.720678499628" height="8.600000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54759222183843" lon="4.229071300107235"/>
            <point xsi:type="esdl:Point" lat="51.54735432417408" lon="4.229295118729584"/>
            <point xsi:type="esdl:Point" lat="51.54721772303774" lon="4.228922482042186"/>
            <point xsi:type="esdl:Point" lat="51.54702266329916" lon="4.229105803706008"/>
            <point xsi:type="esdl:Point" lat="51.547271199045156" lon="4.229785095063852"/>
            <point xsi:type="esdl:Point" lat="51.54770808923454" lon="4.229541559610051"/>
            <point xsi:type="esdl:Point" lat="51.547704401967515" lon="4.229529600122759"/>
            <point xsi:type="esdl:Point" lat="51.54774579868589" lon="4.229490640157608"/>
            <point xsi:type="esdl:Point" lat="51.54791961482941" lon="4.229327049169612"/>
            <point xsi:type="esdl:Point" lat="51.54767459226632" lon="4.228657825692024"/>
            <point xsi:type="esdl:Point" lat="51.547573631409335" lon="4.228752935107215"/>
            <point xsi:type="esdl:Point" lat="51.54757025894283" lon="4.228743721521668"/>
            <point xsi:type="esdl:Point" lat="51.54756994725156" lon="4.228744017829757"/>
            <point xsi:type="esdl:Point" lat="51.54755759637595" lon="4.228710522675442"/>
            <point xsi:type="esdl:Point" lat="51.5475654066301" lon="4.228703114509913"/>
            <point xsi:type="esdl:Point" lat="51.54755319212152" lon="4.228669774489595"/>
            <point xsi:type="esdl:Point" lat="51.54754530968672" lon="4.228677155663816"/>
            <point xsi:type="esdl:Point" lat="51.547527938591934" lon="4.22862964456812"/>
            <point xsi:type="esdl:Point" lat="51.54748870874041" lon="4.228666805300847"/>
            <point xsi:type="esdl:Point" lat="51.54748847791747" lon="4.228666191216146"/>
            <point xsi:type="esdl:Point" lat="51.547447562921" lon="4.228704750145684"/>
            <point xsi:type="esdl:Point" lat="51.547494785414855" lon="4.228833638950627"/>
            <point xsi:type="esdl:Point" lat="51.54750247927302" lon="4.228826277038682"/>
            <point xsi:type="esdl:Point" lat="51.54759222183843" lon="4.229071300107235"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="be447b32-7d6e-432b-ba7c-c763201d97c6">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2b83c9e6-b2ed-45e3-998c-4244be9400ea" id="e63d7ee1-cbb6-4ae9-bb4a-327ba77ef50a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="51dcb221-6f6a-48c9-8106-2aecd01fdf68" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5991004008" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="52acbdf8-6907-41f6-a203-53d15d30ee9f">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="3724b071-b7af-482e-98e0-63449e00f1dd" id="c908906f-272b-4cd9-a6b1-027261af8a04">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="3c908018-684d-45a6-9c22-99eec0f2fe2f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.8038312752879215" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="a9bbd9b6-cb61-445a-a364-64ea65a12abe" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="0205fb64-bf6e-48cf-b512-3ca78b27e8ba" id="ab0807a7-0ff0-45bb-91ef-7de09b06c92d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="3724b071-b7af-482e-98e0-63449e00f1dd" connectedTo="c908906f-272b-4cd9-a6b1-027261af8a04"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="1c6956c3-a8d4-4279-a111-89e2a26024a6">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="2b83c9e6-b2ed-45e3-998c-4244be9400ea" connectedTo="e63d7ee1-cbb6-4ae9-bb4a-327ba77ef50a"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="07a38655-31c1-4ec7-902f-e4d0a4a3e1d8"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="22801751-fb0a-4802-8ca4-056ddfe7cf26">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="0205fb64-bf6e-48cf-b512-3ca78b27e8ba" connectedTo="ab0807a7-0ff0-45bb-91ef-7de09b06c92d"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="e3baa60c-1bb6-431b-9094-6c07b4949a24"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="867" buildingYear="2006" name="Pand van Vishandel Schot-van Dijke B.V." floorArea="846.0" id="8f4d3daa-d60e-416a-b13c-da0f278c7340" sector="523b65c9-630b-489d-9e73-c9d55f1550a7" originalIdInSource="0716100000213795">
        <KPIs xsi:type="esdl:KPIs" id="eb6345f3-27f4-4f80-acbd-e6d3398034aa">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="685e5031-49c5-415e-a9c1-8c38b31c2c1a" value="6304.285958781692"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="1794b0f6-10ee-43a7-a71c-b49d09db0fde"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a55bf893-e846-4c11-a84b-c8c481b39f63" value="33621.006857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="f1c8ca60-681b-49a9-bac7-6f162d262223"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3601f4f9-f3f0-4ceb-bd25-f971e21a9da4" value="6304.285958781692"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e60c09b8-bdf1-4387-ade4-4517f2207a5f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="af2aabfd-b42d-4ac1-a71e-c8056ed94213" value="6304.285958781692"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="7bb8fd1d-8b3d-4f35-9a15-56276063261f" value="33621.006857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="70f9628a-233d-4598-ab1d-f9bcbffe4a4b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="c86cffd9-160e-4c0b-b715-f3a72694b826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="5a4567aa-0c06-49e0-a6f9-9585c7a89390"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="cab2c7bd-ba3d-4c9c-8dcb-f8031ac0df5f" value="33621.006857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="4b588b47-ec1d-449a-9e3b-5101176af7a5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="b2574a54-c095-43e9-b9e6-fadb96d2b2d2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="cd6638e1-b214-4780-af2f-7958b617e136"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="f1045e0b-5ba5-4723-bd32-e08101973bdc"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="11632a48-e678-4e56-abba-dd70fbab7e32"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="867.1616804998534" height="6.31"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5480398922048" lon="4.2287845728001665"/>
            <point xsi:type="esdl:Point" lat="51.5480815472174" lon="4.228898653724747"/>
            <point xsi:type="esdl:Point" lat="51.54816782502703" lon="4.2288177017548"/>
            <point xsi:type="esdl:Point" lat="51.54801097084199" lon="4.228389014213684"/>
            <point xsi:type="esdl:Point" lat="51.54777648799396" lon="4.228609867812294"/>
            <point xsi:type="esdl:Point" lat="51.54789136922761" lon="4.2289242073793645"/>
            <point xsi:type="esdl:Point" lat="51.5480398922048" lon="4.2287845728001665"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="fba9ff8d-467c-443f-93b5-af7eaf83c264">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="d67981b8-9765-430b-b517-49fc8c7a5eb5" id="34bca3fb-c369-4871-b228-c8923f0d4dd0">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="c87b200e-d99b-4af0-b05f-aa744e7a1e58" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.12103562468571431" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="1ea582c3-de83-4b50-ac43-6550c6c44e39">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="aee14680-5b14-41fc-b730-6f1c213db9cf" id="99996989-c705-47de-8a4e-94fc4d2bc8c8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="332e40a6-e2f3-4042-84d9-26a2994045aa" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.19953065059544053" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="65d89b76-32fc-4794-b84d-f5e607544353" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="dbcf9997-bc0c-4f81-a38f-0fd9fac6ca18" id="347bc281-085e-490f-bd47-5dfbc5e43a74"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="aee14680-5b14-41fc-b730-6f1c213db9cf" connectedTo="99996989-c705-47de-8a4e-94fc4d2bc8c8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="b145c1fe-5896-4fd6-afc5-60bea153da35">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="d67981b8-9765-430b-b517-49fc8c7a5eb5" connectedTo="34bca3fb-c369-4871-b228-c8923f0d4dd0"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="9272cc44-de0b-444f-8c56-b3b7cdadbf5b"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="0f8c113f-727a-4c8f-ba95-a55335e5825b">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="dbcf9997-bc0c-4f81-a38f-0fd9fac6ca18" connectedTo="347bc281-085e-490f-bd47-5dfbc5e43a74"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="8ddd3720-26f6-482e-b7dd-20b95dae85e1"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="575" buildingYear="2001" name="Pand van Deurloo Platsluus B.V., Aannemingsbedrijf P.J.J. Deurloo B.V., Holding Deurloo B.V., Platsluus B.V., Platsluus Ontwikkeling B.V., Marehoek B.V." floorArea="535.0" id="ac3ff982-a0b9-4c10-b09c-1e4f569ea900" sector="cdabd9e1-0528-48b8-9f51-40e4f342e8b1" originalIdInSource="0716100000142856">
        <KPIs xsi:type="esdl:KPIs" id="4f141dab-3732-48ba-a929-5c48b98deaf3">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4e35fa62-ab40-4ae0-9250-59bf96706ffa" value="3849.7935839470642"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="a127fe94-9dcf-42cd-b47f-25633acf16cd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3ff74cb1-b5e0-4dbe-9642-184a5a6be7aa" value="21261.51142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="12dd3997-8767-4fa1-8850-35e839fc0d77"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="78bf71e7-dc44-4a55-9916-71ec8d88b1c5" value="3849.7935839470642"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="319d696d-3c87-4241-907a-05a85efafb78"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9a46d9f4-a9e6-4129-8e6b-eca349af9598" value="3849.7935839470642"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="52a55b92-cad9-4305-944c-a6f9301a3e8f" value="21261.51142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="5f19228d-ce26-4fdf-9b31-8f8afa10c7b0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="89be2aad-28d2-48da-a28c-0d32e932f210"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c46d5148-d88d-43e9-9c45-ce528ae7b2fd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="80a1c4b5-9b29-4f25-81d9-25a9b7b026a9" value="21261.51142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="894e74ea-0ffd-475a-a904-2b47b1885db9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="0ef1b9b4-d0c3-48ad-9848-3c6fe198dfd5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="42aa8084-f696-4f90-8566-b190011b655f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="7c79153d-ef12-4797-aacb-0349dfb406af"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="76a9ada5-c5ef-49af-9d2c-e4b65180de19"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="575.2603859993724" height="6.0600000000000005"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54675206377602" lon="4.226748860986332"/>
            <point xsi:type="esdl:Point" lat="51.54664664534318" lon="4.226459249889139"/>
            <point xsi:type="esdl:Point" lat="51.546645166797504" lon="4.226460628512459"/>
            <point xsi:type="esdl:Point" lat="51.54664784679666" lon="4.226467985139602"/>
            <point xsi:type="esdl:Point" lat="51.54644652294366" lon="4.226656506871058"/>
            <point xsi:type="esdl:Point" lat="51.54644752103735" lon="4.2266592495549675"/>
            <point xsi:type="esdl:Point" lat="51.54645349728046" lon="4.2266536470202025"/>
            <point xsi:type="esdl:Point" lat="51.54655528311153" lon="4.226933257757038"/>
            <point xsi:type="esdl:Point" lat="51.54675206377602" lon="4.226748860986332"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="23143147-15fe-4b5e-a9df-6a128bfaa39a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="ca34f891-b63b-4521-b57e-e2b883c5e040" id="73a7d272-616f-4a1a-b237-b9bf43b13c82">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="10a2dcc5-42a9-4d22-9d41-682dfad50d41" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07654144114285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="31945d0d-53ef-434e-b625-d21da542397d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="600c0de2-f283-4ca7-b548-904490f9d192" id="7caba864-0f7f-4b14-9bdb-1d5edfb2d9dc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f8e814cd-6300-4117-a054-ac133cd182b4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.12184596693192458" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="2670da88-5197-43e9-a7d1-5fca04a10753" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="99eaacf8-3c27-4cef-b723-efe986ea89bf" id="ea06e7c5-b2d8-4cd8-9e86-bb6dfc59073c"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="600c0de2-f283-4ca7-b548-904490f9d192" connectedTo="7caba864-0f7f-4b14-9bdb-1d5edfb2d9dc"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="764918a4-bbbb-41bb-996f-0e27ae40c3fc">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="ca34f891-b63b-4521-b57e-e2b883c5e040" connectedTo="73a7d272-616f-4a1a-b237-b9bf43b13c82"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="f3864504-2097-4d19-933a-431423c2d869"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e5075d69-570c-419c-98f3-60bd4ab6a09d">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="99eaacf8-3c27-4cef-b723-efe986ea89bf" connectedTo="ea06e7c5-b2d8-4cd8-9e86-bb6dfc59073c"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="d63f7735-5c9c-42f0-9022-a718a0d81d14"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="7172" buildingYear="2001" name="Pand van ProAutNorm B.V., Prof Trade Steel International B.V." floorArea="6813.0" id="2e16799d-0e6a-43fa-94d1-72aee6f52749" sector="7d477dff-b218-4521-b7f9-8875f5421d9d" originalIdInSource="0716100000142219">
        <KPIs xsi:type="esdl:KPIs" id="da3eeea3-8eb8-4321-a619-bb70afc193bb">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="893ef205-cebe-406a-983e-ceedae34a77a" value="40027.21828615008"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="66177d09-429f-4c9d-b22d-e7fbaf72c704"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="f72c6300-a3b5-4bcd-84df-5dff52ae9f38" value="336651.74228571425"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="323a30fe-e625-4c21-b1d7-fa5009961992"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d959c4f2-b7c5-44db-b9e0-98fde02c9dee" value="40027.21828615008"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="34a5f598-12dd-496f-88f7-6c88cb49ba33"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="b2a69ef8-9286-4d70-8bd0-37905b283423" value="40027.21828615008"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="a6716546-020c-4d22-abb6-6e4a01f29dfa" value="336651.74228571425"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="028cdb0b-d9c5-4cb5-bd97-44da9790b0d0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="7907e50a-faff-46ad-9096-b85e30c43b67"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="610255bb-8777-4ef4-87de-35c9c651d953"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ae2541a4-a406-443b-be56-32fc48289fd2" value="336651.74228571425"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="d45bd6a2-9ab3-4e10-b8d5-10a2d0377462"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="0f0c76bc-1803-4df3-bbeb-d3bfe2ef1dd4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="338396d9-d4c7-4afc-9685-906c577ccc81"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e129e0a0-62b8-4242-a885-68aa04184b01"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="a3a52360-829a-4097-96b5-a3f2681b2ffa"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="7172.20914899864" height="7.88"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54826805556474" lon="4.227888431032303"/>
            <point xsi:type="esdl:Point" lat="51.54877559924572" lon="4.227413066699064"/>
            <point xsi:type="esdl:Point" lat="51.54831320742209" lon="4.22614254582332"/>
            <point xsi:type="esdl:Point" lat="51.54829807523206" lon="4.226156716402048"/>
            <point xsi:type="esdl:Point" lat="51.54822979886963" lon="4.22596925168796"/>
            <point xsi:type="esdl:Point" lat="51.54813340406743" lon="4.226059565676596"/>
            <point xsi:type="esdl:Point" lat="51.54811250437394" lon="4.226057821836006"/>
            <point xsi:type="esdl:Point" lat="51.54810319348463" lon="4.226087890973788"/>
            <point xsi:type="esdl:Point" lat="51.54798033746676" lon="4.226203002257831"/>
            <point xsi:type="esdl:Point" lat="51.54804873898666" lon="4.226390434255494"/>
            <point xsi:type="esdl:Point" lat="51.54780460234864" lon="4.226619143380122"/>
            <point xsi:type="esdl:Point" lat="51.54826713818571" lon="4.227889290700075"/>
            <point xsi:type="esdl:Point" lat="51.54826805556474" lon="4.227888431032303"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="d4ff33ef-febc-4a5a-b574-7853ab626177">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a6f69bb0-60f4-4841-a958-7c52fcce70d9" id="3121cf01-1478-4100-8a07-e62c83ce66f2">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="3a9fe6fc-b0e0-4210-a6fd-13a603009b13" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.2119462722285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="ddd38047-eed1-4a64-8a35-2ebbfa91f83e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="e1758407-58d2-4c19-81ed-64ccc653b07e" id="53663291-e286-449c-bfff-a15eb1cee7dd">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="5ff08e1b-7c60-4f7e-b3a5-cd416376a811" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.2668614587566498" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="1f9c647e-ce80-4d05-ae2e-10e2b254793b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="f6cff4d5-d849-40c1-99fe-03978a378f5e" id="2fc15b1c-3d49-4b90-9cc6-08babf5797a7"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="e1758407-58d2-4c19-81ed-64ccc653b07e" connectedTo="53663291-e286-449c-bfff-a15eb1cee7dd"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="dbc61db4-4f6f-4fd1-bdfd-4fb4db40ade7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="a6f69bb0-60f4-4841-a958-7c52fcce70d9" connectedTo="3121cf01-1478-4100-8a07-e62c83ce66f2"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="d237615b-0edf-4290-acf2-260793047e3e"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="f9b801c6-e686-4eb7-8226-e45ec59c4ace">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="f6cff4d5-d849-40c1-99fe-03978a378f5e" connectedTo="2fc15b1c-3d49-4b90-9cc6-08babf5797a7"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="f3d38771-2b14-4a8d-9ad7-0262da73b031"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1069" buildingYear="2003" name="Pand van B.J.C. Tools Tholen B.V." floorArea="1016.0" id="d20d9935-5a98-4761-8045-6cf34259b833" sector="3be265ae-68a9-40ed-aef9-e027a1b7cd89" originalIdInSource="0716100000106308">
        <KPIs xsi:type="esdl:KPIs" id="bf4216de-f229-486f-ae2f-759fd5b25df5">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="92ed49ca-7899-47ff-bcf2-928ee0bfebed" value="9148.388995005902"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e5195fca-4642-4026-a3eb-b64514f60d65"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d20f58bb-37a1-42b9-a4ea-11c9e5f16918" value="90501.20127536233"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="63451e3e-b6e3-40ad-a051-bd5e259363cd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="94a05d28-2b68-4820-9854-984fe5851f05" value="9148.388995005902"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="3be58581-26d0-4aee-aedd-7fc8539f5023"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="8ec7edbd-2187-4861-a9e6-dd6040ab09a9" value="9148.388995005902"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="4190247a-62b7-4fdf-81df-399ccd3fece7" value="90501.20127536233"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9c7f855f-51b5-4df2-b459-6a1dd3d23b1a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="354687af-107c-4679-a727-8f8b4bf2eb94"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="77160c8b-aeb2-4273-8ac6-67dcee15b209"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ee2312ce-0d06-4e20-aa95-c5e9bcc67e2f" value="90501.20127536233"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="92d1a8ad-38f9-4a5e-aa70-50e671eaa5a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="b549f6da-728b-467e-956e-7145ae3ea506"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="8305f0ee-d0ee-4b1d-8eee-173d5dab55de"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="26928a4d-9db6-43aa-b636-184cb8bb82ff"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="6092ab2b-97f8-433d-bb54-68faf6b63298"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1069.1301979995892" height="6.15"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54703131079698" lon="4.2265552044001815"/>
            <point xsi:type="esdl:Point" lat="51.547037714100895" lon="4.22657268818905"/>
            <point xsi:type="esdl:Point" lat="51.547056496988354" lon="4.226554993433549"/>
            <point xsi:type="esdl:Point" lat="51.547148298428446" lon="4.226554262721431"/>
            <point xsi:type="esdl:Point" lat="51.54714784686237" lon="4.226468978325252"/>
            <point xsi:type="esdl:Point" lat="51.54726982471275" lon="4.226354123020201"/>
            <point xsi:type="esdl:Point" lat="51.5471789949005" lon="4.226106106995382"/>
            <point xsi:type="esdl:Point" lat="51.54711319343953" lon="4.225924365242905"/>
            <point xsi:type="esdl:Point" lat="51.54688001391564" lon="4.226143838665054"/>
            <point xsi:type="esdl:Point" lat="51.54694689474294" lon="4.226324773656344"/>
            <point xsi:type="esdl:Point" lat="51.547012359810616" lon="4.226503481754643"/>
            <point xsi:type="esdl:Point" lat="51.5470124794981" lon="4.22655535392534"/>
            <point xsi:type="esdl:Point" lat="51.54703131079698" lon="4.2265552044001815"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="700399a4-822d-4525-9fa9-96858861a916">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="71309332-f4bd-48b7-b718-c9653f5c9b05" id="f7d96101-d08d-423e-9fdc-08ca1e891fbe">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="7f7e1c69-d267-4ebc-9c8f-4b019dbe7d66" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.32580432459130443" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="45808cf9-21a5-4da5-9beb-406f102fa04f">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="a441b818-8725-44b9-af07-713fb02f6bed" id="e0ba3dbf-da48-4a40-9702-62c7daa834a1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="35e352b9-db1f-4e7e-9232-abdc4efd47b6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.28954651169193674" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="45e90e20-973b-43df-81bb-c0459f3e9cd2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8bbd14b3-a735-4350-ab4a-19110f208a0f" id="73f51c6c-33ec-4ba1-a197-5165a83625f4"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="a441b818-8725-44b9-af07-713fb02f6bed" connectedTo="e0ba3dbf-da48-4a40-9702-62c7daa834a1"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="69fee111-c22b-4994-85b6-b6c21730afa6">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="71309332-f4bd-48b7-b718-c9653f5c9b05" connectedTo="f7d96101-d08d-423e-9fdc-08ca1e891fbe"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="55cb0b84-1e01-4a43-90d1-c17dc687aca6"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="6e5b2187-16a5-4c7a-9d75-50243a2a4b5d">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8bbd14b3-a735-4350-ab4a-19110f208a0f" connectedTo="73f51c6c-33ec-4ba1-a197-5165a83625f4"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="f4d09279-f99f-4f0f-a3de-fb3ad5436056"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="151" buildingYear="2001" name="Pand van Gès Advies, GOSSIE" floorArea="137.0" id="972582fd-5acb-4eab-9584-02218fa461cf" sector="d55ed7d9-c65a-46f7-b524-bbf8e5f7f44a" originalIdInSource="0716100000000599">
        <KPIs xsi:type="esdl:KPIs" id="1fad864a-eadd-4728-b490-83a7b10bc1b1">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b490c6aa-05c3-4cf3-a342-2ee81726fe34" value="1143.2457595592177"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e7b06702-653f-43c1-83c4-8ef6e14f01a8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3a27ce6a-5498-4aaf-a772-d8603fccf9d1" value="6429.840571428572"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="4de17d8a-ddbd-4c55-8e98-7cab42f1d8cd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="feab8b2e-b2c9-446f-8dc8-1080e7ffa66c" value="1143.2457595592177"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="a076b232-40f2-47b2-a858-5c61a16a4351"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="dcd27577-b9fd-441d-a5c1-4e93cc856b1b" value="1143.2457595592177"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="c3dc92e6-943a-4f15-aba8-660cbf172a59" value="6429.840571428572"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="e665d076-7a6e-4e96-a8b2-c1ddc6e27316"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="fd75b0e5-1734-4ac2-9131-e4dc48e6d175"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="83a691ac-df77-4c20-9640-e68983ae35cb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="af10532f-8274-4ba8-98dc-9fc234d3e1b0" value="6429.840571428572"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="eac47965-afa6-4f42-a371-1854cb1d6e45"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="5d0df6ba-f62a-497f-9c9d-c1abe4c16316"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="5e65ec7d-6bdb-4247-805b-7b8592c0095d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="344a4fb8-2783-459c-9488-411c174c0852"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="60638ff0-2b84-4603-8412-6ce218750f83"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="151.31897500003586" height="2.98"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.547966811325615" lon="4.2256939997469605"/>
            <point xsi:type="esdl:Point" lat="51.54791211305092" lon="4.225545003320364"/>
            <point xsi:type="esdl:Point" lat="51.54781131738001" lon="4.2256402024857564"/>
            <point xsi:type="esdl:Point" lat="51.547829564237624" lon="4.225689780980597"/>
            <point xsi:type="esdl:Point" lat="51.54783776643598" lon="4.225682030610297"/>
            <point xsi:type="esdl:Point" lat="51.54785148695299" lon="4.2257193830194755"/>
            <point xsi:type="esdl:Point" lat="51.54784328475213" lon="4.225727133385412"/>
            <point xsi:type="esdl:Point" lat="51.54786606931253" lon="4.225789182905219"/>
            <point xsi:type="esdl:Point" lat="51.547907463339634" lon="4.22575007525701"/>
            <point xsi:type="esdl:Point" lat="51.54790290819479" lon="4.225737662411896"/>
            <point xsi:type="esdl:Point" lat="51.54791490423518" lon="4.225726325858297"/>
            <point xsi:type="esdl:Point" lat="51.54791945938123" lon="4.225738738705536"/>
            <point xsi:type="esdl:Point" lat="51.547966811325615" lon="4.2256939997469605"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="4913063f-bfd9-406c-b8fc-37d155c7dc69">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="aa6b70aa-01d1-46f4-8b4c-11ca29909805" id="4f9cb2d2-cb8a-48cb-8780-f8e1a7b94e2c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e92dfdf0-9167-4180-84a8-0a78c5e3e7a9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.023147426057142862" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="90ddfd9a-c2d4-488e-82d3-78d7c4b1ea93">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="ecd922b4-1584-4f43-aee4-d75e641b256f" id="c8d6f93a-a66b-4fc8-abb7-f80e03ce9589">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="7fab0cdf-1b4a-4ffe-9cae-5db1d0f12637" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03618372829004924" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="02870ec1-acb7-4c10-aa38-62c05d36f368" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1f37fbe8-e26b-4ace-9451-a7a8e35fbe5b" id="6467244b-9e40-47b7-a314-3c4e2a0b3bca"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="ecd922b4-1584-4f43-aee4-d75e641b256f" connectedTo="c8d6f93a-a66b-4fc8-abb7-f80e03ce9589"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="469492a3-9755-45d4-bff9-e46ec5f3a495">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="aa6b70aa-01d1-46f4-8b4c-11ca29909805" connectedTo="4f9cb2d2-cb8a-48cb-8780-f8e1a7b94e2c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="7c55f573-f5bd-4ebc-9135-86cc2a4d1f48"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="3aee9984-be7a-48b9-a792-b2bbd5944aa0">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1f37fbe8-e26b-4ace-9451-a7a8e35fbe5b" connectedTo="6467244b-9e40-47b7-a314-3c4e2a0b3bca"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="6d136ab8-5d04-4194-88da-3e4a9837ad48"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="352" buildingYear="2000" name="Pand van Amilco Benelux B.V." floorArea="327.0" id="e8150dc9-804e-4ea5-9c63-fadb878f884a" sector="8a0652c4-4212-4f5c-b523-aebe193c55c1" originalIdInSource="0716100000213577">
        <KPIs xsi:type="esdl:KPIs" id="a2e86924-430a-4862-a5c2-48cccf41c384">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="1277d6d7-289c-4156-848d-f2beadb62031" value="2700.4565723000555"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="bc836132-65b6-4a96-b271-a8a4ed12192a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="106f4c39-77e0-428e-845d-2594e033442a" value="15347.137714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="98d7d455-0c4c-4629-9da9-78a55148950b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3cb4a9d4-ce37-44e7-b246-b0ffbcd1206d" value="2700.4565723000555"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="91848ecc-3f2e-4936-b749-c6c8ebcb8bea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="769fa3a0-b59b-42af-b31a-46b9b3939210" value="2700.4565723000555"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="90b600c4-906a-4e10-835d-21066ea1b408" value="15347.137714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9d569bb2-58e3-4172-9fe1-4d91404c2262"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="086680e7-21e9-4159-a9e8-c7af8f4daec4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="247d1883-4dba-4ddc-9607-0786782dbb3a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="5172fc0b-75ce-4a45-a3d3-7a7a17ce9fe2" value="15347.137714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="f5f6b297-b9ff-4b3e-a0cd-be2bdb4697cf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="c9de5803-08ef-488e-b02d-4211595cb4fc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="56ce516c-876d-473c-8d6e-97a780242424"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="4f10c276-3c04-4196-aff0-c2c896cc7864"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="6fc2ab49-5558-4742-981a-c0ad07b79d72"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="352.1340755002224" height="6.98"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54685506606497" lon="4.225791717284851"/>
            <point xsi:type="esdl:Point" lat="51.54701098623941" lon="4.225645110101237"/>
            <point xsi:type="esdl:Point" lat="51.546931162675676" lon="4.225427409903184"/>
            <point xsi:type="esdl:Point" lat="51.54677534191974" lon="4.225574043872311"/>
            <point xsi:type="esdl:Point" lat="51.54685506606497" lon="4.225791717284851"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="922a6c82-2635-4259-a5f1-6e105d6533ad">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a71c6817-fe8b-4201-84fb-cfd1ccb5b005" id="a1d0ebbd-2ce0-4b27-85b6-21887c9c114f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="36a145b9-c359-4e4e-a7a2-5771e1d4c01f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.055249695771428575" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="83b142e3-0b06-42f9-a86f-6ea221da84c0">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="72a08473-2811-40aa-86f5-ee3a553c2814" id="bafc7ece-af6a-454a-bd9c-c2c41317d0ae">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="dd4a98e5-50bf-4200-b96c-3c6ec7fb14ad" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08546945051329675" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="3fb5db0a-18af-4608-b3bf-d231d90de166" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="68ce37c0-c098-4b5c-bd9a-4c4196551c6c" id="f773b3d2-d606-4c1c-9300-7a54a0977e2a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="72a08473-2811-40aa-86f5-ee3a553c2814" connectedTo="bafc7ece-af6a-454a-bd9c-c2c41317d0ae"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="ddc9506d-ed3c-4ea7-a4c4-8a1c3e4d91c0">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="a71c6817-fe8b-4201-84fb-cfd1ccb5b005" connectedTo="a1d0ebbd-2ce0-4b27-85b6-21887c9c114f"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="c0c824c5-92d2-474d-be00-54c298b1cb7a"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b6ddd7d8-22c2-491b-8ced-76e80be082b8">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="68ce37c0-c098-4b5c-bd9a-4c4196551c6c" connectedTo="f773b3d2-d606-4c1c-9300-7a54a0977e2a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="be75d7a6-b4ca-4730-a171-cddb597cc98b"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="462" buildingYear="2001" name="Pand van Cosmetic Industries" floorArea="430.0" id="cf88d124-1e31-4dcb-958f-86732b1d016e" sector="71a01aad-e119-4b1e-a94c-9d374a809fc7" originalIdInSource="0716100000248835">
        <KPIs xsi:type="esdl:KPIs" id="a668c2be-a2f0-437f-93b2-2ac765fd68e9">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b28537b1-fdcd-4a57-88e6-f24aacef3ab1" value="3730.362148433281"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="24d35d46-ddce-473b-8c28-d0ee6b165e3f" value="242093.69156886416"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="04fb356d-28eb-4cc4-aac4-bc556693f071" value="20181.251428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="281ee84f-2021-430c-9430-d0004cf7b12e" value="545343.9505146286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="7a404172-dcdc-42e4-89dd-06dcd6965962" value="3730.362148433281"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="4e225e34-9e0a-445b-b617-975553887301" value="242093.69156886416"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="49d5f437-32be-46bd-9056-a5f9e8afa8d2" value="245824.05371729744"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="66f3b8b3-1c3e-4cbf-b602-74c61e0bdbae" value="20181.251428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="189e3fd0-20cb-4685-ac8b-d276064c2174" value="545343.9505146286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="83c6d027-8763-4e2f-bf82-f031c5bc9fd5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c987d393-0893-4cc4-b303-c9e62f54d7db"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="4384ecf8-a659-4592-9b26-fb194c59691d" value="565525.2019432"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="f1f2031f-8cbe-4003-b760-cddd693a1b02"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="3c088357-ce0f-44cd-b6a4-a7f08b655198"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="bd17f97d-cc55-4a58-b42d-721eb39af465"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="632933e4-a503-4868-bc06-273d1927361b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="556f84b6-b4b7-45ab-90a0-34e034bf0935"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="462.0244910002385" height="6.21"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54762543698468" lon="4.225165744687295"/>
            <point xsi:type="esdl:Point" lat="51.547763397727344" lon="4.22554191452678"/>
            <point xsi:type="esdl:Point" lat="51.54788168379143" lon="4.225430148523632"/>
            <point xsi:type="esdl:Point" lat="51.54774350843113" lon="4.225054127711422"/>
            <point xsi:type="esdl:Point" lat="51.54762543698468" lon="4.225165744687295"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="148a3df6-ed83-4d31-9069-3a4315c5ccb8">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="9230149f-7ecf-48a4-8f42-68adca4174ef" id="ed030a11-0bc7-4bf4-aa91-3aa1ea4cff6c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="61302b1f-b5a0-4743-9580-f52a2d956b69" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07265250514285715" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="48a64148-e8fe-4b16-b95a-72fc99da5ba0">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="9230149f-7ecf-48a4-8f42-68adca4174ef" id="0712f9f4-c486-453a-839c-b86d0c2fc09f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="527c4bf4-3ac9-460c-b7ac-80de1a4391eb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.9632382218526627" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="71e108eb-68de-434e-83df-474b496da36c">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c7dc73e9-105d-4161-a7f0-21cc559c2f1d" id="5f950601-d712-426f-8ad5-a23722db14fb">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="dc2e4e77-b8af-4c0e-b68b-f2e730b80344" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11806596199791335" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="1b611a22-f12a-456b-8e37-7583b038343b" name="Gasketel" id="9b6b43f7-8e7f-40f6-ab89-834f932aa039" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="357866fa-23b6-4d8b-a8a1-f3680ede8cda" id="216ab856-48d3-43a1-8c9b-f5b7ba720efd"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c7dc73e9-105d-4161-a7f0-21cc559c2f1d" connectedTo="5f950601-d712-426f-8ad5-a23722db14fb"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="24e92b67-0d46-4238-88e3-b753e9d780dd">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="357866fa-23b6-4d8b-a8a1-f3680ede8cda" id="00836fbd-fd18-4e04-8f0b-cfaa4a35937c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="b2d70ae7-9247-44d8-81da-e015e98e9496" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="7.66226533815455" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="ec3f5920-5d86-4c33-8694-ad2d722c5972">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="9230149f-7ecf-48a4-8f42-68adca4174ef" connectedTo="ed030a11-0bc7-4bf4-aa91-3aa1ea4cff6c 0712f9f4-c486-453a-839c-b86d0c2fc09f"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5ff873ce-3f58-4628-999c-49a0a4c6b91d"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="aa4fe205-b633-4e0d-b8da-5317a360f074">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="357866fa-23b6-4d8b-a8a1-f3680ede8cda" connectedTo="216ab856-48d3-43a1-8c9b-f5b7ba720efd 00836fbd-fd18-4e04-8f0b-cfaa4a35937c"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="64ec992c-2c0e-48a3-98fa-1537ab30283a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1375" buildingYear="2004" name="Pand van OG Building B.V., PIA Automation B.V., Streetplug B.V., Tec4rec B.V., Brainwave B.V." floorArea="1307.0" id="4efe15f8-60e8-4c5c-8da9-5ab159f8860d" sector="8aa2008e-a165-4bd6-9cc9-fe559743ff3d" originalIdInSource="0716100000035370">
        <KPIs xsi:type="esdl:KPIs" id="97517ea5-cd44-457e-9f98-d6951bc04822">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="007857ba-cf15-40a2-8f01-c136ce3457d0" value="11555.470000931451"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="bbade2ed-e956-4c9f-b2e0-cf152ef6ae88"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e003fb54-61cf-4393-944b-b0a0a90a28f6" value="116422.313057971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="41bd7e2d-9a33-4e6a-966f-2a161f1d3b26"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="858460fb-7bef-4f76-b5c1-aee37af6cab9" value="11555.470000931451"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="1d8c9fed-29bd-4abd-adf9-e5c6426e3a57"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="625d5366-af84-4a08-b33b-0685d1e71815" value="11555.470000931451"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="f6061303-942f-4833-ba52-4138f9697e17" value="116422.313057971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="f10fe323-bd70-4a91-b552-9afbf065d862"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="9bb00961-237c-4d4c-a654-549880913143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e9a8cb30-5cb2-47b6-8d55-5c8af9e1b966"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="6f501e0c-64cd-4013-86f0-5711b7b608c7" value="116422.313057971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="009bc674-3f40-4a6c-b7bf-70d45a25dcf5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9a30ba24-c5f1-4524-90ed-e94f9984deb5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="13967f55-e421-40b2-ac34-d6704a79a674"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b705004d-306d-4d97-b396-1b0649c8cc60"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="9b4a6b5b-04cf-4fe9-873f-6f291c629f9b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1375.779527000138" height="6.7"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54641968738346" lon="4.224866395623062"/>
            <point xsi:type="esdl:Point" lat="51.546303540968815" lon="4.224976316956086"/>
            <point xsi:type="esdl:Point" lat="51.54635840674212" lon="4.225125807780334"/>
            <point xsi:type="esdl:Point" lat="51.546350390585125" lon="4.2251332793039404"/>
            <point xsi:type="esdl:Point" lat="51.546477986829395" lon="4.225480522282735"/>
            <point xsi:type="esdl:Point" lat="51.54674901516177" lon="4.225224453121356"/>
            <point xsi:type="esdl:Point" lat="51.546621277470095" lon="4.224876621276967"/>
            <point xsi:type="esdl:Point" lat="51.54661376102341" lon="4.2248837196609275"/>
            <point xsi:type="esdl:Point" lat="51.54655894518071" lon="4.224734760461223"/>
            <point xsi:type="esdl:Point" lat="51.54641968738346" lon="4.224866395623062"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="63deb733-88d8-4ea1-9691-5943202f41f5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="91d5c1be-2640-4edc-a142-3bdb15396c65" id="0a57a653-4a2e-41ec-8186-314e4aee3354">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="f0cb4081-dfff-4ff3-b193-c6b520231a57" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.41912032700869556" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="521862ab-7f69-44df-a262-4c3aefae69e0">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6c4105f6-21e2-41be-827a-38d3f84b44c0" id="d20a5142-2658-437c-913f-208760fe715c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="692dfab6-52fa-4167-8498-b843b9142761" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.3657306255294804" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="3dd4d891-c175-4ff1-ae01-578e28f4665d" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="39ee4f28-7219-4d23-93bb-a4f86cf20933" id="35169540-bead-4a27-8fd7-b590822832ae"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6c4105f6-21e2-41be-827a-38d3f84b44c0" connectedTo="d20a5142-2658-437c-913f-208760fe715c"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="7e2d1f5a-4c35-49e3-84e3-785dd1602ba8">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="91d5c1be-2640-4edc-a142-3bdb15396c65" connectedTo="0a57a653-4a2e-41ec-8186-314e4aee3354"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="7ba8d6dd-287e-4496-8bdc-e4e9024a64d4"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e879f620-b036-4813-968d-6cad125b1439">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="39ee4f28-7219-4d23-93bb-a4f86cf20933" connectedTo="35169540-bead-4a27-8fd7-b590822832ae"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="74b337a4-ba6b-4e56-8292-0b0eff7f0840"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="528" buildingYear="2000" name="Pand van Kaashandel Bakker Tholen" floorArea="492.0" id="bd4758b4-4aea-475a-93db-54305de9da01" sector="244d8534-4252-4bf0-8c9b-d88af8aae33c" originalIdInSource="0716100000178474">
        <KPIs xsi:type="esdl:KPIs" id="7644febf-4f54-4105-9aa8-ca388b77da9f">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="9cfbde24-6e33-4b01-985b-40e255d69e6d" value="4230.2234851712665"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="5af46371-e206-4c8a-9cc0-5545afe4b9b1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="79a04037-87b5-4a23-abc8-55844c3568ff" value="23091.106285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a17ac949-e7af-402c-8d33-7c47402610e9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="361cc84e-ddac-4058-982c-f86313ed74ed" value="4230.2234851712665"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="6e6c941f-40ff-4cb0-9263-3bebf5bbac85"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="2dd57942-a65e-449d-ab7c-23e0b478ffaa" value="4230.2234851712665"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="763633c5-970a-4c59-93ee-0cb7ec55f941" value="23091.106285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="3c92fd44-ab85-4708-ba94-b3909b6c01a1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="341cdc0f-6b4c-4515-882a-2f3c9b137b9b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="95327854-8528-4d69-acaa-7386490d9c15"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="2273d583-a8c7-4cc8-8c2a-ff5ff279046d" value="23091.106285714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="5b95a52e-387c-4208-a653-9481c5b1a45c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4af154e0-bd4d-4bea-962d-08d088eab792"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="92b03b4f-f818-4393-96c2-bac9f91336fd"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="55dfda6c-fb1c-4bf7-88ef-5f8fa391f98f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="b02c161e-4274-4dd0-b715-1f865a83c727"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="528.9629044995609" height="4.94"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5476614289552" lon="4.224491402206833"/>
            <point xsi:type="esdl:Point" lat="51.547526409550024" lon="4.224618030762894"/>
            <point xsi:type="esdl:Point" lat="51.547526187692974" lon="4.224617416468423"/>
            <point xsi:type="esdl:Point" lat="51.547503369649185" lon="4.224638805555071"/>
            <point xsi:type="esdl:Point" lat="51.54751654706615" lon="4.224674844827236"/>
            <point xsi:type="esdl:Point" lat="51.54751701023731" lon="4.224674414853153"/>
            <point xsi:type="esdl:Point" lat="51.54757304663087" lon="4.224827685693653"/>
            <point xsi:type="esdl:Point" lat="51.54757583421825" lon="4.2248250623822265"/>
            <point xsi:type="esdl:Point" lat="51.54759891773939" lon="4.224888199211077"/>
            <point xsi:type="esdl:Point" lat="51.54758295821545" lon="4.224903227397115"/>
            <point xsi:type="esdl:Point" lat="51.54758204340176" lon="4.22490072765751"/>
            <point xsi:type="esdl:Point" lat="51.54757212208352" lon="4.224910064835418"/>
            <point xsi:type="esdl:Point" lat="51.54757308297947" lon="4.224912678739406"/>
            <point xsi:type="esdl:Point" lat="51.547545099954604" lon="4.224938986614728"/>
            <point xsi:type="esdl:Point" lat="51.54756850613452" lon="4.225002937027386"/>
            <point xsi:type="esdl:Point" lat="51.5475668852462" lon="4.2250044635481245"/>
            <point xsi:type="esdl:Point" lat="51.54757196764284" lon="4.225018362209866"/>
            <point xsi:type="esdl:Point" lat="51.54757430989296" lon="4.225016154007169"/>
            <point xsi:type="esdl:Point" lat="51.54758351364542" lon="4.2250413230191874"/>
            <point xsi:type="esdl:Point" lat="51.54757422466665" lon="4.225050067270093"/>
            <point xsi:type="esdl:Point" lat="51.54758745501981" lon="4.225086018853263"/>
            <point xsi:type="esdl:Point" lat="51.547662507622164" lon="4.225015526783591"/>
            <point xsi:type="esdl:Point" lat="51.547665712592845" lon="4.225024138845085"/>
            <point xsi:type="esdl:Point" lat="51.54766501804921" lon="4.225024805424507"/>
            <point xsi:type="esdl:Point" lat="51.54766638455363" lon="4.225028432637645"/>
            <point xsi:type="esdl:Point" lat="51.54772681289483" lon="4.224971651190465"/>
            <point xsi:type="esdl:Point" lat="51.547725399302635" lon="4.224967808908562"/>
            <point xsi:type="esdl:Point" lat="51.54771649347806" lon="4.22497621178463"/>
            <point xsi:type="esdl:Point" lat="51.547680708064114" lon="4.224878738845054"/>
            <point xsi:type="esdl:Point" lat="51.54768713811807" lon="4.22487267735089"/>
            <point xsi:type="esdl:Point" lat="51.54767017410434" lon="4.224826483575287"/>
            <point xsi:type="esdl:Point" lat="51.54767086879024" lon="4.224825831407101"/>
            <point xsi:type="esdl:Point" lat="51.547669408967266" lon="4.224821860555271"/>
            <point xsi:type="esdl:Point" lat="51.547657030010285" lon="4.2248335531177235"/>
            <point xsi:type="esdl:Point" lat="51.54763391237516" lon="4.2247706045424955"/>
            <point xsi:type="esdl:Point" lat="51.54773029002249" lon="4.224679568339967"/>
            <point xsi:type="esdl:Point" lat="51.5476614289552" lon="4.224491402206833"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="f849e896-d6bb-4046-ba3a-4f5953085185">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="3158ea3e-7002-4aa6-b8ff-50513b430825" id="f29d68c7-3095-4f40-a037-ba8606449b45">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="afb88a49-6f5e-436b-b221-3a4b88e1e2ce" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08312798262857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="8727084c-60a5-44f5-a8ca-c8c2411d33b8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6686ea38-ca9b-4edf-8604-5378891c5176" id="ffa9efcf-b62d-472b-bdac-c6b2e993faf5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="c6fe467c-040a-4894-9096-5dfd8be427db" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13388657330567058" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="62cde949-d437-469a-b8f5-49bd9af3de00" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ff6854e5-04ea-4087-8c39-9f66e0d8d1d1" id="cc4c7eb8-cd56-45d8-a201-64443cf3df6a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6686ea38-ca9b-4edf-8604-5378891c5176" connectedTo="ffa9efcf-b62d-472b-bdac-c6b2e993faf5"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="c6754933-a5c7-4968-9213-ddf907921c92">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="3158ea3e-7002-4aa6-b8ff-50513b430825" connectedTo="f29d68c7-3095-4f40-a037-ba8606449b45"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="68e9afc3-c849-431b-9ac0-e405851f62d4"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="be04b483-3d9f-401b-81f3-4f412ef65a9e">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ff6854e5-04ea-4087-8c39-9f66e0d8d1d1" connectedTo="cc4c7eb8-cd56-45d8-a201-64443cf3df6a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="a2a73201-0b6d-498b-bf39-ef8d5ebf8c22"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="201" buildingYear="2002" name="Pand van Borgesius Tholen B.V." floorArea="194.0" id="a36a3213-9052-4c91-8854-b3d9dd979b52" sector="116367ed-8ec1-42a0-9e18-fea05535a779" originalIdInSource="0716100000178475">
        <KPIs xsi:type="esdl:KPIs" id="6e74b905-067a-4c94-98e6-631e73f76062">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="7a271e73-cc93-4770-9da2-6a245400a025" value="1736.5312067587806"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="da899d86-8b0b-4580-81c7-afb203da07db" value="13558.85728920915"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="7cd6b3e8-14ad-4783-8177-bc880be39d72" value="9105.029714285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="db322119-cada-4b21-9a4a-8e4909b6d91b" value="61361.33781103356"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="4c018caf-bc92-4174-8ee6-f6dd402c2c3f" value="1736.5312067587806"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="30162a94-bb16-4057-80ae-c4a6c3e44d4e" value="13558.85728920915"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="30c5c4ef-2bcd-40d2-b3af-8736159b35ad" value="15295.38849596793"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="f246a8e5-1a97-40ad-919e-3620a35e6447" value="9105.029714285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="2c76115b-82d7-455e-9b5f-6d74b7e01d90" value="61361.33781103356"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8cd4f93a-0288-4dc4-8a57-65cd65ff0510"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4316f3c3-261d-4a63-b28b-1ea25449e0be"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="87c40032-0068-49b1-b521-e07827c9f775" value="70466.36752531928"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="de85b086-df5b-407f-b768-6c28690b5ca6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="e7f5f56e-baa4-4727-b9c9-3a311e98f83b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="e600de12-77c7-4335-ae2b-1cb3b1af413b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="eb45c882-fa8c-4b1d-b629-7774d235d718"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="87341636-e31f-4753-9f34-076e6aabb22b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="201.43524200006163" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54747669437171" lon="4.224293313315808"/>
            <point xsi:type="esdl:Point" lat="51.547478143934384" lon="4.224297154635295"/>
            <point xsi:type="esdl:Point" lat="51.547484752409304" lon="4.224290958756408"/>
            <point xsi:type="esdl:Point" lat="51.54748932711584" lon="4.2243035150239505"/>
            <point xsi:type="esdl:Point" lat="51.54748891686459" lon="4.224303842721179"/>
            <point xsi:type="esdl:Point" lat="51.54752045508739" lon="4.224390004497911"/>
            <point xsi:type="esdl:Point" lat="51.54752292271479" lon="4.224387749801853"/>
            <point xsi:type="esdl:Point" lat="51.547521084938914" lon="4.224382837066064"/>
            <point xsi:type="esdl:Point" lat="51.54752637394036" lon="4.224377741899096"/>
            <point xsi:type="esdl:Point" lat="51.54754452007396" lon="4.2243855244716455"/>
            <point xsi:type="esdl:Point" lat="51.547550248136275" lon="4.224401064597787"/>
            <point xsi:type="esdl:Point" lat="51.547552724750965" lon="4.224398809670788"/>
            <point xsi:type="esdl:Point" lat="51.547550959159324" lon="4.224393923919537"/>
            <point xsi:type="esdl:Point" lat="51.547559091095685" lon="4.22438634817589"/>
            <point xsi:type="esdl:Point" lat="51.547559359323806" lon="4.224387105462437"/>
            <point xsi:type="esdl:Point" lat="51.54759202598128" lon="4.2243563086934675"/>
            <point xsi:type="esdl:Point" lat="51.54759057498611" lon="4.224352323219356"/>
            <point xsi:type="esdl:Point" lat="51.54758761808877" lon="4.22435509507477"/>
            <point xsi:type="esdl:Point" lat="51.54758280312467" lon="4.224341881698211"/>
            <point xsi:type="esdl:Point" lat="51.54761612138223" lon="4.224310621242027"/>
            <point xsi:type="esdl:Point" lat="51.547615853297046" lon="4.224309878369313"/>
            <point xsi:type="esdl:Point" lat="51.54762276446529" lon="4.224303386364583"/>
            <point xsi:type="esdl:Point" lat="51.54762303269399" lon="4.224304143651692"/>
            <point xsi:type="esdl:Point" lat="51.54763072769873" lon="4.224296925097079"/>
            <point xsi:type="esdl:Point" lat="51.547632178695785" lon="4.224300910572921"/>
            <point xsi:type="esdl:Point" lat="51.547634627199656" lon="4.224298541011974"/>
            <point xsi:type="esdl:Point" lat="51.54761097922391" lon="4.22423381848146"/>
            <point xsi:type="esdl:Point" lat="51.547608503329684" lon="4.2242361454919335"/>
            <point xsi:type="esdl:Point" lat="51.54761026849759" lon="4.224240988000216"/>
            <point xsi:type="esdl:Point" lat="51.54760391849984" lon="4.224246961016594"/>
            <point xsi:type="esdl:Point" lat="51.54758971483453" lon="4.224208078892083"/>
            <point xsi:type="esdl:Point" lat="51.54759002651423" lon="4.2242077825528295"/>
            <point xsi:type="esdl:Point" lat="51.5475840754193" lon="4.2241915128300676"/>
            <point xsi:type="esdl:Point" lat="51.54757865161946" lon="4.224196611476512"/>
            <point xsi:type="esdl:Point" lat="51.54756680449461" lon="4.224164185980198"/>
            <point xsi:type="esdl:Point" lat="51.54756727650752" lon="4.224163741356046"/>
            <point xsi:type="esdl:Point" lat="51.547559828321035" lon="4.224143372018612"/>
            <point xsi:type="esdl:Point" lat="51.54755736055491" lon="4.224145612315455"/>
            <point xsi:type="esdl:Point" lat="51.54755915340521" lon="4.224150526195969"/>
            <point xsi:type="esdl:Point" lat="51.54753195395897" lon="4.224176064739985"/>
            <point xsi:type="esdl:Point" lat="51.54751702919076" lon="4.2241351826467515"/>
            <point xsi:type="esdl:Point" lat="51.54751457041194" lon="4.224137422711808"/>
            <point xsi:type="esdl:Point" lat="51.54751630747487" lon="4.224142150582233"/>
            <point xsi:type="esdl:Point" lat="51.547508488381645" lon="4.224149545337442"/>
            <point xsi:type="esdl:Point" lat="51.54750821116487" lon="4.224148788283254"/>
            <point xsi:type="esdl:Point" lat="51.54744920227691" lon="4.224204539378324"/>
            <point xsi:type="esdl:Point" lat="51.54745061603754" lon="4.224208396027246"/>
            <point xsi:type="esdl:Point" lat="51.54745348363419" lon="4.224205684128669"/>
            <point xsi:type="esdl:Point" lat="51.54745808516771" lon="4.224218225274411"/>
            <point xsi:type="esdl:Point" lat="51.54745770230838" lon="4.22421859552474"/>
            <point xsi:type="esdl:Point" lat="51.547478308182576" lon="4.224274817028456"/>
            <point xsi:type="esdl:Point" lat="51.54747869104211" lon="4.22427444677843"/>
            <point xsi:type="esdl:Point" lat="51.54748333736037" lon="4.224286972373506"/>
            <point xsi:type="esdl:Point" lat="51.54747669437171" lon="4.224293313315808"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c61f51bf-fdec-4fbc-8fbf-e5eae7a315e1">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fb3f30b5-6162-49e0-8dcd-f2756ea30801" id="65d563d0-13fe-4ba8-bb64-05e60089ee29">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="5d6db5c9-35dd-463b-a5bb-d51f334d2ec6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03277810697142858" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="30db714c-a428-4cef-ba02-c6a705455ebd">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fb3f30b5-6162-49e0-8dcd-f2756ea30801" id="e9fde47b-220f-463f-9420-f92bd101222a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="207c9c2c-6375-4b8c-a62a-1378977b7253" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.22090081611972084" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b9aef463-a41f-4145-8404-6fe6cb564451">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="1b4aba30-0ebb-4d69-a683-759edfec0c82" id="0e26c395-d050-4fd8-9901-c0affc52cf22">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="bcb4eff4-d29a-47d4-b7c1-c08de996444f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.05496121269391541" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="b48c23b1-5707-4623-a6c2-a660ddc0e988" name="Gasketel" id="c569f1d5-6a05-4f61-a1f0-a4fe4a5a63ca" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8554194f-5bfb-4349-8641-28ec96c20e05" id="f2566dc3-9fba-48ac-ad29-2f36a7745d39"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="1b4aba30-0ebb-4d69-a683-759edfec0c82" connectedTo="0e26c395-d050-4fd8-9901-c0affc52cf22"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="cc2c72d6-29e3-44b0-a6e5-44e01a931f71">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8554194f-5bfb-4349-8641-28ec96c20e05" id="971eb235-8654-49f0-ad33-800c4dd979d4">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="c5e0755c-dcee-4386-9aab-5fb05fcee859" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.4291378332034696" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="2746711c-4340-400e-b4e0-233d4dbdb008">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="fb3f30b5-6162-49e0-8dcd-f2756ea30801" connectedTo="65d563d0-13fe-4ba8-bb64-05e60089ee29 e9fde47b-220f-463f-9420-f92bd101222a"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b5248065-caa9-428f-aca5-9d3c241d7ab2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="4ddfe174-961b-403e-a533-ee9698698555">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8554194f-5bfb-4349-8641-28ec96c20e05" connectedTo="f2566dc3-9fba-48ac-ad29-2f36a7745d39 971eb235-8654-49f0-ad33-800c4dd979d4"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="786af115-d42e-467e-8f36-55b6b665ed44"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="256" buildingYear="2004" name="Pand van Zeevishandel La Mer" floorArea="233.0" id="1d6a80bb-7edd-46d4-910c-ced913ad99d2" sector="365e5ad7-2c2c-4f33-b77a-b37ab241173f" originalIdInSource="0716100000107393">
        <KPIs xsi:type="esdl:KPIs" id="b3995206-4b9a-4835-9078-3e5ac5638f65">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="79a9be21-4016-4200-98a5-3fe8be50a4a7" value="1861.6186949303906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f55673a5-b50a-415a-b9ca-87cb103b342d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a29351d5-aac5-4253-aad3-d62a9899423f" value="10935.422285714287"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e7012d35-fb34-4e8e-973a-599015f0c0e7" value="37002.381213645705"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="db99a014-8160-4d6a-9e70-0c7fa1c538f7" value="1861.6186949303906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="c7b17c1b-60d9-4bf6-b110-7f160bf35fe0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="3628a9f2-7c66-445b-97de-2a6269e295f2" value="1861.6186949303906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="4693fbc1-55ea-48d0-9b78-b2e138341b34" value="10935.422285714287"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9b167e4a-0d50-441b-9846-ca5c1155af1d" value="37002.381213645705"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f42fbc6b-0b1c-4bd0-a2aa-539fb6f7cfd9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="18462e27-35e7-4ef8-b9d7-66f146c982b7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="9048b582-89b5-4ecd-a102-3994820a3666" value="47937.803499359994"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="87c8ac88-731d-4933-b19e-4a3c6a1b5028"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="7db4c6d0-843d-4849-8189-d4a819349b94"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="669695c4-3458-41c4-b84c-0aa0808a99b8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a858c9e0-fa98-4051-bdbe-52bdc6b8bdd5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="29810337-2425-4d8d-9195-85c38f26a6fb"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="256.42452750025274" height="5.44"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54759948291599" lon="4.22585824116691"/>
            <point xsi:type="esdl:Point" lat="51.54756035349862" lon="4.2257516546283025"/>
            <point xsi:type="esdl:Point" lat="51.547560691570546" lon="4.2257512999532265"/>
            <point xsi:type="esdl:Point" lat="51.54754236754157" lon="4.225701190235224"/>
            <point xsi:type="esdl:Point" lat="51.54746339146079" lon="4.225775832730561"/>
            <point xsi:type="esdl:Point" lat="51.547578217776476" lon="4.2260892994283346"/>
            <point xsi:type="esdl:Point" lat="51.547657007763476" lon="4.226014907154268"/>
            <point xsi:type="esdl:Point" lat="51.54759948291599" lon="4.22585824116691"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="1d34eb41-6698-475a-8d78-9ce31ce27ca5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="cde1f6ba-318c-4693-8061-bfbdc555abbb" id="931cb310-5dff-4e3f-ae8b-e3ef8078057c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6adb5a15-93cb-4737-ac4b-b1d938eee843" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.039367520228571436" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="192279aa-a624-42cc-9c0c-469af40b0242">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="cde1f6ba-318c-4693-8061-bfbdc555abbb" id="8f987733-fa78-49b3-af4d-614913a962ec">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="c278dedb-45ac-408d-a250-aa844f94c0a8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13320857236912453" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="f678ad33-14d2-46f0-800a-9f64ee371ee9">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="1232043a-9edd-4d97-9c59-d4fb8289f545" id="d4ec1007-a3fa-4276-aa27-4ae5d0334e27">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="6fb01c0e-557f-4905-ad81-32e43fa60d12" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.058920231694546854" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="c8c1bdad-bc33-40c3-afe2-fafb2f3e1a9b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="51df647c-5c16-4a32-a1da-50af7d36a1e4" id="094c61e8-d396-4d0b-bded-918918848f69"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="1232043a-9edd-4d97-9c59-d4fb8289f545" connectedTo="d4ec1007-a3fa-4276-aa27-4ae5d0334e27"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="14b27f5c-b17e-4403-9625-26150d85a6ba">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="cde1f6ba-318c-4693-8061-bfbdc555abbb" connectedTo="931cb310-5dff-4e3f-ae8b-e3ef8078057c 8f987733-fa78-49b3-af4d-614913a962ec"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="76122d05-3178-4091-812d-9916fb7cee99"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="a4c135aa-584e-444b-860c-5d14e678a9e0">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="51df647c-5c16-4a32-a1da-50af7d36a1e4" connectedTo="094c61e8-d396-4d0b-bded-918918848f69"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="854434a0-d173-4ee3-9f00-b390eea052c7"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="357" buildingYear="2004" name="Pand van Vishandel Bert Eskes B.V." floorArea="333.0" id="4a87e66a-d3d9-43a6-9bad-2da9b85e20eb" sector="9f34e7d3-16cd-4419-a907-42499087f496" originalIdInSource="0716100000001089">
        <KPIs xsi:type="esdl:KPIs" id="8855b715-7dd7-4ba9-8775-8a00f1a27b47">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="e4d7c0ff-ce73-4e85-bd75-9533b5bd3e09" value="2474.1019233178836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="ae3f12e0-7348-4144-b4c9-d386f6495b6e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="062c878b-9202-4fae-a87a-72c6239519d8" value="15628.736571428572"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="8b9be053-3533-4efe-af9e-5fb0f71e9fc2" value="52883.23151993142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="449b732e-e056-493e-aaba-6b0919170f79" value="2474.1019233178836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="41720474-06a4-4126-be0f-ac775792db9a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="bb68d0ae-87bd-4eb3-a707-74ed8a3da3e1" value="2474.1019233178836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="db0355cd-9b25-4e60-95f5-25e6cb6654d9" value="15628.736571428572"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="bc34ca9a-ba1b-404a-96a2-60fa9f4106b1" value="52883.23151993142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="b4ce6464-fc9e-493e-a8b5-355a93c9829a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="ffda08ed-637e-402a-af82-94c6bfe63899"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="35139d90-282b-47d0-8ed4-745e5c98a304" value="68511.96809135999"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="060cb733-e7c0-4b82-86a3-645549334586"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="3f521106-8158-4a04-83e5-c67ca7605a65"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="2324e4d7-aa36-4988-ba1d-18ed7a5bf27e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c814c8c1-f867-41b4-9535-5ef5f1c5ff4b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="d73231a1-4dd1-4737-80c0-d3dfb3096a1f"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="357.7680115003416" height="5.45"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.547578217776476" lon="4.2260892994283346"/>
            <point xsi:type="esdl:Point" lat="51.54746339146079" lon="4.225775832730561"/>
            <point xsi:type="esdl:Point" lat="51.54738378297615" lon="4.22585106784871"/>
            <point xsi:type="esdl:Point" lat="51.54740665977609" lon="4.225913359550268"/>
            <point xsi:type="esdl:Point" lat="51.54736883700778" lon="4.225949102455249"/>
            <point xsi:type="esdl:Point" lat="51.547403293010994" lon="4.226043149235408"/>
            <point xsi:type="esdl:Point" lat="51.54746081220321" lon="4.226200175370842"/>
            <point xsi:type="esdl:Point" lat="51.547578217776476" lon="4.2260892994283346"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c6601886-cc40-42f4-bc61-a3e88b482888">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4624750f-685f-470b-8fdd-59ea52702269" id="497d4f65-b8c3-441f-b5ca-b69e3fbe38bf">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="ca9020d7-bec6-4002-90ac-deca18ec2dab" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.05626345165714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="16715fb5-3d16-45c7-991c-5b0bce257f1b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4624750f-685f-470b-8fdd-59ea52702269" id="9c2a9db8-3dcb-4899-900d-0bd7f0ef7c52">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="9739b42e-bcb4-4302-adf9-c7189121b800" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1903796334717531" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="ade7732c-010a-4a37-b979-0ec4bbe692f2">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="113b4e2c-b255-45e9-9328-964b81574492" id="cb546e87-b798-478c-9c86-24f4bf52b9d0">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="20ce45dd-a92a-4dec-998a-7499183202bd" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.078305325873011" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="c0cc8c11-11f7-476c-b8a4-780fe852a2f7" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d5d05b79-40fe-4ea3-9f3a-9c8b7587f925" id="8bbe4632-e8e9-4cd0-ab66-a62080cd001b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="113b4e2c-b255-45e9-9328-964b81574492" connectedTo="cb546e87-b798-478c-9c86-24f4bf52b9d0"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="55d1128e-c814-47f4-b707-23cb962a6589">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="4624750f-685f-470b-8fdd-59ea52702269" connectedTo="497d4f65-b8c3-441f-b5ca-b69e3fbe38bf 9c2a9db8-3dcb-4899-900d-0bd7f0ef7c52"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5f88ce97-e9de-4511-90da-865d17bb4ebf"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="21c75e88-9ae2-4102-b710-e8b63e5bb4ba">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d5d05b79-40fe-4ea3-9f3a-9c8b7587f925" connectedTo="8bbe4632-e8e9-4cd0-ab66-a62080cd001b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="164b6a11-9ead-4adf-8e80-14105be7832f"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="695" buildingYear="2000" name="Pand van Combi Isolatie Onroerend Goed B.V., FCG Tholen B.V." floorArea="647.0" id="6ecc01be-456f-4eda-aff7-d16284dfff64" sector="18579223-15f5-49c9-a3f5-e3f6268205ab" originalIdInSource="0716100000107312">
        <KPIs xsi:type="esdl:KPIs" id="ff34d983-410e-4248-97c4-6be4e9abdd17">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="a763666f-92d1-406c-b82f-31af35cdf928" value="4685.758954349701"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="8f8feca4-c666-4f25-93d7-d6a6e122c770"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="4e2dff4b-b928-4a50-827a-2d5a64fd13bd" value="25712.519428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0086d145-9fa6-4625-91f1-f57153b5801e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="5f95bb18-a4d6-43e2-b8ed-81c09f789ec4" value="4685.758954349701"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="5836bd34-1c8b-4d9c-93e6-fbbc088505ec"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="6ad48f86-f913-4309-a50e-0e89f33671e7" value="4685.758954349701"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="9644a1bc-74ec-4240-b744-f7ba1d9440e8" value="25712.519428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="83fcc608-b4cd-44cb-8b4b-1023e405021c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="fa0b11be-6931-4e78-9e94-43e54f237981"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c58d695c-85c0-44eb-a721-f5ec07d1a3f6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="800ae8f7-cdb3-4e0e-a9f7-dd8c19741b2f" value="25712.519428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="60a59bca-15b3-4bbf-b048-9c833ea61ee3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="20f28b0a-eab6-4ebc-8954-ee692bac8092"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="a652d105-18bf-49f5-925f-8e8f548caafd"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="3e7e98ee-c0a3-43c5-aa0c-632e2218ee25"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="84991157-d550-48cd-826a-5752042c5ac5"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="695.9684844997921" height="4.87"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.546941207103046" lon="4.224781424081526"/>
            <point xsi:type="esdl:Point" lat="51.54693323995445" lon="4.224795627609536"/>
            <point xsi:type="esdl:Point" lat="51.546932008680656" lon="4.224814632906304"/>
            <point xsi:type="esdl:Point" lat="51.54693800691826" lon="4.224831131954425"/>
            <point xsi:type="esdl:Point" lat="51.54694891553102" lon="4.224838811442899"/>
            <point xsi:type="esdl:Point" lat="51.546960551792814" lon="4.22483469298785"/>
            <point xsi:type="esdl:Point" lat="51.54696038854538" lon="4.224833644666807"/>
            <point xsi:type="esdl:Point" lat="51.54696691501841" lon="4.224827335693678"/>
            <point xsi:type="esdl:Point" lat="51.547011251249266" lon="4.224948492998533"/>
            <point xsi:type="esdl:Point" lat="51.54706143355565" lon="4.224900942310124"/>
            <point xsi:type="esdl:Point" lat="51.54706111026125" lon="4.224900071095302"/>
            <point xsi:type="esdl:Point" lat="51.54706734360405" lon="4.224894115645403"/>
            <point xsi:type="esdl:Point" lat="51.5470717694341" lon="4.224906171043027"/>
            <point xsi:type="esdl:Point" lat="51.54722970418146" lon="4.2247570575049505"/>
            <point xsi:type="esdl:Point" lat="51.54711442671802" lon="4.224441978842997"/>
            <point xsi:type="esdl:Point" lat="51.54695633758492" lon="4.224590895204352"/>
            <point xsi:type="esdl:Point" lat="51.54696072735424" lon="4.224602937048709"/>
            <point xsi:type="esdl:Point" lat="51.546954306014044" lon="4.224608969424969"/>
            <point xsi:type="esdl:Point" lat="51.54695399184797" lon="4.224608112398399"/>
            <point xsi:type="esdl:Point" lat="51.546903850437886" lon="4.224655244137226"/>
            <point xsi:type="esdl:Point" lat="51.546929881092844" lon="4.224726364067867"/>
            <point xsi:type="esdl:Point" lat="51.5469323659843" lon="4.224724036889116"/>
            <point xsi:type="esdl:Point" lat="51.54693208877122" lon="4.224723279840966"/>
            <point xsi:type="esdl:Point" lat="51.546935731375946" lon="4.224719856120615"/>
            <point xsi:type="esdl:Point" lat="51.54695430464093" lon="4.224770578369712"/>
            <point xsi:type="esdl:Point" lat="51.54694154067596" lon="4.224782424790206"/>
            <point xsi:type="esdl:Point" lat="51.546941207103046" lon="4.224781424081526"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b49eb70b-65e4-4410-b84f-df4da686da64">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a14b9c35-ee6a-46a2-9833-f5f46767695b" id="ba301450-8625-4fa8-8b72-0b23104c6596">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d61c0afb-4d6f-4e19-b1cc-1c470a537f0e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09256506994285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="230e8b49-08c3-46ed-b9e9-eddecc5c46f9">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="028448d9-21e2-4603-a133-35eb7276d8d3" id="34c45ce5-c0a8-4d77-b39c-fbdffa201d6a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f5777de1-e0e7-4c26-9736-0ef16b48afeb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.14830427090516804" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="d6b141bb-c851-4c19-a826-f6c8c991760a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c1f92775-331c-4a5e-85eb-f26afdaf12b2" id="d332608b-ae04-46a6-a1b5-bdea7c0ec58c"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="028448d9-21e2-4603-a133-35eb7276d8d3" connectedTo="34c45ce5-c0a8-4d77-b39c-fbdffa201d6a"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="c667b86e-1d2f-4efb-a1d4-3850829a7904">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="a14b9c35-ee6a-46a2-9833-f5f46767695b" connectedTo="ba301450-8625-4fa8-8b72-0b23104c6596"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="413c0d0b-2858-491b-aba2-0f79a825ffe7"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="13f03a70-03cf-430d-bbfa-4b227cb8cffe">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c1f92775-331c-4a5e-85eb-f26afdaf12b2" connectedTo="d332608b-ae04-46a6-a1b5-bdea7c0ec58c"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="18eece73-b189-4991-8890-e2585610568c"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="5798" buildingYear="2011" name="Pand van Topslag B.V., Landbouw Mechanisatie Bedrijf van Trier B.V., Gijs van Trier B.V." floorArea="5514.0" id="ccfcf3cf-3b70-4059-8c68-98b354e7211c" sector="41c2425b-8361-4465-83c6-cde6dcbf8ac0" originalIdInSource="0716100000070631">
        <KPIs xsi:type="esdl:KPIs" id="b54ac5c8-379e-45b0-83c0-15388375a417">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="d6d0ec99-b77b-44f2-945e-4aec681039b8" value="31506.038188989452"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="8109510a-ccde-47db-b191-6e055fe0cb21"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="1655386b-2aa7-4292-b6c9-36f9ba1cf222" value="272464.0697142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b05bc2e0-d82a-466c-8f20-764d1a77126b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="1219287f-ca70-4d07-812c-c87932f94e6b" value="31506.038188989452"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="dbb9ea37-14bc-4fbe-917b-d01216f7fad6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="16e2d1c3-9a90-44ec-a063-49e7368b5554" value="31506.038188989452"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="39590387-55af-4570-ae73-6e6451addf6e" value="272464.0697142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="6c406921-85a0-4600-9f4e-0c27b72af9a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="3143ef9e-6624-4a5d-9415-18b40d8a42a4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="2950a80c-4279-4437-84dd-8efc20868277"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="6104b6f9-d009-42ea-83bb-2e55e347cf2f" value="272464.0697142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="17668473-e791-498d-b533-c850cdd0f3bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="3cfdcc08-c933-47a1-be4d-a0ebfd951877"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="ded9506b-5246-4b35-bf3c-aacdbf64bef9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="bcd00761-b816-4546-90a4-a6e1e6d5bfa9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="36365e12-b352-4c0a-9eda-8914495e920c"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="5798.749099998599" height="7.65"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54290604545974" lon="4.22551902274861"/>
            <point xsi:type="esdl:Point" lat="51.54343275271029" lon="4.227174038219996"/>
            <point xsi:type="esdl:Point" lat="51.54376907432738" lon="4.226898927958485"/>
            <point xsi:type="esdl:Point" lat="51.543188823917404" lon="4.225075935586086"/>
            <point xsi:type="esdl:Point" lat="51.54292500160491" lon="4.225388573295907"/>
            <point xsi:type="esdl:Point" lat="51.54290604545974" lon="4.22551902274861"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a3256997-682e-4f16-94f0-f1b2764a59b0">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e2fb439f-3043-4608-b188-ef448c7f302e" id="9e001f89-7812-4547-a2fb-de0d118ec07c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6cdad572-9577-4969-9dd6-35f66bd862ef" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.9808706509714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="651b5826-95de-4637-8d8e-71f2dc5ada32">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="360df635-e112-4bbb-b2fd-0f6255686df3" id="1e1e4929-2443-410f-9cd5-6876385c5556">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="413000ef-da19-4573-8a57-cafd53f54fa1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.9971661086815161" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7b1240d0-d4ec-4a51-a364-c6d70f062bd1" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="755608ee-b4fd-44c0-a8c4-57a0447acda3" id="29d8f6e8-6e37-4848-8c8a-ca56cb63f920"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="360df635-e112-4bbb-b2fd-0f6255686df3" connectedTo="1e1e4929-2443-410f-9cd5-6876385c5556"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="896b056b-abac-47d4-a03a-2628b4460f39">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e2fb439f-3043-4608-b188-ef448c7f302e" connectedTo="9e001f89-7812-4547-a2fb-de0d118ec07c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="bf732d53-324e-44f9-8ab9-6e48eacb5230"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="2940ce22-1c10-4fc6-8e18-a38e003bb0cc">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="755608ee-b4fd-44c0-a8c4-57a0447acda3" connectedTo="29d8f6e8-6e37-4848-8c8a-ca56cb63f920"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="ea0f05e6-a4fc-482f-8842-917d029715db"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="338" buildingYear="2012" name="Pand van Vishandel Schot-Bout" floorArea="403.0" id="2ef99fed-b505-4387-8d40-3a8596bec6f8" sector="85a6f774-5cb9-4de7-ae27-a2a7665ee7d0" originalIdInSource="0716100000290945">
        <KPIs xsi:type="esdl:KPIs" id="47678e38-b7e7-4c32-82cc-a9c22e82c2dd">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="2b447a22-17b6-424c-b2af-4f92e0ebf634" value="3101.2759137167945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="9b3c5334-0770-47fb-80eb-c490d0576598"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="dc8c056a-7d67-4d78-9015-3a5e0d152c8a" value="18914.056571428573"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="6109dc28-39b9-4b06-b82f-20c832a7cf3d" value="63999.82673433142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="e59dec5f-bad2-47d9-8959-e42370ab4c75" value="3101.2759137167945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f6938cdb-bbef-4d91-b069-ae7984996710"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="90277565-8769-48d6-82a6-e6cf039bbdb6" value="3101.2759137167945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="a08c71a9-b9f6-4074-8ef1-c4994d8e3479" value="18914.056571428573"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="db65f6a6-defd-410d-8888-aa48511cef4d" value="63999.82673433142"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="055e1658-e843-401d-a525-a5331d2bdbb7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="53647524-ea62-4ebc-8618-a358b14ff7c1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="535ce3f8-ff2e-4905-9aa9-96bc818c6cda" value="82913.88330576"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="978387f8-dfdf-4c92-a87d-b8e46bd24a2a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="bab0b7c8-bc6c-4aee-a30e-601672bda2d5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="055f98b9-c6bc-4998-a5f6-8df73f1d57b4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="0e94db50-713a-4dc4-84c1-6adec841a8e5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="70a8f7fe-c023-488e-8a2d-946493ac3d63"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="338.33513349971906" height="6.17"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54266502625401" lon="4.223543677337615"/>
            <point xsi:type="esdl:Point" lat="51.542439514621364" lon="4.223728389035638"/>
            <point xsi:type="esdl:Point" lat="51.542488541753514" lon="4.223882671688307"/>
            <point xsi:type="esdl:Point" lat="51.5427140962703" lon="4.2236977287979816"/>
            <point xsi:type="esdl:Point" lat="51.54266502625401" lon="4.223543677337615"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="3cc6d2dc-ddbd-4d80-a3fa-c981274bc5bd">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="88b8868a-3cfd-4770-a0ef-12962a6bc511" id="4d4ebe71-16ea-4ab4-ae47-0c00bb198c7d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="39e9292d-c6d0-41eb-a750-0e8ce4f6b0bf" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06809060365714287" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="ed8018d5-8f8b-4992-836f-a9b8f7ed8a81">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="88b8868a-3cfd-4770-a0ef-12962a6bc511" id="525913e2-aa86-407f-8b52-9380a7aa6837">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="a716001e-7368-4223-81b0-08bd72a23956" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2303993762435931" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="3460665f-4a81-4050-b2d8-d859457e53d2">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7b57279a-6a56-40cf-87ab-22d9e0f8c408" id="1b2f1410-5b95-4c20-a3bb-6e03213849dc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0e84a984-982f-4fb3-933d-f35bf3177c8b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09815538266913654" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="45518ea6-905f-4465-8fe9-3826d4bd20e2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="bd9f1114-dfc3-43cf-924b-9714ff394b04" id="661c5155-f9b5-4af0-aabd-e80572db6f03"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7b57279a-6a56-40cf-87ab-22d9e0f8c408" connectedTo="1b2f1410-5b95-4c20-a3bb-6e03213849dc"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="470b0a8b-e7bd-48c0-a28e-2e5d1590f51f">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="88b8868a-3cfd-4770-a0ef-12962a6bc511" connectedTo="4d4ebe71-16ea-4ab4-ae47-0c00bb198c7d 525913e2-aa86-407f-8b52-9380a7aa6837"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0b978353-75eb-4513-8a69-812876784e43"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="350a6858-636b-4bb6-8be5-da5d00789308">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="bd9f1114-dfc3-43cf-924b-9714ff394b04" connectedTo="661c5155-f9b5-4af0-aabd-e80572db6f03"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b47990f4-f2c0-45f2-842b-24c35c7355e4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="307" buildingYear="2010" name="Pand van NR CarWorks V.O.F." floorArea="360.0" id="09e037b2-7230-4e18-a1b8-0d2e8e7fb058" sector="6d1f4eaa-68c4-42f7-ac88-982697344782" originalIdInSource="0716100000290309">
        <KPIs xsi:type="esdl:KPIs" id="d5489bdf-d5a9-498b-81c8-2573427a3169">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="d65ead1c-27cb-4edf-a330-bb55c5c016ee" value="2889.865390685502"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="5fded4ce-ce74-405e-ac80-d3d61eaf281c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="b27a7103-9009-4f79-b8c0-30e00d0a33a1" value="16895.931428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="13fbe500-25c7-4ef3-b2f1-ab1f97b514a5" value="204.2053714285721"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="5bac817a-805e-45ca-b235-cde887c72193" value="2889.865390685502"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="df8f86e4-aba5-439d-9c6a-1b4fb3277fbd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="afb0dc8e-db10-4d4f-aa49-26eff31e16b1" value="2889.865390685502"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="5caf73b4-1ce2-4857-ac12-e6c23009de37" value="16895.931428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="77d0ed49-6252-4d02-99f5-0b78727a5a24" value="204.2053714285721"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="9de301da-16ef-4cd6-abe6-09704fbeb791"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a29a5a1c-ff57-4d89-ad21-1137e518e229"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="f82efc8e-3bb7-402b-a736-303ad87b69a5" value="17100.1368"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c1089590-6770-4ff1-ac01-12ebd176a10e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="05befce5-e3af-4c35-841a-9a450581e591"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="eba0854e-6ea7-4ffa-81d0-98b865b474d0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="0a2a30ea-cd21-4db6-842d-3d5f18dcd143"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="b2784908-1d4c-4376-8420-ca5a345e8f73"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="307.1380274998133" height="6.38"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54261810158631" lon="4.223489520204532"/>
            <point xsi:type="esdl:Point" lat="51.5425682625409" lon="4.223333196783076"/>
            <point xsi:type="esdl:Point" lat="51.54236638818173" lon="4.223498432736421"/>
            <point xsi:type="esdl:Point" lat="51.54241657750259" lon="4.223654746671698"/>
            <point xsi:type="esdl:Point" lat="51.54261810158631" lon="4.223489520204532"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="285b6bcf-ac10-44ca-ad7d-591ec66f6bcc">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5bbebe64-43f5-44b7-be5e-7416a48fd6d8" id="66eaf047-9b70-404f-9a97-dd4490abb5bd">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e96d7710-7f53-44c2-ac6f-b08fa8f5652b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06082535314285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="a891704b-d0a8-44fd-a736-dca42cecc161">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5bbebe64-43f5-44b7-be5e-7416a48fd6d8" id="546438f0-4ea9-482a-9c14-984d67d85145">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="763e9e5a-52e4-478d-8ccb-8919f264dd21" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0007351393371428596" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="74345292-b54c-42d8-aa26-72ad1baece0f">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="b02e4720-6edc-48d1-8e72-218cb4e2c3a4" id="4275816b-4c3e-482f-8523-cfe5f7eec0bf">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="52293320-ccca-4ff3-8072-e03aececceeb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09146423961519613" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="f376f58c-807c-4b41-a9a2-8c372487dae2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ff90ea69-70d9-4cf0-8704-ab35726f83c3" id="1dfd66ea-8f55-4e40-bf6c-cc2a7465f999"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="b02e4720-6edc-48d1-8e72-218cb4e2c3a4" connectedTo="4275816b-4c3e-482f-8523-cfe5f7eec0bf"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="31cd1508-377c-4656-8e02-9bde8d63a1c2">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="5bbebe64-43f5-44b7-be5e-7416a48fd6d8" connectedTo="66eaf047-9b70-404f-9a97-dd4490abb5bd 546438f0-4ea9-482a-9c14-984d67d85145"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b985ee2b-9fdd-4d7a-a5a3-b9ee1006c4fd"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="6d8d2ff4-934d-48f8-a63c-13c01e86a0f6">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ff90ea69-70d9-4cf0-8704-ab35726f83c3" connectedTo="1dfd66ea-8f55-4e40-bf6c-cc2a7465f999"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="118506e9-4a84-4dd4-a054-baa0747631e0"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="684" buildingYear="2012" name="Pand van OK Marine B.V., Langius Tholen B.V." floorArea="523.0" id="53794862-98bf-4677-beee-b05cc33ad3df" sector="bb44dd3b-a1bf-42d6-9e36-857c05be11e2" originalIdInSource="0716100000290343">
        <KPIs xsi:type="esdl:KPIs" id="32671dbf-9419-4a1b-9bb8-8cdbc382487c">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="94e68810-d0c7-47bb-9999-998ef65a2d78" value="3857.3703624407044"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f7abc787-ffef-4643-80bc-b4fd1e1f10bc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="2af1f08f-288f-46e0-9867-e58432f6e78b" value="20784.617714285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="f698f240-437d-411b-8c6e-0e58304a2d66"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="4f72fc29-3434-40f7-a519-0fd54b333883" value="3857.3703624407044"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="9a3f73de-a919-40ff-8866-6440a33eed60"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="df0ac195-0fe2-48a3-914a-88f7de139a0d" value="3857.3703624407044"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="15bf7174-7f99-49bf-9c5f-29bea8b6bd49" value="20784.617714285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="ffc62aa3-47d8-46cd-b220-d878f8040485"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="dbc1545c-ee8b-4ad2-93f8-724aaf5f6de5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f259cfbf-5441-42d2-8398-7429a8033ed8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="e83e26d4-8ae8-4235-8af9-d94461b6c4a4" value="20784.617714285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="37f2b558-2d7c-46ae-8e95-7577e4512d42"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="da67f16d-9228-4fe3-820d-cad5ffc82a25"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="529870f9-9cfa-4245-aa8f-558a3915ab37"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e2551386-0420-4753-98ac-01313d284ef1"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="df0e360f-1638-4870-8ca6-18be582d4075"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="684.4444395005116" height="6.88"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5420468663318" lon="4.2221747879973694"/>
            <point xsi:type="esdl:Point" lat="51.542038440479814" lon="4.222181722018753"/>
            <point xsi:type="esdl:Point" lat="51.542039599505785" lon="4.222185267522854"/>
            <point xsi:type="esdl:Point" lat="51.54192746847858" lon="4.222276614972836"/>
            <point xsi:type="esdl:Point" lat="51.541963698137536" lon="4.222390467840593"/>
            <point xsi:type="esdl:Point" lat="51.541961762446235" lon="4.22239197350361"/>
            <point xsi:type="esdl:Point" lat="51.54196636602369" lon="4.222406502340979"/>
            <point xsi:type="esdl:Point" lat="51.542088773795896" lon="4.222306313980378"/>
            <point xsi:type="esdl:Point" lat="51.542222255810906" lon="4.222197047176923"/>
            <point xsi:type="esdl:Point" lat="51.54209186935555" lon="4.221786471362117"/>
            <point xsi:type="esdl:Point" lat="51.541958002861406" lon="4.2218959075016835"/>
            <point xsi:type="esdl:Point" lat="51.5420468663318" lon="4.2221747879973694"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="9b9db007-9bcc-488b-81dd-0c6f99368d4c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="db6b12a6-18bd-48a1-b0ea-b37dd315254f" id="7d2432e8-79e6-4022-92fb-f6818fb617af">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="8a5bfc32-8a4e-4519-bccf-45cce58fef34" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07482462377142858" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="02674f03-f0cd-4285-9160-62178b0f5c34">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="cddd8637-b647-4cab-923f-58ce307017cc" id="95ac3f64-65ee-46b2-9bee-a0a4157cfb07">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0bdb97e5-edb0-4ebe-a791-6756d22f6611" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1220857719712483" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="ad984635-b958-41f3-b406-8e4fe2a502da" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="a964b420-9c84-4468-842f-5086139415c2" id="617772f2-ae1c-4556-a7f2-9a9dbb450be4"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="cddd8637-b647-4cab-923f-58ce307017cc" connectedTo="95ac3f64-65ee-46b2-9bee-a0a4157cfb07"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="6ebe15a8-b50e-495a-8486-1687af2bceb6">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="db6b12a6-18bd-48a1-b0ea-b37dd315254f" connectedTo="7d2432e8-79e6-4022-92fb-f6818fb617af"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="dd1ef6df-0343-4cfc-a9f8-4218d1e349f4"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="921134da-f9e0-401b-b376-45976f0c49ee">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="a964b420-9c84-4468-842f-5086139415c2" connectedTo="617772f2-ae1c-4556-a7f2-9a9dbb450be4"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="fc8ec496-4359-413a-9182-586e89f2536d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="11677" buildingYear="2016" name="Pand van Alternate Computerversand Nederland C.V., Wave Computers Nederland, Alternate Management B.V." floorArea="13779.0" id="5436fa5b-b42a-4ed0-bc78-6bd8f325ddab" sector="c13153c7-9457-4748-8c39-befd04fba4af" originalIdInSource="0716100000291819">
        <KPIs xsi:type="esdl:KPIs" id="5605f4c7-1a9b-4d95-a65f-c1a7f16a4b87">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="3ba41dc2-6798-4adc-b81e-d1a0a4e54513" value="69908.43600876178"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="a07a1c5f-b1e7-467a-a486-5e636676ba82"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8b2b9e14-904f-458c-aceb-a2f030477c72" value="1324654.649021739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="cfecd402-04d2-4951-ae9e-2fc33a846626"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d0569443-9911-448b-8ae4-9e46d7fc1cdb" value="69908.43600876178"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="38e53465-c40b-4d40-b17b-45c34e3c7aa7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="05e20d46-658b-4042-ac30-7783282a5d0e" value="69908.43600876178"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="42c87491-6b4e-4ab1-8d45-7fffed2c7357" value="1324654.649021739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c25f676e-9a25-452f-9d2c-facdf435fc51"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="32dd035a-ea57-4589-9ec7-2a308903fe63"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4d15c9f2-4291-44e1-aa69-0879dbba23a7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="310691b2-d9e7-4b31-9846-97ee7044b08b" value="1324654.649021739"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1a0905a8-d7f8-478f-b0e6-3ff22e5c9919"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="809ad45f-8c41-4a80-b3a1-8c4ead0f364c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="2c8ca8ac-2f70-42cd-9064-07b3e921b95f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b7d46ce5-fb77-45cd-8eb8-43ea6b98c975"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="9c2c44cd-629e-4426-ac72-2c0f9532c341"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="11677.13521250205" height="4.719993302894225"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54432746049841" lon="4.2189442568599835"/>
            <point xsi:type="esdl:Point" lat="51.543367486587755" lon="4.22008089882205"/>
            <point xsi:type="esdl:Point" lat="51.54372166946002" lon="4.22115511883056"/>
            <point xsi:type="esdl:Point" lat="51.54477254637291" lon="4.219910564521131"/>
            <point xsi:type="esdl:Point" lat="51.54462469179194" lon="4.219588768823505"/>
            <point xsi:type="esdl:Point" lat="51.54466926137234" lon="4.219536601323159"/>
            <point xsi:type="esdl:Point" lat="51.544593773461784" lon="4.219372500461466"/>
            <point xsi:type="esdl:Point" lat="51.54454899503427" lon="4.2194253510056114"/>
            <point xsi:type="esdl:Point" lat="51.54432746049841" lon="4.2189442568599835"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="69987b60-c8c1-4217-8766-5f7939c92fa4">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="8bed6cca-9016-4c0a-8c49-b2c60cc34654" id="6b2e23e2-80c0-4d6c-8557-2d4083f1bdcc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="4d9a1c7b-cd2c-46bf-adc1-5ec803371e72" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="4.7687567364782595" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="7e981362-8a09-4da1-9b98-a7c43cf07975">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="12c8e8c5-604b-4768-b19d-eef2dd271d65" id="e6da2bdf-a119-4ccb-b871-ff4817b8a11b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="9e371bc5-53d7-43aa-a49e-106d1b77a3e2" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.21260199967731" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="8a5185d0-399c-4969-9cf0-f66ad889b083" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b8131a4b-6099-4c61-bb02-0fb412952175" id="3f0a47be-6beb-4eeb-97b1-9e0cf9a99f27"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="12c8e8c5-604b-4768-b19d-eef2dd271d65" connectedTo="e6da2bdf-a119-4ccb-b871-ff4817b8a11b"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="64f9f0df-4ba4-4830-9076-b7d0cdcde985">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="8bed6cca-9016-4c0a-8c49-b2c60cc34654" connectedTo="6b2e23e2-80c0-4d6c-8557-2d4083f1bdcc"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="9e596fa0-a73c-40b5-b07c-2abb87c93fbb"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="aa42a49f-c244-4dbf-b60c-bd67f36517ea">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="b8131a4b-6099-4c61-bb02-0fb412952175" connectedTo="3f0a47be-6beb-4eeb-97b1-9e0cf9a99f27"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="982574b6-ebef-4052-b4fe-726b2277c3d4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="640" buildingYear="2019" name="Pand van Zwalua Transport B.V., Zwalua Holding B.V., Zwalua Beheer B.V." floorArea="620.0" id="e666f4ba-8b7a-4aa0-a9ab-458a46d03e2c" sector="cbe7f3e4-71e5-437d-a1c3-5153c782edff" originalIdInSource="0716100000292782">
        <KPIs xsi:type="esdl:KPIs" id="638117b6-b0af-4d9d-ab27-602bf7a88a43">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4b632e16-81c9-41af-bb16-f7d12e6ac53a" value="4172.289835689025"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="2a8eb0cc-4aa6-48d2-924e-719cd83614c4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3179ba5e-85c4-4186-96f6-ca7935be0cfc" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="768defba-c6a3-444c-9af1-adf46f38e754"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3dc817ad-c246-40c0-876c-208014a01a26" value="4172.289835689025"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f462bcb7-e1a0-428d-97ad-e6f2c97e6c51"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ced23967-d656-4529-98b3-9e74ee28d7bd" value="4172.289835689025"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="ce2d7b34-de66-48e4-b016-4f12dacd5b03" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c2013ad1-d4d0-4682-8db0-92a5b6d1bcc3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="d554d6d6-5f97-4d66-b2de-a75b92ee4326"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="50544b29-9c36-449b-8424-0201c122078a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="cffe4df8-a0ea-41eb-988d-070ada4a3622" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="d2574c4a-252b-4cfb-88f3-add11d47ce70"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ace71a9a-de42-4355-9e3a-2f8e19dedb0f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="07135174-a7c7-4439-bf2f-dae3ff0bb8fc"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="44c2fef4-d4c4-4cdd-9b8e-0b7da38af723"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="d45978f2-091c-4fd3-a660-38e9b9293873"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="640.00017749995" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54651846597707" lon="4.221797119611818"/>
            <point xsi:type="esdl:Point" lat="51.54643178317186" lon="4.221615259183051"/>
            <point xsi:type="esdl:Point" lat="51.546146937180374" lon="4.221964205549544"/>
            <point xsi:type="esdl:Point" lat="51.54623361944291" lon="4.222146065512409"/>
            <point xsi:type="esdl:Point" lat="51.54651846597707" lon="4.221797119611818"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c18c3e0f-b84c-415f-a721-3b88751e4492">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e2e3b620-5f4b-469d-928d-2173bf5c0ee6" id="80f23cc7-68f6-407e-adf4-e2f690e0706d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="f0997f14-9db0-4a37-bd5f-70713af74c10" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08870223085714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="ad035f2a-2e0d-4dae-9437-03ee105f413d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="600259b7-c5a4-48a9-964a-fb9862ff9477" id="19101c4b-608a-4367-9623-616f34425a57">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="cdce6fd7-a345-43cf-9134-8b4b6be35165" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13205297329955765" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7c321598-f83f-45f9-9f49-311a8c8c3d12" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="482140f2-3a74-42e0-a320-fc62ed96b6d1" id="68997327-6850-404b-8d7b-96179bbd78c0"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="600259b7-c5a4-48a9-964a-fb9862ff9477" connectedTo="19101c4b-608a-4367-9623-616f34425a57"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="898ebb1c-600a-4b89-90d3-4185fd28673d">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e2e3b620-5f4b-469d-928d-2173bf5c0ee6" connectedTo="80f23cc7-68f6-407e-adf4-e2f690e0706d"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="882226d5-5d95-4438-962b-ebf007cb44e9"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="ceea0b45-9a09-4557-a09a-0b3a04cf57ee">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="482140f2-3a74-42e0-a320-fc62ed96b6d1" connectedTo="68997327-6850-404b-8d7b-96179bbd78c0"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="0bd6321c-9e26-4c8d-bc28-345d1bf0f9f8"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="640" buildingYear="2009" name="Pand van AJG Holding B.V., Holland Energy Service B.V." floorArea="142.0" id="b62ce012-2d79-4066-8e1c-e0355f641a31" sector="535b8f22-68f5-4d23-b5ed-378ea5c37494" originalIdInSource="0716100000248834">
        <KPIs xsi:type="esdl:KPIs" id="42d7e922-f703-44a9-8191-d79078031ee3">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="a1cd1b55-6cd3-40c9-ae75-a4170b40371a" value="7156.659534243804"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="3048246f-e98b-4490-96c4-4bbdc680153d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8fc53382-b5ef-43fa-96d8-2688cf3597b6" value="8672.04804347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e59e2f15-a24a-40ab-82c0-0f625e04d175"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="ded4e06b-c5fd-4645-a1c0-8476c8e62296" value="7156.659534243804"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="703cd953-826f-4a19-ad57-c039f80626a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="066299a2-c40b-4929-8575-1938f3757a05" value="7156.659534243804"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="d0f92c64-9fdd-4398-8e8c-bc0b26514c5d" value="8672.04804347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9d3dfb5e-8766-471b-a0bf-de69bc7b9b3b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="ee1d13a0-2e18-455c-a584-a73e5cc8ff88"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="abae0f9e-b7fc-4237-964c-ba51e8c7b308"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="db2093a2-4586-4b12-a612-809fba5cadb2" value="8672.04804347826"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="fc2bc4cb-4f3a-4d07-95e1-66f6d7da5f90"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="7ac73afd-8ece-41e3-8434-eb4736749a2f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="dad85ff8-57cc-4fed-9c8f-248394bd1644"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="78c42fe1-ac3f-4b78-927d-ab0743e2cb7b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="21cc9ae8-a84d-4ba8-bc76-c92b527c5305"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="640.2191305002135" height="5.72"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54422320779938" lon="4.229415478140247"/>
            <point xsi:type="esdl:Point" lat="51.54437759438997" lon="4.229268786961136"/>
            <point xsi:type="esdl:Point" lat="51.544263840037125" lon="4.228961045003212"/>
            <point xsi:type="esdl:Point" lat="51.54419621255798" lon="4.229025410558495"/>
            <point xsi:type="esdl:Point" lat="51.54413450130076" lon="4.228857729641537"/>
            <point xsi:type="esdl:Point" lat="51.54405145675108" lon="4.228936573494534"/>
            <point xsi:type="esdl:Point" lat="51.54411335676739" lon="4.229104263816083"/>
            <point xsi:type="esdl:Point" lat="51.54410957195185" lon="4.229107863595601"/>
            <point xsi:type="esdl:Point" lat="51.54422320779938" lon="4.229415478140247"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c4ad8257-4811-46b2-9455-ee931f964143">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="d2ad2413-90e8-4975-9b21-a655473eed80" id="aa39c81a-f519-4484-8ac3-6b81afe4c1ac">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="13e51845-9b7c-46e8-a0d3-a848b57d9436" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.031219372956521736" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="d8a8fcee-99a1-42f2-9024-fc9067128334">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c7177e25-06f1-4422-af54-66c5a7cb431c" id="ab580b7e-96cb-4508-baf3-eaa95eea89eb">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a7872cc3-1370-40c9-9db2-3ec2bd2446df" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2265082742588164" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="64c590f9-4aee-4cd3-9009-50080a409e8c" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ca98e77b-eb5b-4f4c-a574-2aa874c27e14" id="dc965096-ef47-4f72-b21f-64585f47a60f"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c7177e25-06f1-4422-af54-66c5a7cb431c" connectedTo="ab580b7e-96cb-4508-baf3-eaa95eea89eb"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="1091c208-ee4b-4d7a-8808-0f72d1c12b22">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="d2ad2413-90e8-4975-9b21-a655473eed80" connectedTo="aa39c81a-f519-4484-8ac3-6b81afe4c1ac"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="ad3525e3-637e-4547-8d08-fc023af1ffce"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="deb3dca8-39cf-46c1-a6c4-bb9509eccb06">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ca98e77b-eb5b-4f4c-a574-2aa874c27e14" connectedTo="dc965096-ef47-4f72-b21f-64585f47a60f"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="149a0ccc-7885-42a7-b108-ad597152de07"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="112" buildingYear="1997" name="Pand van Kees Bazen Uw Visspecialist" floorArea="168.0" id="bdb556b9-8bab-4cb3-abbc-28771c9880a2" sector="07c68f19-8dba-4695-a967-f53447620497" originalIdInSource="0716100000107311">
        <KPIs xsi:type="esdl:KPIs" id="c57106d9-e9e3-4daf-99e3-4ba945a38f18">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="50e306ef-a2b6-4538-a3d8-b3a7f6f7dd84" value="1457.5283218783156"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="88ad03d5-2b37-40e0-a61b-129f203d14eb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8bd42e46-2fbd-46a0-b496-d6a88aab4552" value="7884.768000000001"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="304ecfc8-50c3-4ef9-87a2-b106b2d4e7bb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="16b0ec07-ae8b-472a-9594-10ab7825cf7c" value="1457.5283218783156"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="faa2f8ca-0d41-41ea-8234-83bd820b6168"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="db159676-be96-422b-a3ae-d368038daf65" value="1457.5283218783156"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="37261e20-3599-44c9-985a-29e72ea5a704" value="7884.768000000001"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c916107f-1474-4694-8d51-f794b8326a8f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="ed73bcd0-2137-4cd3-a030-0a5ea5246e17"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="1f408969-8756-42c6-90b9-28c59b783467"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="2353ac2b-70f8-4b90-98d1-fe5b77b397e6" value="7884.768000000001"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="4d44d831-0ce3-437d-80f5-e082df5a9504"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4bab7f95-6cb6-4c2b-92c1-f85e7b7e1150"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="4a7c742c-b7ac-457e-bc6b-84af64a47851"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="812d6b65-35f5-4b13-89ff-5d99faf4a0a0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="fcdb07c9-1ab1-4cfb-ba88-fc21e2760480"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="112.88770549981346" height="5.48"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54428830216371" lon="4.228143500620176"/>
            <point xsi:type="esdl:Point" lat="51.54426924403846" lon="4.22809178317221"/>
            <point xsi:type="esdl:Point" lat="51.54424348875887" lon="4.2281161849446605"/>
            <point xsi:type="esdl:Point" lat="51.54426236670199" lon="4.228167863719516"/>
            <point xsi:type="esdl:Point" lat="51.54427596844522" lon="4.2282051016287205"/>
            <point xsi:type="esdl:Point" lat="51.54422557605805" lon="4.228252449225007"/>
            <point xsi:type="esdl:Point" lat="51.54426801420199" lon="4.228368388759465"/>
            <point xsi:type="esdl:Point" lat="51.54433079593871" lon="4.22830945116233"/>
            <point xsi:type="esdl:Point" lat="51.544323055722714" lon="4.228287662777649"/>
            <point xsi:type="esdl:Point" lat="51.54433680177247" lon="4.228275100971113"/>
            <point xsi:type="esdl:Point" lat="51.54428830216371" lon="4.228143500620176"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="15afb2e5-ffd9-4b60-b103-00b1b8f6f323">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f808918a-cb55-4443-a129-61ea2a170cda" id="3190c5bc-7323-4ec4-854c-d3e72fba8356">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="cabc250d-00d9-4ee7-a09e-be66afede25d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0283851648" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="066d3518-c8bc-4f71-9a18-11294f3a3eaa">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="72df85fa-502b-483d-b9c0-41d8587efb91" id="24c24228-5e2e-4429-a16a-738f94ada384">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="212f038e-9eae-43e5-ac18-4297c916fbb7" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.046130771387448685" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="b60e7c40-55ef-4fce-93e7-b9ff8d5b4b52" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ff40920b-9961-422b-bc7d-9600bf72d3ad" id="9259af2e-ebcf-4c1f-9d51-8a2e56420802"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="72df85fa-502b-483d-b9c0-41d8587efb91" connectedTo="24c24228-5e2e-4429-a16a-738f94ada384"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4fa0328d-7e5e-43ef-9ad2-8d30311ee4d9">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f808918a-cb55-4443-a129-61ea2a170cda" connectedTo="3190c5bc-7323-4ec4-854c-d3e72fba8356"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="1d64a45e-4b5c-4edc-9bf8-56043d802530"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="47ff6ee1-7a30-4733-99b1-004fafad4ca3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ff40920b-9961-422b-bc7d-9600bf72d3ad" connectedTo="9259af2e-ebcf-4c1f-9d51-8a2e56420802"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="8844a5cf-78b8-4e60-8179-7ce1f7557e7d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="138" buildingYear="2004" name="Pand van WiBoTh Beheer B.V., BetonBestellen.nl B.V." floorArea="139.0" id="113d2344-845a-4375-b26e-049433da5f72" sector="594c714b-60a0-42ac-98ae-1b28b1ed2981" originalIdInSource="0716100000001219">
        <KPIs xsi:type="esdl:KPIs" id="82f977f0-875e-4838-bdbc-c58bdd274c4d">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5cc2b8de-53c0-4f74-a241-dd3d7467d0d4" value="1172.1109805576698"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d4bb3a29-79a2-4667-9ebb-246589f0702a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3f8acaad-cecf-4249-81b4-cbb8bedbc424" value="6523.706857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="22c64be1-f803-4cd2-8658-74f809e134bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="147d34bf-42ee-494d-96f8-044de79657ef" value="1172.1109805576698"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="470e0dc5-556f-4310-bc7f-25930173fdb5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="506f70ac-d47d-4339-b4a5-a6bb4b237a03" value="1172.1109805576698"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="2d8794a1-4f3c-4261-8ebd-634b4993bb43" value="6523.706857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="545a5e85-dda7-4682-8d7a-bf6b78186139"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="b5ad30d7-75cd-426a-b625-1a55c5d6677b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="72ecede2-3423-4d2b-be3e-8baea5e9964b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="4fe06fd5-5bc4-47e7-a237-e615d9483424" value="6523.706857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="5ef68972-9fb2-43e3-92e8-e9e903585eff"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="62fa4be3-7663-4ecb-aabb-559683357e4b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="1a238d07-c222-4cb8-933d-b400b5b88c4b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="8dc34111-7940-4126-80b2-41b665941f5f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="1f6ec6a7-4398-49c3-9b6a-afdad81ab408"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="138.94916849949618" height="3.76"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54442985386874" lon="4.228559120363029"/>
            <point xsi:type="esdl:Point" lat="51.54434444524582" lon="4.228640678288543"/>
            <point xsi:type="esdl:Point" lat="51.544404934064396" lon="4.228803806264561"/>
            <point xsi:type="esdl:Point" lat="51.544443635165656" lon="4.228766805847465"/>
            <point xsi:type="esdl:Point" lat="51.54443852796865" lon="4.228753081364681"/>
            <point xsi:type="esdl:Point" lat="51.544485323755616" lon="4.228708348791658"/>
            <point xsi:type="esdl:Point" lat="51.54442985386874" lon="4.228559120363029"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="447162f9-4e8d-42ad-8a4a-fe01b474c4de">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="c0e684ee-d3e1-4e58-a943-e662a9b45bfd" id="c7eae755-11ad-485c-a98f-a7ae399feaa1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="57920ef9-bc90-49d4-b082-4f3a39518c06" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.023485344685714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="cee5e2e8-c091-43ef-a73d-d03d21b946f5">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="5e4b0f0c-b9dc-4d0c-a405-1211ac42b160" id="d13bd276-d524-48b5-9920-0ccb6b019a19">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="77f06911-6c31-4288-b25d-569e9b6fb8f6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03709731253465025" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="e7d95a40-c171-41c1-a3f5-c5381c335bca" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="5744bef4-c52f-400c-90bd-1a4e41cf6ebc" id="dc5e6009-fd14-4a81-9975-4f15f0ce04f5"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="5e4b0f0c-b9dc-4d0c-a405-1211ac42b160" connectedTo="d13bd276-d524-48b5-9920-0ccb6b019a19"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="8e016242-ee19-49c0-97a0-fb00e7bce9a0">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="c0e684ee-d3e1-4e58-a943-e662a9b45bfd" connectedTo="c7eae755-11ad-485c-a98f-a7ae399feaa1"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="99cf18fc-1ff1-4000-8307-5868ce7b179f"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="14862889-66be-4671-bb29-2ac58650e719">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="5744bef4-c52f-400c-90bd-1a4e41cf6ebc" connectedTo="dc5e6009-fd14-4a81-9975-4f15f0ce04f5"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="1f43346c-7f82-4a59-8d76-9e3e55037462"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="75" buildingYear="1998" name="Pand van Borm advies" floorArea="129.0" id="f8da1801-9fd8-4c15-bfdf-f3d7dbdc4f3c" sector="b80b944b-f7d8-4395-ad15-a49fddbfa123" originalIdInSource="0716100000105941">
        <KPIs xsi:type="esdl:KPIs" id="0057a8b9-454a-468c-9b25-c34d0b5666a7">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b1567da6-82d7-4960-a481-5527570952b2" value="1813.7574100150543"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="aab45307-0ed0-45ed-a422-43d9e3763078"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="75695eea-8bb9-4726-a14e-9e58f15402dd" value="7878.128152173912"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a67d3f4f-99e4-4ed1-bb0e-873ce7629b5b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="2cbe7f48-d17b-4dbc-a84d-773d9940d2f0" value="1813.7574100150543"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="b8f2fa7f-eeb4-4518-9543-bd95cefc45a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="e3d7f803-e216-4040-92ce-0a24eb79f709" value="1813.7574100150543"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="b3584642-466c-43e7-9b6b-c528afffdde6" value="7878.128152173912"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="d59871a5-d2cd-4158-911f-350803660d81"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f98d41da-8919-4dbc-b26c-5cb6927dac42"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f88c4b3e-5f4e-4615-af73-9190deb79c93"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="fe0c9856-3a08-484d-a184-ab1d49dcba26" value="7878.128152173912"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="4ef36b5e-533a-498c-b3d3-c8895ae0a581"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="2cffdefd-63f0-4a9a-b1e6-69e989b619fb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="6283547e-cfae-416d-958d-280a8368efc0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e06a41c3-5aa0-4449-be57-4a99d3c8e176"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="89b6b5d9-641c-4255-9725-4139f89b1815"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="75.06507949977062" height="6.61"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54456197915493" lon="4.2279617408553465"/>
            <point xsi:type="esdl:Point" lat="51.54453337127816" lon="4.227883451231901"/>
            <point xsi:type="esdl:Point" lat="51.544526727642356" lon="4.227865282339707"/>
            <point xsi:type="esdl:Point" lat="51.544451732486635" lon="4.227936296724802"/>
            <point xsi:type="esdl:Point" lat="51.54448700890006" lon="4.228032552662506"/>
            <point xsi:type="esdl:Point" lat="51.54456197915493" lon="4.2279617408553465"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="9a223913-5c9e-4b4f-b2e7-2285024480a6">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fdee1a5d-758e-4132-a902-42bbb3f77cb1" id="82a98a48-bdbe-4152-9d4e-f0733c14ddcc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d3b82446-ec67-4d48-8af0-9a57c6d41a42" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.028361261347826083" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a881fd47-b315-4957-b2af-35d26e15342e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="bc6abb89-a7e4-4c00-9433-19e977fd013c" id="e8d33e61-2122-462a-a787-e4e1260c659d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="3177e692-6024-431a-ba4d-e9c854a5fb28" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.05740542202697647" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="1a879481-526e-4d9e-88d0-55acecb91600" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1a08725d-d721-4176-a6e3-43ba4ea3afb2" id="6457fed0-40c6-487f-8e8b-7a1ffb0cb70a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="bc6abb89-a7e4-4c00-9433-19e977fd013c" connectedTo="e8d33e61-2122-462a-a787-e4e1260c659d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="aa744a89-5a83-4b38-9060-a69f0e52f8a7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="fdee1a5d-758e-4132-a902-42bbb3f77cb1" connectedTo="82a98a48-bdbe-4152-9d4e-f0733c14ddcc"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="23556d33-4971-4c0f-8708-7b384cfde7be"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="ac2dc546-b72a-4aa0-b6ca-4c8beb4a6a3e">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1a08725d-d721-4176-a6e3-43ba4ea3afb2" connectedTo="6457fed0-40c6-487f-8e8b-7a1ffb0cb70a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="51665b7a-0c68-44d4-b546-66b29abe558c"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="189" buildingYear="1998" name="Pand van Minton, Treharne &amp; Davies Holland B.V., Buys Beheer B.V." floorArea="609.0" id="643f0198-c1be-444a-86bc-0ec36a7abb47" sector="d9e69fd1-d05f-4ba3-b3f7-28509f75add6" originalIdInSource="0716100000036398">
        <KPIs xsi:type="esdl:KPIs" id="e8912338-52b7-4695-9136-9224d96bfa3f">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="54692635-6725-41fa-8cab-7bf9736a5233" value="11229.002605841646"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="086df0dd-c22f-46c9-9808-5c4cee373e8f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="614e2480-fd26-4924-a020-d7f3e5a536b2" value="38084.278369565225"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="72cd04a2-29ae-4c8c-8fa8-593755f23cdf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="30df27b6-fe30-4e52-a7b4-9dc8d2c48692" value="11229.002605841646"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="948410ca-d896-4993-bbf9-20c1081f40cf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="69682c4b-4ac9-4af3-a771-faf82ef1eb39" value="11229.002605841646"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="1d0b5d30-5275-415d-bfc4-f8d18764f21a" value="38084.278369565225"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="c79dd7ac-f4c2-49d0-8d0f-3446e69b89d5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8818b0a4-4572-4bee-8a53-6941d152ddae"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="d412408e-ce45-46f5-ab26-ae857d2775ab"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="802d52e4-8875-40c1-8db4-ebf4d4f8a8fb" value="38084.278369565225"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="bbd208f3-9cb9-4373-9137-526c4bd8b478"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9c3985a8-f2cc-427d-a042-ba9b84e55b24"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="4adb491b-3ffb-4a1e-96a3-8f3d44030556"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c881dc7c-13c3-4abe-bf6d-f387c9b719de"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="9f1dd6a1-e9cc-4137-88f0-821b62a8cb54"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="189.70460050025736" height="12.841016999989387"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54456197915493" lon="4.2279617408553465"/>
            <point xsi:type="esdl:Point" lat="51.54448700890006" lon="4.228032552662506"/>
            <point xsi:type="esdl:Point" lat="51.544451732486635" lon="4.227936296724802"/>
            <point xsi:type="esdl:Point" lat="51.54441831731898" lon="4.227845529553147"/>
            <point xsi:type="esdl:Point" lat="51.54436163822971" lon="4.227898891408782"/>
            <point xsi:type="esdl:Point" lat="51.54443141453134" lon="4.228089245843681"/>
            <point xsi:type="esdl:Point" lat="51.544485501189406" lon="4.228038242592428"/>
            <point xsi:type="esdl:Point" lat="51.54451961326007" lon="4.228131313393972"/>
            <point xsi:type="esdl:Point" lat="51.54459722145812" lon="4.228058185337036"/>
            <point xsi:type="esdl:Point" lat="51.54456197915493" lon="4.2279617408553465"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="60941e74-f033-419b-bdbc-f941a931b08f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="677bcd5f-ed7f-473d-8b72-26e66aecfe67" id="cce9147b-7423-48f1-9e7a-e8811e4c7918">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="2291a2d0-be18-48df-8176-f3f53a0e0686" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13710340213043481" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a8b3fec2-c476-460d-85f4-e2dde3a5754d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="0a82894c-490f-4c76-be8e-5532cb7202df" id="c58cb8cc-2325-4b90-a67d-9007fda24d90">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="dbeaba48-2eba-4f0e-8841-42d402583abb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.3553979324748881" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="fec16963-3cf9-41dc-90c2-7030bf624895" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="fdf3a22b-9bff-43f0-b08e-fa3133746ca8" id="64017322-d12a-4840-b30b-42608c0a8044"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="0a82894c-490f-4c76-be8e-5532cb7202df" connectedTo="c58cb8cc-2325-4b90-a67d-9007fda24d90"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="7f0133cb-dec7-4a2c-bea2-3f449e0895c3">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="677bcd5f-ed7f-473d-8b72-26e66aecfe67" connectedTo="cce9147b-7423-48f1-9e7a-e8811e4c7918"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="df56ae0d-0f8a-444f-b600-675f55351aa4"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="a152711f-d821-4981-8b7a-575b6c8142e3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="fdf3a22b-9bff-43f0-b08e-fa3133746ca8" connectedTo="64017322-d12a-4840-b30b-42608c0a8044"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="f528b021-bf3e-4734-a3f3-d5ea32421d4e"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="288" buildingYear="1998" name="Pand van Sitters Zakelijke Dienstverlening" floorArea="313.0" id="a4270887-a820-4f8f-a6d1-b5454d3f7c9b" sector="2e46b4fc-3e20-4a95-b792-877b334d770b" originalIdInSource="0716100000142630">
        <KPIs xsi:type="esdl:KPIs" id="82d620e1-ac75-418a-b49b-d9eaa27c050b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="f1721554-9033-4c40-b024-d887b223c7a0" value="6589.180357525713"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7a9529da-6d55-4d1b-bfbd-0a6d5fe7e6b4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d84080e5-14b9-42f8-b6dc-bdbc0027233e" value="19115.148152173915"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="ca6910fd-51eb-400c-a94c-8d0ef4840d91"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="e323fb87-886c-49fd-ab37-c57405c04137" value="6589.180357525713"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="d220a8fa-ed34-47ff-a8c1-27023880e7a6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="6a7153f5-d63c-43fe-a860-64f07ce55501" value="6589.180357525713"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="c448b726-0f2e-4295-8e11-a560c747a632" value="19115.148152173915"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="499ab122-a074-4402-a387-bb87c6305f60"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f0a332ee-cb94-42b2-b755-b9f618c1cb69"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a0398bbb-9911-4e9d-aa1a-f17a4d51907d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="604ef3ea-6d41-4272-a1ac-b6c4411463d1" value="19115.148152173915"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1b763e78-4873-47f8-8fd5-0f9f25ae63ea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="1cff2467-c252-485c-854c-abde97c2fb6c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="ef2e02b9-6886-40fe-8540-5079c8475cf2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="7b41b8a4-a157-4224-bfc0-183f3816fbe4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="e0e501ec-46a4-453f-8238-260525e11a35"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="288.0265400005197" height="4.83"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54454964963538" lon="4.22854039383033"/>
            <point xsi:type="esdl:Point" lat="51.5445353413966" lon="4.228547030147413"/>
            <point xsi:type="esdl:Point" lat="51.54452538669627" lon="4.22856481510657"/>
            <point xsi:type="esdl:Point" lat="51.54452282436479" lon="4.228588351332896"/>
            <point xsi:type="esdl:Point" lat="51.5445231086261" lon="4.228691367971873"/>
            <point xsi:type="esdl:Point" lat="51.54456842099791" lon="4.228691048653603"/>
            <point xsi:type="esdl:Point" lat="51.54456837592411" lon="4.228674715324815"/>
            <point xsi:type="esdl:Point" lat="51.5445794590465" lon="4.228674634529567"/>
            <point xsi:type="esdl:Point" lat="51.544668621752244" lon="4.22892096831771"/>
            <point xsi:type="esdl:Point" lat="51.544745801637006" lon="4.22884811180497"/>
            <point xsi:type="esdl:Point" lat="51.54465525202898" lon="4.228600630912317"/>
            <point xsi:type="esdl:Point" lat="51.54463694941144" lon="4.22861783586277"/>
            <point xsi:type="esdl:Point" lat="51.54461172401308" lon="4.2285488160894085"/>
            <point xsi:type="esdl:Point" lat="51.544577603617284" lon="4.228580884724698"/>
            <point xsi:type="esdl:Point" lat="51.54456735558283" lon="4.228580872160236"/>
            <point xsi:type="esdl:Point" lat="51.54456753257884" lon="4.2285397935699836"/>
            <point xsi:type="esdl:Point" lat="51.54454964963538" lon="4.22854039383033"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a6e140c0-275e-4d1f-b4ce-278031d7f2f5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f42bae3e-4faf-4b90-a827-91e67f2231c2" id="6dd6e558-34e3-4a66-bcdd-0049499eb86d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="472d4536-4bd6-4341-9153-99200e17e39e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0688145333478261" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="757ae7ea-d5f9-413e-94c9-412817a6e73b">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="41e0080a-070b-4867-b041-1a6bc01917d7" id="33f44a63-e674-4894-b261-4d1c0cfebde8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="6e502b6b-b26e-4844-9f07-9dce930c4829" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2085475583156888" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="539dca70-1839-439d-aa4a-1b32c6a41b3a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="89fa2afa-e62d-44bf-b880-69278efd2301" id="697325bb-0609-4c7e-9e7d-5a47d95c5c9f"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="41e0080a-070b-4867-b041-1a6bc01917d7" connectedTo="33f44a63-e674-4894-b261-4d1c0cfebde8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="54bf0092-5dfc-4ff1-a818-3ae9e4b99810">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f42bae3e-4faf-4b90-a827-91e67f2231c2" connectedTo="6dd6e558-34e3-4a66-bcdd-0049499eb86d"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="a21d0b08-591f-4910-a023-c5e4fe24852b"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="ccc196f9-c177-4fb4-b120-445a76a2d9a7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="89fa2afa-e62d-44bf-b880-69278efd2301" connectedTo="697325bb-0609-4c7e-9e7d-5a47d95c5c9f"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="eb019172-0e4d-4dc2-be89-86c2a81e7180"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="138" buildingYear="1998" name="Pand van Bouw &amp; Handelsonderneming de Eendracht, L. Luijks Beheer B.V., Van Dijke Advies, PiB Virtual Assistant" floorArea="194.0" id="74879a0c-6f0d-40a9-9f0d-b72a813ef08d" sector="6022680d-e90e-49be-90b7-60e31b7ab28b" originalIdInSource="0716100000248832">
        <KPIs xsi:type="esdl:KPIs" id="3e2355db-4c44-400b-9a6d-4db09282074d">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="3a852e2b-c80b-492d-a820-1bfbee5fe1d0" value="4636.874166971682"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e1a95ab3-ddf5-4b26-a15d-608d8379dae9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3ed6b76d-841e-47d5-a006-928a3ba77373" value="11847.727608695652"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="2f5026bc-656a-42b8-8be5-b728f199ea66"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="8bac2aa5-454f-4c82-a2f5-2379c072d5f1" value="4636.874166971682"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f540af34-a617-40b0-ba3c-3fb2908a4d1d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="47140e22-654c-4ca5-b6ec-e323b602e0d4" value="4636.874166971682"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="15fb882f-f42b-4b78-87f8-74a88e95dff6" value="11847.727608695652"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="f7495663-4a00-43e0-bfab-251beb2e09ed"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="6bc5de24-82f2-4860-a400-f1c1fa21676a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4b860dd3-0111-4345-82a5-c09f20aa47d8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="93a11ce1-c9b2-467c-99b4-89a9db17eddc" value="11847.727608695652"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="dafe8e9a-7b33-4cf8-a5a8-97ff47808371"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ec5b560d-bf36-4ea2-9e3c-14da6f00fc43"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="23395ace-3adb-448b-8242-848e11ea11e9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e6e5c731-1086-4741-8d89-852ff6a9174c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="20114298-06de-4a77-a34a-7609701d55a9"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="138.94463099989835" height="5.5849585148818575"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54471701645682" lon="4.22770958058465"/>
            <point xsi:type="esdl:Point" lat="51.544657137514164" lon="4.2277656917829916"/>
            <point xsi:type="esdl:Point" lat="51.54469743347896" lon="4.2278749682863825"/>
            <point xsi:type="esdl:Point" lat="51.54472620845508" lon="4.2278477786605615"/>
            <point xsi:type="esdl:Point" lat="51.544739845105184" lon="4.227884900627515"/>
            <point xsi:type="esdl:Point" lat="51.54476600189463" lon="4.227860199866322"/>
            <point xsi:type="esdl:Point" lat="51.54477258932066" lon="4.227878139614324"/>
            <point xsi:type="esdl:Point" lat="51.544796555011395" lon="4.227855484305336"/>
            <point xsi:type="esdl:Point" lat="51.544800649849336" lon="4.227866826977314"/>
            <point xsi:type="esdl:Point" lat="51.544808407559906" lon="4.22785956463101"/>
            <point xsi:type="esdl:Point" lat="51.544807954749835" lon="4.227858321899347"/>
            <point xsi:type="esdl:Point" lat="51.54483755794446" lon="4.227830346953613"/>
            <point xsi:type="esdl:Point" lat="51.544815138699164" lon="4.227769675271874"/>
            <point xsi:type="esdl:Point" lat="51.54480922402349" lon="4.227775146129942"/>
            <point xsi:type="esdl:Point" lat="51.54479240764728" lon="4.227728316088879"/>
            <point xsi:type="esdl:Point" lat="51.544741518901496" lon="4.227776355030461"/>
            <point xsi:type="esdl:Point" lat="51.54471701645682" lon="4.22770958058465"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a0da1f7a-162d-4f56-97c8-710d9f3d9adc">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="11635c68-1064-4e1f-a662-168b7c82b837" id="b15d7a62-84a2-44d1-9678-bbc11c49bde5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="020a123b-8b9b-434b-b787-5161d0d2ba7d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04265181939130435" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="f7b39587-b30a-4214-bd48-2afcb34969a2">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="94f9462c-39d1-4677-8711-148c63473f0b" id="ba01b8b2-5a7c-4830-abd6-9c13c4440abf">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a1866bb7-a9ff-4608-9802-e11dd0233daf" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.14675706738465372" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="3eb2037c-48f7-42af-baa9-564563426f46" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8546fa11-1188-4b07-b1e0-20056dc91cee" id="3cde717f-059f-4d97-a557-56c2fcb303a2"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="94f9462c-39d1-4677-8711-148c63473f0b" connectedTo="ba01b8b2-5a7c-4830-abd6-9c13c4440abf"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="3e28d155-e79f-4e02-8a61-18c79576d71c">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="11635c68-1064-4e1f-a662-168b7c82b837" connectedTo="b15d7a62-84a2-44d1-9678-bbc11c49bde5"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="d844aadf-942e-43d4-a275-0792ba1341a6"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="bd99be28-a62c-4121-8908-7ee89f90072a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8546fa11-1188-4b07-b1e0-20056dc91cee" connectedTo="3cde717f-059f-4d97-a557-56c2fcb303a2"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="3cd08c43-9336-4c1f-9b1f-17fb646423f8"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="181" buildingYear="1998" name="Pand van Voordeelverhuizer" floorArea="182.0" id="7d7be9cc-8f89-482a-b290-97b1b7b894a1" sector="5db135b6-c748-44fd-ba3d-98bc0d98ac77" originalIdInSource="0716100000178222">
        <KPIs xsi:type="esdl:KPIs" id="0766c3fc-8e6c-45e4-a759-6d9af84de70b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="2fd789fc-cc22-4666-a646-be1a465b0c0f" value="1785.053002045466"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e28490b1-1d1e-48b9-bc2e-350f4be3ccfd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="f0520a8f-a24e-4a5e-b4ab-e4bee1f7d52c" value="18404.20136231884"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="824bebd8-f533-4bbb-a6a0-08177496734c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="cd4b2c8e-eeae-477e-ab29-2c261120d7fc" value="1785.053002045466"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="97145107-17a9-4aa2-88ef-79ba1a12144b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="a1f708b7-bb92-4c04-84ef-afeb4828aa6a" value="1785.053002045466"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="fc93afd4-b092-4401-837d-ae451a0e22d0" value="18404.20136231884"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="2e537ab5-eeef-44b3-8688-491c439dbd61"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="0a3653d1-f805-4783-8484-5a2a7d28dd49"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="40c16609-78c3-4bbd-aab4-12f7ed45c689"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="3f33d965-cd49-4b65-9c9d-86bb99c3bd52" value="18404.20136231884"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="88adce49-344d-4ce5-83c7-9e36730b5a60"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="079431bd-5962-4955-b7d9-e4de4e13ea4e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="38b7caf9-56cf-483f-86e6-d4cc96b1dcba"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="806f3d91-1db4-46c0-8005-8063ee8a7fd9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="de826cc5-fca0-4d88-8bfc-aeda93acd9da"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="181.72112800012923" height="3.1"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54468062649141" lon="4.228314814513643"/>
            <point xsi:type="esdl:Point" lat="51.54469376739718" lon="4.22835091119871"/>
            <point xsi:type="esdl:Point" lat="51.54468290130959" lon="4.228361092890779"/>
            <point xsi:type="esdl:Point" lat="51.544714986361335" lon="4.2284492133145175"/>
            <point xsi:type="esdl:Point" lat="51.544720314350734" lon="4.2284444062883875"/>
            <point xsi:type="esdl:Point" lat="51.54472600994791" lon="4.228454006950455"/>
            <point xsi:type="esdl:Point" lat="51.544733709156866" lon="4.2284589718830805"/>
            <point xsi:type="esdl:Point" lat="51.54474216060695" lon="4.228458208470654"/>
            <point xsi:type="esdl:Point" lat="51.544749399388486" lon="4.228451190144566"/>
            <point xsi:type="esdl:Point" lat="51.544753963350225" lon="4.228440044672695"/>
            <point xsi:type="esdl:Point" lat="51.54475502556811" lon="4.2284265952823805"/>
            <point xsi:type="esdl:Point" lat="51.5447525614201" lon="4.22841379810482"/>
            <point xsi:type="esdl:Point" lat="51.54483198789001" lon="4.228339989421128"/>
            <point xsi:type="esdl:Point" lat="51.544837955952616" lon="4.228356215010206"/>
            <point xsi:type="esdl:Point" lat="51.54486621436233" lon="4.228329500131071"/>
            <point xsi:type="esdl:Point" lat="51.54482169333668" lon="4.228208393258486"/>
            <point xsi:type="esdl:Point" lat="51.544793458485124" lon="4.22823476157595"/>
            <point xsi:type="esdl:Point" lat="51.54479951586168" lon="4.2282509271909126"/>
            <point xsi:type="esdl:Point" lat="51.54478128891011" lon="4.228268505252197"/>
            <point xsi:type="esdl:Point" lat="51.54476787252318" lon="4.22823273272476"/>
            <point xsi:type="esdl:Point" lat="51.54468062649141" lon="4.228314814513643"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="f5488ee8-7633-4c18-bb88-d6dc83497bc6">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="bcf27d50-7d8c-42f7-8930-465c12bc34b3" id="69814c74-a96d-4d64-8324-a2951138daad">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="56b711b3-d00f-4211-a6fc-8703809ff012" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06625512490434783" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="c409785f-5e09-4e6f-a443-24bcec81cd50">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c9df50e9-4f2d-4129-a2e1-3dacc4fa3558" id="97a56ab2-571e-4618-83ef-7f6ac7a63c94">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="5719eea4-bfee-458f-986d-84e71a1b5a34" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.05649692751473899" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="4e42231c-bfba-41e0-bf52-427c2ed99101" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b1bdd6a9-0068-478a-93e4-6466414b662e" id="30668056-50fa-4891-99d1-9f8e3b6842f2"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c9df50e9-4f2d-4129-a2e1-3dacc4fa3558" connectedTo="97a56ab2-571e-4618-83ef-7f6ac7a63c94"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="a187bda3-40a5-4b8c-899e-833a8e8fcd99">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="bcf27d50-7d8c-42f7-8930-465c12bc34b3" connectedTo="69814c74-a96d-4d64-8324-a2951138daad"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="33906a42-bde4-4189-867e-6ff6857f2d4e"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="64ecf181-a692-4b55-8b3f-0a514229ee3a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="b1bdd6a9-0068-478a-93e4-6466414b662e" connectedTo="30668056-50fa-4891-99d1-9f8e3b6842f2"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="8534dd4e-6070-4b9c-89a8-b7361aec5b2d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="612" buildingYear="1998" name="Pand van Auto Lindhout, Axces Emission Technology B.V., Axces Wet Exhaust Systems B.V., Axces B.V., Axces Holding B.V., AXCES Industrial Stacks B.V., Axces Steam and Flow Control B.V." floorArea="557.0" id="f4447d20-6d96-468e-a2d5-ae9eb8b5f5b8" sector="17efb39d-0f99-4d01-aa6d-384e3e909e0a" originalIdInSource="0716100000213572">
        <KPIs xsi:type="esdl:KPIs" id="91cbbc71-9db7-465c-a382-ed567d59a811">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="481c08d7-acc8-481d-97df-5989dcbf044b" value="4691.02948563616"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b000887c-e4f1-41aa-98c2-b2218576a891" value="746.7636851295098"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8de8a4f9-0935-4161-88b4-69d6b5087ec5" value="22135.816571428575"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="78eff0e5-5571-429f-bbb3-02ac7320d013" value="4425.988571261822"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="a478b688-3ee8-4b9e-a80f-ab878a4d7ea1" value="4691.02948563616"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="16868b75-49d0-4f67-8db8-cbd357402a76" value="746.7636851295098"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="bf37ee8e-2d07-481e-ba23-c1e7fe603067" value="5437.79317076567"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="02602e5f-2be5-4b35-b28b-2ac629cc6245" value="22135.816571428575"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="fb0ad313-4cbe-434f-8379-3a36965fc6f5" value="4425.988571261822"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="25976300-006a-4edf-97c4-b40c8edfd9cb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a8ca720a-c947-41b1-998c-700df9e3479f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="66c88e82-f6b6-4a9f-b059-e52f8a6c9d26" value="26561.8051426904"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="12fca183-4f88-46bc-9993-bbcbf9cd26b2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="23e68bce-781b-47b4-83e3-7852cef1893f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="7fa54d06-3428-44c8-8394-64ba88005034"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="70d4ee89-d913-4e88-af20-a4f04c5b5450"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="5aea93c1-c1a4-49dc-b578-61c3e64fd244"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="612.4450489994424" height="5.88"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54515041511694" lon="4.22822718336034"/>
            <point xsi:type="esdl:Point" lat="51.5452657447001" lon="4.228541290580583"/>
            <point xsi:type="esdl:Point" lat="51.54542066311717" lon="4.228394853378264"/>
            <point xsi:type="esdl:Point" lat="51.545305362654155" lon="4.22808009593546"/>
            <point xsi:type="esdl:Point" lat="51.54529721350033" lon="4.228087771994494"/>
            <point xsi:type="esdl:Point" lat="51.54528901773817" lon="4.228065374866391"/>
            <point xsi:type="esdl:Point" lat="51.54529692638299" lon="4.228057921200104"/>
            <point xsi:type="esdl:Point" lat="51.54525581939346" lon="4.227945708261753"/>
            <point xsi:type="esdl:Point" lat="51.54517878630631" lon="4.2280188084895896"/>
            <point xsi:type="esdl:Point" lat="51.545228288979146" lon="4.22815364398383"/>
            <point xsi:type="esdl:Point" lat="51.54515041511694" lon="4.22822718336034"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="15e7dfb8-40fe-4922-b658-323820b1a3ae">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f892f691-950f-4692-a3e1-641beee25fac" id="e1686186-6fa7-4dde-882f-13a90b97c779">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="3490081b-f104-4faf-a056-61b22a890511" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07968893965714287" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="469dcda3-a3e1-4ccd-bafd-69bbd1a7ffda">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f892f691-950f-4692-a3e1-641beee25fac" id="d52333f3-4307-47a1-9f7d-cf56bc976063">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="def0dbcf-8393-48d6-afd7-0542cf940cdd" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.01593355885654256" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="8ed7bb07-1685-4daa-ac1c-687d7585a160">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="3c839eaa-6ff1-4745-b417-7f6d7f47523c" id="67a541a8-b64e-4afd-8a96-67dec35bcdd9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e2ae91a0-2779-4499-a882-7d3044de16e8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.14847108322038446" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="093fa5f4-a242-479a-9949-7d921eb20b87" name="Gasketel" id="4705b88a-ddcf-46c7-aba3-00d591dcced1" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="bd6531ab-af27-4733-b5c8-df9598418cdc" id="c125ae8a-6190-4902-b0a5-401dd9b70fc4"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="3c839eaa-6ff1-4745-b417-7f6d7f47523c" connectedTo="67a541a8-b64e-4afd-8a96-67dec35bcdd9"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="a19c0453-2d27-46ba-8975-dad4a4c0c159">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="bd6531ab-af27-4733-b5c8-df9598418cdc" id="fb29efe8-56f8-4b36-9d11-f32c7b1605bc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="2191ef1f-5ff8-422f-b7f6-52a0184869b5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.023635070634348984" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="6d9267de-b157-4c33-8254-701579afdea8">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f892f691-950f-4692-a3e1-641beee25fac" connectedTo="e1686186-6fa7-4dde-882f-13a90b97c779 d52333f3-4307-47a1-9f7d-cf56bc976063"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2c40efcf-7394-4e81-b8c6-6dddf4f15545"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="ba3b0c98-8fd3-4e43-b4f4-0975707ad873">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="bd6531ab-af27-4733-b5c8-df9598418cdc" connectedTo="c125ae8a-6190-4902-b0a5-401dd9b70fc4 fb29efe8-56f8-4b36-9d11-f32c7b1605bc"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="0350203f-71cb-47ff-b9ba-4c3538d4a04a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="305" buildingYear="1997" name="Pand van THIMAR" floorArea="391.0" id="e2a7d794-d5b9-426b-84a6-025909a2b9fc" sector="236ddf17-7d02-4613-a1fb-0c216952125b" originalIdInSource="0716100000213573">
        <KPIs xsi:type="esdl:KPIs" id="d54da8c6-28ce-4d51-a5ac-0782aecdec67">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4213d19d-abfd-4428-b812-223c00bab3de" value="6533.392185852754"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d31bbf90-4c30-454a-a3ed-6ada5c0f05d7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="f0177a30-9caa-4c5a-9c25-305389a6b893" value="25026.252500000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="be40e0fd-538a-4b2e-b2e8-b11aa298de4b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="91207303-c6d3-4159-890f-1c6f068addd0" value="6533.392185852754"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="3b5c2bc7-831b-4b40-9778-b0d67ce7bae5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="44ac30f8-bba7-43e1-9b8d-9f41fa12d0ad" value="6533.392185852754"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="2800ac63-fefb-49b7-939a-824dae45b043" value="25026.252500000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="5d9c2866-0f47-454a-be98-5f7c167c6570"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="30b93c02-dd5e-4e52-94e6-319f4c06ee7a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f1a59373-dd37-4392-ac4f-c0d792964a92"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="51bee074-d9c4-427d-bc5e-31bbb9d6c728" value="25026.252500000002"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="00c5c079-e5ea-4983-947a-943af0edd4ea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ff5ed3dc-3da6-4aa2-bd7f-de38971b7f51"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="6e080b2e-0b38-458e-ba1c-7fd68c7f2168"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="0c8ba727-c4d6-41b7-bd4c-ba526170d9ec"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="f3288289-0232-48f0-9683-63c31249dcb7"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="305.3662374998666" height="5.121718801675589"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54540101368742" lon="4.2276365154325095"/>
            <point xsi:type="esdl:Point" lat="51.54527833983113" lon="4.22775201462807"/>
            <point xsi:type="esdl:Point" lat="51.54531491432884" lon="4.227851338754406"/>
            <point xsi:type="esdl:Point" lat="51.54529730452544" lon="4.227867690380018"/>
            <point xsi:type="esdl:Point" lat="51.54533260497824" lon="4.227964552963553"/>
            <point xsi:type="esdl:Point" lat="51.54540153027068" lon="4.22789967530559"/>
            <point xsi:type="esdl:Point" lat="51.54542051801596" lon="4.227951539928694"/>
            <point xsi:type="esdl:Point" lat="51.54549175878736" lon="4.227884469272987"/>
            <point xsi:type="esdl:Point" lat="51.54540101368742" lon="4.2276365154325095"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="5a0dc3fe-11e7-4c23-b8e3-44cf6b0bd7e4">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="30ed6a52-0a8b-4d4e-aa85-25298a838335" id="c5024636-cb98-48b8-8ed8-919f261a7490">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="4e1b65f1-3a38-401e-8f1d-f286aec032bc" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.090094509" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b47570ed-3b64-43b3-a021-e0eb26954e5c">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c20541ea-2064-4546-8f43-8b70902033e3" id="a35dff3b-d3f7-4cd4-ac13-121453c13461">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a23bef14-4bd7-4dd4-bc5a-26028957d53f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.20678186268223964" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="c8f7db1a-367e-4998-93b6-6ab54be0bc86" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="881dc89a-f118-4146-a70e-32fcf311b6d9" id="d800df45-cf7c-4c72-8ede-8a98ddc57141"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c20541ea-2064-4546-8f43-8b70902033e3" connectedTo="a35dff3b-d3f7-4cd4-ac13-121453c13461"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="513c593a-be30-4027-b3cd-2ce3bc7e01e8">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="30ed6a52-0a8b-4d4e-aa85-25298a838335" connectedTo="c5024636-cb98-48b8-8ed8-919f261a7490"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="32aa3792-04c2-4e3c-8b07-d92c055d8b8c"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="615bc7bc-252b-40eb-a37b-91f89b05aa91">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="881dc89a-f118-4146-a70e-32fcf311b6d9" connectedTo="d800df45-cf7c-4c72-8ede-8a98ddc57141"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="92341646-a8a7-4bea-958a-658db30b015b"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="843" buildingYear="1997" name="Pand van Metaaltechniek Tholen B.V." floorArea="784.0" id="9b8589ce-a277-4cd4-87b3-3a106215c919" sector="d5d84dd7-e9a6-4cf2-bed5-b430cb5bff1b" originalIdInSource="0716100000213574">
        <KPIs xsi:type="esdl:KPIs" id="41265e2a-f21d-4e40-bdfd-cef166bafa81">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="17595b5c-1d50-4cf4-88f0-efb0ba88913a" value="6939.1816238511055"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="2f3bfe88-a711-43f9-b704-30e2b917507a" value="450.5352354645426"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="cfcd65f9-4d23-4391-aff0-7fd184c0270e" value="31157.056000000004"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b1adb11d-711a-4a2f-a0cd-45bcbf1d5c0f" value="76128.7972532931"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="afa8bf84-7317-42ef-8224-ab51e183f88f" value="6939.1816238511055"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f9906b7a-49dd-4811-9e32-1c8044d10c9f" value="450.5352354645426"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ccd88ddb-a5d1-42b2-b152-6d8a75b4f4a1" value="7389.716859315648"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="b02e6b4b-c1c5-431c-9112-637cba216c30" value="31157.056000000004"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="8862e53b-6b1b-43fa-8bbf-06da91cfd7a9" value="76128.7972532931"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="6cf3515e-b7b7-4c3d-abb0-bff3e8a10304"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="cb824a8c-6dce-4c88-9ed6-4eb45d17ed2b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ec36c94f-1d05-4932-86ec-8c213bea766d" value="107285.85325329311"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="7c9b33ef-8105-48bf-9593-13d106cded27"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9c71e7b0-2214-4be8-a96b-91e7b7a3649b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c504db88-582d-4032-a5fd-f1d5ea3c94e1"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="d31c1533-85b7-4d4c-90c1-8c1d3d138b11"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="4d60d52a-1dcc-4820-a7b9-9ca8f3e61123"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="843.1651825010347" height="7.62"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54567951806244" lon="4.227871560780511"/>
            <point xsi:type="esdl:Point" lat="51.54554397226313" lon="4.227501567842057"/>
            <point xsi:type="esdl:Point" lat="51.54542587644335" lon="4.227612769901878"/>
            <point xsi:type="esdl:Point" lat="51.54560954465551" lon="4.2281144189430195"/>
            <point xsi:type="esdl:Point" lat="51.54567765049107" lon="4.2283004386513285"/>
            <point xsi:type="esdl:Point" lat="51.54579580930458" lon="4.228189178492591"/>
            <point xsi:type="esdl:Point" lat="51.54573258246748" lon="4.228016543059462"/>
            <point xsi:type="esdl:Point" lat="51.545727676187205" lon="4.228003144744249"/>
            <point xsi:type="esdl:Point" lat="51.5457270651641" lon="4.2280013581626035"/>
            <point xsi:type="esdl:Point" lat="51.54567951806244" lon="4.227871560780511"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="2065b415-2463-4c91-b8eb-f550574352ed">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1be93c1c-7b0a-4849-bf52-959aaf518060" id="68bc3edf-6ccc-4e98-9339-b020f2131f67">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="25482aaf-8163-47b2-ae8e-1a886af6b933" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1121654016" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="1e462312-f579-4066-bebd-355ed84b7efb">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1be93c1c-7b0a-4849-bf52-959aaf518060" id="dd3b52ce-761d-4523-bb10-1f0b33887346">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="a5200c37-e633-44c0-a4ab-b10bd4a72c35" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2740636701118552" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e17206e9-9b86-4a79-bf00-7cd5fc8364ed">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="aefa763d-0eac-464d-8938-7add3ecae48d" id="f1213e91-acdf-42d9-8c47-8430b9fb891b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="99f3eed0-52de-484e-b007-0d396866450d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2196250983948875" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="6c04cc8e-09c3-4ad2-80bf-80c4ebd702d2" name="Gasketel" id="90d7bfa9-d9b4-494c-9621-3438fbf82c6f" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="70843e7a-f872-4719-8ee8-f9262323b43d" id="c924d75a-af70-4629-9f44-d7db3d49a14c"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="aefa763d-0eac-464d-8938-7add3ecae48d" connectedTo="f1213e91-acdf-42d9-8c47-8430b9fb891b"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="ae487e4e-bc57-42cb-b01c-e2c864f489ed">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="70843e7a-f872-4719-8ee8-f9262323b43d" id="c7e11bc1-7cfd-4ff1-9451-e377b4267455">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="f179750e-033b-4547-ae8e-adc049664e39" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.014259440202452773" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="e787cff3-7108-43a4-82dc-4c45a7006fbc">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1be93c1c-7b0a-4849-bf52-959aaf518060" connectedTo="68bc3edf-6ccc-4e98-9339-b020f2131f67 dd3b52ce-761d-4523-bb10-1f0b33887346"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0e449913-978b-408f-94dd-ef5f2053e563"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b9d3d088-da23-41b1-88ef-e148ef6d4f3d">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="70843e7a-f872-4719-8ee8-f9262323b43d" connectedTo="c924d75a-af70-4629-9f44-d7db3d49a14c c7e11bc1-7cfd-4ff1-9451-e377b4267455"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="1fb835a8-13a9-47f0-b5ab-0286181c7fa3"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="640" buildingYear="1974" name="Pand van Multika B.V., Allplast B.V., Stascogroup B.V." floorArea="622.0" id="971b5ae5-c3ea-429c-83eb-c8e922c79c59" sector="66ce756d-8cc4-4867-882b-1d347b6e4c13" originalIdInSource="0716100000142285">
        <KPIs xsi:type="esdl:KPIs" id="731eb62b-9b79-42bb-861c-0a6f9c5d304b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="19664d13-0688-4098-9ed7-251ba261a5f0" value="7719.002060985185"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="4a4bb859-75fc-48e2-9613-4e5462070f34" value="23763.092749377418"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a50e7c57-37fa-40b3-a7f6-d2ce2710894f" value="24718.990857142853"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="37e18989-714c-42bd-bf36-8f6e6a7eadd4" value="288628.81921375304"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="a84e7456-b4fd-4a9c-b419-8e826046a12d" value="7719.002060985185"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="576529c1-f2da-4f15-b0b2-2c752dbea560" value="23763.092749377418"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="7043af6d-22e3-4221-b8dc-8574e2342183" value="31482.094810362603"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="d469490d-c473-4d43-a087-c7176987c97b" value="24718.990857142853"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="727c95f5-45f8-47f3-95e7-b118f3d5fe22" value="288628.81921375304"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="6a51ab9f-cc90-44da-a45c-62650dae8046"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a6774ef0-79f4-413c-a7c7-05119a399308"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="770ab3be-f62b-488a-a327-ad90491f97b8" value="313347.8100708959"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="eb58d869-0f99-4f7d-b4e2-efbcf08cdc1d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="87c4b8c3-e7c7-4717-9f1a-c019c23c030d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="5390c91d-f754-4d82-8eb3-5a31d62253a4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="7fb4704f-56c2-4fc8-ba16-612d359768a0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="b1548187-3303-4af9-ad34-0ab39b9fdb25"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="640.963987999967" height="4.819999999999999"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.53869649968509" lon="4.229396354212664"/>
            <point xsi:type="esdl:Point" lat="51.538542360086545" lon="4.229230515183206"/>
            <point xsi:type="esdl:Point" lat="51.53840733244316" lon="4.229697040040844"/>
            <point xsi:type="esdl:Point" lat="51.538524817318255" lon="4.2297844010141565"/>
            <point xsi:type="esdl:Point" lat="51.53855913368219" lon="4.229666822197087"/>
            <point xsi:type="esdl:Point" lat="51.538607539807565" lon="4.229702938630102"/>
            <point xsi:type="esdl:Point" lat="51.53869649968509" lon="4.229396354212664"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="868d3c64-0af0-4fd1-bfb7-5f8d611098ec">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4c8c5c93-6eb8-44b8-8462-7e3efd77c0b8" id="7a8b9dd6-8fd1-49d3-874f-a072330c23a7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="f4b64547-3ec9-4155-88e8-8777163f74a5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08898836708571427" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="d824fd0e-9ec2-4197-be17-c8716c966228">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4c8c5c93-6eb8-44b8-8462-7e3efd77c0b8" id="a4a4a312-d92a-4069-8ce4-1154e19eebd3">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="ac1355ca-403c-43e5-b057-226c8a02d549" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.039063749169511" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a5e65d80-8cae-4ab3-9070-262ef87565a8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="bf7b7c19-3942-47f3-9532-de38cf3024e9" id="075b959c-0033-4c6f-b37a-019d8f2fb228">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a2fff7e4-2c47-495d-ada4-621cfa7a6c49" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2443064152301811" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="106e53d3-c877-454e-8c4a-1bd7ce792e37" name="Gasketel" id="bcee3386-d3e8-4a33-9781-64e14e9ba36a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="93e168a2-89c1-4442-9966-3035c132de07" id="624327b9-29f6-4738-af31-b7a9c0197ffb"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="bf7b7c19-3942-47f3-9532-de38cf3024e9" connectedTo="075b959c-0033-4c6f-b37a-019d8f2fb228"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="721e1bd6-e8f2-4f8f-ac34-200d93e5b70c">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="93e168a2-89c1-4442-9966-3035c132de07" id="b5263491-952f-44af-b1bc-4539e3d70cf1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="8412fd55-2963-4d48-b3ab-5c5e418cf927" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.7521018855177952" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="b9ebdf36-dbf2-4dfa-a369-f1b386bf3981">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="4c8c5c93-6eb8-44b8-8462-7e3efd77c0b8" connectedTo="7a8b9dd6-8fd1-49d3-874f-a072330c23a7 a4a4a312-d92a-4069-8ce4-1154e19eebd3"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="07dfa3c3-4233-4904-b326-8e419580fb96"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="d42120e6-1c4e-4dff-a8da-85ad381d9b78">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="93e168a2-89c1-4442-9966-3035c132de07" connectedTo="624327b9-29f6-4738-af31-b7a9c0197ffb b5263491-952f-44af-b1bc-4539e3d70cf1"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="9246e06b-1054-44cd-84f8-6ed6f8ba50a8"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="83" buildingYear="1980" name="Pand van Jachtbouw van Broekhoven h.o.d.n. Wodan Jachtbouw, Marius Bal Jachtservice" floorArea="76.0" id="c4658d14-4b75-48d9-8d31-f7839bda1726" sector="601b2e98-31ed-4086-90ed-e96e54f0539a" originalIdInSource="0716100000036046">
        <KPIs xsi:type="esdl:KPIs" id="bd6aa796-e7ac-4260-ba05-a179b56c412e">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="87df2329-4a5f-43ee-af05-b4decdb0c33b" value="1354.9100625065587"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="6537716b-1586-4d25-bb5f-c0ee81eccace"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="051e4f1d-b25e-472d-9fda-458d70e2ef01" value="3566.9188571428563"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="4852ca03-1c84-4d5f-bad7-a2b387c2a969" value="3042.378320144903"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="c0140eea-8a23-4d05-bfd0-02404bee4d14" value="1354.9100625065587"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="a0e7dd1d-0a33-4867-8337-a197b9c17a9d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="d9c8de3a-f2c5-4162-885b-b41d79d6f75c" value="1354.9100625065587"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="f0e9a0d6-d1f9-4eee-8ccc-3fd4f4f373bf" value="3566.9188571428563"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9c544332-747f-4766-b026-b32ac6d4c7c3" value="3042.378320144903"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="48faae59-8933-4b15-8155-843f73b135cf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="40009a38-5f97-4296-ae91-2ab7f1c738d8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ebfe5be9-64ad-4a35-b17d-83cabc962e33" value="6609.297177287759"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="517c2cf0-959c-4f91-a31e-5316161f3151"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="8f517880-296a-4151-af75-439d90b60051"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="13353fdc-29c5-4c24-85b2-ec7a8e9166ed"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="1b862491-46e7-47bb-b6fa-d794d786a4cb"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="836e1a94-80b8-458b-997f-3e52b7530a68"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="83.01904750023239" height="5.02"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.53824155184587" lon="4.229449533910545"/>
            <point xsi:type="esdl:Point" lat="51.538266706477415" lon="4.229362676784404"/>
            <point xsi:type="esdl:Point" lat="51.53816486930281" lon="4.229286854236933"/>
            <point xsi:type="esdl:Point" lat="51.53813972457096" lon="4.229373797448489"/>
            <point xsi:type="esdl:Point" lat="51.53824155184587" lon="4.229449533910545"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="170e2668-b8e9-492c-a3e8-f3b080c558a9">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="95b73582-6caf-4a36-927e-ea903c839fab" id="fe15005a-d7bb-4abb-8def-7783ea02bf8f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="8b80f15f-b2a9-4564-8f9d-5724c746aaa9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.012840907885714284" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="d5715679-f2da-499b-b7c7-0c103b871780">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="95b73582-6caf-4a36-927e-ea903c839fab" id="94d38f41-5f71-4396-be57-5fcda716eb0b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="575472a4-19e9-41c8-82ef-ce0e2e32d98a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.01095256195252165" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a9037e44-4e41-4a2f-aed6-bd9cc07174a3">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="9cc2c01a-4ced-427f-8a14-dea6e4801dce" id="684a1174-d05c-4dae-a084-9cadd32115fc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0fb4a3f2-cba4-4eb8-9c20-a516171288f0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.042882903478332575" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="edafb7cb-4cf2-4a42-8ff8-d5f6dba7e19d" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c414402c-355a-4a01-84e7-f588bcb66d09" id="9aee9e29-8a24-4b3e-b565-a06ed2a5a11b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="9cc2c01a-4ced-427f-8a14-dea6e4801dce" connectedTo="684a1174-d05c-4dae-a084-9cadd32115fc"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="2f288fad-46cb-405a-b7b3-4f2fb64ab787">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="95b73582-6caf-4a36-927e-ea903c839fab" connectedTo="fe15005a-d7bb-4abb-8def-7783ea02bf8f 94d38f41-5f71-4396-be57-5fcda716eb0b"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="2c6c61d5-dcc8-465a-93db-6ba5e37e4455"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="db3d241a-50f3-448e-a90b-7d060923287b">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c414402c-355a-4a01-84e7-f588bcb66d09" connectedTo="9aee9e29-8a24-4b3e-b565-a06ed2a5a11b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="dcb6319a-805a-445b-ba6e-448394691a94"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="539" buildingYear="1980" name="Pand van Groothandel Helena, STS Import Export B.V., Carcenter Tholen, M. van Meel Holding B.V., MKM Cars, Lassaro XL B.V., Mabusana B.V." floorArea="502.0" id="847ae733-fb0d-4391-a165-9372214b7258" sector="dd8992ae-a6d8-447d-ad4d-1656a4227470" originalIdInSource="0716100000177897">
        <KPIs xsi:type="esdl:KPIs" id="d508480d-b7b9-4a1a-ace1-6dc39a91c02c">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="eb251b04-a8df-41e3-b931-b55e82baf574" value="7312.1464763882395"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="8e915d55-669c-4b4f-9125-3e5ba8e4f0cb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="cd7376ee-e939-4c4a-81cf-b699413cccae" value="19950.053714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="7a2b50b6-7b25-4a8b-92be-ca750493b70a" value="1582.399424821429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="9ded9a1f-9da6-4de6-9b76-88fb91a51c49" value="7312.1464763882395"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="79a20311-6892-408b-bd6e-0185f882ba91"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="3ec66233-29b1-45d2-ad49-5d471c38306c" value="7312.1464763882395"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="d899712b-2014-460a-aad6-56291219a8b3" value="19950.053714285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="f546c03c-48c7-487c-ac5a-3cec7a1d0613" value="1582.399424821429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="461533d4-04fa-4bc3-87bf-838a00de9fcb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="1ae6f71c-09a8-4807-92ee-c645ae981f59"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="e667ab8c-f36a-4737-ad13-710675c5b847" value="21532.453139107143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="8146e158-2fb1-437c-9db1-33a62b52729e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="d8571ca2-a203-4aef-b837-84d9b95156ed"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="d6abf70f-2e81-4ef5-9b38-c8110b5ab24a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="34d4f6d4-9393-48d8-819f-215930636eeb"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="07b6326d-8b47-4ef0-80ae-d2b25bddc678"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="539.5165480000915" height="5.0200000000000005"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.538018480961675" lon="4.229612945835063"/>
            <point xsi:type="esdl:Point" lat="51.53814061912822" lon="4.229704511806619"/>
            <point xsi:type="esdl:Point" lat="51.538165936004425" lon="4.229617679715059"/>
            <point xsi:type="esdl:Point" lat="51.53815981966827" lon="4.229591009256605"/>
            <point xsi:type="esdl:Point" lat="51.53814343159883" lon="4.229579174036482"/>
            <point xsi:type="esdl:Point" lat="51.538138272313994" lon="4.2295837741190345"/>
            <point xsi:type="esdl:Point" lat="51.538125728760974" lon="4.2295743635808165"/>
            <point xsi:type="esdl:Point" lat="51.53812531151444" lon="4.229575801292769"/>
            <point xsi:type="esdl:Point" lat="51.53811570249351" lon="4.2295686079762564"/>
            <point xsi:type="esdl:Point" lat="51.53812236188834" lon="4.229545749156935"/>
            <point xsi:type="esdl:Point" lat="51.538053196143736" lon="4.2294939021281515"/>
            <point xsi:type="esdl:Point" lat="51.53797808013626" lon="4.229437594090604"/>
            <point xsi:type="esdl:Point" lat="51.537977515108224" lon="4.229439540086838"/>
            <point xsi:type="esdl:Point" lat="51.53790404858447" lon="4.229384588446632"/>
            <point xsi:type="esdl:Point" lat="51.53782684368577" lon="4.229650016330456"/>
            <point xsi:type="esdl:Point" lat="51.53790251080532" lon="4.229706613205997"/>
            <point xsi:type="esdl:Point" lat="51.537885192063186" lon="4.229765982455498"/>
            <point xsi:type="esdl:Point" lat="51.53795795327346" lon="4.22982053461933"/>
            <point xsi:type="esdl:Point" lat="51.538018480961675" lon="4.229612945835063"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="98fdf109-db12-4476-97e4-e293672ad234">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5e9c334a-69ba-40de-906c-504c85e30b49" id="d2b6c2e1-0dd2-487d-aca3-435d59b83bdc">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d0c86289-899d-49a2-b466-29642c91d57a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07182019337142857" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="b09880a0-08a6-4872-a456-fdd8e1b1d608">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5e9c334a-69ba-40de-906c-504c85e30b49" id="35ee6adb-5048-4831-bb7d-1ede0f65874c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="33ad094d-7cd5-45fd-b669-35602dbc9ee9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.005696637929357144" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="20a889c3-bdba-420c-baf9-9b110009e9f9">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="5c71ecfa-48cd-49bc-81c9-f12aad259008" id="64dada68-c699-4c63-96b6-e104db5784a8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="06352196-7a15-4f07-bc82-59a781abc6a4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.23142943597768778" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="faf0a71a-be2c-46ac-af8a-e11e9b640012" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="63f74a08-9b83-4590-9290-80cebea70298" id="f139961f-6450-48b9-a72f-f1305df4d10e"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="5c71ecfa-48cd-49bc-81c9-f12aad259008" connectedTo="64dada68-c699-4c63-96b6-e104db5784a8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="94d3cf9b-df2e-44cd-a987-15eb3be1466c">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="5e9c334a-69ba-40de-906c-504c85e30b49" connectedTo="d2b6c2e1-0dd2-487d-aca3-435d59b83bdc 35ee6adb-5048-4831-bb7d-1ede0f65874c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="a4dafb29-237b-45de-bdb4-5aa2d9ff36ab"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b3fa7b69-9afb-4112-a2dc-d22e9cfa1cf3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="63f74a08-9b83-4590-9290-80cebea70298" connectedTo="f139961f-6450-48b9-a72f-f1305df4d10e"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="d0ab059c-0016-422e-b7de-2e59b0a7c1e6"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="381" buildingYear="1987" name="Pand van Nijsse Beheer B.V., Madeno Racing B.V." floorArea="337.0" id="87a22958-ebba-4612-93d3-d6954edbbe02" sector="62fe7401-a9c2-49b8-95c8-3888ce74a990" originalIdInSource="0716100000071841">
        <KPIs xsi:type="esdl:KPIs" id="4dcee57f-5727-4647-b059-efddf65178d9">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="0b943da5-4e14-4e97-b677-04e4620adab0" value="5279.190479579229"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="12f3aa5a-eed3-4e63-bf7f-28aa76e107f1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e469b33b-c3ac-4261-84c2-3a9f61da61a7" value="15816.469142857144"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0493ffef-b003-48de-a983-58f5deb5f545"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="47894ff2-091f-4acd-8243-2441eaa2f988" value="5279.190479579229"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="84f833c1-a842-420e-8881-0584d80db117"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="b6b493e5-31de-4ff4-bcf7-f7c36ce5de84" value="5279.190479579229"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="59660d7a-49ba-42ac-9174-12b54742814b" value="15816.469142857144"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="23f1886b-4cd5-4496-bb6d-83619584d98f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="722179c7-0628-47f4-82be-28efd72db4b0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="8a53fd1a-9336-4200-97af-6f6d19ac7195"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="36c08eaa-c193-42c1-9e50-eae170f2e549" value="15816.469142857144"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="a251289b-a62d-4da8-892f-b2caecad77e5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="a485dc67-dca0-44e2-947e-d981c60bc703"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="b0668918-dd85-4eb8-8dfb-bffe286e5712"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a8227b03-bbe1-4026-9299-420ccb347d88"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="c5a690c8-340e-4675-b740-84b7b0ccdcaa"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="381.3288509998637" height="4.78"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5416787147034" lon="4.232601518991261"/>
            <point xsi:type="esdl:Point" lat="51.541678929855" lon="4.232599639432032"/>
            <point xsi:type="esdl:Point" lat="51.54143189337113" lon="4.232526052553893"/>
            <point xsi:type="esdl:Point" lat="51.54141341006785" lon="4.232684233389842"/>
            <point xsi:type="esdl:Point" lat="51.54154485416044" lon="4.23272347830228"/>
            <point xsi:type="esdl:Point" lat="51.541537865705365" lon="4.232781334472318"/>
            <point xsi:type="esdl:Point" lat="51.54167591584557" lon="4.232822286015922"/>
            <point xsi:type="esdl:Point" lat="51.541685964625415" lon="4.232733890715035"/>
            <point xsi:type="esdl:Point" lat="51.54166412372189" lon="4.232727857535922"/>
            <point xsi:type="esdl:Point" lat="51.5416787147034" lon="4.232601518991261"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="435e5cac-03f6-4c98-80f8-d7f92054f792">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="8ce7b18d-03c3-4a5a-84d8-addc1a3da302" id="c2fdf27a-f5f3-46b4-ba15-6f45adc6482b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="6f06284b-4684-4ad0-8413-7270279de798" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.056939288914285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e880536b-9848-4c0d-b195-e28d6c5d4b92">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="704269c5-c14c-4c3f-8e65-497be80b761b" id="f24bf2df-ea67-4541-aa2a-375de9d94a85">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0ab6db0c-f974-40fc-a29c-d10f41014398" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1670863786786826" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="a4e1473a-bcbd-47f5-b867-d4bcd5fe38b9" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="2c3e1d8f-c709-4c42-b94f-ab133259401e" id="155f4c7f-44c7-4473-80ac-f5a45b22af92"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="704269c5-c14c-4c3f-8e65-497be80b761b" connectedTo="f24bf2df-ea67-4541-aa2a-375de9d94a85"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4b56f50d-f374-4744-9554-ba984618e2a7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="8ce7b18d-03c3-4a5a-84d8-addc1a3da302" connectedTo="c2fdf27a-f5f3-46b4-ba15-6f45adc6482b"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="36f34bc3-0c68-46f3-a050-12e05fae10be"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="bd5293c2-5b49-4f40-aed6-ab2087addf91">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="2c3e1d8f-c709-4c42-b94f-ab133259401e" connectedTo="155f4c7f-44c7-4473-80ac-f5a45b22af92"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="9187ea74-c218-4de7-a463-bf775436d20f"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="369" buildingYear="1987" name="Pand van Elenbaas Bedrijfswageninrichtingen, Elenbaas Print &amp; Sign B.V." floorArea="343.0" id="3da995da-3656-438a-af5c-7be6370daebb" sector="0a1cfdca-b473-4a26-8795-7d9eda8fa744" originalIdInSource="0716100000071842">
        <KPIs xsi:type="esdl:KPIs" id="9988c33b-251d-492a-8a5d-74db0d562b62">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="9c095bfa-ff68-4c6a-9308-e4369088db2f" value="5232.606802781218"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="14b91fcd-93d4-40ef-9946-a7c6ccf621aa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="df5aea0f-41c2-404c-b9e3-ef5ee201c5e3" value="16098.068"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0ff33c30-863b-4a11-afd9-0b2b1cbc68fc" value="10208.806375443397"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="94f16795-996d-444c-abd6-3b646890acc2" value="5232.606802781218"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="60a8d992-9d2b-4602-a140-3834cf2ccb65"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="02e0c182-d6bc-4067-a899-6f8c109ffde8" value="5232.606802781218"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="6d4c3c76-016e-42db-9977-5189211991d5" value="16098.068"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="7760cd4c-6be6-4ec8-9d88-76767b561ed7" value="10208.806375443397"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="c94d72be-2392-4ecc-81e3-90567008e17a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4246cc92-7a5d-4ec8-a3c7-4cee04b3a593"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="93e33f3b-df56-46f5-b4a8-0f7f5143ee39" value="26306.874375443396"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c8626437-e7b7-462a-8093-fcaf42cabd03"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="1ef5c6f2-9de2-402a-9542-d7a4fd96cffd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="d100846d-8e15-40bf-bef0-049cd0388a37"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e710beea-3b6d-48d4-90c4-784e0b159725"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="34759d52-f5d1-4c03-b795-e243afdee8fe"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="369.1870149999836" height="5.54"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.541744297580905" lon="4.232201837949127"/>
            <point xsi:type="esdl:Point" lat="51.54174556889817" lon="4.2322022236975645"/>
            <point xsi:type="esdl:Point" lat="51.54177018479633" lon="4.231991555059956"/>
            <point xsi:type="esdl:Point" lat="51.54155046160204" lon="4.2319256381355235"/>
            <point xsi:type="esdl:Point" lat="51.541526111159186" lon="4.232135866561139"/>
            <point xsi:type="esdl:Point" lat="51.541744297580905" lon="4.232201837949127"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="fe8c3ba6-7412-40a1-8303-8826c5fc1c33">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="ea64b017-2387-4b97-829d-5223493a86d0" id="dfc1c76d-a72d-440e-9b3d-776db347db65">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="7f1a425b-1394-49db-a449-1c0c918bb61e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0579530448" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="25bb80fe-662b-42d6-9610-6d9e0f49b24d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="ea64b017-2387-4b97-829d-5223493a86d0" id="119b690d-9bd0-4ba5-ae5f-751ed9528a0e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="461c3c11-37d9-4a35-9467-168946a2c9c5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03675170295159623" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="b51c7e35-356a-450f-9f23-e85870456ef3">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="33c24954-07db-43c6-a96d-b1b1e2883257" id="50f702f3-6a58-4425-a7bf-a0e17360855d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="bb2e4504-748b-4aaf-99df-35b7dca546e1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16561200530802556" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="01348e16-c291-434c-b0f3-280868277ce2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e6fccc63-10ed-419e-bfd9-76b3005ffaa8" id="6d2f9e43-113a-4bfe-aea0-2508bc417d8d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="33c24954-07db-43c6-a96d-b1b1e2883257" connectedTo="50f702f3-6a58-4425-a7bf-a0e17360855d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="6ef1d5a4-7e7a-4667-8612-32436d16daa0">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="ea64b017-2387-4b97-829d-5223493a86d0" connectedTo="dfc1c76d-a72d-440e-9b3d-776db347db65 119b690d-9bd0-4ba5-ae5f-751ed9528a0e"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="c4681872-f7cc-4c7c-ae86-9b14fef1769e"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="46afc8b7-3a1e-4d7d-a2c1-91fac5efdec3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e6fccc63-10ed-419e-bfd9-76b3005ffaa8" connectedTo="6d2f9e43-113a-4bfe-aea0-2508bc417d8d"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="32d6320f-3dae-4047-bdc3-78edbde3dedd"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1761" buildingYear="1990" name="Pand van Multi-tech Onroerend Goed B.V., Multi-tech Tholen B.V." floorArea="1673.0" id="1b45b39b-dc57-461f-8104-06283294bcde" sector="c9fd826f-6eee-4a20-934d-1ce65075f117" originalIdInSource="0716100000107332">
        <KPIs xsi:type="esdl:KPIs" id="98202f41-4048-4868-90ac-e6d582c489a3">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="5790b72a-46eb-4160-b216-e8d55036124a" value="16705.666424496947"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="651fc9fd-a9f0-40d8-8d8c-e4e547246d82"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="05c3bd70-52e7-442a-b0dc-e10b261d3b16" value="71569.506"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="5eb5907d-bd17-4938-b594-2174c88161ea" value="157370.8415672951"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="66ae1fd6-172e-491e-bb1e-37ff97ee20e0" value="16705.666424496947"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="31e28ad3-caa4-4984-a977-2a9c1311d7ad"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="858828d1-4ca6-427d-83a4-f480650721e9" value="16705.666424496947"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="1906720d-4f7d-43e8-a9fa-9916da8d4188" value="71569.506"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9244b50a-4f09-4274-b02f-6be387c2f332" value="157370.8415672951"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="37fd40a1-15f6-41a3-8192-ac727331e69b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="9455b575-9cec-46a5-af50-1210a966c701"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="eee0d906-c665-4690-9eef-db2e0c10e177" value="228940.3475672951"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c1c6fb45-09a0-4dc7-85e4-ade0f0de8940"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="deeb58af-9ccf-43b8-82a3-defc3ba02fbf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3c9ea3b2-1170-4971-9fe6-822a962f815a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="5f1edd8b-e185-4172-86db-f89701bc8949"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="9d778dc5-d62d-42b6-9b38-d630aeeb2b90"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1761.114378999178" height="5.9"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54184479700943" lon="4.231809744479786"/>
            <point xsi:type="esdl:Point" lat="51.54188670853081" lon="4.231448274717121"/>
            <point xsi:type="esdl:Point" lat="51.541974342855454" lon="4.231474301176724"/>
            <point xsi:type="esdl:Point" lat="51.54200819187065" lon="4.2311848134568315"/>
            <point xsi:type="esdl:Point" lat="51.541619686700756" lon="4.231068356047904"/>
            <point xsi:type="esdl:Point" lat="51.541544588542955" lon="4.231712602943946"/>
            <point xsi:type="esdl:Point" lat="51.54166501689968" lon="4.231748708693447"/>
            <point xsi:type="esdl:Point" lat="51.54166420456995" lon="4.231755649073825"/>
            <point xsi:type="esdl:Point" lat="51.54184479700943" lon="4.231809744479786"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="5d2d3e58-8050-4ee3-ba35-ac4b4fdc839e">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="49cf963c-d276-400c-a99c-dfee4dfd30bf" id="3306ac05-4f5d-4f47-a9f8-c708807b3905">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d3fa133b-5a78-4e81-b0b6-0ef8cdcd9f1e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2576502216" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="00b93892-c844-4a66-9317-f3cdbf5a26fb">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="49cf963c-d276-400c-a99c-dfee4dfd30bf" id="32f250f7-cfbb-486a-8ed5-62df9f0905a5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="2c915464-9095-4edb-94fc-c21bea2c3d0e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5665350296422624" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="317d46f0-da55-45d1-bbc2-1efc6f06a2fd">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="46cb6305-9f3a-4e62-9087-a8691eb41230" id="b0f9dd3c-8e41-4fda-adb4-c2aa26bfbaa4">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="5580a21c-bbb6-4fff-a841-c14cc8a5a84e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5287343423353283" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="f41caf21-a472-4293-ac95-560e4456b353" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e96f4f1e-206a-4fcc-8b8d-3f67a2a03d7c" id="12ad452b-963c-4fb7-abbf-ab657a343d2b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="46cb6305-9f3a-4e62-9087-a8691eb41230" connectedTo="b0f9dd3c-8e41-4fda-adb4-c2aa26bfbaa4"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="e99d4e5a-465e-403f-bac8-815efe7c780c">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="49cf963c-d276-400c-a99c-dfee4dfd30bf" connectedTo="3306ac05-4f5d-4f47-a9f8-c708807b3905 32f250f7-cfbb-486a-8ed5-62df9f0905a5"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="d55259b1-22cb-494a-a7d0-041b3848f3d9"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="3c4a86c8-d789-4376-909d-c2c4c50b255f">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e96f4f1e-206a-4fcc-8b8d-3f67a2a03d7c" connectedTo="12ad452b-963c-4fb7-abbf-ab657a343d2b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="68d8d347-359c-427d-8fba-7ac06e8430c6"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="4081" buildingYear="1988" name="Pand van Perfect Way Fulfilment &amp; Service B.V." floorArea="3877.0" id="628a9475-6738-4383-8eec-10c81b9b7ced" sector="b3827439-ccce-4a6b-a7d2-7960cb2634ee" originalIdInSource="0716100000142659">
        <KPIs xsi:type="esdl:KPIs" id="4e73fdc4-044a-465e-a779-c0db6d124ade">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="2e7ebf38-6ecc-4d3f-b361-f4f8ac2f831e" value="35132.44571428505"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b297c00e-eef9-4b79-b804-81c762b6312a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="038d85aa-6fa9-49b5-b243-4e20d21daaab" value="176911.94085714288"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="2cb4c08c-cefb-43e3-a5df-f4dafda4f5b6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="08e352e6-bd65-49d7-ad26-69efd78175bb" value="35132.44571428505"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="329bb795-e4b1-4c74-af2c-67e5bef8286d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ac622d15-c81c-4614-bde5-e1cd8762b6af" value="35132.44571428505"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="03611b31-0fd6-4bae-a063-02ec4ce8f286" value="176911.94085714288"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="4b964fb9-7053-460f-aa97-f2f8095ca978"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="88456902-4657-4108-8f03-cf98556fb11b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="8bc33191-06f3-4ca4-a565-1ce3c2082e6c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="db09c513-ad07-40dd-b22e-b4a70b0c4186" value="176911.94085714288"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="dfad9233-6d1e-4d38-8e78-2da5e037e3d7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="d323e992-ca1d-4dc0-b39f-2a9b73a13956"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="0a324194-2541-4eb0-95c1-608da971ab0b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="1b42e2af-d5dc-427e-9683-df4c7d680341"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="86ed4c39-7603-447c-9710-c1675628769b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="4081.4266135004095" height="5.7"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54280993013775" lon="4.232013009079703"/>
            <point xsi:type="esdl:Point" lat="51.54287959797728" lon="4.231412132317966"/>
            <point xsi:type="esdl:Point" lat="51.54204822448576" lon="4.231164203232887"/>
            <point xsi:type="esdl:Point" lat="51.54197775560681" lon="4.231764844686383"/>
            <point xsi:type="esdl:Point" lat="51.5420811508169" lon="4.231795675249357"/>
            <point xsi:type="esdl:Point" lat="51.542072403450454" lon="4.231871063852148"/>
            <point xsi:type="esdl:Point" lat="51.54218627816063" lon="4.23190531880219"/>
            <point xsi:type="esdl:Point" lat="51.54219774772725" lon="4.231892499423519"/>
            <point xsi:type="esdl:Point" lat="51.54223670754369" lon="4.23190247950706"/>
            <point xsi:type="esdl:Point" lat="51.54224587180613" lon="4.23189289031398"/>
            <point xsi:type="esdl:Point" lat="51.5422280695811" lon="4.231851651160971"/>
            <point xsi:type="esdl:Point" lat="51.54222978823693" lon="4.231840002362067"/>
            <point xsi:type="esdl:Point" lat="51.54264600173514" lon="4.231964124835003"/>
            <point xsi:type="esdl:Point" lat="51.54280993013775" lon="4.232013009079703"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="cf861e1a-1edc-4524-b157-c36cb9f668dc">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a32f5bac-eeca-4043-a28f-f09559f34494" id="06d9cb91-4a37-4768-ae70-32780576d954">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a332a60b-195b-44fb-a9f7-68338b1cee03" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.6368829870857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="0d0d6e40-1088-4889-ace9-ea2aeef45cc0">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="56e9ef8e-6dba-44e1-959b-5d9564dc041b" id="d82a23d9-b9dd-4a35-9f5d-76b256dcee21">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="62ee3e70-a782-48bd-a7c7-0cef67ed6ae3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.1119419068571217" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="3b1a6122-e96e-49e7-9209-f37dfae43253" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="8df336c2-c31c-4b31-9961-d13bf66773e7" id="78dbbbf5-1f38-44cb-b839-16b75a3ed034"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="56e9ef8e-6dba-44e1-959b-5d9564dc041b" connectedTo="d82a23d9-b9dd-4a35-9f5d-76b256dcee21"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="b8b00b93-cfe6-4ac2-b096-6b622afe7da2">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="a32f5bac-eeca-4043-a28f-f09559f34494" connectedTo="06d9cb91-4a37-4768-ae70-32780576d954"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="8d45451c-155a-4b1d-a386-058cf78bd629"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="7e0669e3-69f5-492b-942a-a23f090c6472">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="8df336c2-c31c-4b31-9961-d13bf66773e7" connectedTo="78dbbbf5-1f38-44cb-b839-16b75a3ed034"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="84d3c126-f371-4d71-b812-2c8cf428662a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1583" buildingYear="1988" name="Pand van Van 't Hof Aluminium B.V., Hofal B.V." floorArea="110.0" id="0ad06f8e-c912-4116-aaa2-6de9b30c4221" sector="8eb1eaf7-3bbb-4e39-9665-4ff5998c9196" originalIdInSource="0716100000070780">
        <KPIs xsi:type="esdl:KPIs" id="79225b36-1b62-47c2-998f-6478d39ac63a">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="31526c3b-e3bd-4682-bcef-25dbd77bdf53" value="2098.8705595745655"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="1fce01a4-dba5-4a56-b309-e0a78530e45a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a2475c66-d4d2-4412-b32a-5b2c2d8b3468" value="6717.783695652174"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="4b4eb9fc-f822-45e3-b5e5-0204babbc18d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="03c3f50a-ccbd-4c52-a790-961ad551adf9" value="2098.8705595745655"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="46a37276-a432-400c-9f86-3a709596eb32"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="6954f537-7414-433f-9c0c-a531a7316add" value="2098.8705595745655"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="5d519ef8-b975-4e1c-ad95-3ca9949452db" value="6717.783695652174"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="aceeede5-bc27-4a70-9416-3c41e73fc6bb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="7d7fdec0-6436-4bc4-9871-d1929ac44356"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="46d3f849-5b53-4b3f-a9c0-da89f77dfda4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="a4b6321c-a8ef-463b-8693-ebca5cd31ee3" value="6717.783695652174"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="063fac46-97d7-435c-af18-838f2bb35f91"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="be0ea62a-01f0-4561-a041-807bb31d1287"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="1da8c6c3-956f-47c8-bba1-4b7109688d7e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="c5b0a5c9-b4f7-417e-bdfd-d60f03b4c3bc"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="bbdafaaf-0869-45ac-82cb-0c3839554b4e"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1583.6113135004246" height="6.71"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54235875590896" lon="4.232349827906329"/>
            <point xsi:type="esdl:Point" lat="51.542180778676475" lon="4.232296542675137"/>
            <point xsi:type="esdl:Point" lat="51.54217751025448" lon="4.232324204040982"/>
            <point xsi:type="esdl:Point" lat="51.5421765724854" lon="4.23233209914976"/>
            <point xsi:type="esdl:Point" lat="51.542145833069625" lon="4.232322529653834"/>
            <point xsi:type="esdl:Point" lat="51.542124731905986" lon="4.232501409227488"/>
            <point xsi:type="esdl:Point" lat="51.54215543450443" lon="4.23251089327814"/>
            <point xsi:type="esdl:Point" lat="51.542153227370186" lon="4.232529517490037"/>
            <point xsi:type="esdl:Point" lat="51.54213037172013" lon="4.23272282897395"/>
            <point xsi:type="esdl:Point" lat="51.541919374396386" lon="4.232659310014572"/>
            <point xsi:type="esdl:Point" lat="51.54188423392886" lon="4.232959482352469"/>
            <point xsi:type="esdl:Point" lat="51.542273005856146" lon="4.233076757097514"/>
            <point xsi:type="esdl:Point" lat="51.54230829654974" lon="4.232776290141335"/>
            <point xsi:type="esdl:Point" lat="51.54233340934856" lon="4.23256485694517"/>
            <point xsi:type="esdl:Point" lat="51.54235875590896" lon="4.232349827906329"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="959b2126-3582-4355-829d-7b388d3f334d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e998364a-c335-42c2-8761-62612c84c0ab" id="28e5f960-c457-4124-8299-d2be0351d714">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="b7bfce18-770b-4669-aec1-b4848ff0c0c4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.024184021304347828" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="acb94f06-6a4b-48ea-a1df-0ce8abe8b604">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="45184624-a800-49c5-a3c7-5651ff3003bd" id="b42e85bc-eb12-431c-bac3-e52dec744af1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f7890466-0789-4793-9077-9aef6c3abb25" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.066429253210535" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="101284ec-2434-4617-98b8-b3ae5eed841b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c3bf4ba9-ae6b-4b41-987e-a9d9523e834b" id="30944d88-a63d-42f7-859b-4a3d8d967c14"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="45184624-a800-49c5-a3c7-5651ff3003bd" connectedTo="b42e85bc-eb12-431c-bac3-e52dec744af1"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="d325d72b-d74d-464f-b5b9-86757664f39d">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e998364a-c335-42c2-8761-62612c84c0ab" connectedTo="28e5f960-c457-4124-8299-d2be0351d714"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="1cfd823f-ca78-4d85-a5b5-d4f750f0c254"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="49fe3b35-e0f2-45dc-a3b1-b07215b10cae">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c3bf4ba9-ae6b-4b41-987e-a9d9523e834b" connectedTo="30944d88-a63d-42f7-859b-4a3d8d967c14"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="bdb990ec-1273-4f44-86f9-9903aa59559a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1552" buildingYear="1988" name="Pand van Van der Vlies Bouw &amp; Infra Techniek, De Poort Verhuur en Infra B.V., Heijkon Staalwerken" floorArea="846.0" id="4593b5dd-c131-4faa-b2b1-f9a357b5361e" sector="90970e8a-1e2f-4fd7-8c21-d0830ba3cd72" originalIdInSource="0716100000106251">
        <KPIs xsi:type="esdl:KPIs" id="a2fd905c-3a6f-4f75-bce8-0fdd25764c76">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="54411361-9f9f-4075-8e20-7bb1981005d3" value="7478.908445402456"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d1cd7455-658c-41d5-ac0d-431c382d23de" value="5238.905178979965"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d9d94113-520e-40d7-892e-91f161b73815" value="37012.41612111801"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="9ab08c20-ac12-42c4-a6ac-8c1533efd9d2" value="27136.927180906645"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="5f76ba9d-d36c-4711-ad3f-e2a3e77ade1d" value="7478.908445402456"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="429dfb55-1cc6-4014-86b0-fef0fb763db6" value="5238.905178979965"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="8d5da35a-22ab-4130-8060-b11fc84fa12d" value="12717.813624382421"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="377a9fcd-9b8b-467e-9347-bc923742bf69" value="37012.41612111801"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="275bd848-a051-45ce-88cf-a3301f9e00d2" value="27136.927180906645"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="725a9438-d06e-4a81-a136-cff4b6690d27"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="8ee8bd92-5a99-402d-9f34-c9735131ea2c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="ce054502-0076-4fb1-97c1-3b23408c4007" value="64149.34330202466"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="0dabc777-d9cc-4b6d-bdda-0389dfb60c35"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="78a8f1c0-143a-43e0-bc93-d36b44d3dcca"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3b7239f2-7e14-4101-82da-7c15bf212e63"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="32b8f4b6-4142-4b48-970f-41bf0261d245"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="fd74aebe-2eb4-47dc-b4f8-23b555bcb186"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1552.7711055002771" height="6.24"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54242033536929" lon="4.232515592921948"/>
            <point xsi:type="esdl:Point" lat="51.54237367811685" lon="4.232501713674759"/>
            <point xsi:type="esdl:Point" lat="51.542348285834564" lon="4.232721241742638"/>
            <point xsi:type="esdl:Point" lat="51.54243762428749" lon="4.232747818678037"/>
            <point xsi:type="esdl:Point" lat="51.54242678330241" lon="4.232838830506804"/>
            <point xsi:type="esdl:Point" lat="51.54240918566787" lon="4.232986612424886"/>
            <point xsi:type="esdl:Point" lat="51.54236148854276" lon="4.232972110382412"/>
            <point xsi:type="esdl:Point" lat="51.542350710700724" lon="4.2330640718738"/>
            <point xsi:type="esdl:Point" lat="51.542434112462544" lon="4.2330893730734225"/>
            <point xsi:type="esdl:Point" lat="51.5424721617362" lon="4.233100919910273"/>
            <point xsi:type="esdl:Point" lat="51.54246959067631" lon="4.233122753893567"/>
            <point xsi:type="esdl:Point" lat="51.54250529645878" lon="4.233133668310539"/>
            <point xsi:type="esdl:Point" lat="51.54251633969777" lon="4.233041267290718"/>
            <point xsi:type="esdl:Point" lat="51.54248288638514" lon="4.233030872376084"/>
            <point xsi:type="esdl:Point" lat="51.54249767049343" lon="4.232907669512613"/>
            <point xsi:type="esdl:Point" lat="51.542521014641416" lon="4.232914818002003"/>
            <point xsi:type="esdl:Point" lat="51.54263403826267" lon="4.232949400259304"/>
            <point xsi:type="esdl:Point" lat="51.54263608958727" lon="4.232994168708606"/>
            <point xsi:type="esdl:Point" lat="51.54269084598674" lon="4.233010754899032"/>
            <point xsi:type="esdl:Point" lat="51.54270419051716" lon="4.232897434450634"/>
            <point xsi:type="esdl:Point" lat="51.54268651849724" lon="4.232892088045281"/>
            <point xsi:type="esdl:Point" lat="51.542736320584055" lon="4.232469113456229"/>
            <point xsi:type="esdl:Point" lat="51.54274203442272" lon="4.232420557868139"/>
            <point xsi:type="esdl:Point" lat="51.54274290557062" lon="4.232413197764095"/>
            <point xsi:type="esdl:Point" lat="51.54258447828433" lon="4.232366075279823"/>
            <point xsi:type="esdl:Point" lat="51.542461843998595" lon="4.232329590768359"/>
            <point xsi:type="esdl:Point" lat="51.542459310494614" lon="4.232328833436791"/>
            <point xsi:type="esdl:Point" lat="51.542434174519684" lon="4.2323959749032785"/>
            <point xsi:type="esdl:Point" lat="51.54242033536929" lon="4.232515592921948"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="81ce4c29-b55e-42a7-a0f6-9ef0aca7863a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2eee8cd0-9682-4391-aa57-2fa0b164048d" id="ef8bc9e8-951f-43dd-900c-19e4401a39a7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="87fdfbb1-edf2-4a4c-b3b4-78e2e5eac9aa" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13324469803602484" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="961a216e-0b56-4aa0-a7ce-9ff397488f31">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2eee8cd0-9682-4391-aa57-2fa0b164048d" id="d01241df-bb88-4acf-b6f7-be3cdeca2438">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="5f9c9596-e145-48cd-998b-d87cf81fce6c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09769293785126393" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="43233a32-7bd5-44d3-b7cb-00103d923f17">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d5f609a5-e1e7-4296-a2ff-4e047ebf74eb" id="92c3d096-48ab-4e4d-9f12-cba243822762">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="88edf3a6-c33e-4191-80c3-d0281367da8e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.23670745229698772" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="099ed385-40c5-412a-a7bb-e748d9331fe4" name="Gasketel" id="092a9cf9-9966-45df-9460-7a92522b385f" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ee318ba1-243a-4615-aaec-525404afa976" id="2729d478-13f0-49d4-91ac-420cbdc32aeb"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d5f609a5-e1e7-4296-a2ff-4e047ebf74eb" connectedTo="92c3d096-48ab-4e4d-9f12-cba243822762"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="88524374-7f87-4f2a-adfd-5a68e94c08eb">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ee318ba1-243a-4615-aaec-525404afa976" id="59fe0105-e991-4c5a-92d4-2547f61fda42">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d92bb16d-c39b-4d57-92e8-33414ca2fca7" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1658113489147159" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="7a157bfd-42e6-4ee7-a3e4-0215b8d0e653">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="2eee8cd0-9682-4391-aa57-2fa0b164048d" connectedTo="ef8bc9e8-951f-43dd-900c-19e4401a39a7 d01241df-bb88-4acf-b6f7-be3cdeca2438"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="c819db62-8b13-4d0b-bb7e-a012a92ca362"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="69299852-cc18-4d92-a86b-eb5350c8230a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ee318ba1-243a-4615-aaec-525404afa976" connectedTo="2729d478-13f0-49d4-91ac-420cbdc32aeb 59fe0105-e991-4c5a-92d4-2547f61fda42"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="a37d3ec0-61db-4a0e-9f9b-cee6ecfc5c8c"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="699" buildingYear="1998" name="Pand van M. v.d. Zande" floorArea="651.0" id="b8d013df-cca3-4979-847a-ebb698eea8ce" sector="693dd886-a325-4f19-be28-0c502fa56002" originalIdInSource="0716100000000971">
        <KPIs xsi:type="esdl:KPIs" id="bbac10ea-b310-4938-99dd-4cab3877e4dc">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="0b6f64d0-e8c3-4c5d-8ba5-be58559951f6" value="4643.157433960771"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d4a97dc9-498b-40cf-802e-4abd70ab774b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="11cc59c4-b111-45f7-b83b-3325d6db2b0d" value="25871.484000000004"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="d293826a-e2f9-4b5f-b792-d343e17e2332"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="dfbbdbb6-9f15-4481-9f6c-9e9023b0c1ef" value="4643.157433960771"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="68ad8efc-ce90-4a00-a499-91e788296a00"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="0e688f02-ff54-4686-9d39-a56e17601bd4" value="4643.157433960771"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="95270738-67fb-4cee-a37a-261d3c5c62a6" value="25871.484000000004"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="55522964-6104-4519-9310-0188dd1bcd71"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="44d3c085-06f3-428d-b79b-39b20dd0260c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="5af309b1-d7d8-4c1b-9915-68b142261094"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="3335ab65-2564-4bb9-b791-4ec09c37c39f" value="25871.484000000004"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="48a7eb4b-8a39-4729-8c0a-5ac004e7d3ef"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="7f3389e8-dd86-4070-9705-e191227f7c70"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="e4dbcb3a-6bcd-4105-a285-4a9f14521f8a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b66c6030-b01a-4d3f-8889-91ffe2314829"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="58c983ca-9a7c-45f3-b7f2-0174b1e6b121"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="699.1978200005507" height="4.8100000000000005"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54346289662332" lon="4.2329467377392955"/>
            <point xsi:type="esdl:Point" lat="51.543432775755015" lon="4.233230963078602"/>
            <point xsi:type="esdl:Point" lat="51.54374267166116" lon="4.233315185788671"/>
            <point xsi:type="esdl:Point" lat="51.54377285834268" lon="4.23303123081445"/>
            <point xsi:type="esdl:Point" lat="51.54346289662332" lon="4.2329467377392955"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="5283e29a-7e39-42c4-934c-b87529679d7a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="9d01e198-6711-4837-958c-d2df2f730550" id="f33d61b6-df63-44c3-a8b2-e79300ed97de">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="29375e5e-b919-4428-af4d-db645112ddc0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.09313734240000002" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="06c516b5-f57f-42a2-8b25-8f9d052806b8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="afbeee5f-77d4-4b9e-b098-e1da74e642f1" id="adf54b94-facc-4abb-81ad-68729fe7982a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="a28f991d-5fed-4ab1-bc97-5f516c2bc4b8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1469559327848584" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7f7937e7-eb76-4ef4-8fd0-148a77513351" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="338ca8a3-11da-422a-b5db-6e97e799d54a" id="6052a210-e8d7-46e4-8e42-fb9e90e8ab3a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="afbeee5f-77d4-4b9e-b098-e1da74e642f1" connectedTo="adf54b94-facc-4abb-81ad-68729fe7982a"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="91c4d2a6-4925-4bd1-ae17-246233ef1e01">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="9d01e198-6711-4837-958c-d2df2f730550" connectedTo="f33d61b6-df63-44c3-a8b2-e79300ed97de"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b7b667a5-2bba-4aea-944b-3ee5150facb6"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="dd46cc5b-7b96-4693-af8b-b64e1882c5ad">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="338ca8a3-11da-422a-b5db-6e97e799d54a" connectedTo="6052a210-e8d7-46e4-8e42-fb9e90e8ab3a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="c4fd0a72-9ccb-47da-bfc5-cbadae8c1c8d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="4613" buildingYear="1997" name="Pand van Amorim Benelux B.V." floorArea="4382.0" id="194d278c-ac1c-47b9-8e02-494322ae63ce" sector="ab36d360-5836-4b05-b357-deb0b3daec25" originalIdInSource="0716100000071843">
        <KPIs xsi:type="esdl:KPIs" id="7ddf0928-4aed-4f5a-a8e5-7680f7cc4f23">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="0c94c9b2-9c18-4441-a539-44afb8bd3d1a" value="25922.666679622536"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="1089ac52-4d86-499b-938c-fa158b45bc7a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="713c466f-4641-480b-bc62-25c6a7e5121b" value="199955.668"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="2db1f4c6-66c5-44d6-8f22-7bf28108642b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="4b46d8f4-8e07-4d86-88ba-daefdcdb80f6" value="25922.666679622536"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="5d0077b1-d45b-40ef-9e89-548016dcce7d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ffc5c6c2-f3b2-42ae-a209-a3f197f276b2" value="25922.666679622536"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="9b9bfc78-a10d-4d3e-ae2e-7ca7470e1c15" value="199955.668"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="0354afa4-b3e6-443e-91c0-3eb4f8499dd2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="13e5b164-6e27-4bdc-a3c5-8c61503392bd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="aa0ca0a3-8f61-4968-92ce-ffd867eb1b10"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="3ce6c1f0-16a9-4cc3-b475-dd0db896f6fb" value="199955.668"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="6b68c951-431f-495b-9398-68b0991fb82b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="b12b948d-f2f2-4608-b16e-1e6777d019c7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c70202bb-1433-4385-9a30-e11c0ede0fd8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="faebf0ce-06bd-40db-a375-7b858f2f3fc5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="4318c57c-94dd-4495-bd19-3f9affe0aeb1"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="4613.276550000967" height="6.34"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54312135013291" lon="4.233125660116969"/>
            <point xsi:type="esdl:Point" lat="51.54330176490155" lon="4.233180041076194"/>
            <point xsi:type="esdl:Point" lat="51.54334413852606" lon="4.232819414303127"/>
            <point xsi:type="esdl:Point" lat="51.543299959180615" lon="4.232806120254925"/>
            <point xsi:type="esdl:Point" lat="51.54339988558869" lon="4.231956603801151"/>
            <point xsi:type="esdl:Point" lat="51.5428661173887" lon="4.23179516041887"/>
            <point xsi:type="esdl:Point" lat="51.54274904694058" lon="4.232792727162758"/>
            <point xsi:type="esdl:Point" lat="51.54314639567561" lon="4.232912812223469"/>
            <point xsi:type="esdl:Point" lat="51.54312135013291" lon="4.233125660116969"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="adc3055e-4dbc-456c-adbf-5533c8bbd08e">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="21a3c536-c13f-459a-9dfd-7ac2ee986962" id="b57de54a-8364-4fde-b569-e632766eb578">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="5356db07-7fb2-472e-bd15-604eb57c6500" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.7198404048" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="adb892fb-8928-4f21-bd44-1caa1ab1ad37">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="be2d392a-62c7-4c42-b413-c11595fa95f5" id="a8adee53-3ca8-43b6-968a-4c5c81549db8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="7c2beb34-bdb9-475b-9d8f-a2fe410b7676" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.8204524004100532" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="cbfe9639-2cca-434d-a171-be7a79461d52" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="01c560e6-abe0-4bbd-aad4-33f5123c171f" id="aaf6b7ba-7b64-4c83-86a5-31da29c4437b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="be2d392a-62c7-4c42-b413-c11595fa95f5" connectedTo="a8adee53-3ca8-43b6-968a-4c5c81549db8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="42d6cdfd-4c1d-4ef9-8933-c0b753943881">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="21a3c536-c13f-459a-9dfd-7ac2ee986962" connectedTo="b57de54a-8364-4fde-b569-e632766eb578"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="28a4e5ac-e563-41b6-bca9-e73020beed8a"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="55147b97-5293-47b9-bfba-af5267f1c8a1">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="01c560e6-abe0-4bbd-aad4-33f5123c171f" connectedTo="aaf6b7ba-7b64-4c83-86a5-31da29c4437b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="fec2aa4d-bc0d-49eb-b6fc-862163387bcc"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="3887" buildingYear="2008" name="Pand van Profielnorm Operational B.V., Profielnorm B.V., PRN Group" floorArea="2660.0" id="c93aef1e-ded5-477f-a1ad-5b26f37f9e2a" sector="a48fd149-a88e-4847-bdc0-1ee408ea1455" originalIdInSource="0716100000281686">
        <KPIs xsi:type="esdl:KPIs" id="64311230-78e9-49f3-ade3-9281eda45c86">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="56995058-4911-4dc7-94f3-584fff2d0125" value="25903.05542310686"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="892fc0f5-6eba-4c67-9d7f-cfc3323e7b05" value="10510.784648604473"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="26517cc7-88c3-4dfc-a8eb-0e97e0db619b" value="121378.84000000003"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e53592ee-0a12-4af5-a167-20d09496ca10" value="53158.48536332196"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3b6329fa-05bb-4177-8344-09b09098e08e" value="25903.05542310686"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="354d4b61-1218-4c05-bd96-4948c9510463" value="10510.784648604473"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="39f8687a-d663-4f68-b427-696ab5c40abd" value="36413.84007171133"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="b7659e75-6346-4cd7-8782-fdcacd20338f" value="121378.84000000003"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="1f280895-8831-41c8-9e52-7527f10818fa" value="53158.48536332196"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f45c1822-9040-418d-acce-aa9ad59a397c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="3f0a0e67-aa98-48b5-ac5e-7d6be8d1ec1b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="3d27ae7c-24da-48b6-aac4-519b972c753e" value="174537.325363322"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c98eb0e0-4dbf-4e39-8ed7-577a43af5f84"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="620ad867-08de-4dff-8374-8a4312fe3b79"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="901fe25d-d5c3-4d37-be91-56f7315a877f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="ea8f6041-3bf2-4dfc-a631-cc5df28dfd62"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="5a464e40-d283-4f51-85c5-f526fedfb84b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="3887.1081164969446" height="10.03"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54427878559313" lon="4.2334212727638425"/>
            <point xsi:type="esdl:Point" lat="51.5442840215135" lon="4.233421687632436"/>
            <point xsi:type="esdl:Point" lat="51.544281182200336" lon="4.2335037631460235"/>
            <point xsi:type="esdl:Point" lat="51.54427669999152" lon="4.233633412924831"/>
            <point xsi:type="esdl:Point" lat="51.544387528594534" lon="4.233643271270555"/>
            <point xsi:type="esdl:Point" lat="51.544392074719354" lon="4.233513720472012"/>
            <point xsi:type="esdl:Point" lat="51.54443135635241" lon="4.232382332156445"/>
            <point xsi:type="esdl:Point" lat="51.544441431342534" lon="4.232091992258407"/>
            <point xsi:type="esdl:Point" lat="51.54445176453601" lon="4.231800564379321"/>
            <point xsi:type="esdl:Point" lat="51.54432459563809" lon="4.231789150968502"/>
            <point xsi:type="esdl:Point" lat="51.54431426304042" lon="4.23208063568712"/>
            <point xsi:type="esdl:Point" lat="51.5440778852615" lon="4.232059542125401"/>
            <point xsi:type="esdl:Point" lat="51.5440679458639" lon="4.232349948345169"/>
            <point xsi:type="esdl:Point" lat="51.54403793808328" lon="4.233218792203365"/>
            <point xsi:type="esdl:Point" lat="51.54421873764493" lon="4.23323568090133"/>
            <point xsi:type="esdl:Point" lat="51.54429024681225" lon="4.233241909164775"/>
            <point xsi:type="esdl:Point" lat="51.54428532195486" lon="4.23338405529115"/>
            <point xsi:type="esdl:Point" lat="51.54428005850368" lon="4.23338358345844"/>
            <point xsi:type="esdl:Point" lat="51.54427878559313" lon="4.2334212727638425"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="764dffe7-2000-48f3-80d4-1698caae79ac">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a6dcf925-ba2f-4029-a07d-bf94e601bc06" id="94d141c3-1277-4adc-98f6-9c2a6af099c9">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="7c35600b-7ec4-41d8-8584-8d588441bd40" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.43696382400000006" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="0721538c-9f9c-4b07-9a12-0ef71548fb3f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="a6dcf925-ba2f-4029-a07d-bf94e601bc06" id="8121850b-c0da-4284-a038-d1ad5b8025b7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="a9cd5be4-313e-4450-a50a-ebe678a5dcb8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.19137054730795905" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="16cdfc70-22b8-4dfa-b471-41935a40794e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="4d20e85e-fff2-4994-bf85-cbb47cdbf42f" id="84b40603-c949-4c91-81aa-9aa55c6edcd7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="1989bfe8-daca-4ec0-9ece-2038f908063d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.8198317041413321" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="64d2a4e9-b407-4cd7-8b14-7d53bf22b06c" name="Gasketel" id="7627e2cc-18f4-4166-bfcc-5b62491814e7" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1b634842-23e8-4050-901f-c83bbfa6bce5" id="6d5126e9-7cc3-4bff-b47f-a41bcbc24edf"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="4d20e85e-fff2-4994-bf85-cbb47cdbf42f" connectedTo="84b40603-c949-4c91-81aa-9aa55c6edcd7"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="f0b71086-44f5-43c3-8520-55fafa034156">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1b634842-23e8-4050-901f-c83bbfa6bce5" id="5cf0f3a4-c894-408d-b5b8-0a61911a2f72">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d897b6d1-f070-454f-8adf-9024c6bcf814" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.3326663341283316" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="bbef126c-b219-4d20-96d5-d6c711d6f4fe">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="a6dcf925-ba2f-4029-a07d-bf94e601bc06" connectedTo="94d141c3-1277-4adc-98f6-9c2a6af099c9 8121850b-c0da-4284-a038-d1ad5b8025b7"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="66303a1a-0407-47fb-b4be-d4c83e796f56"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="e6237c1e-5b09-4da1-8974-c81fed46209c">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1b634842-23e8-4050-901f-c83bbfa6bce5" connectedTo="6d5126e9-7cc3-4bff-b47f-a41bcbc24edf 5cf0f3a4-c894-408d-b5b8-0a61911a2f72"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="879cb4ba-f0db-435b-82ba-0885d08014e2"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="5969" buildingYear="1989" name="Pand van Hennekens Consultancy, Hennes B.V., Flaxman Arabians B.V., Ritraco B.V., Nestaan Gevelonderhoud B.V., Nestaan Holland B.V., Emerald Nederland B.V." floorArea="5894.0" id="730f9871-2164-475a-bc39-350f7d7ee0d0" sector="e8c15233-22af-423a-b151-404a7731adc0" originalIdInSource="0716100000036373">
        <KPIs xsi:type="esdl:KPIs" id="b74b75a3-b27b-429f-a7a0-4db34df53fe1">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="e1641e1b-0f21-4dfa-9afd-a055e11b4562" value="51492.74659637511"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="82b40fe0-be03-48ba-ba31-b671140f447e" value="252120.52713520863"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="6d23f85f-c682-4c3e-9f39-de0162e93fb8" value="291241.06399999995"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="1f036f66-b1a0-4c56-9146-f9c85e5f6975" value="2848953.950707337"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="16c910d3-7c28-4a50-ad5a-996d37517147" value="51492.74659637511"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="3ee8e47b-c605-4eec-b597-f3cc832a6529" value="252120.52713520863"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="2bbb4add-3a8d-4637-9221-d086630d7066" value="303613.27373158373"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="8aa915ad-ec56-42de-ba01-d0eb3400220f" value="291241.06399999995"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="25093b89-757d-4e9f-a0ca-b61d2a26bd75" value="2848953.950707337"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="3bb9e332-461c-43d2-acbb-8122e694d559"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="2ed19776-092c-4307-9add-51480f62757f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="fac646bb-9467-4081-96df-c977de583520" value="3140195.0147073367"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="4390e88c-096e-4c17-bbb8-eeea87920c7c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="78a87024-e11f-4a4c-99e2-c905452bba25"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="65961aab-624e-4d95-adf4-3867df0f883a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="76c7fb6b-65a5-4429-ac01-7da74749c20f"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="d43d574a-cb4f-4bd0-aa20-3ff620ca922c"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="5969.034267502051" height="7.570000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54510502919151" lon="4.232432261723762"/>
            <point xsi:type="esdl:Point" lat="51.54504306815522" lon="4.232427089472991"/>
            <point xsi:type="esdl:Point" lat="51.54506411939803" lon="4.231778502799874"/>
            <point xsi:type="esdl:Point" lat="51.54459511678342" lon="4.2317394956054715"/>
            <point xsi:type="esdl:Point" lat="51.5445483925813" lon="4.233187040732505"/>
            <point xsi:type="esdl:Point" lat="51.5448497213457" lon="4.233212069912211"/>
            <point xsi:type="esdl:Point" lat="51.54484796638639" lon="4.233266481352528"/>
            <point xsi:type="esdl:Point" lat="51.54483037775143" lon="4.233265025054046"/>
            <point xsi:type="esdl:Point" lat="51.54482891997333" lon="4.233316761759307"/>
            <point xsi:type="esdl:Point" lat="51.544846740565234" lon="4.233318039181125"/>
            <point xsi:type="esdl:Point" lat="51.54484303588733" lon="4.2334353730706304"/>
            <point xsi:type="esdl:Point" lat="51.5449332268318" lon="4.233442698739538"/>
            <point xsi:type="esdl:Point" lat="51.54493499523808" lon="4.233377805616557"/>
            <point xsi:type="esdl:Point" lat="51.54507416722086" lon="4.233389466612456"/>
            <point xsi:type="esdl:Point" lat="51.54510502919151" lon="4.232432261723762"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="25155978-1ca4-4fa9-b58f-5f3f854fcd0a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5a1b2c5e-fe92-4620-9444-eff080bbfe73" id="0bdeb244-a838-40dd-8ef8-d3156fb6af3d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="0f6055de-bef0-42f2-a654-02a141d75ffe" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.0484678304" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="d5eacc54-37c7-499e-9e07-f915fc1a6725">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="5a1b2c5e-fe92-4620-9444-eff080bbfe73" id="aaa58cba-b26d-4118-b742-873ae3e9d628">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="d312fa3f-e5ed-4eb6-9ea9-207ff03a765e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="10.256234222546414" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="2ce38071-0988-4662-bcd2-5d659945b7ce">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="5eba3499-051f-46e9-a6ce-18bc1c75a45d" id="f92c8343-b4cb-4ee7-89ae-ee18178687b5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="b12f19fa-d0d3-4910-90d6-cad3aa240eb1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.629745429775272" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="53580265-da6a-49e0-ba80-02ec41b09eaa" name="Gasketel" id="3d60e58c-107d-4ef9-b671-b3b147a55433" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c5f1f899-7c65-4613-81e3-dd8845d2347c" id="23b1cfce-6c83-44b6-bb66-368295df2ee7"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="5eba3499-051f-46e9-a6ce-18bc1c75a45d" connectedTo="f92c8343-b4cb-4ee7-89ae-ee18178687b5"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="82367524-a60f-48fa-8c5e-c0910db77b28">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c5f1f899-7c65-4613-81e3-dd8845d2347c" id="1661a7a9-4a1e-44e8-a845-7dc02a3f4634">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="66b5dd82-2dde-4a07-a752-1537886357ea" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="7.979614683829352" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="e89dec20-bf7f-492d-9046-3dd893733d2f">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="5a1b2c5e-fe92-4620-9444-eff080bbfe73" connectedTo="0bdeb244-a838-40dd-8ef8-d3156fb6af3d aaa58cba-b26d-4118-b742-873ae3e9d628"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5512ec01-5208-445d-a539-dc91c0b60a85"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="eca26970-6d23-4f39-a22c-b3445e0488de">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c5f1f899-7c65-4613-81e3-dd8845d2347c" connectedTo="23b1cfce-6c83-44b6-bb66-368295df2ee7 1661a7a9-4a1e-44e8-a845-7dc02a3f4634"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="e0e31752-39cf-4f46-8137-0ff3d6671938"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="237" buildingYear="1990" name="Pand van Green Life Group" floorArea="217.0" id="a8c1337f-3df1-45a9-a473-27ea41166a58" sector="c86ac4a0-8b00-449d-b61b-3ccab6d45191" originalIdInSource="0716100000106052">
        <KPIs xsi:type="esdl:KPIs" id="bc18cc94-d146-410f-97d6-9cd9577a4ce1">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6ec97e96-985b-4d49-8d97-ba3b0bb66ee1" value="2656.7203807609517"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7fc0c64c-3951-4a69-962e-ed8cfe9d7363"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8f4db15b-7514-47af-b022-bf8ebaa4baff" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="d0e9978f-45a0-4e27-a30d-0d45a21fa81b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="12b32cea-73c2-453e-8d69-f18eb46abde7" value="2656.7203807609517"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="0ad93458-0fbf-4ff4-8f85-11423e94621f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="8ca7cfc1-f698-455f-b6f7-2a8e5b334897" value="2656.7203807609517"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="2ee25739-b334-4c71-90f0-8a4934ca8eaa" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="4ed827ef-134f-4e26-8a25-5f8757f74b5d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="206841bd-8ace-4b08-a674-dc3292f21d56"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a9e11e7d-05ac-4a27-9117-bef7e1c50c39"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="2aec598e-d7ed-4e26-8ccb-fbe402bda64f" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="f6526919-13fd-4726-96b5-bee3d112a14e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="bf591ed0-2650-4053-a145-215ebf1d6b86"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="12da85ab-25bb-460b-87d6-0f90ae3f0237"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="25025494-0471-4c0d-a175-2d36caf58ec1"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="c683d897-5504-45e3-93f1-acd708dbc806"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="237.67768499950927" height="5.65"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54690420162743" lon="4.233538072119408"/>
            <point xsi:type="esdl:Point" lat="51.54691017626895" lon="4.23334653919874"/>
            <point xsi:type="esdl:Point" lat="51.54674981268278" lon="4.233333599549473"/>
            <point xsi:type="esdl:Point" lat="51.54674379312463" lon="4.233525132936507"/>
            <point xsi:type="esdl:Point" lat="51.54690420162743" lon="4.233538072119408"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="89096c4a-6830-4330-867d-0c6ceaa60bed">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="86cde293-6d2b-4091-8e6a-8117e500aef3" id="134c4299-5d3c-4ab6-bc9c-7445bb3dbc5a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="c8e291bd-23cd-4850-8e21-cf6ab59a7030" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03666417119999999" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="958437a9-e88c-4fac-90bf-ed2c0ea1d719">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="a8966666-bff3-4790-80ab-9c6a98db406b" id="3b5e8d36-79ad-4b38-b98f-92a4ccdac290">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="bc080470-13f3-4e9b-9dfc-f1f304d869ab" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08408520005108412" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7c07f3bd-81ef-4981-a3a8-6c64c93d22a3" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ee433286-3981-4e28-bb1e-e71275e7305e" id="aaeb18c0-abd4-43d3-aae3-190eae9efd92"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="a8966666-bff3-4790-80ab-9c6a98db406b" connectedTo="3b5e8d36-79ad-4b38-b98f-92a4ccdac290"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="2ae3c3ec-3599-4098-b486-541dc28f6375">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="86cde293-6d2b-4091-8e6a-8117e500aef3" connectedTo="134c4299-5d3c-4ab6-bc9c-7445bb3dbc5a"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="9fb7031c-fbb6-47a8-bc72-295e8f3c6088"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="a784ef68-810d-408c-8b04-5be51c59763d">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ee433286-3981-4e28-bb1e-e71275e7305e" connectedTo="aaeb18c0-abd4-43d3-aae3-190eae9efd92"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="dbb492c5-6212-48c1-bb6f-e0587db38cb8"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="237" buildingYear="1990" name="Pand van Ecruiser, Green Life Solutions B.V." floorArea="217.0" id="e7fc10f2-9e8e-43fb-be04-0df0f8f35b09" sector="1eb3c57a-0090-45fa-aa5c-2b30bf607100" originalIdInSource="0716100000247441">
        <KPIs xsi:type="esdl:KPIs" id="d53e87a1-963f-4ed3-a85a-0d9d69377561">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="00e5410a-ab78-4dac-87bb-f4a914a46881" value="2647.8917130130835"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="fed3a08a-749c-49af-931d-79e7fe71c73f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="6d4f66b4-43b1-4458-b0d1-28ca453c8fc7" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="5ba65f93-5cad-4d8e-b2bc-80f175b2328d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="6234b31e-ac68-45bb-a651-ce405a791dd6" value="2647.8917130130835"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="715d3b12-6df4-40f0-8e2c-2a321fa047c9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ba9226fe-4c38-482f-85c9-1c31017a6102" value="2647.8917130130835"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="907c118d-2a9b-46f4-a8b4-cc2250d104d2" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="a09fc7cf-7a5a-4cfa-b84a-0a6878eb7813"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="9b9a514f-5d99-495c-b964-b9a69e782b79"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="0a60fa18-79a7-4a2c-9392-c2b12c9d8204"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="8c6e5777-7b1a-4547-8c2e-b87f19b580a8" value="10184.491999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="d68dc12d-1f3b-4e8b-bb88-0ad5886c85c3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9591c235-0df8-4932-ae05-4525fe09fbb2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="5f3b6985-a55e-470d-81d1-ba47245ba181"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="68af9fbe-6af3-427a-a633-cc323857bbd4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="c258942a-5ec2-47b8-8c85-f1261ddaab5e"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="237.64695999932496" height="5.6"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54674981268278" lon="4.233333599549473"/>
            <point xsi:type="esdl:Point" lat="51.54691017626895" lon="4.23334653919874"/>
            <point xsi:type="esdl:Point" lat="51.54691615031168" lon="4.233154977401881"/>
            <point xsi:type="esdl:Point" lat="51.54675583164208" lon="4.233142037285967"/>
            <point xsi:type="esdl:Point" lat="51.54674981268278" lon="4.233333599549473"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="334ff812-9359-4aff-8d98-d2739ed1943e">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="8e65fa5f-3742-4e5e-9b36-66d47c32f70d" id="c47006b6-6e11-4fa7-9db0-60bc815cbb84">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="97fe9c7d-9731-4476-9268-48e7bff09dc2" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03666417119999999" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="ea8cce6d-3ee5-4f50-a170-f99200794e0c">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="daef6907-4f29-4a03-b2df-1d7c36f8e1f2" id="e4f6a543-a155-4689-97ce-28d6ab7f61db">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="480a9aab-f8d3-4af5-9599-d4f9df899f84" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08380577271686408" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="c6d927cf-d127-47d6-8305-a2b347378e7c" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="a7d44509-736e-4e36-baeb-47e903d046a1" id="7da8669e-1f5d-4108-8dee-b38aef34c38f"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="daef6907-4f29-4a03-b2df-1d7c36f8e1f2" connectedTo="e4f6a543-a155-4689-97ce-28d6ab7f61db"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="a5050172-4af4-49c7-9bee-45ee5be84d26">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="8e65fa5f-3742-4e5e-9b36-66d47c32f70d" connectedTo="c47006b6-6e11-4fa7-9db0-60bc815cbb84"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="fdb75dd9-f2c8-4009-bb57-d4d67db2178f"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="c1ad1a6f-50d9-4106-bdcc-01c922f2cd40">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="a7d44509-736e-4e36-baeb-47e903d046a1" connectedTo="7da8669e-1f5d-4108-8dee-b38aef34c38f"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="e54c9524-d5a8-4776-8edb-ba1ddeab3d00"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="666" buildingYear="1992" name="Pand van Slagerij Snoek B.V., Snoek Beheer B.V." floorArea="592.0" id="1e05779b-26d4-4653-bd60-0c728031103f" sector="685f061e-d73a-4230-9173-7356fe675815" originalIdInSource="0716100000142601">
        <KPIs xsi:type="esdl:KPIs" id="75fc0020-5e6d-41cd-b1a5-648880f99218">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4c645abc-2543-4fa6-acaa-ba9bedd912cb" value="6506.780325557499"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="9688283e-d5b5-47fa-8d79-c4584d2c77ce"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="de5ff84e-ba50-49db-8c91-7f33cb49906b" value="23526.756571428574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="309c8d45-88ba-4e1b-97d0-7b88408a2ebd" value="3326.5782535314247"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="100de35d-05bb-48e4-bdb5-5e7cd2b406e2" value="6506.780325557499"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f2a3f2d6-5239-405f-bc36-91f6cd511406"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="d6b34d9f-86cf-4405-9772-b8e2997de6f0" value="6506.780325557499"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="96fc0e99-c41a-4840-a5ec-46aab1982125" value="23526.756571428574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="0d533134-dfa2-4f02-bd70-630aae553494" value="3326.5782535314247"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="d9898279-b7d0-457a-b76d-e3226464016e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="ba766d45-f066-4bdb-bba3-2ab889a928f2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="8063e55e-0fa1-4ca2-8d8e-e49fa25173b8" value="26853.33482496"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c97ac5f0-756f-4887-98ff-1d0cf0d3bb28"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="fbdb46db-cac2-48cc-be3f-59dbac6f12ec"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="fd3d5661-05ed-4832-ab1e-c3b691159714"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a574633c-d8d2-4dab-b0e8-f43d8c708bc1"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="e4c417dc-6a40-436f-8710-9783dda06ddf"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="666.2117464999475" height="4.64"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54629800688688" lon="4.233490274588892"/>
            <point xsi:type="esdl:Point" lat="51.545986693381685" lon="4.233464573706238"/>
            <point xsi:type="esdl:Point" lat="51.545979470721754" lon="4.233690880463198"/>
            <point xsi:type="esdl:Point" lat="51.546024679304885" lon="4.233694620054387"/>
            <point xsi:type="esdl:Point" lat="51.54602089610142" lon="4.233811324575444"/>
            <point xsi:type="esdl:Point" lat="51.54617177824589" lon="4.233823598144573"/>
            <point xsi:type="esdl:Point" lat="51.54617381357919" lon="4.2337602247492825"/>
            <point xsi:type="esdl:Point" lat="51.546137097958784" lon="4.233757192161294"/>
            <point xsi:type="esdl:Point" lat="51.54613875781703" lon="4.23370405035427"/>
            <point xsi:type="esdl:Point" lat="51.54629076649232" lon="4.233716612177801"/>
            <point xsi:type="esdl:Point" lat="51.54629800688688" lon="4.233490274588892"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b2bca103-6382-43ec-abd1-72639293b804">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6ec19027-a41c-41df-8d99-bcc597ae76f1" id="68d10337-4404-46b3-8258-c78b3befb30b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a5b6c04b-f4c9-47fa-819d-5dab6a5c89cc" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08469632365714287" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="c3b1b405-9d8c-4b15-8ce3-d140e2f3f931">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6ec19027-a41c-41df-8d99-bcc597ae76f1" id="81fe432a-48e5-441f-951b-4ea6f42d5964">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="41c28fd1-4ff0-4a38-badd-e0770036b32c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.011975681712713128" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="d7409d3d-61ef-4a7b-9193-999a1df8e823">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="28bd8b66-a7e2-4bd9-b6bd-7b6740910116" id="f5c9953c-f956-444f-a54e-98fb7ece680d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="ded38c69-45c5-4dfa-bf6a-0105bdd9257d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.20593959730389486" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="bab2204e-6b6b-4a02-b9d3-1bcded44bd76" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e8adcd2b-e4ad-460c-8ee9-6f1d1d187229" id="02ef8260-958e-4774-be2b-478070b856bf"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="28bd8b66-a7e2-4bd9-b6bd-7b6740910116" connectedTo="f5c9953c-f956-444f-a54e-98fb7ece680d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="702c7563-05ae-4968-826b-988c8e88bb29">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="6ec19027-a41c-41df-8d99-bcc597ae76f1" connectedTo="68d10337-4404-46b3-8258-c78b3befb30b 81fe432a-48e5-441f-951b-4ea6f42d5964"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="b8ac1134-7388-4237-bc90-f4726fb0964c"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="97a43a35-d0dd-4ffe-8ff3-d1bdfbdcf787">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e8adcd2b-e4ad-460c-8ee9-6f1d1d187229" connectedTo="02ef8260-958e-4774-be2b-478070b856bf"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="01bb3e9c-f5d6-4e7e-8168-3bd639d86b75"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="603" buildingYear="2003" name="Pand van mooimijn" floorArea="743.0" id="74149e53-5b5c-441a-86b6-a56fd0aa8131" sector="54e9794e-feee-4397-b7a4-c16ad5f24cf0" originalIdInSource="0716100000213550">
        <KPIs xsi:type="esdl:KPIs" id="c05bd368-127f-4272-a56a-1efafe9cac2c">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="f81e8bcb-3b16-491d-b971-42922422f406" value="4967.026807011971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7121e6cf-5fbc-422a-a95f-09bc59599485"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="63d3f4ff-8791-41bf-bd2b-580353eeebb0" value="29527.669142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="8210b42a-0b2c-4578-b58e-d15d4d37ef72"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="4f47d40a-66de-4b63-ba07-5d9b89344d90" value="4967.026807011971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="4376235b-85ce-4541-9776-56a0f6a2c249"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="70e2dca2-5ce3-4ac3-a001-8c03258d23d4" value="4967.026807011971"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="683a28c7-f2f4-4b8c-81a8-8ff276241633" value="29527.669142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="32f3675c-0c89-400a-ac40-00271a0d389a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="89d3e009-c869-4947-a046-7fa907eb84b3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="5724972d-d9f5-4892-ae39-d203f2d39cf2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="cabe4279-c1d2-4eb8-b14b-80994aff2bf5" value="29527.669142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="6931217e-ccb6-4004-b532-64de0e82b162"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="8f0ab097-1d36-4b7e-928e-5053d093a15b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="9bb3ae39-cfc2-4d42-8210-7eb333eba010"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a5e82b5c-aa63-4228-a5c3-f5d7266dce54"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="be7f3d88-a209-4562-a96f-928c48cb18ba"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="603.5089995002801" height="5.92"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.546635506752466" lon="4.232344755205132"/>
            <point xsi:type="esdl:Point" lat="51.54663391017883" lon="4.232395142271688"/>
            <point xsi:type="esdl:Point" lat="51.54662893920276" lon="4.232552536484354"/>
            <point xsi:type="esdl:Point" lat="51.54662492738181" lon="4.232552278012807"/>
            <point xsi:type="esdl:Point" lat="51.54662525626016" lon="4.232539164000928"/>
            <point xsi:type="esdl:Point" lat="51.54662235042598" lon="4.232538935089611"/>
            <point xsi:type="esdl:Point" lat="51.546621429576554" lon="4.232567649635777"/>
            <point xsi:type="esdl:Point" lat="51.54661977183335" lon="4.232619133973861"/>
            <point xsi:type="esdl:Point" lat="51.54661913128227" lon="4.232638916862557"/>
            <point xsi:type="esdl:Point" lat="51.546622082621575" lon="4.232639202294355"/>
            <point xsi:type="esdl:Point" lat="51.54662234165928" lon="4.232631756198973"/>
            <point xsi:type="esdl:Point" lat="51.546626435361134" lon="4.2326321135200935"/>
            <point xsi:type="esdl:Point" lat="51.546650647074244" lon="4.232634266356201"/>
            <point xsi:type="esdl:Point" lat="51.54664779416885" lon="4.232726741689364"/>
            <point xsi:type="esdl:Point" lat="51.54664873952646" lon="4.232726890676469"/>
            <point xsi:type="esdl:Point" lat="51.54664790897709" lon="4.232752921253958"/>
            <point xsi:type="esdl:Point" lat="51.5466862219083" lon="4.23275566736853"/>
            <point xsi:type="esdl:Point" lat="51.54669409468055" lon="4.232769120842151"/>
            <point xsi:type="esdl:Point" lat="51.54670622115255" lon="4.232770009344091"/>
            <point xsi:type="esdl:Point" lat="51.5467152597246" lon="4.232756789313356"/>
            <point xsi:type="esdl:Point" lat="51.54671557016101" lon="4.232747265750237"/>
            <point xsi:type="esdl:Point" lat="51.54673670385875" lon="4.232749049924974"/>
            <point xsi:type="esdl:Point" lat="51.54674466677344" lon="4.232747059767939"/>
            <point xsi:type="esdl:Point" lat="51.546751782983215" lon="4.232740347704586"/>
            <point xsi:type="esdl:Point" lat="51.54675676745417" lon="4.2327298691232444"/>
            <point xsi:type="esdl:Point" lat="51.546758904189716" lon="4.23271685330733"/>
            <point xsi:type="esdl:Point" lat="51.54675896752687" lon="4.232716894950794"/>
            <point xsi:type="esdl:Point" lat="51.54675911068687" lon="4.232712277647969"/>
            <point xsi:type="esdl:Point" lat="51.54673814916823" lon="4.232710633290732"/>
            <point xsi:type="esdl:Point" lat="51.54674035594037" lon="4.232638286880434"/>
            <point xsi:type="esdl:Point" lat="51.54685468502416" lon="4.2326475929527545"/>
            <point xsi:type="esdl:Point" lat="51.54686415873305" lon="4.232360006703456"/>
            <point xsi:type="esdl:Point" lat="51.54663563633952" lon="4.232340585206046"/>
            <point xsi:type="esdl:Point" lat="51.546635506752466" lon="4.232344755205132"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="490b2c8a-865c-425e-8b6e-29a0ee9e2e9b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="60003895-c157-43c7-ba87-73a1cce0eb75" id="d71d1616-e467-45cb-acdc-ad2c3eeb7b24">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="33f90b50-8d30-437d-82ac-b43892e3ebe9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10629960891428572" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="40787f16-f1af-4846-bfc6-9b23066c2ded">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d1d66a88-cb69-4c5f-ad85-6ef708531349" id="de4a7b06-9cfd-4098-b401-78d0716aa14f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="d9458f5e-7fda-486b-99c0-cc9773639883" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.15720639844192888" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="ed381323-4763-422d-8f55-616f34b60eb6" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="7b82b43d-8412-4260-b1e6-4936c6c02252" id="8991047a-b502-4238-b56a-b7e4ba2ad9dc"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d1d66a88-cb69-4c5f-ad85-6ef708531349" connectedTo="de4a7b06-9cfd-4098-b401-78d0716aa14f"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="3b9750e5-3755-4ed8-902c-078ba0426e47">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="60003895-c157-43c7-ba87-73a1cce0eb75" connectedTo="d71d1616-e467-45cb-acdc-ad2c3eeb7b24"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="20977a46-1ba7-4038-80b3-a87b10f5b3c2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="2044b729-285f-4e17-80fb-03d47b33f0ed">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="7b82b43d-8412-4260-b1e6-4936c6c02252" connectedTo="8991047a-b502-4238-b56a-b7e4ba2ad9dc"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="49e8217c-cde1-4ef8-8538-0d12e377ab16"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1183" buildingYear="1991" name="Pand van U Tube Systems B.V." floorArea="1124.0" id="98816610-bd6b-47bb-8dcc-87e251ced29f" sector="a64a47e6-05da-420a-a1e8-d347667a05e4" originalIdInSource="0716100000248924">
        <KPIs xsi:type="esdl:KPIs" id="151e3a49-fa7d-47f6-86be-0ae22d8e7e17">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="00533dde-2de6-49dd-b5a9-ecb83041b772" value="10861.764250096607"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="15bd173e-4201-4348-8123-78f0c7c4b1f0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8dc67035-dd7d-41aa-9fcb-a695ff2aa656" value="48083.756571428574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="17fb6b1b-37b4-46ba-b064-1e3e292cf9c0" value="125830.04276116901"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="769f0436-bb14-4dce-8047-820dd2291bb1" value="10861.764250096607"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f0002819-173b-4cd1-be75-b3d582185330"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="bef5ca2b-a760-4c87-a02a-3cc5790a2eda" value="10861.764250096607"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="f63802b5-e222-43af-b4de-1c5fa3d21163" value="48083.756571428574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="ab4f8965-89c1-4cb8-b2d6-6e4d54919d66" value="125830.04276116901"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="609be61b-c139-4a1a-87dc-8ed4fe387402"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a4519a25-4bea-4566-a570-784cdc7dcf64"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="2024b6e5-1364-4ad5-b8ed-583e52a906f7" value="173913.79933259758"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="0b9a1e64-821b-41dd-b4d6-4adc820fb38b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="3bc2329d-3b37-4f01-816e-d6449af494e8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="1d8aff35-8b30-487d-a38f-6d93184aff95"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="918d6195-2f21-46a0-bbd1-502c893b0383"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="20bf39d4-304d-41a9-9825-625b702c74d5"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1183.1128795008408" height="6.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54751809079633" lon="4.231314315924023"/>
            <point xsi:type="esdl:Point" lat="51.547473604140315" lon="4.231001915549788"/>
            <point xsi:type="esdl:Point" lat="51.547290173154444" lon="4.231068898290651"/>
            <point xsi:type="esdl:Point" lat="51.54723812379933" lon="4.23108789926576"/>
            <point xsi:type="esdl:Point" lat="51.54713153521372" lon="4.231126829518384"/>
            <point xsi:type="esdl:Point" lat="51.5471914071851" lon="4.231548786681787"/>
            <point xsi:type="esdl:Point" lat="51.54730568306251" lon="4.231507254012732"/>
            <point xsi:type="esdl:Point" lat="51.54733881568163" lon="4.231495208389418"/>
            <point xsi:type="esdl:Point" lat="51.54734282431899" lon="4.231523322215116"/>
            <point xsi:type="esdl:Point" lat="51.54738901512434" lon="4.231506388324215"/>
            <point xsi:type="esdl:Point" lat="51.54739016162764" lon="4.2315059698726305"/>
            <point xsi:type="esdl:Point" lat="51.5473861608327" lon="4.2314777404763735"/>
            <point xsi:type="esdl:Point" lat="51.5475336919763" lon="4.231423841402673"/>
            <point xsi:type="esdl:Point" lat="51.54751809079633" lon="4.231314315924023"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="14035adf-bd9a-4afe-ab09-e201ebbc570a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="20f8c146-b06f-44cd-8148-032dd7ac7630" id="315eda7d-d832-4f1b-b449-bdbd67fffd73">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d5c7bc1e-a98e-4db0-9646-3970f7193932" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.17310152365714288" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="b482e8f0-27e1-4343-a596-3c504a0d9c22">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="20f8c146-b06f-44cd-8148-032dd7ac7630" id="827caafd-4cd2-4445-9e69-03af2c00cbb2">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="62b21f70-f585-4c5f-939a-65754a84fd77" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.4529881539402084" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="9ee18bfc-2817-4d73-b300-a6991e2807f8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="455ccf77-a1ff-44e2-9390-b7eedc563d42" id="a83f4f67-c249-45e6-a325-c37edd4c5453">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="4667723b-168c-4eb2-8550-160a3970a1a1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.34377483851555757" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="671c74ef-f300-4687-87ea-9a9c203f7331" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="26d5fc0c-3aa8-4ec2-a89b-75084872c613" id="a35e568e-bf24-4d7c-b254-8181d109c53d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="455ccf77-a1ff-44e2-9390-b7eedc563d42" connectedTo="a83f4f67-c249-45e6-a325-c37edd4c5453"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="26f6718d-7203-418f-a0cf-3eea3bf40b86">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="20f8c146-b06f-44cd-8148-032dd7ac7630" connectedTo="315eda7d-d832-4f1b-b449-bdbd67fffd73 827caafd-4cd2-4445-9e69-03af2c00cbb2"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="21974b69-3c53-424a-afa7-df989b0db778"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="37e14655-39af-4e37-ab6d-a82941a0c83f">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="26d5fc0c-3aa8-4ec2-a89b-75084872c613" connectedTo="a35e568e-bf24-4d7c-b254-8181d109c53d"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="3f2c269b-1f3e-4e8a-8be3-79a2859f4d90"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1103" buildingYear="1990" name="Pand van Aneko Modelmakerij B.V." floorArea="1079.0" id="dfba33b1-6800-4734-a899-d6c0db751ec6" sector="6fe53beb-5f1a-4711-b880-63a50b770bae" originalIdInSource="0716100000289023">
        <KPIs xsi:type="esdl:KPIs" id="2e03952e-5ff8-4f93-b1c9-639eebf0ae58">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="025250f8-ea84-4c8c-917f-6051f2cf9470" value="10713.960091809515"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="d8891649-908d-41c5-b05b-e5101c7c9883" value="5565.138801045619"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a7021a3f-dc07-4bb7-8374-ef6f0ff2ec36" value="46158.69514285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="d4c92abd-801a-4bbc-b2be-6a7328d47b3b" value="92281.26274822367"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="88b184ef-d67f-430c-a1c1-c59309829c7f" value="10713.960091809515"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="a860cba5-abcf-41ff-8047-2700331a4825" value="5565.138801045619"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="3c07668a-0d7d-4886-a591-dbf098567fea" value="16279.098892855134"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="669a4510-1717-40f9-a8af-e46ceb29a6a4" value="46158.69514285714"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="6a0849d4-fe76-4cd6-9f96-4a35d04a30a1" value="92281.26274822367"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8ac5f523-8b14-4f8f-a218-bf2b6b8316dd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="7e1611fc-b0bc-4817-897f-76f5f85112fc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="d9d670e6-9ece-41b1-aa42-93345fcff731" value="138439.95789108082"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1d4d382c-38b8-404e-a616-737fcd4a19ae"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="78f5800d-e704-4592-a007-f760bd465c39"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="1864f7e1-4318-4621-9631-a653446d5c62"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="db4e06ae-1ed4-42a7-bed3-1b06463cf68c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="84d097da-a4e5-4d45-b71a-8cd563d823a9"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1103.5591695002272" height="4.73"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54701916377942" lon="4.232394677011295"/>
            <point xsi:type="esdl:Point" lat="51.546924485623265" lon="4.2324281396759735"/>
            <point xsi:type="esdl:Point" lat="51.54697553867676" lon="4.232794120180512"/>
            <point xsi:type="esdl:Point" lat="51.54713043006836" lon="4.232739044011206"/>
            <point xsi:type="esdl:Point" lat="51.54712537136567" lon="4.2327028829231645"/>
            <point xsi:type="esdl:Point" lat="51.54725614298341" lon="4.232655873311545"/>
            <point xsi:type="esdl:Point" lat="51.54717680199275" lon="4.232088197883311"/>
            <point xsi:type="esdl:Point" lat="51.54713147814995" lon="4.232104633267327"/>
            <point xsi:type="esdl:Point" lat="51.54712754568842" lon="4.232100580928214"/>
            <point xsi:type="esdl:Point" lat="51.5471137683652" lon="4.232105472865571"/>
            <point xsi:type="esdl:Point" lat="51.547111288411436" lon="4.2321119518524135"/>
            <point xsi:type="esdl:Point" lat="51.5470787187812" lon="4.232123665456145"/>
            <point xsi:type="esdl:Point" lat="51.547074678474765" lon="4.232119615862265"/>
            <point xsi:type="esdl:Point" lat="51.5470548191218" lon="4.232126709763636"/>
            <point xsi:type="esdl:Point" lat="51.5470522836768" lon="4.232133031556078"/>
            <point xsi:type="esdl:Point" lat="51.547043453427236" lon="4.232136399161038"/>
            <point xsi:type="esdl:Point" lat="51.54704639609368" lon="4.2321576338381925"/>
            <point xsi:type="esdl:Point" lat="51.54704385450928" lon="4.2321642441396685"/>
            <point xsi:type="esdl:Point" lat="51.54704835808624" lon="4.2321960650461214"/>
            <point xsi:type="esdl:Point" lat="51.54705233790213" lon="4.232200361284958"/>
            <point xsi:type="esdl:Point" lat="51.547066034991" lon="4.232298313592395"/>
            <point xsi:type="esdl:Point" lat="51.54700867715827" lon="4.232318673527313"/>
            <point xsi:type="esdl:Point" lat="51.54701916377942" lon="4.232394677011295"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="6af93aeb-bfd6-4d30-acc2-b1d5de1acb67">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6e4b33fa-dfd3-40a6-bf8a-ec10475bd1f0" id="0b872d3c-79bb-4bef-991d-1b91e1f36389">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="4a52229a-1b41-4c59-bcfa-d1c5d2bdc6c5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16617130251428572" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="293c1257-9e16-46f3-93cd-3fdd4e89e139">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="6e4b33fa-dfd3-40a6-bf8a-ec10475bd1f0" id="20028459-e15d-4aef-99c0-46adcd12d6e8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="45615bb4-d9ee-4e86-89d0-7666fe98dc35" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.3322125458936052" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="9a93cf97-0f95-40f3-89e5-c742d4b76050">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="eb27b6d4-b0a6-45f1-b3b7-f60050235d03" id="646668d1-4ba4-4fdf-acf9-ed6b9e7d5c90">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="005018f0-f473-47f7-997c-7047d3bb5027" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.33909683690577114" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="6fd0ffb7-05c2-4896-a88f-d39c28104ba1" name="Gasketel" id="9c618e23-7e01-40b7-90c7-d4c516e8705b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a8fa27e-0f57-4635-b2e5-3b65583c5ea0" id="92ddb27b-ef15-48a6-adbd-f5e4e5406d3c"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="eb27b6d4-b0a6-45f1-b3b7-f60050235d03" connectedTo="646668d1-4ba4-4fdf-acf9-ed6b9e7d5c90"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="a738b4a7-ed74-4562-ac39-41cfa854dcb3">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a8fa27e-0f57-4635-b2e5-3b65583c5ea0" id="d8a73186-dabb-4c59-97d9-a73b34c41963">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="4081d22e-d00e-476c-a635-8492c8b6fc34" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.17613664305309384" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="bb4d8dab-db63-403e-b120-2cb5f91418c3">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="6e4b33fa-dfd3-40a6-bf8a-ec10475bd1f0" connectedTo="0b872d3c-79bb-4bef-991d-1b91e1f36389 20028459-e15d-4aef-99c0-46adcd12d6e8"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="9c071390-7a91-41d7-957f-bd6d4c2cc2bf"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="81000c4f-2229-4fff-b136-2b088a5da984">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="3a8fa27e-0f57-4635-b2e5-3b65583c5ea0" connectedTo="92ddb27b-ef15-48a6-adbd-f5e4e5406d3c d8a73186-dabb-4c59-97d9-a73b34c41963"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="ed1f4d82-437e-4cdf-9b50-c1421fcb6005"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="130" buildingYear="1995" name="Pand van SNR Techniek, MCRJ Holding B.V." floorArea="149.0" id="a61ba89d-a794-434b-85db-1cdbe1856c8c" sector="5f3d2421-244b-408e-a94c-57fcdf679901" originalIdInSource="0716100000142216">
        <KPIs xsi:type="esdl:KPIs" id="335405b8-65c2-4798-8957-aff3da84c0bf">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="58399bd3-1d5b-4071-9fc1-b7073e020e8f" value="3750.725747336956"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="a04d248e-0680-4a66-a8e3-1a3ad8a4efd0" value="3422.9156382706665"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d7071303-9320-418d-8b15-49c01aeb9b95" value="9099.543369565217"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="7ea67405-f588-4b7d-899e-1e92362e271a" value="29467.517393944436"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="c257fb84-e2d9-463f-8f24-9aac1ee1d6d4" value="3750.725747336956"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="4ca530d9-52c2-4ebf-8b87-3fae4ec786c8" value="3422.9156382706665"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="eba27f8a-da9e-4814-b7b3-a89e79c37ada" value="7173.641385607622"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="c68228f0-ac5d-4e79-a9a5-ceac2de026c4" value="9099.543369565217"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="34b95dc8-000e-48fa-8c01-c71fb2875416" value="29467.517393944436"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="355fba6c-ee63-4cb7-b103-d4e6a331644e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="31501b87-c9c7-4d89-9ec0-ee0c30de4acb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="b08bfceb-85f3-40e4-8b7c-9a94bd2dbb08" value="38567.06076350965"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="98c5ec32-348e-48e0-a121-b01b06a520b9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="cb2d73ce-5ad0-44d6-a9ca-710f5815554d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="f310d11e-4b6c-457c-a2c1-f8131544e9a4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="5f82c6de-422b-4366-a3bf-7c62cc829f18"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="6a6e0a75-d1f7-4b02-8faa-6eea8343d8e9"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="130.2740844999059" height="4.199999999999999"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54824516211041" lon="4.2310045101917835"/>
            <point xsi:type="esdl:Point" lat="51.548176790853006" lon="4.2310292473765285"/>
            <point xsi:type="esdl:Point" lat="51.548171017939076" lon="4.230988187225747"/>
            <point xsi:type="esdl:Point" lat="51.5481378848057" lon="4.231000175785909"/>
            <point xsi:type="esdl:Point" lat="51.54816186563126" lon="4.231170708857579"/>
            <point xsi:type="esdl:Point" lat="51.54819254572136" lon="4.231159734442262"/>
            <point xsi:type="esdl:Point" lat="51.54819736553796" lon="4.2311944172241525"/>
            <point xsi:type="esdl:Point" lat="51.54822886731241" lon="4.231182902851143"/>
            <point xsi:type="esdl:Point" lat="51.54822827731711" lon="4.231178693341511"/>
            <point xsi:type="esdl:Point" lat="51.548259781228815" lon="4.231167395167893"/>
            <point xsi:type="esdl:Point" lat="51.54824659002244" lon="4.231072513227872"/>
            <point xsi:type="esdl:Point" lat="51.54825447273819" lon="4.231069688494848"/>
            <point xsi:type="esdl:Point" lat="51.54824516211041" lon="4.2310045101917835"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="59dbe9d9-d7f8-4978-8932-14f978bf7f11">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b2508684-b358-4575-90cf-49f99cefac0f" id="c7b4ffef-047d-4e14-b385-bf02ade0e0b5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e19f1b1d-fc1a-4f74-a892-58645c9bff14" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03275835613043478" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="6bb4af8b-71ec-42a3-b9c7-6a288cf27b6c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b2508684-b358-4575-90cf-49f99cefac0f" id="b8477539-4e5b-46f7-9338-979beb44185b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="9b8e08f2-6c94-470e-a34a-2c1b7224d37a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10608306261819997" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="1b39ab9d-8e4e-47fc-953d-22add0d7e886">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d99b2136-bf15-451c-a90e-cd36017faf78" id="f3badd54-a986-4ba9-a5f9-51827ea45045">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="98a8db86-0b22-4ffb-9c1b-174c163f477c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11871046990321464" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="fdc02c8f-18de-4edd-8c20-9e52ff6f8328" name="Gasketel" id="44007adf-79ba-4715-85aa-21e5738e1ffa" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="5a0e6541-e177-44a5-9303-ce354497eb77" id="2400a434-df5f-4534-9e95-db22048ead13"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d99b2136-bf15-451c-a90e-cd36017faf78" connectedTo="f3badd54-a986-4ba9-a5f9-51827ea45045"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="4cc9bb23-0c60-46ca-bad2-639821767310">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="5a0e6541-e177-44a5-9303-ce354497eb77" id="42f62ac0-82f2-4d4e-9298-21138208c344">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="0d8bef45-4d20-448a-bbcc-ea8d6d5af642" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1083352799512666" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="bfb263a8-cdf9-438c-98ca-544f524f17c0">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="b2508684-b358-4575-90cf-49f99cefac0f" connectedTo="c7b4ffef-047d-4e14-b385-bf02ade0e0b5 b8477539-4e5b-46f7-9338-979beb44185b"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="3e98ee2e-25df-4eca-82d0-f6f77eda6208"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="a1bec535-a6b7-4e64-b81a-6ee6dd505b6b">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="5a0e6541-e177-44a5-9303-ce354497eb77" connectedTo="2400a434-df5f-4534-9e95-db22048ead13 42f62ac0-82f2-4d4e-9298-21138208c344"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="473ecc17-3e8c-433b-b7af-0e477233fd32"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1035" buildingYear="1989" name="Pand van MDE Products B.V., MDE Holding B.V., MDE Robotics B.V., MDE Automation B.V." floorArea="966.0" id="b9b05b25-ac06-4730-9f22-26bffbe58b51" sector="dfdc6730-6b7f-4d9d-90d6-4770257b3495" originalIdInSource="0716100000106252">
        <KPIs xsi:type="esdl:KPIs" id="ed4f9d12-8572-4a65-8d1a-631ddf9e7d51">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="75606dbb-5a0c-43bb-91ae-af7b5e1417e8" value="8573.410055426277"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="3c6a278c-1f3d-4b36-94c5-e741e593e092"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d5e0af6a-bc55-4f08-99d9-f357359f7754" value="38389.944"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0cffac93-dcd1-43ca-bde0-6dea6db6bae0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="570f6beb-57d6-4148-bb57-b16be04853d1" value="8573.410055426277"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="c1e9bd65-48be-4f55-9f01-72f4f172cc0f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="e5520bcd-0dd7-400d-8867-1ad914f3d3e1" value="8573.410055426277"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="786c2044-e10a-4201-90b6-ba417ef5c82b" value="38389.944"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="165b052b-df0f-419f-850f-072d06e121db"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="86585157-bf95-4528-a038-03e73246b431"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="81df1550-36d9-4124-aafa-520724174715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="741548cf-9bed-4d76-9525-681347bb486f" value="38389.944"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1a34e37b-940d-4fb8-ada9-7ae23e2f49b1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="2b1c6da8-d9c1-4dc3-81bc-d726fd1750c7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c204c14f-3f32-4388-813e-a8eecf7c0bec"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="2665f10d-30ad-423f-aa82-b09b713d4306"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="35d8c482-0b5f-4631-9d9d-2fc7c0870c4b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1035.9462900005446" height="3.99"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54760294576867" lon="4.231927429298727"/>
            <point xsi:type="esdl:Point" lat="51.547353037065406" lon="4.232017985388986"/>
            <point xsi:type="esdl:Point" lat="51.54733012596099" lon="4.232110121577049"/>
            <point xsi:type="esdl:Point" lat="51.54738335891032" lon="4.232484642663144"/>
            <point xsi:type="esdl:Point" lat="51.54761031887949" lon="4.232402357257798"/>
            <point xsi:type="esdl:Point" lat="51.547667305117514" lon="4.232381689403922"/>
            <point xsi:type="esdl:Point" lat="51.54763982195148" lon="4.232187687644589"/>
            <point xsi:type="esdl:Point" lat="51.54760294576867" lon="4.231927429298727"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="f2eae33b-ed1d-4517-9bfa-0d7e7f29d976">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="569c3d3e-5e00-43d7-8ceb-acd64fd036a6" id="cfd15132-b95f-46c0-ad70-85d817e291aa">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d7490e8e-dd1d-4a86-b6ef-4a66687877d4" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13820379840000002" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e63cac61-8254-40f4-b1d0-82d3b3928236">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="9031253d-5518-4145-9203-ad6506fc9666" id="da33d8c2-8ade-4a44-96eb-5075eba6edfb">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e2d60d24-ce65-45fa-b204-7137f07b1069" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.27134842825424166" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="94302005-9de7-4352-ac8a-578dc68a72d7" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="9070ad91-8d03-4fd0-ae07-d498c24662ae" id="ff025bd7-549c-4451-913c-0cd40fa5a762"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="9031253d-5518-4145-9203-ad6506fc9666" connectedTo="da33d8c2-8ade-4a44-96eb-5075eba6edfb"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="ef31b463-e460-4ae7-a39e-70700ec50d42">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="569c3d3e-5e00-43d7-8ceb-acd64fd036a6" connectedTo="cfd15132-b95f-46c0-ad70-85d817e291aa"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="e13aec2f-1190-4205-9ff9-7f8ed79081e5"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="3d557748-30d8-40b1-ae4d-362383711eb2">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="9070ad91-8d03-4fd0-ae07-d498c24662ae" connectedTo="ff025bd7-549c-4451-913c-0cd40fa5a762"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="0a6b7514-d57f-412b-9de2-203876c32357"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="299" buildingYear="1991" name="Pand van Rioolgroep Zuidwest B.V." floorArea="279.0" id="aee7f3c1-65de-4356-a974-25339205d9d9" sector="4e92dd6d-d561-4b1a-8d38-926378e35e66" originalIdInSource="0716100000213553">
        <KPIs xsi:type="esdl:KPIs" id="6252d776-2adb-47f1-a976-aa76b0c796cb">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="a779d37f-6ec0-4ac7-aa47-96632254c4c5" value="3841.2097590896574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7e6fceea-c11c-4661-b31b-58cffa6c72f7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="8368a2a4-d02c-4929-9571-b4d9c368dbdf" value="13094.346857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a88a1a40-fbd5-4f7f-898b-9e1fdcc94c7c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="861f2bae-0ff2-4cd1-af27-ce7e717e098d" value="3841.2097590896574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="528619d2-f408-4de4-8634-fd54caefcb0f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="4a10a913-e2d8-4ce4-bd42-433de83ee347" value="3841.2097590896574"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="af4b7bfb-88fc-439d-b427-8fcbf33ac93f" value="13094.346857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="05edbc9e-beb5-4769-8e08-0e5153c8de3d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="1bb6a134-1609-49a1-b30e-21fa700f9227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="6b0a091d-f2b0-4930-bfaf-eb95242061b2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="4c71bb82-7942-413f-a8f3-10b3e3b5366e" value="13094.346857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="667b2e28-b0ef-483b-8be3-990505817b81"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ef171597-9f49-42f4-b29b-c5590c124bb6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="8b81bea5-8ac1-4516-a70b-69ed3ddd8bee"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="2bcfdcbe-3ff2-4a65-b162-b1aeb8c889ed"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="3fab137b-2a86-4a08-96ce-a92bd61f0197"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="299.66265250045296" height="5.25"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54779240604348" lon="4.2321802323317685"/>
            <point xsi:type="esdl:Point" lat="51.54788021251598" lon="4.232148212012288"/>
            <point xsi:type="esdl:Point" lat="51.547822667522155" lon="4.231740447957759"/>
            <point xsi:type="esdl:Point" lat="51.54771741167444" lon="4.231778723314315"/>
            <point xsi:type="esdl:Point" lat="51.54772892626414" lon="4.231860468924212"/>
            <point xsi:type="esdl:Point" lat="51.54775695364258" lon="4.231850312288192"/>
            <point xsi:type="esdl:Point" lat="51.54776097916294" lon="4.231879233382088"/>
            <point xsi:type="esdl:Point" lat="51.54775047231878" lon="4.231883047435422"/>
            <point xsi:type="esdl:Point" lat="51.54779240604348" lon="4.2321802323317685"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="6413f085-ff26-4386-b051-4d0439cc6772">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="ee1404d7-8ee9-4d6d-a5cc-bf85759d1574" id="c4a2dae8-7c0f-4174-93d6-4008fdd5453f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="728be2e4-d848-4d7a-94fa-03324b301b03" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04713964868571429" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="eebe83d4-d9d8-4c96-a3ff-bacd36cfbab8">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="63942d13-42ea-4414-b967-bd220c73fafb" id="237dc6b5-45f7-4614-b30f-61257ffb7621">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="d62d1191-3909-4dc8-9eaf-1df69cb611c8" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.12157428887518765" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="115ebfcb-1c49-4a36-98d1-0a3d0b81b07c" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="891cea46-0354-49d4-b676-0733511cd30e" id="1771fbd3-2a60-4f83-bf21-698a7e75a531"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="63942d13-42ea-4414-b967-bd220c73fafb" connectedTo="237dc6b5-45f7-4614-b30f-61257ffb7621"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="bf9589ef-1b9a-4bc2-ab57-8385fbdeb04d">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="ee1404d7-8ee9-4d6d-a5cc-bf85759d1574" connectedTo="c4a2dae8-7c0f-4174-93d6-4008fdd5453f"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="d8f5166e-d554-4486-8831-3694c651bb07"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="f5ea5c7a-5d33-4059-8e60-b2abc456ff19">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="891cea46-0354-49d4-b676-0733511cd30e" connectedTo="1771fbd3-2a60-4f83-bf21-698a7e75a531"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="0f6ec0af-3aa8-42fa-a4f4-5d55e3a74897"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2367" buildingYear="1991" name="Pand van Jatho B.V., Jansen Tholen B.V., Jansen Onroerend Goed B.V." floorArea="2250.0" id="93656f81-c331-460d-9286-6a5c02c5a77e" sector="16284970-105f-40c3-8054-dba1f630f6c9" originalIdInSource="0716100000000595">
        <KPIs xsi:type="esdl:KPIs" id="43629ebd-17d4-49e9-8dfc-91b4cdc694e6">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="c1a6f619-07e9-4953-acfd-3204f846dd06" value="20619.540850586072"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="4629515e-baae-4f4e-b673-647f81a39d8b" value="67459.30696847815"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="6a40a6da-1cb8-467a-bddc-97c558f8fbba" value="102670.07142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="c8f486f7-c9eb-4786-be8a-7d32819b54e1" value="403743.12420157297"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="edb778cb-77d7-4eb6-b0b3-c4a510cbcc77" value="20619.540850586072"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="ca113481-9fdf-43a8-9589-aeced07074a8" value="67459.30696847815"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="caa93138-a135-4886-a5c1-55d9d90d6d58" value="88078.84781906422"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="c945bd94-44ef-4a94-b9fe-671fadea4629" value="102670.07142857143"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="0389f383-1e81-4e93-8c7c-b33a68402c39" value="403743.12420157297"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="c51f2507-ec13-41c9-8329-5478181db599"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="3ac9c7db-1317-43b6-b6f9-28b3489810a1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="370ca7ab-90a3-42e0-a91b-f872a81b7665" value="506413.1956301444"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="24efb4b1-976e-47b5-97b3-c6911d0d2518"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="55df5c8b-2ff6-43e3-ba90-4bb3887512bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c35b2797-76c1-491a-82fe-08a190e20a79"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="2d9ee136-4d73-463a-b428-74a84af1f078"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="83d4de29-89b5-403a-bdcf-4b1b6ee21ea4"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2367.982144999629" height="4.58"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.548552685535824" lon="4.230501818794895"/>
            <point xsi:type="esdl:Point" lat="51.5488410495656" lon="4.230343140667337"/>
            <point xsi:type="esdl:Point" lat="51.54883402708578" lon="4.23031027261929"/>
            <point xsi:type="esdl:Point" lat="51.54907910882559" lon="4.230175389393062"/>
            <point xsi:type="esdl:Point" lat="51.54896789170346" lon="4.229656131662872"/>
            <point xsi:type="esdl:Point" lat="51.54847535097056" lon="4.229927202135292"/>
            <point xsi:type="esdl:Point" lat="51.5485378988355" lon="4.230217679569407"/>
            <point xsi:type="esdl:Point" lat="51.54849709296311" lon="4.230240072343228"/>
            <point xsi:type="esdl:Point" lat="51.548552685535824" lon="4.230501818794895"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="57990f78-cbb0-4c7e-809f-8c11e10e8a2a">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="dd5a14e1-555b-4924-a20d-4502ab4c45d9" id="a0475f89-365d-44f9-9020-cdfaaf9a5e3e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="398a0627-c215-4e7b-b786-c57846b1a7fd" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.36961225714285717" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="373ddf97-0544-4123-a032-87d6aaa518cd">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="dd5a14e1-555b-4924-a20d-4502ab4c45d9" id="4ba94f59-ae47-4595-ba71-a849cd168283">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="79acf0bf-99c8-4a71-8058-857f6ebcdeca" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.4534752471256627" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="6c2b7d7a-a24e-43c2-94e0-84ccc4099b15">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7421dc1e-164b-4927-875b-a569a59498a2" id="8454ed98-87b4-47ba-8370-e0713efc19e6">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e9804f7d-6fe8-4175-9856-b9448a6beb50" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.6526084679210492" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="2d23e275-e948-460c-ab55-aaf526f239e2" name="Gasketel" id="5ce73801-0bff-42b2-8f8d-8e2d47153608" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a897809-f096-4eb2-a626-92031e9ff7ee" id="606e7bcd-d6e8-40f3-a8ba-282151f7c4b2"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7421dc1e-164b-4927-875b-a569a59498a2" connectedTo="8454ed98-87b4-47ba-8370-e0713efc19e6"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="6d733a8f-cbac-4eaf-bf1e-f8c3c10d058b">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="3a897809-f096-4eb2-a626-92031e9ff7ee" id="de8720e5-54bb-4e34-a3a0-a84f4f124250">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="7c0f694b-9126-4ad3-913f-9d02d865d71d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.1350870655523333" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="7948ed74-1541-40b5-9616-749a485816db">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="dd5a14e1-555b-4924-a20d-4502ab4c45d9" connectedTo="a0475f89-365d-44f9-9020-cdfaaf9a5e3e 4ba94f59-ae47-4595-ba71-a849cd168283"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="32c61aac-eb9f-4652-a3b8-5a3260148bdf"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="55b57de7-1eed-4a2b-bd03-33365b081bd8">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="3a897809-f096-4eb2-a626-92031e9ff7ee" connectedTo="606e7bcd-d6e8-40f3-a8ba-282151f7c4b2 de8720e5-54bb-4e34-a3a0-a84f4f124250"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="728ffc77-3d7a-45ba-82b8-d915da3a68a8"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1088" buildingYear="1997" name="Pand van Attractiebedrijf Mobron, Attractiebedrijf B. en E. Mobron VOF" floorArea="1075.0" id="58e67bbe-fa38-4b01-9606-a4a6a1e1fb3b" sector="7a74cfa6-ec04-4b1d-adc1-5687629dc4a2" originalIdInSource="0716100000071416">
        <KPIs xsi:type="esdl:KPIs" id="799fa799-7446-4253-9e7c-68802d124b2e">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6df01006-74b9-4ece-aae9-ec5b2bf6f4de" value="7644.538276750169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="4c23fb29-e139-48c8-9795-e80d3a69bb66"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="3ca75721-facf-48e1-8387-432d74ffc7c1" value="45987.57857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="7bf14c97-2715-47e4-a5b6-b72da5cedd46"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d6a06f5f-1276-4d8b-859f-c6fcc3e51a0c" value="7644.538276750169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="513d15ca-9958-40f9-825f-add87e9848e5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="80278cde-49ef-4576-96f9-de87e7b88392" value="7644.538276750169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="9aeadbdc-e871-416f-becd-f9a292e372f4" value="45987.57857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="070691c5-3ca6-467a-9be8-c4d23b5b8080"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="814b990a-f980-4178-8060-2e51d755c72d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="3afbfa9d-2477-4431-930b-7d9f72e1bd7b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="88738237-cfbc-4d4d-ab39-b22d3b7c9775" value="45987.57857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="34223d7a-bce8-474d-b95b-803fac8e2376"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="6b35e4e2-963c-4a7b-9d08-7a7648a7cc0b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3db422df-553e-4636-85c6-0806bd689f2e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="e2aeeffc-bd26-45b9-bb8d-4d586319bbcb"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="2f0ca9eb-965f-45be-8743-1b4e147fb298"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1088.9078270001703" height="5.71"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.548026761376256" lon="4.231663050695346"/>
            <point xsi:type="esdl:Point" lat="51.54796858269041" lon="4.231684023896835"/>
            <point xsi:type="esdl:Point" lat="51.547902548657625" lon="4.231707864202575"/>
            <point xsi:type="esdl:Point" lat="51.547962842590245" lon="4.232135441573723"/>
            <point xsi:type="esdl:Point" lat="51.54791079493606" lon="4.232152812326076"/>
            <point xsi:type="esdl:Point" lat="51.547970789414364" lon="4.232578451506592"/>
            <point xsi:type="esdl:Point" lat="51.54815436919596" lon="4.232511888195839"/>
            <point xsi:type="esdl:Point" lat="51.54809458657882" lon="4.2320876982239755"/>
            <point xsi:type="esdl:Point" lat="51.54803434838681" lon="4.231660320109861"/>
            <point xsi:type="esdl:Point" lat="51.548026761376256" lon="4.231663050695346"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a3f96f88-143f-4909-9404-2c9c83cb4af9">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1f1ce8a5-20ac-44e6-9d6c-d68528355fe4" id="d0b49e79-33cb-4454-9b91-501dd4d481e7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="eb8c0a8d-7b54-4a77-8cb2-ac2b3e41fa7c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16555528285714285" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="9a4309a6-4b90-4a04-bbee-212c9690a3f6">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="00db09d2-d2f5-4b8d-832c-918c94dcf2f6" id="3a65242a-da71-4d50-9394-72f8f53e71c7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="48ab7599-17c9-4485-a149-c3c99976e05f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.24194963645914283" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="f6d80eb2-e72b-4a08-bece-b1e4af46c1c9" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b7ff03fe-1f85-48f5-8103-0f8fb9f12046" id="653075b9-6b80-4df5-ba93-6b7c50dad30a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="00db09d2-d2f5-4b8d-832c-918c94dcf2f6" connectedTo="3a65242a-da71-4d50-9394-72f8f53e71c7"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="6110967f-150a-4d82-9080-07779736fac5">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1f1ce8a5-20ac-44e6-9d6c-d68528355fe4" connectedTo="d0b49e79-33cb-4454-9b91-501dd4d481e7"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="500d68ba-8a4d-4a63-94c3-2d8405c6287c"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="06da7399-b216-416e-af29-df1a38c651b7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="b7ff03fe-1f85-48f5-8103-0f8fb9f12046" connectedTo="653075b9-6b80-4df5-ba93-6b7c50dad30a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="7a7d8775-a413-4f4e-9819-7440a665d5b4"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="50402" buildingYear="1992" name="Pand van Hachmer B.V." floorArea="50449.0" id="42863335-0116-4664-9f85-a7cd19b69881" sector="85612ed1-53e7-4e7e-b919-0f8abf479a5b" originalIdInSource="0716100000106915">
        <KPIs xsi:type="esdl:KPIs" id="52ae82ab-4575-41de-ab2b-02ac5e023f95">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="1096473f-b28a-4923-a1ae-8a4e3f3656b8" value="401416.8218207945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f7000d1b-7d71-40c2-9536-8e58b7198818"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="454404be-600e-4aee-b2fd-9830a993a377" value="2664874.7339999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a579fb6b-6dfe-4636-a7ae-03d38cef85fb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="71252bd4-3782-4ed3-85db-b7af59bf3325" value="401416.8218207945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="d2d0685b-f23a-4587-82b3-daf2f902b5d3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="7ad05995-44d1-4314-b345-0232b5ff035b" value="401416.8218207945"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="67ef4e67-66da-4126-bd13-ca22e6e67f44" value="2664874.7339999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="b6c5485e-1624-49ed-92bf-eac88dd37e80"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="634d05ee-7656-4270-9a25-4d58d430a58c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="fa1a2279-6591-4579-b7b8-ac3c5dde80e2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="f5120aff-d917-43b7-9f72-bf63329b1a21" value="2664874.7339999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="f74ca466-e4b6-41fa-83b0-14fb96902a43"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="f691efda-2a25-48af-8a5e-f5d61f3b4ff0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="8af444e5-f0c9-4882-8fdc-54b8695f6891"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="eedfc455-cf9b-420c-bf0a-7e71701b7d5a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="23a52624-602c-4d20-ac19-914f51eab4b7"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="50402.10007149947" height="8.96"/>
        <geometry xsi:type="esdl:Polygon">
          <interior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.548475042704034" lon="4.23089861084794"/>
            <point xsi:type="esdl:Point" lat="51.548468413200865" lon="4.230899082386136"/>
            <point xsi:type="esdl:Point" lat="51.54845157146004" lon="4.2307469084090545"/>
            <point xsi:type="esdl:Point" lat="51.54895309254248" lon="4.230552843287467"/>
            <point xsi:type="esdl:Point" lat="51.54895498485273" lon="4.230567833498253"/>
            <point xsi:type="esdl:Point" lat="51.54897592453128" lon="4.230713502993039"/>
            <point xsi:type="esdl:Point" lat="51.548475042704034" lon="4.23089861084794"/>
          </interior>
          <interior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54923242977357" lon="4.230899026731919"/>
            <point xsi:type="esdl:Point" lat="51.549143892707534" lon="4.230932582982455"/>
            <point xsi:type="esdl:Point" lat="51.54909221640212" lon="4.230580502267214"/>
            <point xsi:type="esdl:Point" lat="51.549180529258024" lon="4.230547008750581"/>
            <point xsi:type="esdl:Point" lat="51.54923242977357" lon="4.230899026731919"/>
          </interior>
          <interior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54896632118178" lon="4.231705575203182"/>
            <point xsi:type="esdl:Point" lat="51.54881767736002" lon="4.231761507550874"/>
            <point xsi:type="esdl:Point" lat="51.54881996454152" lon="4.231638258920583"/>
            <point xsi:type="esdl:Point" lat="51.54883707707825" lon="4.231631566022682"/>
            <point xsi:type="esdl:Point" lat="51.54882179360301" lon="4.2315259654656305"/>
            <point xsi:type="esdl:Point" lat="51.54877278692795" lon="4.231285459900075"/>
            <point xsi:type="esdl:Point" lat="51.549138155921675" lon="4.23114776593407"/>
            <point xsi:type="esdl:Point" lat="51.549189577176506" lon="4.23149877272383"/>
            <point xsi:type="esdl:Point" lat="51.548949296346635" lon="4.231589320170098"/>
            <point xsi:type="esdl:Point" lat="51.54896632118178" lon="4.231705575203182"/>
          </interior>
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54882792667489" lon="4.233093445558963"/>
            <point xsi:type="esdl:Point" lat="51.54887771939979" lon="4.233444897132247"/>
            <point xsi:type="esdl:Point" lat="51.549053019897144" lon="4.233381011827204"/>
            <point xsi:type="esdl:Point" lat="51.5490331046815" lon="4.233240433428429"/>
            <point xsi:type="esdl:Point" lat="51.54957730462499" lon="4.233042050363561"/>
            <point xsi:type="esdl:Point" lat="51.54945804327815" lon="4.2321986968176395"/>
            <point xsi:type="esdl:Point" lat="51.549667394678124" lon="4.232064759413295"/>
            <point xsi:type="esdl:Point" lat="51.549687649836564" lon="4.232146819827378"/>
            <point xsi:type="esdl:Point" lat="51.54971854652777" lon="4.232126828536662"/>
            <point xsi:type="esdl:Point" lat="51.54969822002818" lon="4.2320448275643425"/>
            <point xsi:type="esdl:Point" lat="51.54996622627745" lon="4.231875354303995"/>
            <point xsi:type="esdl:Point" lat="51.55003211922829" lon="4.23214369811969"/>
            <point xsi:type="esdl:Point" lat="51.55020116528596" lon="4.23203644924718"/>
            <point xsi:type="esdl:Point" lat="51.55013808723307" lon="4.231780072661086"/>
            <point xsi:type="esdl:Point" lat="51.55014240221822" lon="4.231777353102161"/>
            <point xsi:type="esdl:Point" lat="51.55010921461026" lon="4.231642012036463"/>
            <point xsi:type="esdl:Point" lat="51.55015808811208" lon="4.2316109218126625"/>
            <point xsi:type="esdl:Point" lat="51.55052946350489" lon="4.231081643427262"/>
            <point xsi:type="esdl:Point" lat="51.550558901586335" lon="4.231135037163003"/>
            <point xsi:type="esdl:Point" lat="51.55058379460616" lon="4.231099740516067"/>
            <point xsi:type="esdl:Point" lat="51.55055434409877" lon="4.23104600103622"/>
            <point xsi:type="esdl:Point" lat="51.55086280388925" lon="4.230606098436881"/>
            <point xsi:type="esdl:Point" lat="51.55092294607695" lon="4.230714512102424"/>
            <point xsi:type="esdl:Point" lat="51.55100789255805" lon="4.230594286051475"/>
            <point xsi:type="esdl:Point" lat="51.55116841185455" lon="4.230884550244534"/>
            <point xsi:type="esdl:Point" lat="51.551497569267624" lon="4.2304169620680145"/>
            <point xsi:type="esdl:Point" lat="51.551037988779065" lon="4.228549703453407"/>
            <point xsi:type="esdl:Point" lat="51.5507058580434" lon="4.228760098793321"/>
            <point xsi:type="esdl:Point" lat="51.55057876392731" lon="4.228840596766013"/>
            <point xsi:type="esdl:Point" lat="51.54965233257796" lon="4.229427226250667"/>
            <point xsi:type="esdl:Point" lat="51.54961975937186" lon="4.229679935306239"/>
            <point xsi:type="esdl:Point" lat="51.54964299531935" lon="4.2297741600581755"/>
            <point xsi:type="esdl:Point" lat="51.54930965545757" lon="4.229985219497888"/>
            <point xsi:type="esdl:Point" lat="51.549253264990305" lon="4.229755570797215"/>
            <point xsi:type="esdl:Point" lat="51.5493053379598" lon="4.229722638541194"/>
            <point xsi:type="esdl:Point" lat="51.54929321646211" lon="4.229673246803344"/>
            <point xsi:type="esdl:Point" lat="51.54924109671491" lon="4.229705992858879"/>
            <point xsi:type="esdl:Point" lat="51.54918776873083" lon="4.22948881086515"/>
            <point xsi:type="esdl:Point" lat="51.54901873357856" lon="4.229596023305052"/>
            <point xsi:type="esdl:Point" lat="51.549228147694336" lon="4.230447274676161"/>
            <point xsi:type="esdl:Point" lat="51.54895211764602" lon="4.230547893762449"/>
            <point xsi:type="esdl:Point" lat="51.5484329207527" lon="4.230737146278829"/>
            <point xsi:type="esdl:Point" lat="51.548456753323954" lon="4.230905377179578"/>
            <point xsi:type="esdl:Point" lat="51.54849314892631" lon="4.231162263563032"/>
            <point xsi:type="esdl:Point" lat="51.548543639946" lon="4.231143849690531"/>
            <point xsi:type="esdl:Point" lat="51.54882024148415" lon="4.2330962505394645"/>
            <point xsi:type="esdl:Point" lat="51.54882792667489" lon="4.233093445558963"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b596005b-f7c4-4ef5-86d8-97cdc4d3ef92">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="532930ef-c3db-4dc2-b5b7-40da8187b49d" id="458a4ef2-49c2-45e2-8f28-92afeecfefd5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="8b0535f2-8320-4d32-a4f4-8386c2d4e5d1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="9.5935490424" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="432ac53f-b3c6-45ce-8008-dc00fe9679b4">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="86dd04e9-a16c-4afc-a0b6-7da0d2613056" id="e66c279d-6652-4557-905b-155abe56f0f1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="8e923298-4754-4a6b-bf71-c8396630e883" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="12.704842410628146" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="95b09734-fbf2-46da-93fe-0c6d869763c5" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="06efeab4-c3b9-475c-bf88-34ed05c773cd" id="a9cb42f3-8ef2-4cfe-9100-53c4eeb86e05"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="86dd04e9-a16c-4afc-a0b6-7da0d2613056" connectedTo="e66c279d-6652-4557-905b-155abe56f0f1"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="9f741191-1d83-4e06-b16c-d3cf7e7ce17a">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="532930ef-c3db-4dc2-b5b7-40da8187b49d" connectedTo="458a4ef2-49c2-45e2-8f28-92afeecfefd5"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="53011989-6abd-46cd-81e9-79454433611d"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="cad216fc-3cbd-497e-a861-ea1486941a98">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="06efeab4-c3b9-475c-bf88-34ed05c773cd" connectedTo="a9cb42f3-8ef2-4cfe-9100-53c4eeb86e05"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="4bb15ca6-4ac7-40b0-9b23-82d7489906cd"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="239" buildingYear="1995" name="Pand van V.O.F. v/d Hoek, Aqua Tholen" floorArea="150.0" id="87e47a84-d9bd-4ec4-9ec3-2d275243af5a" sector="ed07f95c-d125-42eb-b227-7a7b15a0b7da" originalIdInSource="0716100000289016">
        <KPIs xsi:type="esdl:KPIs" id="fa04b3c5-d655-4c9d-8abf-f4a1c2985f59">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="ac2c97c7-e3c4-4ddc-8386-cfd457fb2ceb" value="2404.0622435057016"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="dd8bd9fd-9c09-45fd-9195-9e2f165d2520"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="4bb17481-5046-46f8-85eb-02d21530bf34" value="7039.971428571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="b00f88d8-773b-4acc-8908-a89a0de846ca"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="f84f2e43-2f4d-40f5-a208-4f7f123c4375" value="2404.0622435057016"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="7e7d32ce-7c8e-4ab9-ba26-2b8f551192a0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="99b9b6a9-4e92-44d8-aaa7-13f18e49c523" value="2404.0622435057016"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="514b5b22-6451-45b2-8404-9c0a72c77657" value="7039.971428571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="60c3eeec-d74a-49de-8581-58aeb99d243d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="1b3a84b4-5d79-40bf-ba27-26916286f176"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e1118e62-7a97-4f34-982d-31c5d9005813"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="5b0029c8-f640-4907-91de-872f7480a70f" value="7039.971428571429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1d28aa02-1e0a-42d2-98a8-fdbf690451d9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="4debed5b-4f98-432c-905d-a666785489e1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="55e9da5e-727a-470d-b1ac-f46174297b20"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="9c030a47-30c6-465c-aa3c-bfc0747916d8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="64238cc1-1326-4645-945c-e58adbedd0a9"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="239.5831494999583" height="3.83"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54834930590035" lon="4.2315481365793115"/>
            <point xsi:type="esdl:Point" lat="51.5483047005406" lon="4.2315644969859525"/>
            <point xsi:type="esdl:Point" lat="51.548274050081766" lon="4.23157574434658"/>
            <point xsi:type="esdl:Point" lat="51.54830373751913" lon="4.231788017916785"/>
            <point xsi:type="esdl:Point" lat="51.54839062647758" lon="4.231755947715759"/>
            <point xsi:type="esdl:Point" lat="51.54839822837987" lon="4.231810183148322"/>
            <point xsi:type="esdl:Point" lat="51.548439880564054" lon="4.231795166869278"/>
            <point xsi:type="esdl:Point" lat="51.54840250796532" lon="4.231528428674985"/>
            <point xsi:type="esdl:Point" lat="51.54836235609599" lon="4.231543349344457"/>
            <point xsi:type="esdl:Point" lat="51.54834930590035" lon="4.2315481365793115"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="0ffa499f-c59f-4436-a368-dcfbf7f3a92f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="01c56619-efe8-4dd5-b46e-e7fd0342c1c6" id="78c0a294-0327-4316-bc66-cc80f8bc23f8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="b3379888-5d91-486f-b375-58ab6c73ac1e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.025343897142857147" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="3c2965f3-6dfe-4685-b6b8-c7c57f00b1db">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="db43133b-1f95-4725-aa16-e4084273bd57" id="33de54f3-6718-43bd-a995-2a2d34b2d36d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="1415f0a9-c7dd-4c9a-a179-0b71b0fbf263" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.07608857000695546" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="66e5c5e3-7686-4138-acea-59b1aaf86e83" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="4035fb99-77f9-44c6-ba8d-96b01bb8f438" id="5929dcd1-547c-40bc-92d2-195de9bb0086"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="db43133b-1f95-4725-aa16-e4084273bd57" connectedTo="33de54f3-6718-43bd-a995-2a2d34b2d36d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="9d1376d6-f84a-490f-83b4-4b414070aec1">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="01c56619-efe8-4dd5-b46e-e7fd0342c1c6" connectedTo="78c0a294-0327-4316-bc66-cc80f8bc23f8"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="55766750-c67f-4a4d-bbce-a6e5a97285e9"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="c3762ac8-8404-4f8a-9c0c-ab6ca1d9c81c">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="4035fb99-77f9-44c6-ba8d-96b01bb8f438" connectedTo="5929dcd1-547c-40bc-92d2-195de9bb0086"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="858c2cdc-47b0-48c5-8e59-16aa2417fef0"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="296" buildingYear="1990" name="Pand van Visserijbedrijf van Ham, KH Wandafwerking" floorArea="173.0" id="d70e9aa1-7c57-4123-bdb2-031acc68bfaf" sector="4be0bb6f-88b4-46c1-8a54-249aa7f3c75f" originalIdInSource="0716100000105939">
        <KPIs xsi:type="esdl:KPIs" id="e8c35fb8-2868-4281-b9df-735789f33770">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="0dfd9ce2-616a-4a02-8e39-8da64b869eab" value="6983.7533200136"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="eb2e2faa-a88f-417a-a6c4-a0bd54694b24"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="c086910c-c8a7-438d-bcfb-07fc562f7d8d" value="10565.24163043478"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="5e087aaa-c743-41b6-bd77-38b64d5d5c9d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="44353a21-70b4-4877-a84f-11cbba6caa35" value="6983.7533200136"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f2cb6090-d071-44a0-933b-5ecfa9acc0fc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="2869ed04-ebcf-425c-9b7c-21b29e698df5" value="6983.7533200136"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="adad84d7-4b16-48ca-962e-93efec798587" value="10565.24163043478"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="d7732e32-82d6-458d-9076-23ff848b1dad"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="00e91efa-54f8-46b9-81f1-40c49ab91917"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="4f73f552-41eb-4b7d-b0f9-2aa0f597de06"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="640c6ea9-1186-4b08-a951-8863a5a916b2" value="10565.24163043478"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="40ffdbf1-27bf-475a-b72b-599397088048"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="8e206b1d-0473-4fff-be19-00d45264e055"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="baf09020-1a7f-43dc-93f0-5832fbca5dc2"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="2a600a81-4539-48f4-bc5d-8b6372f44263"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="d3e40352-0f47-45f8-a756-308badc8aabc"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="296.03016300023586" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54851110150332" lon="4.232499806780115"/>
            <point xsi:type="esdl:Point" lat="51.54848983512845" lon="4.232351781702339"/>
            <point xsi:type="esdl:Point" lat="51.54837961915931" lon="4.232392099933399"/>
            <point xsi:type="esdl:Point" lat="51.548392864385725" lon="4.232485279792192"/>
            <point xsi:type="esdl:Point" lat="51.54836693381634" lon="4.232494762896892"/>
            <point xsi:type="esdl:Point" lat="51.54836463464012" lon="4.2324786008533115"/>
            <point xsi:type="esdl:Point" lat="51.54823207094" lon="4.232527099519476"/>
            <point xsi:type="esdl:Point" lat="51.54825213206721" lon="4.232668709544115"/>
            <point xsi:type="esdl:Point" lat="51.548384660590656" lon="4.232620284255599"/>
            <point xsi:type="esdl:Point" lat="51.548373571716" lon="4.232542448216667"/>
            <point xsi:type="esdl:Point" lat="51.54839950200448" lon="4.232532936308537"/>
            <point xsi:type="esdl:Point" lat="51.54840070001428" lon="4.23254136935328"/>
            <point xsi:type="esdl:Point" lat="51.54848874681348" lon="4.23250909807621"/>
            <point xsi:type="esdl:Point" lat="51.54851125569502" lon="4.232500855393444"/>
            <point xsi:type="esdl:Point" lat="51.54851110150332" lon="4.232499806780115"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="48a19d8f-6dbd-48ef-b464-9d91ce3b5410">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="73bc8506-aca3-47f4-a86e-dac3472ca877" id="c7a77fa1-1a3a-4446-8645-4a4377083113">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="dfd42c72-1979-4efa-9057-7dc12386a42e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.03803486986956521" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="35d2ef56-af9b-4b30-bca5-570566e40b59">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="89a7d41b-b919-452b-b169-51fb3158489c" id="07deea0e-7cbd-4a7a-8d45-96a83db6ae68">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0822d12a-5ec1-4e79-bb02-5097ebbe8a5b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.22103579257843045" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="87467d95-0da1-43d9-89a9-b89b8c0ab1a1" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="89606194-c763-4923-8e13-12817c039089" id="09110d40-356a-4a6d-b288-24efca0aa22a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="89a7d41b-b919-452b-b169-51fb3158489c" connectedTo="07deea0e-7cbd-4a7a-8d45-96a83db6ae68"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="fa5a8792-d9d2-49fb-b39a-e658dfe40c68">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="73bc8506-aca3-47f4-a86e-dac3472ca877" connectedTo="c7a77fa1-1a3a-4446-8645-4a4377083113"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="3a1f7fc9-949e-41d6-9b2b-ba12ddbe49dd"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="04d7cb2f-9176-4017-ac61-2fb91243d614">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="89606194-c763-4923-8e13-12817c039089" connectedTo="09110d40-356a-4a6d-b288-24efca0aa22a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="5e1c893f-2273-4340-be78-31be18ea89a0"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="296" buildingYear="1994" name="Pand van Nautimex Watersport B.V." floorArea="262.0" id="589f2098-1f51-464c-ace8-73a55768e386" sector="4b7591c1-478d-4028-bdc7-8e0aa96bf82c" originalIdInSource="0716100000247442">
        <KPIs xsi:type="esdl:KPIs" id="efca2002-bb96-4b72-a8af-13f4fa3c7643">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b5ba7f4f-fd4e-49d2-b14d-e861c91948a3" value="3614.355434473296"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="8e4919c8-aec9-421f-9646-ae52d32b64fc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a56c1423-f6d4-4c86-8968-ee9b22826bba" value="12296.483428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="25bdaab7-eca7-4ad4-a22e-27e1aea5576d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="13db0f3d-25aa-478f-a7e1-268ea2d8eecc" value="3614.355434473296"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e9988dfe-1b7d-4c5e-8bb7-8f51fb53c3ff"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9d3fab2e-89a3-4f65-9e7d-c8fb002f66cc" value="3614.355434473296"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="5a16d3a2-e8bd-47dd-a19c-c44aa6f07ec0" value="12296.483428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="7ffc7116-9ec0-493b-81ff-17c1dc8fd2ae"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="1e60d656-ed2a-445e-bc80-57f21c73e87b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="aa31de0a-0032-474e-b6f2-6e4ceb3a7821"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="6febc6bb-75c7-4e89-aca7-c4a7d35d73e9" value="12296.483428571428"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="ea90ed2a-81ef-4b51-b95c-1dfff1c9cbf8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ea75dfbb-8db5-4766-8b3d-7fe0df848748"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="26d32649-f606-46a0-a527-5e22e37625d5"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="617dfbaf-5cbf-4978-a961-bc579a82cbc4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="02687fda-7ac2-4904-9a4f-cbe07ffa8bea"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="296.33772749960093" height="6.77"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54821131460709" lon="4.232789158183938"/>
            <point xsi:type="esdl:Point" lat="51.54823608680765" lon="4.232960897865675"/>
            <point xsi:type="esdl:Point" lat="51.54844858060059" lon="4.232882902635694"/>
            <point xsi:type="esdl:Point" lat="51.5484241263932" lon="4.232711514565801"/>
            <point xsi:type="esdl:Point" lat="51.54821131460709" lon="4.232789158183938"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="d5fa20d7-b5a6-4552-8741-1340eb3c74b0">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="d493aca7-14b4-46f8-943e-0891282939ae" id="afc47847-c727-4021-8a57-fc9d50f44f4c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="5a7aaf76-2bfa-474e-ab01-49087477b1f0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.04426734034285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="95ae87e4-37a3-4267-b3a5-7125bb41224c">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="71837d92-fbef-43b3-9946-c967f3975936" id="1858bec8-ed25-48fe-aff6-0f62a7fc46f8">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="8187e62b-911a-4b7e-9651-93ac7dc7f95d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11439434950107982" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="825b92ff-12d9-4111-a6dc-c5c87bf7bb48" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="85409b3d-a394-4efc-b17b-2fc301ee1bb7" id="4f4f2d11-f09f-4640-b0aa-211afac56c28"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="71837d92-fbef-43b3-9946-c967f3975936" connectedTo="1858bec8-ed25-48fe-aff6-0f62a7fc46f8"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="fa5b361b-4538-45c4-8cb9-73ee631de1a1">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="d493aca7-14b4-46f8-943e-0891282939ae" connectedTo="afc47847-c727-4021-8a57-fc9d50f44f4c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="8d31905e-ca87-407f-b78e-01b36e74bac2"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="4efd0b91-05f0-4ee4-9ea2-d987ae405b57">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="85409b3d-a394-4efc-b17b-2fc301ee1bb7" connectedTo="4f4f2d11-f09f-4640-b0aa-211afac56c28"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="35d246bd-5b56-432d-ab5f-b126851bd910"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="200" buildingYear="1992" name="Pand van MXSHOPBVS" floorArea="206.0" id="6f9f24ff-bba6-4eed-92cc-a01544c08b73" sector="8d21efb2-4c15-458c-87f4-ec6c8c32a076" originalIdInSource="0716100000142217">
        <KPIs xsi:type="esdl:KPIs" id="0029bacc-ba08-432c-b644-30abf4a7f07b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4774b69a-f6e6-46c7-845e-4760af491bae" value="5255.011466696022"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="0f45f63d-255b-40b3-865d-8e8639d61540"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="80152871-b1f1-4bb6-a5fb-ee9290264c76" value="12580.576739130436"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="37b3520c-47bc-4330-9175-19876dad5a72"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="7cac7630-a554-4789-9627-951e6883a8f7" value="5255.011466696022"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="f7c15131-7929-4948-9bc3-8fc989402553"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="158c3d71-df27-42cd-97a9-e8df590fbd71" value="5255.011466696022"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="4404562a-eda0-4b8a-ad81-f0592cfcad61" value="12580.576739130436"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="4403e691-6359-4285-9215-39f957f69182"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="d61198fe-5722-491e-831a-43c9f97e1eb3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="94f33b8e-a231-4f32-bfc8-917d187cc2e9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="f184546e-6469-4854-afd3-785e33c1278d" value="12580.576739130436"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="b5391666-1622-4dc4-a834-9590ddbe6fd8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="5c3706ca-6d92-4014-893b-0664abd89a0b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="db4fd571-5f91-4a45-b357-b16321bbc756"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="3a073eaf-143c-48ed-a7d1-17ca42cb7af7"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="1f38754a-6da8-4499-a39f-abccc53cd9f8"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="200.42230850024788" height="3.75"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54847103545995" lon="4.23221505561845"/>
            <point xsi:type="esdl:Point" lat="51.54845663449132" lon="4.23211319644478"/>
            <point xsi:type="esdl:Point" lat="51.548377211063126" lon="4.23214207718846"/>
            <point xsi:type="esdl:Point" lat="51.548383135772475" lon="4.232183984480203"/>
            <point xsi:type="esdl:Point" lat="51.548374868292406" lon="4.232186991829419"/>
            <point xsi:type="esdl:Point" lat="51.54837984642714" lon="4.232222261975562"/>
            <point xsi:type="esdl:Point" lat="51.548325933119656" lon="4.232241871793108"/>
            <point xsi:type="esdl:Point" lat="51.5483240193227" lon="4.232228324090038"/>
            <point xsi:type="esdl:Point" lat="51.54825514751362" lon="4.232253374980161"/>
            <point xsi:type="esdl:Point" lat="51.54827479617324" lon="4.232392328083388"/>
            <point xsi:type="esdl:Point" lat="51.54834374861182" lon="4.232367246507188"/>
            <point xsi:type="esdl:Point" lat="51.548334373672226" lon="4.232300944838132"/>
            <point xsi:type="esdl:Point" lat="51.54838820639054" lon="4.2322813659725504"/>
            <point xsi:type="esdl:Point" lat="51.54838874742169" lon="4.232285173045345"/>
            <point xsi:type="esdl:Point" lat="51.54847643836773" lon="4.232253285201184"/>
            <point xsi:type="esdl:Point" lat="51.54847103545995" lon="4.23221505561845"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="aa3bcb51-6925-4e32-bfd4-423b46491104">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="c7e945ea-3b74-42b3-9963-b6187a31f7b7" id="07923571-36f6-4ff3-86fb-759af58f50a4">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="dc835ff9-42eb-4070-b218-9d443d123050" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.045290076260869574" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="0472de3e-8d71-4f86-8b3e-65f20c1a44f7">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6248f1e7-d19d-4bbe-81d3-44c546e00adc" id="9a42fb5a-508e-43e6-b8eb-92a8b81d9d3b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="eb46f74b-19c1-4f0f-b998-a98f5d52b989" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.16632111292092908" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="d0af5336-c0ca-4f1e-8ce9-e64da9e04164" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="6bf4da20-94d7-45cd-b73b-f14844ae1e89" id="71032bd1-1303-4d3d-9126-2722e97a084a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6248f1e7-d19d-4bbe-81d3-44c546e00adc" connectedTo="9a42fb5a-508e-43e6-b8eb-92a8b81d9d3b"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="1a40c2fd-06d2-41fe-8a47-647d5b88a559">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="c7e945ea-3b74-42b3-9963-b6187a31f7b7" connectedTo="07923571-36f6-4ff3-86fb-759af58f50a4"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="43654b76-a370-4bbe-8fa2-39693721ee49"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="b6867f21-3900-44de-97ad-8addbcc7f3f7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="6bf4da20-94d7-45cd-b73b-f14844ae1e89" connectedTo="71032bd1-1303-4d3d-9126-2722e97a084a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="d0671c0b-ae6e-4d1e-b42d-b5f622719dfa"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="602" buildingYear="1992" name="Pand van Tholendakkapellen B.V., Rummieck B.V." floorArea="560.0" id="ed2a688d-8ebc-4ece-9f92-7221b6681b53" sector="0e2faac0-df77-4b37-acaf-449b26a7df2b" originalIdInSource="0716100000000597">
        <KPIs xsi:type="esdl:KPIs" id="e0efd912-b71e-4b80-994b-b88f3d8f03d8">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="1f8d9fe6-d99c-46b7-9857-bb996db399fd" value="6483.906927308479"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="738bc364-4842-4b0a-9521-911fd431b28a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="458f3694-f6ba-40b9-a658-0557947d819d" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="c53e707a-3b15-4f36-ae6f-140f064575b5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="cf39f235-9155-4194-8666-f4446f8a5562" value="6483.906927308479"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="64424f66-1d5a-409e-89ab-d95746ee767e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="b55f2ef0-0b3c-497d-a5d9-be802ebdfa66" value="6483.906927308479"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="13d2d35b-4730-4706-a997-fb1ac05b97de" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="b8a12209-cf50-4d60-9746-73a1e8843eca"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="94804163-7e13-4d52-aee0-0a8e04af15d2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="61e2f381-676e-4cbd-914b-139ee7aae5a2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="93962c76-4638-4cef-b8a6-bf18538b1dcd" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="a0d9f681-4947-43fd-85e6-b978ffb93f05"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="8e838708-6d73-4a07-8e75-b22f6fe24e2f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="58d6a87b-5277-48ee-a793-c12545b9c6c3"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="1c9d3eca-4dba-48f5-addd-68490cc67ce4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="36c6c343-b24d-4de0-9a28-52834efa300a"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="602.2645494996906" height="6.16"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54839064671604" lon="4.233239971351249"/>
            <point xsi:type="esdl:Point" lat="51.548379705416686" lon="4.233157921289968"/>
            <point xsi:type="esdl:Point" lat="51.548222120104036" lon="4.233214219465659"/>
            <point xsi:type="esdl:Point" lat="51.54825955312471" lon="4.233483825603826"/>
            <point xsi:type="esdl:Point" lat="51.54841683327059" lon="4.233428473254208"/>
            <point xsi:type="esdl:Point" lat="51.548415227124046" lon="4.233416936213884"/>
            <point xsi:type="esdl:Point" lat="51.54859544558801" lon="4.233352220047299"/>
            <point xsi:type="esdl:Point" lat="51.54858815148817" lon="4.233299951619555"/>
            <point xsi:type="esdl:Point" lat="51.54857074753587" lon="4.233175185413924"/>
            <point xsi:type="esdl:Point" lat="51.54839064671604" lon="4.233239971351249"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="56b57971-bb7e-40d0-baf8-7467b7ceb9c4">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="69a23dd2-0b18-46be-815e-3a007848efdd" id="c0603246-4a6c-45f5-acd1-d1b2ef3fd1ff">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="544558ba-159e-48f7-a428-a62cbc20399d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08011814399999999" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="a09d1850-f831-4b18-9169-021b03b8b3a2">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="5b6424aa-9c5f-428d-abc4-cb25c9bf3b09" id="7b058405-e989-4ca2-a1be-dba66f95dfe7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="2d891934-f282-46fd-bead-d0373fc44656" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.20521565424931335" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="8f296b88-ae7b-45b9-9d90-575bef1e62f2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="46064635-ce9d-40a2-9ac5-9ac44966a138" id="625fc1e5-f30c-4281-91b6-f82e99bed112"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="5b6424aa-9c5f-428d-abc4-cb25c9bf3b09" connectedTo="7b058405-e989-4ca2-a1be-dba66f95dfe7"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="bebd8072-c175-4f8e-a583-2d3c8ee88658">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="69a23dd2-0b18-46be-815e-3a007848efdd" connectedTo="c0603246-4a6c-45f5-acd1-d1b2ef3fd1ff"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="127c39b0-ab1f-4d96-9601-7b162886c575"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="88087f16-02f4-4212-bf21-fffc97ee60e3">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="46064635-ce9d-40a2-9ac5-9ac44966a138" connectedTo="625fc1e5-f30c-4281-91b6-f82e99bed112"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b05b5266-783a-4119-87c8-014d62719542"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="168" buildingYear="1996" name="Pand van JVDS service" floorArea="167.0" id="0170ba97-e60c-4d19-a0a8-522b9fbae9b3" sector="85ae35d9-610c-4598-b71c-a8eae8d278ea" originalIdInSource="0716100000000598">
        <KPIs xsi:type="esdl:KPIs" id="1464bc9a-c2ee-491a-9cd2-240a8eff3be8">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="a645052a-f32d-4dfd-940d-29e99b109f0a" value="2025.11486417189"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="f9dd3195-12ca-46f0-9b3e-2eca1150cb94"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="6a6bebd6-54cd-428b-9d87-b0b6fee8bebd" value="7837.834857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="3e3d3421-5abb-4cef-a871-a448c58f1734"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="630fd237-e270-4937-9fbf-cf996b60134d" value="2025.11486417189"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="b2e61c47-bfa2-45b0-a628-671f8fefd1a5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="977e7db7-2789-4c7d-a965-74ae3ba88db8" value="2025.11486417189"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="01529932-6a3d-46ba-858a-da498d6be1d0" value="7837.834857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="97b2b57f-4d2e-4931-bd59-04b4f2bbd808"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8964e490-5d03-4213-a0e0-1131aa7c8aef"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="479e12e6-c076-4eeb-b7f9-b19d64e2e65c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="9768b24d-2af8-4182-bb05-10c425956924" value="7837.834857142856"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="e71c1c81-38b3-4300-9785-60ce3ae0c07b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="92ac015a-32a1-484c-bb19-02118ba9203d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="9179a6d0-3aee-4f79-95ba-4c94ac4f714d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="bbb85ac6-48d9-4b67-af2b-68c14278d540"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="c08e07f0-8ca8-4402-9588-89fd35d4785b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="168.99799100010205" height="4.59"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54780797842914" lon="4.232801859257969"/>
            <point xsi:type="esdl:Point" lat="51.54798858534385" lon="4.232774676368575"/>
            <point xsi:type="esdl:Point" lat="51.54798143621506" lon="4.232654308403779"/>
            <point xsi:type="esdl:Point" lat="51.54780085114898" lon="4.232681880499387"/>
            <point xsi:type="esdl:Point" lat="51.54780797842914" lon="4.232801859257969"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="31606b07-094c-4676-ab50-1dc74dcb09d5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b6f24348-fd80-415f-b522-7e29d373ef6f" id="090b0535-6d70-41e6-93f3-537a2bb60258">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="300ecfbb-e283-4325-8aea-a1122c5b25f1" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.028216205485714282" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="f8428f0c-049b-4b90-aeaf-8d8364fca3ff">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="43471abe-895b-406b-8a76-7b654b89414c" id="41dcbab7-b216-4f24-95e9-c60f64afb225">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="fbe5cb98-4787-477e-9026-24556b726f8d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.06409488545104032" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="1e68bb33-91f3-46ed-a802-c0ce3061458e" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="d3fa1d54-4548-4cb5-b4fa-6ee2ec6d089a" id="25b68254-d331-4f45-99d4-6b9f5853d1f9"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="43471abe-895b-406b-8a76-7b654b89414c" connectedTo="41dcbab7-b216-4f24-95e9-c60f64afb225"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="9b23fd71-40d5-4906-9c2a-b964b65fabdb">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="b6f24348-fd80-415f-b522-7e29d373ef6f" connectedTo="090b0535-6d70-41e6-93f3-537a2bb60258"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="4e9d4347-172d-4706-bcae-8e08be6ab6cb"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="dd67522a-fb0b-4211-b5ab-1f6dc048f7cc">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="d3fa1d54-4548-4cb5-b4fa-6ee2ec6d089a" connectedTo="25b68254-d331-4f45-99d4-6b9f5853d1f9"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="5ea24dd3-9ebd-471e-b71d-a1ec587cefc6"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="908" buildingYear="1989" name="Pand van RKT Next B.V., Rombouts Kunststof Techniek B.V." floorArea="844.0" id="18f98759-32cb-48fc-8991-26b9e6edddb6" sector="26524ded-9fde-416c-bd10-8ca34b2cc2a5" originalIdInSource="0716100000071787">
        <KPIs xsi:type="esdl:KPIs" id="07e164fb-9fe0-4c3f-918a-157d2435e4a4">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="14c79569-aa67-47f6-be1c-4a206bb7fbca" value="8939.110224483169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="38b729c1-add3-4b1d-8069-23de90d7d739" value="19371.559131059807"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="fbc39e82-a2bc-422a-80b1-c22034efbcef" value="33541.52457142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="4635bbd7-3e62-45f0-b2dd-c2b3371be3ad" value="481872.5491886197"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="db720c0c-c0a0-42aa-b0f4-dfb1dc8e9fed" value="8939.110224483169"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="82363820-3e60-4415-b701-90b0376bc625" value="19371.559131059807"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="fb981659-9a20-4837-8e1e-163a775f607d" value="28310.669355542974"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="81b9f68e-2440-43e4-a77e-26c23ebc6c90" value="33541.52457142858"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="22bedaf8-c42d-4712-976a-8b7d7e838506" value="481872.5491886197"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="15c51f4d-8ac0-42e3-909d-e7288c205aaa"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="7542583b-397c-4bd7-86ff-50b28da1924f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="371e04c7-a642-4908-bbb4-72b318596bf5" value="515414.0737600483"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="00818e87-480f-4ede-bf2d-b5eec4290110"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="620d650f-520f-4068-8d37-09492dd3fc84"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="8beb60cb-1498-4c88-b1a4-fc6c660d56a7"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="7be3b23e-93fe-4801-8982-f4ea40fa47ed"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="baf13e46-0536-4e47-ab77-9ce03af80033"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="908.0278335007936" height="6.08"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.547319223365015" lon="4.233577201757492"/>
            <point xsi:type="esdl:Point" lat="51.5474524498529" lon="4.23358760194874"/>
            <point xsi:type="esdl:Point" lat="51.5474656622458" lon="4.233153128287643"/>
            <point xsi:type="esdl:Point" lat="51.54719477356016" lon="4.233131938570025"/>
            <point xsi:type="esdl:Point" lat="51.5471817418029" lon="4.233561935530868"/>
            <point xsi:type="esdl:Point" lat="51.547319223365015" lon="4.233577201757492"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="53636c84-110c-4381-9179-3a15cb8fa645">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="575e531e-2fc7-4323-a928-fed692218089" id="9b83be26-6a74-44c4-8e51-97820b58e09c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="499cd382-300e-490e-b054-fc55e0bdcfd0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.12074948845714288" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="2dedc082-6d76-454c-8b69-259642e82854">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="575e531e-2fc7-4323-a928-fed692218089" id="e3aaa708-b392-4fe0-bca2-3075fa341e1c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="f8a7c748-e059-4480-bace-b41e1b0b16f7" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.734741177079031" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="62e95aa5-b2ed-4c07-96b1-4923fb719adb">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="68e3e62a-53d9-403c-90d2-6aa70e96d0c1" id="dd486e0c-bc8a-4156-89f9-dcdd61ec37a5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e82f36da-f7b1-47ac-8fbc-ba09444fea6e" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2829228386048923" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="53c1c0c2-60f0-4b80-aa11-3dbded6e17fe" name="Gasketel" id="f0ec8a67-b775-484d-b140-91901b64da9a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="05e70c3b-9c11-4ba7-9f7f-12bb47f06a65" id="7ad2b84c-8693-4193-aad6-3ad64e822435"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="68e3e62a-53d9-403c-90d2-6aa70e96d0c1" connectedTo="dd486e0c-bc8a-4156-89f9-dcdd61ec37a5"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="09b86821-b768-4f7b-9769-ef1cac36371f">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="05e70c3b-9c11-4ba7-9f7f-12bb47f06a65" id="176c6cb5-98dd-4fd5-94e6-8c04852fa8c7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="7ef8edf9-14e1-4b4e-8e4d-de8b048447ca" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.6131098464980428" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="b1c0e417-c1a1-4a2c-ade5-7eeedaab162f">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="575e531e-2fc7-4323-a928-fed692218089" connectedTo="9b83be26-6a74-44c4-8e51-97820b58e09c e3aaa708-b392-4fe0-bca2-3075fa341e1c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="23c49f76-d851-4973-bfb0-bd9c373e56cc"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="69234b6b-7f33-4e1a-93fc-63ba37096ed9">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="05e70c3b-9c11-4ba7-9f7f-12bb47f06a65" connectedTo="7ad2b84c-8693-4193-aad6-3ad64e822435 176c6cb5-98dd-4fd5-94e6-8c04852fa8c7"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="dd105483-ef6b-4ad8-9d5b-73d779143781"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1003" buildingYear="2020" name="Pand van Focus Trading, ATS (Aacoustics Technical Service) B.V., AACOUSTICS B.V." floorArea="296.0" id="003b48a8-2f90-4af5-b988-56a511615bbd" sector="b1cc9ee0-bdb4-4e23-b8db-094ae92549ab" originalIdInSource="0716100000292743">
        <KPIs xsi:type="esdl:KPIs" id="3616a02c-96cc-4975-adea-f7c67c82f3a4">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b1fd73aa-7bbc-4844-8e42-8eaf665d71b9" value="1796.6521729834176"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="37757c59-5ddc-4894-a27a-d886e9732986"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="af617d32-109f-4f84-89c8-e758feb2ff40" value="13892.210285714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="252578a2-4420-4bb6-9c78-ae14aec1db7c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="29d21e77-57f2-4a7b-a44d-a967892980c6" value="1796.6521729834176"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="ae353d68-564b-4337-aa74-edd15bd0f1bf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="e727d531-6fb4-43f1-b613-8ce0a095ae2f" value="1796.6521729834176"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="b7009b0e-978a-4bda-a979-209b271b2779" value="13892.210285714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="db75fe68-797f-4f31-be38-79dc798294ff"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="e2edd199-5c44-4537-8117-788a086ddcd8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f77b770b-700b-4be0-bd13-c3394dfaf6c8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="3d6d96a0-040d-4ddb-80c3-bc6c5c8f2116" value="13892.210285714285"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="139b7f99-6bed-4033-9d2e-d783b531522d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9a21697e-260d-49df-8ded-1efcfb3e5eea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="6fe32786-44c6-4d47-99a9-f5d9830d7638"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="6980af17-fd35-4b06-be51-037994f13f22"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="8d8c1d25-3d4d-44d9-b2bc-d2b533392a5d"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1003.2531899996276" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5429754827789" lon="4.224465519054375"/>
            <point xsi:type="esdl:Point" lat="51.54265929486901" lon="4.224725350601853"/>
            <point xsi:type="esdl:Point" lat="51.5427638724451" lon="4.225052883593652"/>
            <point xsi:type="esdl:Point" lat="51.542836069857266" lon="4.224993587158549"/>
            <point xsi:type="esdl:Point" lat="51.54307612132885" lon="4.224796427074148"/>
            <point xsi:type="esdl:Point" lat="51.543027743756426" lon="4.224644964901877"/>
            <point xsi:type="esdl:Point" lat="51.54303163145064" lon="4.224641780281529"/>
            <point xsi:type="esdl:Point" lat="51.5429754827789" lon="4.224465519054375"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b6e71403-010d-45db-92ff-a3f9baca38ef">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="53897a33-f82f-47d0-9f05-9ccdaba5ab68" id="8983d586-bf37-4b8f-94a3-b61b8d578e49">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="8a3231b0-976d-4950-bcd7-4a247db26795" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.050011957028571426" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="7fea90ee-9d13-44ee-aa27-583d1cd3d83d">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="2a9542ea-d856-46bc-a0f4-d308c7fc648e" id="e87deb2e-69f1-4b49-80f1-54e102a10028">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="1f02c2de-7e29-497d-be6c-25bc513585c3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.05686404127492516" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7f98619f-6033-461c-abe4-66062d372764" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="9c7a796a-0f70-46e9-88c1-b60d10cb40a5" id="9a1fe99a-5635-4e78-906c-9bc1e3657f4e"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="2a9542ea-d856-46bc-a0f4-d308c7fc648e" connectedTo="e87deb2e-69f1-4b49-80f1-54e102a10028"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="c9547910-8227-40cb-8397-bc60a2d7498c">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="53897a33-f82f-47d0-9f05-9ccdaba5ab68" connectedTo="8983d586-bf37-4b8f-94a3-b61b8d578e49"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="958d522a-fba5-451a-b684-3a9bebb416e5"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="28d7da42-f716-4dfa-9174-033696e9cae0">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="9c7a796a-0f70-46e9-88c1-b60d10cb40a5" connectedTo="9a1fe99a-5635-4e78-906c-9bc1e3657f4e"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="872eacc0-c25c-4f5e-926f-796d79b9c1a9"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="848" buildingYear="2009" name="Pand van Zeevishandel De Eendracht B.V." floorArea="767.0" id="32ef3e8c-91b4-427a-9135-d2ba3d2b2095" sector="c845ae35-afe4-44cb-b100-cca2bd386e16" originalIdInSource="0716100000289083">
        <KPIs xsi:type="esdl:KPIs" id="df98c82b-8e7b-4044-9423-cffd39fcb0ae">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="bd2f641e-1beb-4f44-9b92-b52aa81391ea" value="5547.311673569752"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="68e354e2-3a02-462c-9cf3-c540a94e037b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="85f3164c-433e-456c-a53f-2ea48de8d153" value="30481.456571428575"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="ca89d66e-1cce-431e-b696-3835d127423a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="a32a35a7-4129-450e-9d07-18afe92b9c4e" value="5547.311673569752"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="d9a06de1-2379-4c1d-8f0c-6ae458f3bfa1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="5171aaa9-5142-4084-9bd2-2f064bff07da" value="5547.311673569752"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="1e0d05a1-e6cd-4695-bafa-adb9c8bfca72" value="30481.456571428575"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="69659e00-6454-47e7-a1bd-02721355582d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="e69dc647-a450-43d1-9548-2da242a96f22"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="467be9d4-d210-4c5d-be47-b4e83505edf5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="27dc3708-66af-4c0c-a046-60d433c597c9" value="30481.456571428575"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="10d30ab4-8b17-4277-b8e5-942229573a32"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="6c7a0275-3a0a-489e-9781-5446d449aa0b"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="03d7ab0d-934c-4a11-ae04-1fdc4142b62c"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="ee6dec30-f7e1-46d9-8d2d-6a6b12e2e814"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="45939bbb-49d3-4bef-8864-49861b79a0dc"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="848.9822699999651" height="7.22"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54228490030653" lon="4.226754350515589"/>
            <point xsi:type="esdl:Point" lat="51.54248468152588" lon="4.226510065907511"/>
            <point xsi:type="esdl:Point" lat="51.54231927507417" lon="4.226161553402949"/>
            <point xsi:type="esdl:Point" lat="51.54211962810104" lon="4.22640570548522"/>
            <point xsi:type="esdl:Point" lat="51.54228490030653" lon="4.226754350515589"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="49062723-3cd3-4bf6-8d4b-9d4128bb561c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="22bdcba6-188c-45d1-9942-a2341d8b25dc" id="7a1ccd44-4fd9-4cd0-8179-e65179ab57a2">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="f4bf92bd-9750-4c37-8561-909db2f1e666" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10973324365714288" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="19b3829c-8198-4605-9c0b-a9f6f799edff">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="113c3edd-2879-469a-8826-dfeef79265c5" id="0054f006-abbb-42d3-beee-ff7d9a62d272">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="01094739-6fcf-412a-a1ac-f09a79366957" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.17557241446848265" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="471fab8c-7359-435e-9724-948203b1fab3" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="02fe9df3-e404-47aa-b3b2-e07780d9b437" id="9033abde-ffd2-44f5-b90b-0d2d42c8a14d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="113c3edd-2879-469a-8826-dfeef79265c5" connectedTo="0054f006-abbb-42d3-beee-ff7d9a62d272"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="8be61622-b94d-4f37-84ed-8783bce02333">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="22bdcba6-188c-45d1-9942-a2341d8b25dc" connectedTo="7a1ccd44-4fd9-4cd0-8179-e65179ab57a2"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="a2893c81-5008-4f75-8381-3cd3573e068b"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="6725961b-bf66-4032-8460-128fb454c1a8">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="02fe9df3-e404-47aa-b3b2-e07780d9b437" connectedTo="9033abde-ffd2-44f5-b90b-0d2d42c8a14d"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="58484a41-b852-49a8-9a9c-54d8da88981d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="3750" buildingYear="2020" name="Pand van ZWN Bestuur B.V., ZWN Inkoop B.V., ZWN Timmertechniek B.V., ZWN Daktechniek B.V., Sim-Lab B.V., Omega9 Holding B.V., Phoenix9 Holding B.V., Gelderblom Exclusives, BSG-Energy, Landa Safety's, Van Veen Infratechnieken B.V., Van Veen Holding B.V." floorArea="3255.0" id="be9d92f6-9fcd-4550-90ec-3c2a82282d10" sector="c2dd9f03-47f0-481a-93e6-b2d6ba75d24a" originalIdInSource="0716100000292498">
        <KPIs xsi:type="esdl:KPIs" id="a2686c1c-e43f-44d2-b48c-3a71ca7bcada">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="ddef8786-34f9-4830-bbeb-e46953a15e03" value="16877.087562990982"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="77528b92-2cbc-4df2-8572-31dcb3928ef6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="bdd8d8ae-d2d2-4d08-acb5-84dc5e412c7d" value="142889.168"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="e5f04179-3734-4fb5-8fe0-3432b6282424" value="193.4915537634406"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="8303dd27-00f5-479c-873f-4c9afef147a4" value="16877.087562990982"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="dfded84c-eba3-4c26-81e1-fe3af68d5893"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="53bf0950-8dd0-4727-9152-1cd6fe49ef0f" value="16877.087562990982"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="e196c23c-c9ac-4c25-b87d-bfbc4cedf3e3" value="142889.168"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="5b0abf15-3269-45ef-a189-f53abb84c172" value="193.4915537634406"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="bd1d7dc7-602b-4bb7-88ff-e87b7d0a959d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="c0177315-1dab-4bd8-b381-6d8f159e4a03"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="25bfddd8-d7ae-4ca4-a93f-3e5ec15d2e1d" value="143082.65955376346"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="bfa5c583-6d00-4fdf-bcac-cf829fdf222f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="a8392264-9476-4850-8841-0336fdd5be75"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="25622aff-0ad1-4c16-ae12-075959b8d808"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="50a23c89-2c8c-40de-839e-e353ea02987d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="7928b935-c047-45b6-8457-2a0a79425ae6"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="3750.496053499707" height="4.143451900315728"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54313744720015" lon="4.22455519696052"/>
            <point xsi:type="esdl:Point" lat="51.54307721216059" lon="4.224366685033561"/>
            <point xsi:type="esdl:Point" lat="51.543169725460075" lon="4.2242902447579"/>
            <point xsi:type="esdl:Point" lat="51.54322996062337" lon="4.224478756965457"/>
            <point xsi:type="esdl:Point" lat="51.54347989992905" lon="4.224274404895357"/>
            <point xsi:type="esdl:Point" lat="51.543193602145784" lon="4.223375693905664"/>
            <point xsi:type="esdl:Point" lat="51.542745336503415" lon="4.223743075799875"/>
            <point xsi:type="esdl:Point" lat="51.54303163145064" lon="4.224641780281529"/>
            <point xsi:type="esdl:Point" lat="51.54313744720015" lon="4.22455519696052"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="d7290ca3-6fb4-4915-8bde-17e58869e582">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f0c121f4-86dd-41b4-b75c-a2343f4780d4" id="c2491b3c-fa08-4cf2-8cc3-76dabe92c637">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="2caba710-4749-4861-8078-c551bac80af5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5144010048000001" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="ab1881e8-b6c2-4f7a-8410-2ad85fbb0710">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="f0c121f4-86dd-41b4-b75c-a2343f4780d4" id="bc413001-2eed-458a-88c0-13ef23d65ff5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="7bda8759-6245-4fc3-a51f-b58d1f647840" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0006965695935483863" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="453ed826-92ee-4279-87e4-66d5f060226e">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="678db641-47f9-43c5-8b95-e1967551e41d" id="8c2e217a-7baa-43be-bd92-18dbc81b858d">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="82a02d7a-6d96-4f0e-9e4c-80340a6b7d63" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5341598213686646" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="fc7722f8-124b-4155-a363-1a8e17d7c39d" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="51d39b1a-74ba-4fbf-ae3e-46c66305c3e6" id="d2d23cf7-279b-4f99-9ec4-c3b6c69d8097"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="678db641-47f9-43c5-8b95-e1967551e41d" connectedTo="8c2e217a-7baa-43be-bd92-18dbc81b858d"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="38053732-36c0-4752-a85e-889afc6331b9">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="f0c121f4-86dd-41b4-b75c-a2343f4780d4" connectedTo="c2491b3c-fa08-4cf2-8cc3-76dabe92c637 bc413001-2eed-458a-88c0-13ef23d65ff5"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="6e9fdd9c-c478-479f-a518-022ea82e9e10"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="d821ee7f-d3ab-4ca4-8c7f-9f8591275137">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="51d39b1a-74ba-4fbf-ae3e-46c66305c3e6" connectedTo="d2d23cf7-279b-4f99-9ec4-c3b6c69d8097"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="e94e1ef1-0f45-46d2-9a21-6c6cf3b74a81"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2314" buildingYear="2018" name="Pand van PumpCare Benelux B.V., Machinale houtbewerking Mark van den Enden, Ampati, Schildersbedrijf van Oeveren B.V., Ampati Global IT Services B.V., Chat Gris B.V., Caleidos Cosmetics, The Bait Factory" floorArea="859.0" id="f4506d44-1a8f-46e7-9498-c65fe6b081fc" sector="9d76ba95-9440-4b7a-9660-200965bccf2d" originalIdInSource="0716100000292006">
        <KPIs xsi:type="esdl:KPIs" id="e171b060-6184-42a4-9f32-08860b5b9884">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="8a75497a-572a-4284-a553-2a061bb1a3ec" value="4840.566739413831"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="7d71e960-ada0-4923-b37c-fc6e8b1996a1" value="1288.4547008602906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e630714a-ec2a-4698-94c3-4b215b310990" value="40315.56971428571"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="93863a48-6032-4b87-8ba1-884c4a717b41" value="5405.105904352771"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="e4dffcdc-f975-4692-be23-d01bd0ff144d" value="4840.566739413831"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="b8022f5f-22ce-4134-85b4-e9fb547ce974" value="1288.4547008602906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="7cc7f3ec-5e77-49ce-a8a6-ae34f53f5ea1" value="6129.021440274121"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="79a4e4fc-e032-492d-8505-5693810456d1" value="40315.56971428571"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="57b28fd9-8a44-4e12-a86c-706dc1a97e13" value="5405.105904352771"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="10fa441d-5141-41a9-813b-887a5ac7109a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="cde90b86-d3de-44a6-987a-c24ae6b62f75"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="b59fb93b-4935-4602-b03d-81cbaf3bdf96" value="45720.67561863848"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="5c6d4922-3905-4188-8f98-840eea288866"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="5f08b97c-fb17-4ef1-96ed-16a5b0183746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="cb82391b-8602-4178-a5af-35c3ecf85c23"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="bac14aef-8a32-44c0-8b1c-1dda6a02fb7d"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="9680a177-4d8a-43f8-85ef-17830feaec82"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2314.9489649998227" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54357795169866" lon="4.224162847026668"/>
            <point xsi:type="esdl:Point" lat="51.543824386934475" lon="4.223875655974973"/>
            <point xsi:type="esdl:Point" lat="51.54354358591808" lon="4.223029103582116"/>
            <point xsi:type="esdl:Point" lat="51.543276429348744" lon="4.223253741205134"/>
            <point xsi:type="esdl:Point" lat="51.54357795169866" lon="4.224162847026668"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="74f7d94f-8f61-4d16-8945-ad4012b46681">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e80ca8b7-9096-4868-bde7-3c21320f19d1" id="b19b5530-d440-4785-8f1e-88d0319cdff5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a2eb8848-6ee9-4afd-a385-78249d202fc6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.14513605097142857" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="ec6a0438-0f26-4030-b430-f3960de676fd">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e80ca8b7-9096-4868-bde7-3c21320f19d1" id="f1229be6-6b1c-4232-87fb-5f4e23818831">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="43b407d7-1e74-45b6-9d1a-497cd3bafcae" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.01945838125566998" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="aeea93f6-db6f-4b24-a15e-558c5d6bdc16">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="84f045bc-dcd8-4adb-8614-105a8e018363" id="9d50eeaa-dc43-4cca-8112-c27fc4aafded">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="ad5ac560-6b49-4f2a-b362-25dc437fd6d9" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.15320393730244775" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="ecc0be55-b4c2-4c7b-91a3-6cb9954dc47a" name="Gasketel" id="2c3af962-138e-497a-a50c-5a63e3f2457e" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="dd5376d1-653a-46fc-9e82-9c7bab783a57" id="a562703a-9efd-4aa5-a8a9-ce9b18a01819"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="84f045bc-dcd8-4adb-8614-105a8e018363" connectedTo="9d50eeaa-dc43-4cca-8112-c27fc4aafded"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="7f346d5e-8e68-44b2-a34e-9bdb0bc57217">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="dd5376d1-653a-46fc-9e82-9c7bab783a57" id="db5d21c9-2d80-44d3-834d-ee8712c44c09">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="8a31cb51-4f20-4e92-a445-22ac9fc47fbb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.040779591282228196" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="03202d2f-7a87-4258-93dc-2efcdaff7934">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e80ca8b7-9096-4868-bde7-3c21320f19d1" connectedTo="b19b5530-d440-4785-8f1e-88d0319cdff5 f1229be6-6b1c-4232-87fb-5f4e23818831"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="6863eafd-b96c-49e3-b146-8aae61ce957b"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="f227b1d0-638d-42c9-b5d4-395cbbde1183">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="dd5376d1-653a-46fc-9e82-9c7bab783a57" connectedTo="a562703a-9efd-4aa5-a8a9-ce9b18a01819 db5d21c9-2d80-44d3-834d-ee8712c44c09"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="90dcea05-bc6e-40a9-81d9-381cb1942b9b"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2283" buildingYear="2004" name="Pand van Bowling en eterij de Thoolse Brug, Laban Advies &amp; Sales, Dynaplus Management, Astrid de Jong fotografie, HGR ZuidWest, Rogaco Holding B.V., Rogaco Inspectie en Advisering B.V., Ritska van der Zee" floorArea="1953.0" id="9e8ca136-63ce-4369-a94f-0beb25785319" sector="f0aae038-05ae-48a6-92e8-439652b47297" originalIdInSource="0716100000036622">
        <KPIs xsi:type="esdl:KPIs" id="0e79f290-021e-4887-99cf-0df4c6938067">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="60634003-1905-4fde-ae44-47cf53c08ab9" value="12517.548130267165"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="34c17d9c-712e-4455-b6ac-aaa065d5b0c0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="d29ebcfb-4568-45eb-bf65-527cbb455fe0" value="105884.72807142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="fbfd480e-eae7-4766-baf2-973cba3d1776"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="113346ac-753f-48d9-8fb6-aa5f3a8b7987" value="12517.548130267165"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="16422d59-d0bb-444c-89b7-fefc7de57855"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9c376b6f-129f-48b7-b75b-1e1ed2ca21e3" value="12517.548130267165"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="2d0be9f1-6d57-48db-803e-ad2302fdebc4" value="105884.72807142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="674ef55e-3747-48bd-813f-b011c2c6d870"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="a539f21b-5728-426e-9134-2ac601ff84cd"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="9f3c064a-32c8-4e85-8002-f292d6dae2e2"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="8dfe53e6-e313-4713-8cc7-aab2e30a70cc" value="105884.72807142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="9a2c49f1-03de-4069-aa43-efd3bc143e66"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="51063710-24d1-42e1-bc12-7ba61486214f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="d1dcb979-a5be-46e2-9068-46774a349ef0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="02eb0f1e-caab-4d2e-9796-47a31a24f6d8"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="6e32487d-8b2e-4d58-bcad-8c264bfab70f"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2283.750253500476" height="7.31"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.541384831446486" lon="4.228964478264606"/>
            <point xsi:type="esdl:Point" lat="51.54120660068054" lon="4.229182348985219"/>
            <point xsi:type="esdl:Point" lat="51.54121225886264" lon="4.229193622203342"/>
            <point xsi:type="esdl:Point" lat="51.54110028559686" lon="4.229331365797235"/>
            <point xsi:type="esdl:Point" lat="51.541574268342686" lon="4.229476407239694"/>
            <point xsi:type="esdl:Point" lat="51.54186205632904" lon="4.229124585510046"/>
            <point xsi:type="esdl:Point" lat="51.541807585053775" lon="4.229009851952541"/>
            <point xsi:type="esdl:Point" lat="51.54181485137858" lon="4.2290010747007765"/>
            <point xsi:type="esdl:Point" lat="51.541771774171394" lon="4.2289103853443"/>
            <point xsi:type="esdl:Point" lat="51.54176451841205" lon="4.228919320910332"/>
            <point xsi:type="esdl:Point" lat="51.54175370484404" lon="4.228896718204474"/>
            <point xsi:type="esdl:Point" lat="51.54177191328333" lon="4.228874543305539"/>
            <point xsi:type="esdl:Point" lat="51.541767488334784" lon="4.228865256804581"/>
            <point xsi:type="esdl:Point" lat="51.541762851633905" lon="4.22887088197671"/>
            <point xsi:type="esdl:Point" lat="51.541737857745915" lon="4.228817948903028"/>
            <point xsi:type="esdl:Point" lat="51.54174218688163" lon="4.228812129744635"/>
            <point xsi:type="esdl:Point" lat="51.5417377523695" lon="4.2288027858350965"/>
            <point xsi:type="esdl:Point" lat="51.541712536972945" lon="4.228833601650167"/>
            <point xsi:type="esdl:Point" lat="51.541701786155464" lon="4.228810982974187"/>
            <point xsi:type="esdl:Point" lat="51.54170905146519" lon="4.228802104824055"/>
            <point xsi:type="esdl:Point" lat="51.54165786757074" lon="4.228694380925299"/>
            <point xsi:type="esdl:Point" lat="51.541653401776344" lon="4.228700016159575"/>
            <point xsi:type="esdl:Point" lat="51.54166173513073" lon="4.228717261559346"/>
            <point xsi:type="esdl:Point" lat="51.54148734141445" lon="4.228930409228084"/>
            <point xsi:type="esdl:Point" lat="51.54145990897289" lon="4.228872694826147"/>
            <point xsi:type="esdl:Point" lat="51.541384831446486" lon="4.228964478264606"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="ef58335b-1593-439e-bd01-e956cf60828b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="3c56d6c2-d778-4f9c-a611-8ff4b447f7af" id="9d5a435a-b102-4a96-b61e-cfcbd193e0c1">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="46326549-5732-4776-ad53-edc5dc8d580a" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.38118502105714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="973c4117-2315-41d4-867e-6d66d4ed20dd">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7206c3c9-2da7-4541-8b25-31a233bdb960" id="dcb97394-3ba1-4c14-a22a-d1fb43297771">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="2a375833-873f-4327-b955-b2f92e4a2ae3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.39618039832295576" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="a6b6af8f-8cea-4fd3-b870-73342bb9f595" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c675b195-e4bd-4e02-9513-e29ef988f139" id="4d66b8f2-f8d6-4d95-ab73-5f1fc473c7cc"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7206c3c9-2da7-4541-8b25-31a233bdb960" connectedTo="dcb97394-3ba1-4c14-a22a-d1fb43297771"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="6743562d-a286-4485-9f55-4094462d239f">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="3c56d6c2-d778-4f9c-a611-8ff4b447f7af" connectedTo="9d5a435a-b102-4a96-b61e-cfcbd193e0c1"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="290f93bd-e51b-4101-8bc0-9cac42d8e394"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="1339be38-df94-4f22-862e-b2b25cf99751">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c675b195-e4bd-4e02-9513-e29ef988f139" connectedTo="4d66b8f2-f8d6-4d95-ab73-5f1fc473c7cc"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="cf5ea7ba-5ff8-43ad-af98-76f55f700d64"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1453" buildingYear="2007" name="Pand van Boekhout Onroerend Goed B.V., R.C.B. Holding B.V., M.E. Bruins Slot Boekhout Beheer B.V., AGF NL Holding B.V., AGF Primeur Beheer B.V., Handboek B.V., J.D.B. Beheer B.V., AGF Primeur B.V., Freshplaza B.V., Boekhout Beheer B.V., Boekhout Holding B.V., 2beesdevelopment B.V., Freshplaza Beheer B.V., Freshplaza Holding B.V., H.P.B. Holding B.V., BABO Beheer B.V., AGF NL Beheer B.V., Fresh Publishers China B.V., Energie Coöperatie Fresh Publishers U.A., AGF Reizen B.V., AGF Nederland B.V., FP Beheer B.V., APB Holland B.V., J.C. van Egeraat Boekhout Beheer B.V., Wonen360 B.V." floorArea="1909.0" id="dd8f459d-f107-4362-a580-440dd1915ee3" sector="f6b2200d-109b-438d-8417-46621f95a89c" originalIdInSource="0716100000213961">
        <KPIs xsi:type="esdl:KPIs" id="7ad50cb4-f940-4074-9385-30fe833953bf">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="7dba0a1e-11bf-4d85-8bdf-c1688596ae7b" value="16530.126331379746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="de7db28c-beb3-44f8-ab17-9f61a85471a7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="2f78b550-4089-4195-bee9-9574dddd547c" value="125795.00749999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="37b0852f-5e6f-4745-9806-539ae8441a71"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="32956e46-55ed-4b4e-ae34-5da45102523d" value="16530.126331379746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="93f850ce-752d-4679-8636-d693ec1fa928"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="0f256238-7815-4fea-aa62-b608bb6dcddf" value="16530.126331379746"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="e1ffd409-29de-4593-843a-2f4554c3ebe6" value="125795.00749999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="ab0e3917-04a2-49a7-9590-dd86448e9c44"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="ece208f0-acd7-43af-99b1-e82e7044fc58"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="15d26390-1dbd-4b6a-a556-ce2873fd9467"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="aed044c7-f781-4068-875c-791a8a91ba01" value="125795.00749999998"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="9e5d89a4-3c99-4aa2-910f-0d119fa6e925"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="605bb3f1-9793-4c01-9bd9-09aa3316f4da"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="47e8b9b0-ddd4-4a5f-a9fe-c1704515c1ff"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="644ac3a7-624f-4c91-9f47-117345242c00"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="22a82478-4e14-48a4-b62c-07e20de5f009"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1453.77837599982" height="7.470000000000001"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5427428170198" lon="4.228261195459382"/>
            <point xsi:type="esdl:Point" lat="51.54286519810239" lon="4.228111602236691"/>
            <point xsi:type="esdl:Point" lat="51.542859388730285" lon="4.228099597360018"/>
            <point xsi:type="esdl:Point" lat="51.5429973753739" lon="4.227930993394748"/>
            <point xsi:type="esdl:Point" lat="51.542798649000495" lon="4.227512681695526"/>
            <point xsi:type="esdl:Point" lat="51.542657937238005" lon="4.227684714773165"/>
            <point xsi:type="esdl:Point" lat="51.54253841096472" lon="4.227831150515048"/>
            <point xsi:type="esdl:Point" lat="51.542545807311654" lon="4.227846358461246"/>
            <point xsi:type="esdl:Point" lat="51.54251555994347" lon="4.227882796400929"/>
            <point xsi:type="esdl:Point" lat="51.54258504540251" lon="4.2280293247017156"/>
            <point xsi:type="esdl:Point" lat="51.54261516399399" lon="4.227992587345678"/>
            <point xsi:type="esdl:Point" lat="51.542658843518886" lon="4.228085020956979"/>
            <point xsi:type="esdl:Point" lat="51.54266612342929" lon="4.228100275203919"/>
            <point xsi:type="esdl:Point" lat="51.54263590008402" lon="4.228136424129356"/>
            <point xsi:type="esdl:Point" lat="51.54270581989642" lon="4.228283273697284"/>
            <point xsi:type="esdl:Point" lat="51.542735659538025" lon="4.228246500279237"/>
            <point xsi:type="esdl:Point" lat="51.5427428170198" lon="4.228261195459382"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="793bb405-4bd4-486a-8f79-a83e000cb0d4">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="483439d0-6193-4669-a071-500064ebbf7d" id="948e0913-77a9-43f5-ba95-b3f4df1ef988">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="b80f1d03-6152-4f62-931c-6d083910c92c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.45286202699999994" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="cc1dab44-ea12-4d95-908a-3bf79f2a7bda">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c5bc3024-2586-4bc6-9752-8a3aaf0088cd" id="57fcd150-bfd8-4f52-8087-6c9ead6c522b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e338ef43-71e4-4179-b7e4-e23ff077df86" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5231784983881689" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="f40114ee-9863-44a8-8dc1-6837cbc7ff08" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1f5de722-1ad3-4006-8666-c915e48a88f2" id="23adf803-491f-46de-9b39-4c4967abc2c4"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c5bc3024-2586-4bc6-9752-8a3aaf0088cd" connectedTo="57fcd150-bfd8-4f52-8087-6c9ead6c522b"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="75edcce8-4d2d-40e8-b0cd-4b492a4fadc9">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="483439d0-6193-4669-a071-500064ebbf7d" connectedTo="948e0913-77a9-43f5-ba95-b3f4df1ef988"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="4a1d38c4-90b2-47f5-9c9b-ae5328571743"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="14634c76-8a54-4f7c-beeb-4e7e182104bb">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1f5de722-1ad3-4006-8666-c915e48a88f2" connectedTo="23adf803-491f-46de-9b39-4c4967abc2c4"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="10b6ba89-358d-40eb-a589-ec4272fb089b"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2352" buildingYear="2012" name="Pand van Zandijk LMB" floorArea="2703.0" id="b487156e-b8c8-4241-b99b-de82175bed6e" sector="13cfdd2b-fc25-4fbc-b453-93d12048fc07" originalIdInSource="0716100000290831">
        <KPIs xsi:type="esdl:KPIs" id="92e15a83-eb73-4ded-b7f3-12d043e7998e">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="49bc8467-4b75-4933-bd40-0a349d3bf671" value="15990.8647462134"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="97e95c7f-4381-4e3e-8a80-4439d7c53d75"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e6cbe233-86ac-458f-832c-3928a99a1d5e" value="123340.97914285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="0f555761-c4ea-4727-b571-c318b329ca09"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="7255b712-0585-48d2-aee7-ff4afd2c275f" value="15990.8647462134"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="72339a4b-019b-424d-8cd5-85b29f183c46"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="fb5bf12a-d393-4f94-9f9f-abbe2d939002" value="15990.8647462134"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="dd709a5c-97ee-499a-ac9d-53c1a847596f" value="123340.97914285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="72a39d3b-1600-47a9-a685-ace405d198a6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="f8db0a62-695e-456f-8a23-a5323b417508"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="67ebc911-aba3-479b-a721-83ca433975eb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="7da43979-20f8-4eaa-a43c-e4e8c3902125" value="123340.97914285716"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="da0ac484-696a-4d0c-8fc9-3dab1d208a86"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="c0672abd-19eb-4afc-9a0d-bb8fe8c4e03f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="3da44a06-b52c-48ff-b06a-41f3c209124b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="f39dbf91-9b40-4340-b31b-f28b249260f0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="aa6e4a64-3239-4c79-b841-bcccdf2026bd"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2352.8072714986297" height="7.93"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54232887935246" lon="4.226742876298744"/>
            <point xsi:type="esdl:Point" lat="51.542039964253235" lon="4.227095452057167"/>
            <point xsi:type="esdl:Point" lat="51.542080371810215" lon="4.227180586083544"/>
            <point xsi:type="esdl:Point" lat="51.541938124804865" lon="4.227355482224804"/>
            <point xsi:type="esdl:Point" lat="51.54207601475183" lon="4.227645476485664"/>
            <point xsi:type="esdl:Point" lat="51.54216609637214" lon="4.227534853669787"/>
            <point xsi:type="esdl:Point" lat="51.542178952545925" lon="4.22756216149043"/>
            <point xsi:type="esdl:Point" lat="51.542229451974194" lon="4.2275002665206545"/>
            <point xsi:type="esdl:Point" lat="51.5422869241378" lon="4.227614692103524"/>
            <point xsi:type="esdl:Point" lat="51.542575581463836" lon="4.227262254074494"/>
            <point xsi:type="esdl:Point" lat="51.54232887935246" lon="4.226742876298744"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="ae4a0555-4f91-4625-9127-541c1d6cafd3">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1cdccae8-e49f-436d-b48b-9d0cb66a69b0" id="d413422a-9526-46c7-9d06-2a20d907ee20">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="77d5e349-6a7f-467b-8e78-08e3ac9fdc12" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.4440275249142858" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="2ad2774f-ed03-4af1-8b37-e010e1edd532">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="235c3bee-ff85-49b4-983e-918db3109054" id="8b936fce-cba6-4c32-ab29-73e4c42c3b3e">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f4eb68c7-bc1e-415a-9752-1d52cd282c55" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.506110869217654" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="6bfeea7a-28aa-49a4-83a3-905a68afe8b2" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="648d6de5-facc-47bf-be38-cbe4b98435c9" id="efdeae9c-cbb5-43d8-b7b8-32677927ea96"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="235c3bee-ff85-49b4-983e-918db3109054" connectedTo="8b936fce-cba6-4c32-ab29-73e4c42c3b3e"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="64d01863-fd58-4c5e-9538-830f121bd8f0">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1cdccae8-e49f-436d-b48b-9d0cb66a69b0" connectedTo="d413422a-9526-46c7-9d06-2a20d907ee20"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="c854989b-fcb1-4caa-a3f2-afec35d3dd13"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="1472db2a-9f15-4547-87be-189ad9d63557">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="648d6de5-facc-47bf-be38-cbe4b98435c9" connectedTo="efdeae9c-cbb5-43d8-b7b8-32677927ea96"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="dcbb29f6-ac22-4578-9c22-06bb21e86029"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1442" buildingYear="2011" name="Pand van Van de Velde Vis, Seafood Parlevliet Tholen B.V." floorArea="1361.0" id="639ee811-5532-484c-8538-59c27be79b19" sector="67dd8776-f4ba-490f-8fad-dff5bd9e06ef" originalIdInSource="0716100000035417">
        <KPIs xsi:type="esdl:KPIs" id="fd152e39-6d50-4225-b4ef-d3d90baabd74">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="4840f359-f183-489e-9905-e2fe2aba56ba" value="9020.94251802461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="0cdbfa77-4f53-4a4f-a8ef-2a4a6af68ef9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e8979d12-0e93-4045-8ea6-93138fffd03d" value="58222.413428571424"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a74ca430-4250-48aa-8934-f19e69ac278e" value="221791.96666854853"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="f4dcf7dd-5255-4064-831b-b2d0a42e477b" value="9020.94251802461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="6369e6e7-5c0c-4104-bc32-67d72beaa657"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="71ea29cf-5aed-415c-b99c-65b6b3301412" value="9020.94251802461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="ad5bf80f-efa3-4340-a717-20988b014a92" value="58222.413428571424"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="168a243c-28ec-49f2-baae-473413de5bb2" value="221791.96666854853"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="fceb5b80-dc87-4379-8403-6467c3af1e91"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="e7f5ff13-50cc-4920-9bb0-ae56c9946d02"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="d967b76e-f3c1-4509-b6f7-a98ccd188357" value="280014.38009711995"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="2b1d1ed3-5300-4127-81a9-9c45ef2bee9f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="9ad108e5-9d68-47d5-b58f-4db67e5329f4"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="c0837aea-ccc1-4e1f-903a-47dc704dde75"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="b2d8a6b6-673c-49b6-8a9f-3f9c0e8d1117"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="bdc4b5a9-85d6-4249-be73-445d34a24ac3"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1442.3620260008247" height="7.19"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54211962810104" lon="4.22640570548522"/>
            <point xsi:type="esdl:Point" lat="51.54178036220928" lon="4.226820519217078"/>
            <point xsi:type="esdl:Point" lat="51.54194605643107" lon="4.227169238862817"/>
            <point xsi:type="esdl:Point" lat="51.54194623402721" lon="4.227169018085556"/>
            <point xsi:type="esdl:Point" lat="51.54228490030653" lon="4.226754350515589"/>
            <point xsi:type="esdl:Point" lat="51.54211962810104" lon="4.22640570548522"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="b1f8997a-a1c7-4255-8c50-c20ee2e7e92e">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="18abc55e-1ac8-4eb6-ac1e-defeaa45e239" id="3e6f6cea-07c8-4a5d-9110-4dd01d5c0085">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="d26271b2-7e51-4109-a524-76700a5cf4be" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.20960068834285714" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="3c94b2d7-19ef-4202-b66b-5aacaa673d7c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="18abc55e-1ac8-4eb6-ac1e-defeaa45e239" id="5deb683e-749b-4e66-81d5-4d37d324af02">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="7642740f-9597-4786-a309-6a1d3789b1c6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.7984510800067748" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e5640fde-2c83-4e9d-836b-2cac11fffbfa">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="76dc4fe9-cb8a-4dfd-b36e-81e1c9e97d5a" id="6a47e73f-f56e-424f-9d59-e2eb95524803">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="90322cd2-d824-4619-aa12-20edec97ffb3" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.28551283069547895" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="726a92aa-5015-432a-88ce-a9130b4a765b" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="a13083fb-1072-4311-9809-a9853f262ffe" id="f90b053a-1841-4f55-a7f8-dc84ea1a961a"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="76dc4fe9-cb8a-4dfd-b36e-81e1c9e97d5a" connectedTo="6a47e73f-f56e-424f-9d59-e2eb95524803"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="155892a3-fc59-4afd-9504-09bd62b7e63b">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="18abc55e-1ac8-4eb6-ac1e-defeaa45e239" connectedTo="3e6f6cea-07c8-4a5d-9110-4dd01d5c0085 5deb683e-749b-4e66-81d5-4d37d324af02"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="a17e5099-0e9e-4338-82b2-c24c866180df"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="8a0d03b5-ebe5-431d-b993-21281e0749f9">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="a13083fb-1072-4311-9809-a9853f262ffe" connectedTo="f90b053a-1841-4f55-a7f8-dc84ea1a961a"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="9e579d59-1fed-475c-8d9a-6378e2ec16a5"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="5546" buildingYear="2018" name="Pand van Magnum Heating Group B.V., Magnum Holland, Magnum Heating Management Participatie B.V., MAG Technics B.V., U Tube Holding B.V., Magnum Projectservices B.V." floorArea="6501.0" id="26c6af35-231a-4daf-9bdd-5805a87ff596" sector="12aa54aa-c54d-4906-8761-a1499c3a55fc" originalIdInSource="0716100000292154">
        <KPIs xsi:type="esdl:KPIs" id="813731d8-fe7d-49c5-9d81-53bb1e68507a">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="27c0711b-d204-4cd6-9f3e-d020f1a3d8d4" value="30391.990634543872"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b312495a-8f5b-4252-add8-02b2fa7d8bf5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="9d5b108e-82c7-476c-bcc3-b26f7470d09b" value="321234.8417142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="2cd17803-9adf-4036-b73a-3da68d938bf1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="3caa660d-7a16-4708-b765-d11c37e713a9" value="30391.990634543872"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="0a9d6ccd-a226-4a44-abbd-d1db2a4b5302"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="19315b1a-43e3-42e3-953d-ba0b93221eec" value="30391.990634543872"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="81cf4b76-5019-4f93-886f-b7d89da38f01" value="321234.8417142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="e2bb0867-94a1-4129-b3b3-5cda9163cfee"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="4573ef8f-732b-4487-8288-b4b3904f8c2a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="466923e5-bc15-4cc0-ab19-dda00dfc634a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="a43fe30e-6c15-4427-9383-f3c84ebc4530" value="321234.8417142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="e03af953-2b22-4f38-9983-e01193a8357e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="feefea83-281b-487e-aa06-26fc8976eeb1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="34c58f05-9f9e-4c55-8225-46fe74c45741"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="99473413-037d-4a1f-8fea-d2b081597bbe"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="f972300e-5968-45d0-aad1-94424a7409e8"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="5546.433524499755" height="4.68841822139126"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54148372861205" lon="4.224608370601743"/>
            <point xsi:type="esdl:Point" lat="51.54136617241034" lon="4.224704866489634"/>
            <point xsi:type="esdl:Point" lat="51.541708877174585" lon="4.225782582804117"/>
            <point xsi:type="esdl:Point" lat="51.54182144303188" lon="4.22569039724757"/>
            <point xsi:type="esdl:Point" lat="51.54190473904474" lon="4.225952703703637"/>
            <point xsi:type="esdl:Point" lat="51.54224069877156" lon="4.225677646194119"/>
            <point xsi:type="esdl:Point" lat="51.54181555722133" lon="4.224341253789452"/>
            <point xsi:type="esdl:Point" lat="51.54148491509945" lon="4.2246119730847616"/>
            <point xsi:type="esdl:Point" lat="51.54148372861205" lon="4.224608370601743"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="021d2169-d68a-4955-bc58-14a31d97a0f6">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="dab22e3b-d496-4b82-8492-78219c8dc5a2" id="f4ce2cdc-6155-4433-81eb-2bb5022e5b64">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="a3643251-496e-497a-bc4b-8ec4b683c1c0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.1564454301714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="35a6441a-40fd-42eb-bb99-fcd3f285a8a1">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="4e24ec5a-020b-4dd2-bef6-1e5509620bbf" id="7a61d973-a375-4711-9dae-4dfa93ede10b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="2158844f-34b1-45b5-be1e-05e2ceabf08b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.9619065035833135" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="b775c73e-c10e-4a43-9297-1a7effc80d3a" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="c16081d4-3e3a-4bda-ab52-7b43b640fc69" id="268c71f6-96ed-44f6-a157-0828011e60ed"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="4e24ec5a-020b-4dd2-bef6-1e5509620bbf" connectedTo="7a61d973-a375-4711-9dae-4dfa93ede10b"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="530b52d3-f63f-40e4-9482-ffb51edbf4d6">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="dab22e3b-d496-4b82-8492-78219c8dc5a2" connectedTo="f4ce2cdc-6155-4433-81eb-2bb5022e5b64"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5a0f27bc-6f08-4bb6-b864-978e9365c62d"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="8483f6b7-e54d-4393-826a-7add42d5c82a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="c16081d4-3e3a-4bda-ab52-7b43b640fc69" connectedTo="268c71f6-96ed-44f6-a157-0828011e60ed"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="294f28e9-ca36-4516-8130-ef12bc9551fb"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2009" buildingYear="2007" name="Pand van Melse IJzerwaren &amp; Gereedschappen B.V." floorArea="1909.0" id="0dd91d7d-38ca-4a4c-b354-81cf5224491f" sector="019a556d-e433-4c84-92bb-88db9e882ff4" originalIdInSource="0716100000249194">
        <KPIs xsi:type="esdl:KPIs" id="f0b1e895-1988-4a85-a1c6-92b48817c125">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="64c3db66-c237-4c94-bbea-514ce15df3a0" value="14742.767764757582"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="30a88245-8e20-4062-b9e3-3bfbda84eb31"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="dbb34306-704e-4299-8ed4-f594b4faab85" value="170046.05633333334"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="953d72cc-45c3-47e0-9eba-c627e28a1028"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="afe06352-57ed-4650-a0be-fb442b078b8b" value="14742.767764757582"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="fbd24325-56a2-4c27-bfc1-998b650f7f10"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="147e24e8-4ccd-4ed8-b33c-fc68c3a4c3df" value="14742.767764757582"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="01dffa8f-24ba-401d-b66c-2c9cc024fe9c" value="170046.05633333334"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="9acd450a-f98f-481f-ba70-1a82ea5e897d"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="556143d1-4a05-40de-bdfd-0d68c983bd20"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="a57362f2-59bb-4012-b9c5-98cd18ee8e9c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="53d91d06-22d6-4812-8a67-78904fa3a63d" value="170046.05633333334"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c63a2e9f-0038-4407-8cd8-d48de03571e8"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="a959e55b-3819-4cdd-8a0e-9ab7d3fec880"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="becfb4d0-e633-4b2a-a919-ef3b76c887c1"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a65f29e7-5839-4d73-bf6d-fc2178e5db58"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="73278ce4-cc1d-49d4-ab37-f510b638c874"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2009.4067390009668" height="6.23"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54088605760614" lon="4.226869077128365"/>
            <point xsi:type="esdl:Point" lat="51.54124590967718" lon="4.226733040964061"/>
            <point xsi:type="esdl:Point" lat="51.54124574472943" lon="4.2267318198200625"/>
            <point xsi:type="esdl:Point" lat="51.541290181936375" lon="4.226714884909508"/>
            <point xsi:type="esdl:Point" lat="51.54125719735633" lon="4.226490189567679"/>
            <point xsi:type="esdl:Point" lat="51.54125788535579" lon="4.2264897683442815"/>
            <point xsi:type="esdl:Point" lat="51.54120945073107" lon="4.226159539660678"/>
            <point xsi:type="esdl:Point" lat="51.54121593932527" lon="4.226156649234336"/>
            <point xsi:type="esdl:Point" lat="51.541216014802444" lon="4.226157007704496"/>
            <point xsi:type="esdl:Point" lat="51.541217430041215" lon="4.2261564958126"/>
            <point xsi:type="esdl:Point" lat="51.541216486256396" lon="4.226149268703961"/>
            <point xsi:type="esdl:Point" lat="51.541216437454146" lon="4.226148880720235"/>
            <point xsi:type="esdl:Point" lat="51.541214798253485" lon="4.226149470415344"/>
            <point xsi:type="esdl:Point" lat="51.54121483592048" lon="4.2261496424442635"/>
            <point xsi:type="esdl:Point" lat="51.541207375142356" lon="4.226152399139524"/>
            <point xsi:type="esdl:Point" lat="51.541200685818005" lon="4.226107044504282"/>
            <point xsi:type="esdl:Point" lat="51.54079632602602" lon="4.226260080169233"/>
            <point xsi:type="esdl:Point" lat="51.54088605760614" lon="4.226869077128365"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="a2c39119-e351-4a25-9202-13f4782121cf">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1bc73752-694f-4be2-86ae-c6492ee0d465" id="3902d07e-1985-4cc4-943e-92491c6ce9bd">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="3d1ee7e4-8d60-4fb7-b84d-3ff30bc3950f" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.6121658028000001" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="dd2ff6a9-f86b-4ddd-bcf4-2ddf99b09535">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="9fa807b5-4572-429d-84a1-f1a18514936f" id="dd4f622f-e0e2-4573-a5cb-54ca867f7552">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="e170d2d6-86da-422f-b84c-6e0ac1553d45" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.46660859975457747" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="66479749-a8a8-4df9-96b5-bb47824b8f45" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="794981f2-2ecc-4ceb-a028-8b69e059a9af" id="ec605e03-61fb-4a41-9e79-5c0da491e0a4"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="9fa807b5-4572-429d-84a1-f1a18514936f" connectedTo="dd4f622f-e0e2-4573-a5cb-54ca867f7552"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="ae264aca-ad2d-41f1-96b5-497f3843758c">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1bc73752-694f-4be2-86ae-c6492ee0d465" connectedTo="3902d07e-1985-4cc4-943e-92491c6ce9bd"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="953e5f3d-9428-4684-a4ee-317abfdceb06"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="0fb228ba-aae0-47b3-a6b0-e89bbf842ade">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="794981f2-2ecc-4ceb-a028-8b69e059a9af" connectedTo="ec605e03-61fb-4a41-9e79-5c0da491e0a4"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="af4bd769-5164-4ce8-836c-2b7fd1f530ca"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="1599" buildingYear="2007" name="Pand van Bouwmarkt Tholen B.V." floorArea="1520.0" id="af12c4b7-8be0-4951-a04e-89ca7f497d63" sector="e6238626-e8d6-4330-8979-931f6cde8ed4" originalIdInSource="0716100000178549">
        <KPIs xsi:type="esdl:KPIs" id="dca5241c-5823-42d7-a7e1-17ebff64951b">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6e84596d-61e9-49eb-9707-9e34555ea791" value="9173.256610925415"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="dd9a92c9-91bf-4f95-b6b5-e40df3e91397"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="e29be943-9565-4d90-a981-d0b324067261" value="65024.29714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a7bbc06f-221c-459e-8117-bea9b466fb5e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="64b29ed4-2472-47ef-bc3c-aa02137bbb53" value="9173.256610925415"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="44e3a59e-6b0a-4599-bf07-74ec237a03b7"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="126fbea5-c716-459b-a55e-05109e60bda9" value="9173.256610925415"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="46271919-3924-48f1-ad74-744b319f8482" value="65024.29714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="30f9157f-e1d8-4a9a-a577-2fc3ef14a3bb"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="585f4dee-7015-4abb-99ee-9fcd96353280"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="219c0361-01f4-431c-8394-9fad7794eb5c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="eb3d1029-ad40-4dc6-8b53-0041c4396fa9" value="65024.29714285715"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="c1f148b7-01e3-490e-85d6-ede607427b4e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="b95bd6c2-1a3f-4279-bf6c-83b97b97e609"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="679fb113-0770-4d2a-82c7-dfb2d0fded24"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a70630ca-a2da-4c9e-b44d-b928019b0b94"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="8bfd2d17-eb9a-4be3-ac28-12e3d824f05e"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="1599.5511659997967" height="6.16"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.541188135437075" lon="4.226021893076589"/>
            <point xsi:type="esdl:Point" lat="51.5411955492713" lon="4.226018935737481"/>
            <point xsi:type="esdl:Point" lat="51.54119558794107" lon="4.22601920865225"/>
            <point xsi:type="esdl:Point" lat="51.541196984775304" lon="4.2260186539788025"/>
            <point xsi:type="esdl:Point" lat="51.54119584183313" lon="4.226011287806562"/>
            <point xsi:type="esdl:Point" lat="51.541195813009814" lon="4.226011101135851"/>
            <point xsi:type="esdl:Point" lat="51.541194416175614" lon="4.2260116558095175"/>
            <point xsi:type="esdl:Point" lat="51.54119446397573" lon="4.226011942906876"/>
            <point xsi:type="esdl:Point" lat="51.54118779521312" lon="4.226014794709337"/>
            <point xsi:type="esdl:Point" lat="51.541130136781796" lon="4.2256222376810335"/>
            <point xsi:type="esdl:Point" lat="51.54072492557807" lon="4.2257754721834715"/>
            <point xsi:type="esdl:Point" lat="51.54079632602602" lon="4.226260080169233"/>
            <point xsi:type="esdl:Point" lat="51.541200685818005" lon="4.226107044504282"/>
            <point xsi:type="esdl:Point" lat="51.541188135437075" lon="4.226021893076589"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="c4f54d4c-5c3a-4f69-b639-bb0f18b2bf6b">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="e38f609c-17f6-4e4e-8b0b-b9dfa8a1f02b" id="6acf2051-e79a-41ea-87fc-4b66658e9b90">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="56456f5c-7ebd-4204-ac17-5049902929ad" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.23408746971428573" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="5e51da05-b143-4555-a58b-b69747bac11c">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="e1749e77-409b-4a26-b1cc-4b0de11f8c1c" id="569349de-e2bb-4bdd-a8e6-20f49624d63f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="4ea453ae-7249-4d8c-94d7-a489e4199577" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.2903335717357894" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="d7d0926e-15ed-4c5c-86e4-0874eabd7296" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1fefbfaa-9364-451a-b0f5-bbbc5de016c2" id="57b37ff7-62a5-4376-b2e1-c06ce0f44b6d"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="e1749e77-409b-4a26-b1cc-4b0de11f8c1c" connectedTo="569349de-e2bb-4bdd-a8e6-20f49624d63f"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="859c16e7-d9fd-4c87-8ec7-ab400339075e">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="e38f609c-17f6-4e4e-8b0b-b9dfa8a1f02b" connectedTo="6acf2051-e79a-41ea-87fc-4b66658e9b90"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="158916b3-ab6a-465b-bb40-81a8b410a48e"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="7fa78917-6716-4c02-bbde-a6b7f3ac29ae">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1fefbfaa-9364-451a-b0f5-bbbc5de016c2" connectedTo="57b37ff7-62a5-4376-b2e1-c06ce0f44b6d"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="cbd522aa-72db-41f0-8ba7-1f4d9f13c5d1"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="531" buildingYear="2012" name="Pand van Verkeersschool Van der Meet, De Jonge Motoren V.O.F., ADW Motortechniek, RM Scooterverhuur" floorArea="818.0" id="75d4cb24-9fd5-4a81-a63d-b4efa86abf6f" sector="cf0b223d-fa46-499d-9444-cdb52a9a3c87" originalIdInSource="0716100000290291">
        <KPIs xsi:type="esdl:KPIs" id="04fe7fbd-1de6-4432-8ff4-ccbc2709bc8a">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="19bb9639-8a5e-42d2-8a92-c05726d8d5ec" value="4333.469575899276"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="afb2c6aa-64f8-438e-be8a-46e95109bbf3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="a58339e4-56f4-4bc6-ba01-75fdf41e55cf" value="32882.23885714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="86215e59-c060-43bc-948d-488e0a979052"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="d9994b35-dc4c-4e9a-9264-e3c8a8b1e8ea" value="4333.469575899276"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="fb8baa21-d611-4ac0-81dd-61f0e6030a02"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="be8ce15a-b574-4b05-998c-4d8c356aa13f" value="4333.469575899276"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="34e7e9b6-56bf-4f82-a54f-3d3d7d976f2d" value="32882.23885714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="a26756b9-b745-4964-a50b-f8c63a004906"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="527f37e3-df31-42dc-b2d6-d7d4e9c09535"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="be84ab98-4c66-46c7-aec2-05a320578c83"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="397720b1-c7fb-48e6-817f-276d6579aecf" value="32882.23885714286"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="1047eb01-339a-427d-8d27-9f27937ccb37"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="f072ef98-d7ca-4206-a4e6-daaa8e78ce54"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="9023bb66-3bb2-420c-ad34-351982326976"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="0bfbaa53-d00f-415e-99d1-339e9b079792"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="40f36a64-5307-4d5b-bc31-f7722df82ee8"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="531.9683354993355" height="6.58"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54255475615775" lon="4.2232966656611355"/>
            <point xsi:type="esdl:Point" lat="51.54253068842904" lon="4.223221452071775"/>
            <point xsi:type="esdl:Point" lat="51.542510582488894" lon="4.223158621634371"/>
            <point xsi:type="esdl:Point" lat="51.54249073633866" lon="4.223096606328411"/>
            <point xsi:type="esdl:Point" lat="51.54245128851659" lon="4.223128857322685"/>
            <point xsi:type="esdl:Point" lat="51.542411252274185" lon="4.223161599075764"/>
            <point xsi:type="esdl:Point" lat="51.54225138365691" lon="4.22329234218252"/>
            <point xsi:type="esdl:Point" lat="51.54223452478219" lon="4.223405682426467"/>
            <point xsi:type="esdl:Point" lat="51.54226984973062" lon="4.223516359697353"/>
            <point xsi:type="esdl:Point" lat="51.542272327228766" lon="4.223524124290533"/>
            <point xsi:type="esdl:Point" lat="51.542269002020994" lon="4.223526919722706"/>
            <point xsi:type="esdl:Point" lat="51.542269790613304" lon="4.22352937912764"/>
            <point xsi:type="esdl:Point" lat="51.54247497698605" lon="4.223361824288612"/>
            <point xsi:type="esdl:Point" lat="51.54255475615775" lon="4.2232966656611355"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="743d4263-f500-447b-bc84-ecb71c08a8be">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="1fa699e3-1404-4929-9f26-8e59c2525c33" id="d8f52f13-a9d2-4975-8128-7dd1741fd102">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="37756aae-9cc1-4771-9cac-4aa6684c222b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1183760598857143" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="233b9251-4150-4a2e-8f18-eadd150db22b">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="6b3de18c-6511-4dab-8b9e-8b61146aa6e2" id="57ba92f0-4ad9-4a78-8691-c5f3b6f563f6">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="00e7cf41-d370-4466-a0d6-06aec7987382" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13715431207721207" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="38b94455-2964-4028-800b-90ddd04ed163" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="02655b75-6f04-4b5b-9ca3-aac65b46305f" id="289976ec-a7ed-4860-8890-a472fe37babf"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="6b3de18c-6511-4dab-8b9e-8b61146aa6e2" connectedTo="57ba92f0-4ad9-4a78-8691-c5f3b6f563f6"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="eb848d19-2b2c-41a5-8911-35035f1cb00b">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="1fa699e3-1404-4929-9f26-8e59c2525c33" connectedTo="d8f52f13-a9d2-4975-8128-7dd1741fd102"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="56f87682-4d56-402c-851f-159f88902f18"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="5788e012-9298-4cdb-b18d-9406893e5b9b">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="02655b75-6f04-4b5b-9ca3-aac65b46305f" connectedTo="289976ec-a7ed-4860-8890-a472fe37babf"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="7755cdd0-7715-4a7e-813e-9f0aa13cd071"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="419" buildingYear="2019" name="Pand van Installatiebedrijf Bevelander V.o.f., Installatiebedrijf Bevelander B.V., JARTHO B.V." floorArea="497.0" id="a53b918c-8e7f-4346-8ab6-1e66f98d1dda" sector="71786725-6d40-4c04-92fb-b2ee07194d58" originalIdInSource="0716100000292682">
        <KPIs xsi:type="esdl:KPIs" id="e189d4e9-ea34-43d5-bc44-e5362de8c2fc">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="afa2b761-98fd-4655-9813-1ec0892c6521" value="3206.5421713792166"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="b2482be0-f2ad-4a20-88bb-4d64b369bbff"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="68ded17a-6e13-4821-a8a6-55ff41d8231b" value="23325.772"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="cac2f2df-34d1-4591-9519-07279d24da32"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="6a045146-6459-49d2-8ba9-6eacc7fb57d1" value="3206.5421713792166"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="feb4f81b-ada4-474a-baf1-cb62682d9d90"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="13cd5374-f95a-4c39-9259-f127f359b564" value="3206.5421713792166"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="79fb29d5-094a-4e33-ba69-c187d34b925e" value="23325.772"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="a8930545-5645-4ef1-b2d7-6293e35a91af"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="baa5d452-98c9-40d7-a38a-13d89a0e14ad"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="0a1e147e-78e0-42d6-a61b-f71554cf3cbc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="7c7f4e0f-1b1b-4a75-b10b-af359ec77aab" value="23325.772"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="043bd88c-a9ec-46c4-91b9-ad9b3cee96a6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="6f3c52bf-c47b-4be6-8c2c-61d2919d3bed"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="f60cc5b9-a89c-4691-8d55-414ec81a67a9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="416c87fd-c956-4311-a75f-de16014e7a51"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="6f712f00-3b64-4799-b86a-9edc53433170"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="419.5711500004494" height="4.738171344712025"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.541198297399205" lon="4.223444406732184"/>
            <point xsi:type="esdl:Point" lat="51.54136284237988" lon="4.223750712905097"/>
            <point xsi:type="esdl:Point" lat="51.54146442739423" lon="4.223609458098609"/>
            <point xsi:type="esdl:Point" lat="51.541299882043944" lon="4.223303151758242"/>
            <point xsi:type="esdl:Point" lat="51.541198297399205" lon="4.223444406732184"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="6d164d00-a39b-458d-8beb-ae0e79bd0020">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="94ed4b47-48fd-4986-91d6-ac030bbdc2ca" id="71ed2512-5d41-4b40-bc53-57ac78470d7c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="ec01630d-7d66-4dd8-aa0c-06d3a9527b49" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.0839727792" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="e1ccd0cb-5d69-45d3-90db-7322636339af">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="86edba30-bce8-4afd-ba07-ab557240c229" id="5b041323-d497-48d3-9aa9-e8e756f23b2c">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="4976548b-d507-4759-8df2-bf2b9b506d80" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.1014870597241522" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="7356f97a-1114-44b2-8964-d87a65e075eb" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="4ecc5fdf-e6d4-48ee-b577-381981b83b2f" id="37447820-f505-466e-8c81-2be6ff33aa50"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="86edba30-bce8-4afd-ba07-ab557240c229" connectedTo="5b041323-d497-48d3-9aa9-e8e756f23b2c"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="d1c9525b-d5c6-4c71-bac5-36132b5829e4">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="94ed4b47-48fd-4986-91d6-ac030bbdc2ca" connectedTo="71ed2512-5d41-4b40-bc53-57ac78470d7c"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="9fc05fd9-1777-4022-90d3-5078b5e1865d"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="d0c3ddb2-6d92-4d0d-92ff-67254d597cb7">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="4ecc5fdf-e6d4-48ee-b577-381981b83b2f" connectedTo="37447820-f505-466e-8c81-2be6ff33aa50"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="93dd9f37-d21a-41bf-adf6-fb8064b58690"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="492" buildingYear="2018" name="Pand van Mediterranova" floorArea="560.0" id="36bbcb65-a72b-4ca9-ba8f-5b11f641ec78" sector="2a36b3be-4249-464e-9250-cd89059b88b5" originalIdInSource="0716100000292337">
        <KPIs xsi:type="esdl:KPIs" id="9d679a91-c0eb-46a4-908b-8ec1e16f5fda">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="b70b9d77-edda-4cbb-a6e2-06e2a670d390" value="3687.648614172227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="fa39bda5-2e8f-49c2-9114-9a8f399c4192"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="ab8246b6-cce0-4f34-9baa-0f97e9bffec0" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="25284fbe-3e8c-4b96-bf91-4df48d32d9f1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="bf76c832-8495-4d0b-b95c-576e7db32644" value="3687.648614172227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e5715ea5-caf8-446a-9bb1-84ec00e15f7a"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="3319c6fc-3324-4df1-b028-f0f2c3ff14d8" value="3687.648614172227"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="61a1b092-761f-4ca1-b62b-f08b5b6260d6" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="6dabb83b-345a-44bd-9a4c-72f4bbd23e85"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="6a4eb414-dda0-4b04-8439-f90e746bb011"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="55cbeb3c-4733-4da6-8a1c-17e31c3255a9"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="cea0fcc7-d644-4b97-9134-1d2935eed63e" value="22255.039999999997"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="dc861e6d-539c-4915-9e85-bfe32d1725ff"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="1216d94a-54e1-4bdc-823f-cd9f9d38b785"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="2871937d-bca1-48f2-85cb-e631822abde4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="321f2eee-3d3b-478f-84c3-856f96a4023e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="b4d39e08-fa52-4250-9b5a-a9a81c0d8195"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="492.6172100002309" height="4.547141176815463"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.5415244439142" lon="4.223089043769664"/>
            <point xsi:type="esdl:Point" lat="51.54164595544035" lon="4.22298906861779"/>
            <point xsi:type="esdl:Point" lat="51.54152267250168" lon="4.2226018551173805"/>
            <point xsi:type="esdl:Point" lat="51.54135622802751" lon="4.222738388403307"/>
            <point xsi:type="esdl:Point" lat="51.54138139603731" lon="4.222817536009264"/>
            <point xsi:type="esdl:Point" lat="51.541426531450206" lon="4.222780512199235"/>
            <point xsi:type="esdl:Point" lat="51.5415244439142" lon="4.223089043769664"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="e6b57670-20eb-4387-9e1b-f7cefa85ca8c">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="fcb6f1a6-8e9b-4416-95a7-e7c33c260a96" id="98ce02bf-e8cd-4f4d-b1a0-cf3b6f2a6e96">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="0d28fffa-b785-40a7-9831-fbda69d496b0" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08011814399999999" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="9642dfd1-3faa-4a67-8a80-59bc82068ba5">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="c1e519d4-250c-4881-9fd8-1c163dd61ad6" id="92b27d86-24bd-4ce4-924d-72aa932bc411">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="f9c8bbe5-c275-4448-a94c-5a7c4ead87d6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.11671407863855099" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="b7daca94-8afb-4e03-8673-e9a1b058a6c5" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="20af5a29-29c3-4681-b27f-6126a3efebef" id="06d6ccc7-3dfe-4392-82f8-cd4b926835ce"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="c1e519d4-250c-4881-9fd8-1c163dd61ad6" connectedTo="92b27d86-24bd-4ce4-924d-72aa932bc411"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="f78f0df0-428b-406a-a124-2c121e085132">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="fcb6f1a6-8e9b-4416-95a7-e7c33c260a96" connectedTo="98ce02bf-e8cd-4f4d-b1a0-cf3b6f2a6e96"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="520cb6c8-d744-4d18-9329-823c20b9aa44"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="74567029-5594-4bf6-8e32-f6d285257962">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="20af5a29-29c3-4681-b27f-6126a3efebef" connectedTo="06d6ccc7-3dfe-4392-82f8-cd4b926835ce"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b4f86ff6-bee3-42f5-b729-b0ecad826633"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="541" buildingYear="2013" name="Pand van Van Rijn Advies &amp; Projecten B.V., Van Rijn Brandbeveiliging B.V., Van Rijn Veiligheidsopleidingen B.V." floorArea="727.0" id="007827c6-2d9c-4736-a8a5-d2abf8824717" sector="67b855ee-4568-4078-9d15-e62431b06230" originalIdInSource="0716100000291040">
        <KPIs xsi:type="esdl:KPIs" id="1022a1ab-aace-46de-8ead-270d4aef0659">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="35a3bb79-6070-4998-99a3-35510a98088d" value="4256.321785841461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="2b5544c5-096a-4e1e-bcfc-b72374edd5ea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="5d7fb348-41e4-463f-8771-c88e1f569c30" value="28891.810857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="79324ea9-bc9b-4b93-ad30-d3b93f14a558"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="1835c9d4-9a4b-4d9f-93b3-ec9ce9b4ad62" value="4256.321785841461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="834fe23c-d2f6-4200-a834-987926b5acd0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="b2b5f5de-b613-40cd-80c4-5b5424b5cbfd" value="4256.321785841461"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="8ae055e3-18b7-4b8c-bef9-25ea9b2d7db6" value="28891.810857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="11cca332-15b0-4cd0-a325-16f8daa99453"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="5dc0ac0a-f2f3-4ca5-af63-e224c9647e34"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="92ed9d0f-a6f4-48f2-a2d4-a2ca218554d5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="63000f11-dd00-4a0e-8428-316ea7e84e08" value="28891.810857142864"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="e9726e5c-15d5-4558-9650-626467630395"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="90402e93-1dcb-45bb-b3ae-0f470044314c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="497fbef4-0301-4308-b413-afc2e00f4434"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="2a480c63-a06b-4f91-b448-cb977fa2c73e"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="2709ef51-e968-4aca-b21f-f7aeff816bfb"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="541.7462484999614" height="5.367826741859214"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.542324462141096" lon="4.222805476371871"/>
            <point xsi:type="esdl:Point" lat="51.54221750560669" lon="4.222570896697682"/>
            <point xsi:type="esdl:Point" lat="51.54212033296631" lon="4.222684825229372"/>
            <point xsi:type="esdl:Point" lat="51.54211755871364" lon="4.222675251865598"/>
            <point xsi:type="esdl:Point" lat="51.54204220685838" lon="4.222734516578202"/>
            <point xsi:type="esdl:Point" lat="51.54205164757079" lon="4.222765370417791"/>
            <point xsi:type="esdl:Point" lat="51.54203480960312" lon="4.222785134122658"/>
            <point xsi:type="esdl:Point" lat="51.54210441681536" lon="4.222937820227047"/>
            <point xsi:type="esdl:Point" lat="51.54213587936843" lon="4.22304063802018"/>
            <point xsi:type="esdl:Point" lat="51.542210731835176" lon="4.222981761314685"/>
            <point xsi:type="esdl:Point" lat="51.542201336629454" lon="4.222950055596905"/>
            <point xsi:type="esdl:Point" lat="51.54225456050949" lon="4.222887566620096"/>
            <point xsi:type="esdl:Point" lat="51.542324462141096" lon="4.222805476371871"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="1d544418-d94d-4528-ae2d-76a19c832061">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="9f35bc69-7841-4d28-b019-362695e53669" id="7016be8f-c6a7-4265-8a8e-c821b5b77beb">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="454be48c-536e-44ff-b58d-c65a5117e9d6" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.10401051908571432" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="97a5d2c6-8bbc-48b8-a58e-5fa3aa0192b2">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="94e066d4-8333-4f1b-952d-e62ed6f02cd1" id="fa801b8f-8f64-4618-a717-434bb8d7fbd5">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="56a97eb1-30c5-4c60-9cd6-84c584292749" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13471258452188223" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="5eed7ddd-ca48-4cc8-af78-f4bf59935a25" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="4b479491-f7e4-434a-826e-6035da41c2fc" id="cbb1a094-903a-4acc-8b32-9727fa729c69"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="94e066d4-8333-4f1b-952d-e62ed6f02cd1" connectedTo="fa801b8f-8f64-4618-a717-434bb8d7fbd5"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="4e1536c4-485c-48f6-a306-66485de586fb">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="9f35bc69-7841-4d28-b019-362695e53669" connectedTo="7016be8f-c6a7-4265-8a8e-c821b5b77beb"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="8a4c0f6f-885e-497c-bf09-ff0f48d5d8b0"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="1a4cc911-852e-4b8d-868b-ab01b7ba9711">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="4b479491-f7e4-434a-826e-6035da41c2fc" connectedTo="cbb1a094-903a-4acc-8b32-9727fa729c69"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="b42c49d6-06f8-4bbc-be76-44a748ed2271"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="330" buildingYear="2013" name="Pand van Botani Klusbedrijf" floorArea="310.0" id="89bb3df6-003e-4540-9fd3-2705fa27094d" sector="208e5572-1388-40cd-8d36-b5047cbb99bc" originalIdInSource="0716100000291099">
        <KPIs xsi:type="esdl:KPIs" id="bf03f21a-f13b-499c-b786-15224bb764ea">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="2ecbd379-0474-4a43-b9cd-b4af4141e5c4" value="2766.896699007836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="55942b56-5f47-40f5-a06e-73be94b16cf1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="78f05419-5ad5-4261-9c4a-41269a04a2b8" value="14549.274285714284"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="69444037-8750-492e-98b3-8a6b4824eb6e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="59e56da0-ab1d-429d-b087-3386cee394d0" value="2766.896699007836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="be95480b-5996-42fa-8d0d-b409128a129e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="46adb6e0-95c5-4f9d-a8a8-669c1540bdeb" value="2766.896699007836"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="37ab9d50-f9d8-4307-8897-68653337ddca" value="14549.274285714284"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="51aed141-9cd8-4071-997e-b5bfcd6a8a63"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="a5ef038f-1a1f-46b1-9c94-04b566179718"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="929b60d3-3860-4962-83f5-19109968eacf"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="168d4f60-02a3-44ca-bf67-9c5c9a7f16b6" value="14549.274285714284"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="21d755bc-aca7-473d-81c2-e9fb8194fb1e"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ccb578d5-a65a-4ee7-b69e-2503426d6544"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="77f20ba3-2c5a-4f52-a575-b10214144dd0"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="fbcb8cd8-93bd-4b8c-a35f-1e9b96422ad4"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="0db7ddb4-dbdd-4ede-985f-9df3616602c2"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="330.56240249977566" height="5.31"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.542690903251405" lon="4.223565893429518"/>
            <point xsi:type="esdl:Point" lat="51.54277914866467" lon="4.223493324183816"/>
            <point xsi:type="esdl:Point" lat="51.54265608281033" lon="4.223108775601562"/>
            <point xsi:type="esdl:Point" lat="51.542567978702564" lon="4.22318106786821"/>
            <point xsi:type="esdl:Point" lat="51.542690903251405" lon="4.223565893429518"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="4e46a270-947f-4803-ba37-af4f7cb57c0f">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="97096635-a62a-4ba0-a347-1aba5ea7f2eb" id="c4a96cff-4696-4499-969b-e6cdb7adf7e7">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="1b257ba1-2237-4c96-a41f-98d5aa2fb882" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.052377387428571426" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="25b6beba-f71c-495a-a462-849419b7bb5a">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="de00ee28-7c7a-4bee-925b-289d6d8f05b2" id="9333d150-1eb8-4a55-b55d-d4267d649879">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="0e45ee6b-d686-45bf-a50a-5e6bda9bfd0d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.087572280523598" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="62d40100-08a8-4126-8c8d-a11911c2627f" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="ee64e8d5-8a7d-49c4-940d-961ac8043b58" id="f259c28b-cf3c-4dc9-82cd-9a25ede3a224"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="de00ee28-7c7a-4bee-925b-289d6d8f05b2" connectedTo="9333d150-1eb8-4a55-b55d-d4267d649879"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="ebc08c0d-c22f-4dea-8800-fc14d5590b10">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="97096635-a62a-4ba0-a347-1aba5ea7f2eb" connectedTo="c4a96cff-4696-4499-969b-e6cdb7adf7e7"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="0c157bf9-b59f-4843-8e91-afe4d40f1449"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="82d3ee54-7693-4c6c-b1a7-a742991eb150">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="ee64e8d5-8a7d-49c4-940d-961ac8043b58" connectedTo="f259c28b-cf3c-4dc9-82cd-9a25ede3a224"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="186001e4-27c0-4402-83cc-27ec2c4b9e2d"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="10058" buildingYear="2013" name="Pand van BMTires B.V., Hollandse Bandenmarkt Internationaal B.V., Beheermaatschappij Van 't Hof B.V., TyresoleS Industrial Holding B.V." floorArea="11132.0" id="be4f7eb8-af62-417a-827a-71f81388b226" sector="cfafebaf-b0e0-4796-bbb6-816eca277931" originalIdInSource="0716100000290992">
        <KPIs xsi:type="esdl:KPIs" id="d29f0b0f-6d9e-4e72-9872-01635ad631be">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="c6aed31b-dd26-47ed-8b6a-8d0bbc8373c7" value="75750.99891154777"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="e5d4b7ab-e316-47ff-b19d-23f6d68a9929"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="5a27eb47-9610-4bd2-aca9-3938247e7c56" value="1070183.29"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="450e905c-5366-4e22-b5c0-98e12d1dedea"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="67553f6f-b381-497b-878c-a3043534442e" value="75750.99891154777"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="cb97ab1f-47b4-4aff-a5a6-eeaf27ce0758"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="4ee7454e-430c-4d10-bab8-e93e50a7f3ec" value="75750.99891154777"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="36e0387d-f893-4c5a-8d47-04df13b3d0b2" value="1070183.29"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="59bc8438-8b53-4ef6-bd76-ff0aa7a99550"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="8d69d7b7-d080-4b5c-ba4b-8f75d6fde4dc"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="f3e4bd3a-f480-4f87-9bb5-70b26735f1c6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="9cb31c9b-2e52-4451-abfc-137c94e479fc" value="1070183.29"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="3154ac94-139d-4a57-8e6f-9262424145a1"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="cd676759-cdb5-46fc-9860-8fee65b6a9c5"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="cd2b25f8-cd8f-43b2-9c4a-b8dae4ce07b9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="a52f0939-6337-47ea-9b5b-902e1e090005"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="38c8d00d-a5d4-4b2f-9672-dd10d1443ba7"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="10058.488776999891" height="9.3"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.542972211331694" lon="4.22166755791815"/>
            <point xsi:type="esdl:Point" lat="51.54343468168089" lon="4.22127303169886"/>
            <point xsi:type="esdl:Point" lat="51.5430822935504" lon="4.220209194632241"/>
            <point xsi:type="esdl:Point" lat="51.54209078564014" lon="4.221055249564821"/>
            <point xsi:type="esdl:Point" lat="51.5423852620999" lon="4.221942960132131"/>
            <point xsi:type="esdl:Point" lat="51.542603988430095" lon="4.221755991844069"/>
            <point xsi:type="esdl:Point" lat="51.54266245596888" lon="4.221931799638126"/>
            <point xsi:type="esdl:Point" lat="51.542796524962455" lon="4.22181742626488"/>
            <point xsi:type="esdl:Point" lat="51.542972211331694" lon="4.22166755791815"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="541e8746-855a-4c7b-bd95-4597a9bfc797">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="484a85f5-d703-4b03-9765-082a13818817" id="df77962e-a977-41d2-9c03-03c8f1b7a776">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="e76c3ffb-d2b4-419f-a7cd-75ee23e2b070" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="3.852659844" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="826fe941-20b0-4bb3-80e3-b9f6bfbb9cef">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="0a3cb42b-2972-4b11-b050-74387a1d6787" id="850e6ea2-d3b5-4102-bf1f-15b2d159bd48">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="5f2f2a8c-b6a1-4233-b415-20427ef2a2fb" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.397519115550487" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="941deb8a-a3f4-4530-9a68-4be219a45a1d" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="e651f000-4798-4860-ae03-c64c0c583980" id="6ea25fba-4d47-4d25-a525-1b8b332893cf"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="0a3cb42b-2972-4b11-b050-74387a1d6787" connectedTo="850e6ea2-d3b5-4102-bf1f-15b2d159bd48"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="7d651633-0706-4366-a201-1d0192ebd7f7">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="484a85f5-d703-4b03-9765-082a13818817" connectedTo="df77962e-a977-41d2-9c03-03c8f1b7a776"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="5e67ed20-9f41-4138-a125-d9cd14384e1a"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="48185195-788a-4a0d-9ae8-d79c0e29792f">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="e651f000-4798-4860-ae03-c64c0c583980" connectedTo="6ea25fba-4d47-4d25-a525-1b8b332893cf"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="5b064f1a-5173-4f54-bfd8-7b266ccc620a"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="636" buildingYear="2018" name="Pand van Van de Merbel Holding B.V." floorArea="620.0" id="1dd78536-21b7-4f19-b2c1-527d81b806a9" sector="f6729acb-3636-4ba9-b4d6-c0953f09e3c6" originalIdInSource="0716100000292451">
        <KPIs xsi:type="esdl:KPIs" id="2497b512-d709-40ba-a310-a43f718db752">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="dc3f2968-061a-4bbb-8af6-2cd57b810ff6" value="4157.581740296232"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="49af2962-aba6-4847-b4ee-9b5630acc3a6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="ea069d1a-2dac-4f36-9146-0547e706dc06" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="d1ca966c-4d48-45b6-8cb8-c8d5a9c73629"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="8666514a-18de-4111-aaa7-2bdcd1586780" value="4157.581740296232"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e3bb506b-8d35-4c50-8b71-43532eb837f3"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="ac774243-3685-4cb8-8b93-83f0bc43ef15" value="4157.581740296232"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="b5c1551f-f4d8-43a2-91d6-7590486733ad" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="2e793d1a-d6ec-4a8e-9d1c-e77260933a33"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="e9d5c055-35d7-4dd9-a0dc-e281f2175057"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="16638d4c-abce-4a59-b641-97d3f3b44f07"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="62ff226b-c615-4806-941f-f8b984d7fb9f" value="24639.50857142857"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="13b60d67-2174-4c7e-855c-e23566edd6ba"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="c507b9b9-9d53-433e-bdfd-12eb6cf51429"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="1e04a54a-ab2b-4656-9bc1-e8793dc77531"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="1061d2e8-136d-4a66-8a7a-1457557574d9"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="KVB" id="276cb1dd-6cbc-45e5-b579-4dcdce9ce2b8"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="636.0246849996818" height="4.0"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54321074509286" lon="4.223105880657062"/>
            <point xsi:type="esdl:Point" lat="51.54304679883487" lon="4.222592815778376"/>
            <point xsi:type="esdl:Point" lat="51.542919588864756" lon="4.2226973526209015"/>
            <point xsi:type="esdl:Point" lat="51.54308353466207" lon="4.223210416447423"/>
            <point xsi:type="esdl:Point" lat="51.54321074509286" lon="4.223105880657062"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="0b3065e2-fcf3-4e7a-8333-c5e6010319f5">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="b2b21bd2-6b51-4d84-ba26-5e596d84d430" id="4f39c700-097c-4a7c-9e9a-9faa26e8144f">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="2d9a6d0b-a811-4ff7-b579-a82ff612f269" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.08870223085714286" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="63b4d5f7-3d3e-4cb1-be37-09c2af557200">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="d3027760-7c48-41d5-b171-3f0f369b47c4" id="cd420ece-29af-43e3-9721-225bc01f0917">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="9814e9e0-c49d-4781-8269-32a4c3190a07" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.13158746208037572" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="10da0816-2d2b-4d72-9e6b-b6c34bd4a4b1" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="1c4895a6-614f-4023-af5e-69126d61c2db" id="56d2906b-3d65-41a4-81c3-ae2497bf8cea"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="d3027760-7c48-41d5-b171-3f0f369b47c4" connectedTo="cd420ece-29af-43e3-9721-225bc01f0917"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="KVB" name="Aansluiting Elektriciteit" id="0964eca3-dd7d-4df4-b758-3efd8036dbea">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="b2b21bd2-6b51-4d84-ba26-5e596d84d430" connectedTo="4f39c700-097c-4a7c-9e9a-9faa26e8144f"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="054bf959-a055-46bf-87de-3076a69645fc"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="51cb0513-011c-4820-be0b-9e06677b281a">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="1c4895a6-614f-4023-af5e-69126d61c2db" connectedTo="56d2906b-3d65-41a4-81c3-ae2497bf8cea"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="29b64bd1-3567-4402-86ac-6f84203a14e2"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="3045" buildingYear="1998" name="Pand van Welkoop Tholen, Elenbaas Noom Vastgoed B.V., Sigma Personeelsdiensten, LWSW B.V., Schipper, Argos Tholen" floorArea="3600.0" id="05232b3f-a714-4c83-9f89-faa252a2b66a" sector="bca2fc67-a06e-4a88-ba22-cdf6a96c44bd" originalIdInSource="0716100000177176">
        <KPIs xsi:type="esdl:KPIs" id="b9b2a8e4-5f46-407f-9026-745295d17d1e">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="6c93a77f-4f29-4f54-87b9-ee2e3144ba8e" value="29493.051238622666"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="a462f1e1-0072-47ef-9269-ef8b7fc9fa55"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="fc619d9b-61e8-4320-9b7a-c3a39b4cc6c6" value="299123.4276811594"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="1cc279fc-470c-469c-8d8d-163e04dd71d2" value="67501.44897344444"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="5f6daf4e-b410-413b-b6ec-fc9bd2b8f60d" value="29493.051238622666"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="e4633e69-9fa3-475b-9489-921f87e585c6"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="c6d1ffff-c7f9-4366-a43b-d667ad080ad5" value="29493.051238622666"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="7bdd797d-e37a-48fd-9c9d-67f0358f123f" value="299123.4276811594"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="d8efdde5-39f9-4a86-b32f-23b00c696924" value="67501.44897344444"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="54af0e32-18a8-4940-9955-8cb5d04293b0"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="b1695fd1-7747-4887-8581-1e32ecb72c8f"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="b4021f9d-4366-4baa-8275-3e45a3655ed4" value="366624.87665460387"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="4ac9b932-e0be-4e3b-b1cd-a9dd2d844501"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="cc9621f0-af65-4b73-beaa-72b1276e0a0c"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="bb9eb884-29d8-4dc8-856e-a5dbb16c1886"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="344673b1-344a-48d8-8851-7d69d4e6270b"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="17c14772-da1d-451a-9927-a4051ba62e8b"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="3045.5415115008395" height="8.59"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54308157833785" lon="4.230208345273178"/>
            <point xsi:type="esdl:Point" lat="51.542866519183875" lon="4.229681306367975"/>
            <point xsi:type="esdl:Point" lat="51.54262059889224" lon="4.229939310925379"/>
            <point xsi:type="esdl:Point" lat="51.54247195737429" lon="4.230095247228339"/>
            <point xsi:type="esdl:Point" lat="51.54246522234091" lon="4.2301023097717225"/>
            <point xsi:type="esdl:Point" lat="51.54246247596132" lon="4.230126354096828"/>
            <point xsi:type="esdl:Point" lat="51.542400411995146" lon="4.2301915972092115"/>
            <point xsi:type="esdl:Point" lat="51.542327771642015" lon="4.230167382411306"/>
            <point xsi:type="esdl:Point" lat="51.542309611884626" lon="4.230306169230596"/>
            <point xsi:type="esdl:Point" lat="51.54270198441698" lon="4.230438179618677"/>
            <point xsi:type="esdl:Point" lat="51.54277698989968" lon="4.23046340164258"/>
            <point xsi:type="esdl:Point" lat="51.54325018536487" lon="4.230622608389886"/>
            <point xsi:type="esdl:Point" lat="51.54325026696189" lon="4.230621770150267"/>
            <point xsi:type="esdl:Point" lat="51.54308157833785" lon="4.230208345273178"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="6bb977c8-ca15-4746-98d3-d78b9e00a4c8">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4c27ba60-bfb9-4009-9fbe-f08be1ba8944" id="e5ae2928-93b6-4e69-ad06-4995459bdc8b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="ba402675-ec04-4cff-bfe8-4256dd7f471d" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="1.0768443396521739" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="6d1f9ca2-d704-4537-a80b-18b45bb899f9">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="4c27ba60-bfb9-4009-9fbe-f08be1ba8944" id="6d06a38c-05ea-4584-9384-c7642f9d926a">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="5b1bb74f-87c4-4031-a921-c27055c2e653" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.24300521630439997" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="7aac31f7-646e-477a-b920-dd5cb2f352b6">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="7f78c5e0-0a01-4e64-b1db-b43eb2633669" id="a956ca2c-4bcc-428f-8dc7-93c742baed17">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="7f43b301-7b13-41c6-85d1-338ee9aab70c" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.9334550717024073" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="" name="Gasketel" id="f1bcf3b0-0ac9-433b-a17d-9eacaaabf728" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="2b8fde3d-547f-40ad-90ee-236b4e207144" id="ec1e6041-e12d-44e9-bb9c-dc815f5f4f8b"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="7f78c5e0-0a01-4e64-b1db-b43eb2633669" connectedTo="a956ca2c-4bcc-428f-8dc7-93c742baed17"/>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="05069745-c3cb-4ef5-8005-844b16de6629">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="4c27ba60-bfb9-4009-9fbe-f08be1ba8944" connectedTo="e5ae2928-93b6-4e69-ad06-4995459bdc8b 6d06a38c-05ea-4584-9384-c7642f9d926a"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="1cd84e71-8954-4bea-90be-6cefc594b657"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="2791e104-c5d8-4bde-bc4b-34bd21974076">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="2b8fde3d-547f-40ad-90ee-236b4e207144" connectedTo="ec1e6041-e12d-44e9-bb9c-dc815f5f4f8b"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="46066766-7c51-4dc7-8c9a-e58624b4f075"/>
        </asset>
      </asset>
      <asset xsi:type="esdl:Building" surfaceArea="2859" buildingYear="2000" name="Pand van Clazona B.V., Van Meer Production B.V., Wouter van Meer Holding B.V., Luc van Meer Holding B.V., Van Meer, Van Meer Business B.V." floorArea="1846.0" id="348383d4-5c07-4124-9625-d4eda69aebeb" sector="d3389253-9ad0-448a-bd90-37ae3426801a" originalIdInSource="0716100000142661">
        <KPIs xsi:type="esdl:KPIs" id="87414c4e-0e96-4a0f-ac40-3fcfd29fbb0e">
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_huidig_m3" id="d85bb082-0899-4150-b0b4-dba93799689f" value="16885.355874273933"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_huidig_m3" id="a38e06f4-d768-4884-964c-47342869476f" value="75136.77392706268"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_huidig_kWh" id="2d44df5d-e2f2-4f05-a744-165ecfc7cd8c" value="78970.29771428573"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_huidig_kWh" id="a6e25596-18e2-4c08-8197-4a4cf63da626" value="660362.222969964"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_gebouw_scenario_m3" id="2191bc6d-d400-4f9d-b3e9-3a570e65bcfa" value="16885.355874273933"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_proces_scenario_m3" id="55cbbad7-74fd-48c3-9d45-3cff8b9329b9" value="75136.77392706268"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_aardgas_scenario_m3" id="9b1df931-a691-4750-bfa7-32a9df42f48a" value="92022.12980133662"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_scenario_kWh" id="2aa90c80-4e86-428d-ae72-258635d6c2b4" value="78970.29771428573"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_proces_scenario_kWh" id="cec5de28-d378-4261-8379-a2c2dd547908" value="660362.222969964"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_gebouw_warmtepomp_scenario_kWh" id="e74ef010-b9ee-47d8-8f58-c3799db71d93"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energieopwekking_elektriciteit_pv_scenario_kWh" id="bf4624e7-9365-4cb9-bd10-38009a691eec"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_energiegebruik_elektriciteit_scenario_kWh" id="a70ce0c2-1e88-484c-940b-5d934f04df0d" value="739332.5206842497"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_investeringskosten_EUR" id="61e17fcb-f57d-44a5-8220-fa8668516173"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_besparing_EUR_jaar" id="ee18d779-49dd-4ca8-a862-8b4daab05e06"/>
          <kpi xsi:type="esdl:DoubleKPI" name="pand_installatie_totaal_terugverdientijd_jaar" id="085923e3-5cf3-4aea-8e21-af4ea28ceb7a"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_type_installatie_ruimteverwarming" value="cv ketel" id="30ef90f6-42a0-42fa-9060-5ea304aaa341"/>
          <kpi xsi:type="esdl:StringKPI" name="pand_aansluiting_type" value="GVB" id="56dc8be3-b8bd-4ae2-a24f-8f8add339eeb"/>
        </KPIs>
        <buildinginformation xsi:type="esdl:BuildingStructureInformation" flatRoofArea="2859.8744389997496" height="6.8100000000000005"/>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.54352495656269" lon="4.2295588274195985"/>
            <point xsi:type="esdl:Point" lat="51.54336465840592" lon="4.229120725034007"/>
            <point xsi:type="esdl:Point" lat="51.54336403502104" lon="4.229121317589704"/>
            <point xsi:type="esdl:Point" lat="51.543295092675564" lon="4.228933309121614"/>
            <point xsi:type="esdl:Point" lat="51.54321412790629" lon="4.228707793070996"/>
            <point xsi:type="esdl:Point" lat="51.54317164757002" lon="4.22874804612355"/>
            <point xsi:type="esdl:Point" lat="51.543176257888234" lon="4.228760615151278"/>
            <point xsi:type="esdl:Point" lat="51.54309872227135" lon="4.228833853175228"/>
            <point xsi:type="esdl:Point" lat="51.543176309435665" lon="4.22904512490288"/>
            <point xsi:type="esdl:Point" lat="51.54309799718724" lon="4.229118930063594"/>
            <point xsi:type="esdl:Point" lat="51.5430968606306" lon="4.229115816227563"/>
            <point xsi:type="esdl:Point" lat="51.543081960302636" lon="4.229129834092649"/>
            <point xsi:type="esdl:Point" lat="51.54310528827639" lon="4.229192470446593"/>
            <point xsi:type="esdl:Point" lat="51.543151254971434" lon="4.229318049243021"/>
            <point xsi:type="esdl:Point" lat="51.54308873319506" lon="4.229376962852217"/>
            <point xsi:type="esdl:Point" lat="51.54325013625405" lon="4.229817803310245"/>
            <point xsi:type="esdl:Point" lat="51.54319349333774" lon="4.229871275716298"/>
            <point xsi:type="esdl:Point" lat="51.54328566879083" lon="4.230122530146238"/>
            <point xsi:type="esdl:Point" lat="51.543640496916474" lon="4.229788381745904"/>
            <point xsi:type="esdl:Point" lat="51.543548201768836" lon="4.229536912824112"/>
            <point xsi:type="esdl:Point" lat="51.54352495656269" lon="4.2295588274195985"/>
          </exterior>
        </geometry>
        <asset xsi:type="esdl:ElectricityDemand" name="Gebouwgebonden elektriciteitsgebruik" id="add95f49-ed38-4157-af0a-8581639e7d78">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="32843765-ae35-489e-aa05-902227894fbe" id="451d1f92-bfd0-4f77-b663-50bece13988b">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_E3B" id="3f60356d-78fe-47ff-97b1-ecdea7274f17" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.28429307177142865" field="E3B"/>
          </port>
        </asset>
        <asset xsi:type="esdl:ElectricityDemand" name="Procesgebonden elektriciteitsgebruik" id="155e81f7-45ca-440c-8ad2-f38d84d9e72d">
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="32843765-ae35-489e-aa05-902227894fbe" id="c865145f-d0bb-4e2c-92ae-574d40e2d1c2">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="04dd1b8e-5390-409a-936d-649db496b94b" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.3773040026918704" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:HeatingDemand" name="Warmtevraag gebouw" id="ee11609e-4903-4114-8d02-b39f57e65345">
          <port xsi:type="esdl:InPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" connectedTo="46d589cd-b3e3-4cc8-b9d6-b9dcdf23dd0e" id="6bcab051-f226-4f1e-97fb-3e742697c365">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="standard_profiles_point" host="http://influxdb" port="8086" name="standard_profiles_point_G2A" id="51bb57ae-4730-45fd-b936-06f0a8d99f95" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="0.5344215134207699" field="G2A"/>
          </port>
        </asset>
        <asset xsi:type="esdl:GasHeater" efficiency="1.0" controlStrategy="3af255a2-4951-42a3-97d6-e0c6df132086" name="Gasketel" id="c78bc017-3fec-4a60-8eba-7f7b6f15198e" power="1000000.0">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="713d4d0f-064f-4fea-93bb-f12f80642ac1" id="b3d56732-f450-47c6-bfcf-42d4226d37bd"/>
          <port xsi:type="esdl:OutPort" carrier="b62966bb-3206-454f-8a8c-0e43d8f22f97" name="In" id="46d589cd-b3e3-4cc8-b9d6-b9dcdf23dd0e" connectedTo="6bcab051-f226-4f1e-97fb-3e742697c365"/>
        </asset>
        <asset xsi:type="esdl:GasDemand" name="Procesgebonden gasgebruik" id="99700d2d-b530-4f53-9587-cdeb607e6a7b">
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="713d4d0f-064f-4fea-93bb-f12f80642ac1" id="0b166f24-c57b-4d3e-82e3-cd9bec41fe66">
            <profile xsi:type="esdl:InfluxDBProfile" measurement="bedrijfstijden_profielen" host="http://influxdb" port="8086" name="bedrijfstijden_profielen_5_werkdagen_07-18_uur" id="c8278f1a-5a90-4087-8694-380496bd8da5" profileType="ENERGY_IN_TJ" database="energy_profiles" multiplier="2.3780788947915337" field="5_werkdagen_07-18_uur"/>
          </port>
        </asset>
        <asset xsi:type="esdl:EConnection" assetType="GVB" name="Aansluiting Elektriciteit" id="cb902075-9972-4db0-8277-2ceb7642c373">
          <port xsi:type="esdl:OutPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="Out" id="32843765-ae35-489e-aa05-902227894fbe" connectedTo="451d1f92-bfd0-4f77-b663-50bece13988b c865145f-d0bb-4e2c-92ae-574d40e2d1c2"/>
          <port xsi:type="esdl:InPort" carrier="30c1b7ac-3e88-4736-8096-21fc82367514" name="In" connectedTo="2e3a52b5-d6ab-4598-b7f7-033d8d785217" id="f51d39ad-b6e7-418f-a9f2-eb2441681e56"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="Aansluiting Gas" id="5bcf8a24-ffbf-47c9-b38e-806d16c6a00f">
          <port xsi:type="esdl:OutPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="Out" id="713d4d0f-064f-4fea-93bb-f12f80642ac1" connectedTo="b3d56732-f450-47c6-bfcf-42d4226d37bd 0b166f24-c57b-4d3e-82e3-cd9bec41fe66"/>
          <port xsi:type="esdl:InPort" carrier="81d05cce-0eb1-4adf-abe4-ce50d7d65ced" name="In" connectedTo="b995a9f9-f2c9-4403-946a-7268b655a2fd" id="35b01cd1-77ff-48fa-bfb0-567d4f35f9c6"/>
        </asset>
      </asset>
    </area>
  </instance>
  <services xsi:type="esdl:Services" id="a699abd2-63d7-48f3-b2b1-afcc7a69e85c">
    <service xsi:type="esdl:DrivenByDemand" energyAsset="ef454b9f-8a05-4860-8c0d-12de4607ec4e" name="DbD voor gasketel" outPort="9ae55e1e-6c1a-47a6-963f-64a1eb406fb1" id="ed04da20-615f-4256-8984-8fb580df8199"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="b1a6e22b-5136-4462-a4b0-f324a315a37b" name="DbD voor gasketel" outPort="c8156f5f-de46-4701-8683-769c4e38d11c" id="6012a35e-3f57-40a8-b5e8-70702803d556"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="1ada140d-cf57-4831-b3ec-86b9bbefe6e1" name="DbD voor gasketel" outPort="a05535fa-1da2-4000-a2d5-2c5cd3f93535" id="a3185595-c4e0-480f-b195-c10d2e1b1bed"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="eaf56b0c-5a57-41ed-ba5c-84414da8a8b4" name="DbD voor gasketel" outPort="6dc71a66-b4a6-4b1e-b8ea-bf179b43c9f5" id="0ea3a8d7-5b21-47f2-8137-8cf8090e2414"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="414c9e0b-238a-4ec4-b29e-45bc1a8692e6" name="DbD voor gasketel" outPort="210a4ab3-c9a0-4779-9885-6fff3b2c27a8" id="60227bea-638b-41ca-aa51-4b300049995e"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="c6507cfd-ac8b-490e-8ef7-9a57b89551ea" name="DbD voor gasketel" outPort="da7546be-3c7f-43f3-b700-0f81c359482d" id="ba495925-ee7d-4400-b53f-e5663a37c23a"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="bdfecc94-8c1f-42e3-b94a-8310ce161dd5" name="DbD voor gasketel" outPort="7d18c62f-c90a-4de5-a815-4aad9822f21f" id="873dc3f6-74a4-4993-8056-f0d5b999cf85"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="9b6b43f7-8e7f-40f6-ab89-834f932aa039" name="DbD voor gasketel" outPort="c7dc73e9-105d-4161-a7f0-21cc559c2f1d" id="1b611a22-f12a-456b-8e37-7583b038343b"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="c569f1d5-6a05-4f61-a1f0-a4fe4a5a63ca" name="DbD voor gasketel" outPort="1b4aba30-0ebb-4d69-a683-759edfec0c82" id="b48c23b1-5707-4623-a6c2-a660ddc0e988"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="4705b88a-ddcf-46c7-aba3-00d591dcced1" name="DbD voor gasketel" outPort="3c839eaa-6ff1-4745-b417-7f6d7f47523c" id="093fa5f4-a242-479a-9949-7d921eb20b87"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="90d7bfa9-d9b4-494c-9621-3438fbf82c6f" name="DbD voor gasketel" outPort="aefa763d-0eac-464d-8938-7add3ecae48d" id="6c04cc8e-09c3-4ad2-80bf-80c4ebd702d2"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="bcee3386-d3e8-4a33-9781-64e14e9ba36a" name="DbD voor gasketel" outPort="bf7b7c19-3942-47f3-9532-de38cf3024e9" id="106e53d3-c877-454e-8c4a-1bd7ce792e37"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="092a9cf9-9966-45df-9460-7a92522b385f" name="DbD voor gasketel" outPort="d5f609a5-e1e7-4296-a2ff-4e047ebf74eb" id="099ed385-40c5-412a-a7bb-e748d9331fe4"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="7627e2cc-18f4-4166-bfcc-5b62491814e7" name="DbD voor gasketel" outPort="4d20e85e-fff2-4994-bf85-cbb47cdbf42f" id="64d2a4e9-b407-4cd7-8b14-7d53bf22b06c"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="3d60e58c-107d-4ef9-b671-b3b147a55433" name="DbD voor gasketel" outPort="5eba3499-051f-46e9-a6ce-18bc1c75a45d" id="53580265-da6a-49e0-ba80-02ec41b09eaa"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="9c618e23-7e01-40b7-90c7-d4c516e8705b" name="DbD voor gasketel" outPort="eb27b6d4-b0a6-45f1-b3b7-f60050235d03" id="6fd0ffb7-05c2-4896-a88f-d39c28104ba1"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="44007adf-79ba-4715-85aa-21e5738e1ffa" name="DbD voor gasketel" outPort="d99b2136-bf15-451c-a90e-cd36017faf78" id="fdc02c8f-18de-4edd-8c20-9e52ff6f8328"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="5ce73801-0bff-42b2-8f8d-8e2d47153608" name="DbD voor gasketel" outPort="7421dc1e-164b-4927-875b-a569a59498a2" id="2d23e275-e948-460c-ab55-aaf526f239e2"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="f0ec8a67-b775-484d-b140-91901b64da9a" name="DbD voor gasketel" outPort="68e3e62a-53d9-403c-90d2-6aa70e96d0c1" id="53c1c0c2-60f0-4b80-aa11-3dbded6e17fe"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="2c3af962-138e-497a-a50c-5a63e3f2457e" name="DbD voor gasketel" outPort="84f045bc-dcd8-4adb-8614-105a8e018363" id="ecc0be55-b4c2-4c7b-91a3-6cb9954dc47a"/>
    <service xsi:type="esdl:DrivenByDemand" energyAsset="c78bc017-3fec-4a60-8eba-7f7b6f15198e" name="DbD voor gasketel" outPort="46d589cd-b3e3-4cc8-b9d6-b9dcdf23dd0e" id="3af255a2-4951-42a3-97d6-e0c6df132086"/>
  </services>
</esdl:EnergySystem>
