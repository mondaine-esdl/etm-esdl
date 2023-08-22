<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" esdlVersion="v2102" description="Solar panel" version="42" name="MACRO 13" id="3beab53e-f956-45ac-9fd0-05ba03fb3b84">
  <instance xsi:type="esdl:Instance" id="1cb40fb5-7c19-43b0-b88d-406aaaf2fbd3">
    <date xsi:type="esdl:InstanceDate" date="2050-01-01T00:00:00.000000"/>
    <area xsi:type="esdl:Area" id="nl2019" name="Nederland">
      <asset xsi:type="esdl:GasNetwork" name="GasNetwork_3447" id="34470ca7-9895-4118-9232-3fbf2f790c7a">
        <geometry xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
        <port xsi:type="esdl:InPort" connectedTo="7e6d62b5-a72a-4b3c-b298-c9b7cef7cda0 c25dabc9-0151-4f4b-91a8-02d651522b3d" name="In" id="635530e4-fd2a-421d-919e-b4dbb1492297" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="f40d4744-986c-4277-a17e-5189a1e4c030 8cfc5e6d-90c6-488b-8980-1aabf70ebb4f cc1a6805-75e8-4197-b0e4-1911cccfd71b" name="Out" id="a377b420-d1fc-4ae2-ab0d-888ff069faad" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="HYDROGEN" aggregated="true" power="162737037.48245242" technicalLifetime="13.0" type="CAR" efficiency="1.35454" originalIdInSource="transport_car_using_hydrogen" name="MobilityDemand_h2Car_7a45" id="7a45670d-5aba-405a-94e6-47ce6c141435">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.08894703028796" lon="5.060577392578126"/>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset/blob/master/nodes_source_analyses/energy/transport/transport_car_using_hydrogen.converter.xlsx"/>
        <port xsi:type="esdl:InPort" connectedTo="ab3a0854-1a7b-4a8a-a244-8ba413561f31" name="In" id="646708fc-a862-4526-b0fd-4a45eea18c38" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103">
          <profile xsi:type="esdl:SingleValue" value="5132075214046532.0" name="Yearly demand">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="JOULE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="HYDROGEN" aggregated="true" power="1346560876.7453334" technicalLifetime="12.0" type="TRUCK" efficiency="1.34274" originalIdInSource="transport_truck_using_hydrogen" name="MobilityDemand_h2Van_c7a5" id="c7a59334-5290-41dc-98b4-95a842344741">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.091900237373906" lon="5.060706138610841"/>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset/blob/master/nodes_source_analyses/energy/transport/transport_truck_using_hydrogen.converter.xlsx"/>
        <port xsi:type="esdl:InPort" connectedTo="0797fe1d-bd98-4fec-a7c2-e48fd5a89690" name="In" id="db34035e-cf1b-4eee-8b9a-a5cd978d0c88" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103">
          <profile xsi:type="esdl:SingleValue" value="4.2465143809040104e+16" name="Yearly demand">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="JOULE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="HYDROGEN" aggregated="true" power="547974648.266366" technicalLifetime="12.0" type="VAN" efficiency="0.03104" originalIdInSource="transport_van_using_hydrogen" name="MobilityDemand_h2Truck_ac31" id="ac31f9cb-9168-4b42-b620-e5d90e6c738d">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.091952971438346" lon="5.066542625427247"/>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset/blob/master/nodes_source_analyses/energy/transport/transport_van_using_hydrogen.converter.xlsx"/>
        <port xsi:type="esdl:InPort" connectedTo="c7cf9c47-c265-41b8-911c-b867bffbb1ef" name="In" id="aa9ffbfb-dd77-46cf-b253-7f2217495cf4" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103">
          <profile xsi:type="esdl:SingleValue" value="1.728092850772782e+16" name="Yearly demand">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="JOULE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Electrolyzer" fullLoadHours="2989" power="10000000.0" technicalLifetime="25.0" efficiency="0.67" originalIdInSource="energy_hydrogen_flexibility_p2g_electricity" name="Electrolyzer_b243" id="b243c807-ce6a-4625-8d24-7c2b57ac1ce3">
        <geometry xsi:type="esdl:Point" lat="52.08849875855484" lon="5.064654350280763"/>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset-public/blob/master/nodes_source_analyses/energy/energy/energy_hydrogen_flexibility_p2g_electricity.converter.xlsx"/>
        <port xsi:type="esdl:InPort" connectedTo="a582e9fe-35f7-4a8a-9c5a-178db8ed8ea6" name="In" id="0700e32c-5105-4596-b15e-7b8d37269a2f" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="5959232b-a2fa-4139-95ec-ecee0f720475" name="Out" id="d530c592-ce26-478b-b736-a55104b2ac61" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" value="20.0" name="Fixed operation and maintenance costs (per year)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" description="Cost in EUR/kW/yr" perMultiplier="KILO" perUnit="WATT" unit="EURO" physicalQuantity="COST"/>
          </fixedOperationalAndMaintenanceCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="06f22f1d-a0df-4cb5-bc78-dbf6b207bc00" value="23.58">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST" id="137354af-6812-4d74-aa0a-4a1ebb53f205"/>
          </marginalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="700.0" name="Initial investment (excl CCS)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" perUnit="WATT" perMultiplier="KILO" unit="EURO" physicalQuantity="COST"/>
          </investmentCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="9fa772e4-bbe6-4dc5-9273-b740ba19766a" attributeReference="power" name="PowerConstraint">
          <range xsi:type="esdl:Range" id="2c97beb4-155d-47d2-a390-74d4712da7a9" name="PowerRange" maxValue="20.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="powerInGW"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:Import" fullLoadHours="2000" power="5000000.0" name="Import_a3ac" id="a3ac6459-54f5-4345-95bd-3384d1a976e1">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.089975401365436" lon="5.0737953186035165"/>
        <port xsi:type="esdl:OutPort" connectedTo="4ec627f4-f767-4676-ae14-1855732f4cc4" name="Out" id="1d054f21-810e-4456-8a5e-6abeff51aff3" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:WindTurbine" technicalLifetime="25.0" originalIdInSource="energy_power_wind_turbine_inland or energy_power_wind_turbine_coastal" surfaceArea="200000" fullLoadHours="3000" power="3000000.0" name="WindTurbine_6411" id="64119197-a2d1-49d9-971a-08b978b99448">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lat="52.08615185068389" lon="5.067787170410157"/>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset-public/blob/master/nodes_source_analyses/energy/energy/energy_power_wind_turbine_inland.central_producer.xlsx"/>
        <port xsi:type="esdl:OutPort" connectedTo="5a3c9491-18ff-4f8c-80a7-45a19b901d60" name="Out" id="9b34bc49-f9f0-4335-9ac0-3b6ac2cc8575" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <costInformation xsi:type="esdl:CostInformation">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" value="10.0" name="Fixed operation and maintenance costs (per year)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" description="Cost in EUR/kW/yr" perMultiplier="KILO" perUnit="WATT" unit="EURO" physicalQuantity="COST"/>
          </fixedOperationalAndMaintenanceCosts>
          <variableOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="33255c10-bd94-4e81-9e3a-589abb2875bd" value="0.713888889">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perUnit="WATTHOUR" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST" id="fb92df49-39bb-4594-8d42-7d0fce4db04c"/>
          </variableOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" value="1103.0" name="Initial investment (excl CCS)" interpolationMethod="NONE">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" perUnit="WATT" perMultiplier="KILO" unit="EURO" physicalQuantity="COST"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="f36f6a1e-b9a2-472c-80f1-57f4db27d891">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST" id="ae21edee-07d1-4df1-86c5-8a4233d30404"/>
          </marginalCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="d0e08b2b-390a-4489-accd-fe639e424676" attributeReference="power" name="PowerConstraint">
          <range xsi:type="esdl:Range" id="8bdf07f1-f43f-42c0-a4bc-e7ff73915312" name="PowerRange" maxValue="60.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="powerInGW"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:PVPark" technicalLifetime="25.0" panelEfficiency="0.17" originalIdInSource="energy_power_solar_pv_solar_radiation" surfaceArea="113328" fullLoadHours="867" power="11332800.0" name="PVPark_37e4" id="37e43704-0b9e-49a3-97da-99f25c50ff7e">
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="52.08692706351441" lon="5.059525966644288"/>
            <point xsi:type="esdl:Point" lat="52.087494398998096" lon="5.0632596015930185"/>
            <point xsi:type="esdl:Point" lat="52.0835228991396" lon="5.0630879402160645"/>
            <point xsi:type="esdl:Point" lat="52.08418264120317" lon="5.05798101425171"/>
          </exterior>
        </geometry>
        <dataSource xsi:type="esdl:DataSource" name="ETM" reference="https://github.com/quintel/etdataset-public/blob/master/nodes_source_analyses/energy/energy/energy_chp_local_engine_biogas.xlsx"/>
        <port xsi:type="esdl:OutPort" connectedTo="566b5ddf-f455-4416-8518-68839d6cb5a1" name="Out" id="40f4bd95-b5f4-41fe-bc8e-1e8fe92b982e" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <costInformation xsi:type="esdl:CostInformation">
          <marginalCosts xsi:type="esdl:SingleValue">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST"/>
          </marginalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="b0a0f14b-5331-4c95-8a5f-839e542fd675" value="871.76">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" perUnit="WATT" perMultiplier="KILO" unit="EURO" physicalQuantity="COST" id="50a540d2-14bc-4795-9e25-4d760516b1a9"/>
          </investmentCosts>
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="148ea2fe-f67d-4fd1-a6a0-a67d66ad974d" value="12.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" description="Cost in EUR/kW/yr" perMultiplier="KILO" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="77b9af3d-8ea7-4a49-894e-7d35a2b68987"/>
          </fixedOperationalAndMaintenanceCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="bbab736b-9538-4536-92e0-d64ce5869170" attributeReference="power" name="PowerConstraint">
          <range xsi:type="esdl:Range" id="9b30926f-5857-49f1-92d4-f594151412b4" name="PowerRange" maxValue="20.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="powerInGW"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:Pipe" length="284.9" name="Pipe_d5ec" id="d5ec770e-f602-4a53-b94e-c36965328141" capacity="100000000.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
          <point xsi:type="esdl:Point" lat="52.091952971438346" lon="5.066542625427247"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="f40d4744-986c-4277-a17e-5189a1e4c030" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="aa9ffbfb-dd77-46cf-b253-7f2217495cf4" name="Out" id="c7cf9c47-c265-41b8-911c-b867bffbb1ef" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="300.6" name="Pipe_6385" id="63856b13-fe23-43d8-9bc4-964b16bd1157" capacity="100000000.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
          <point xsi:type="esdl:Point" lat="52.091900237373906" lon="5.060706138610841"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="8cfc5e6d-90c6-488b-8980-1aabf70ebb4f" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="db34035e-cf1b-4eee-8b9a-a5cd978d0c88" name="Out" id="0797fe1d-bd98-4fec-a7c2-e48fd5a89690" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="251.8" name="Pipe_a827" id="a8276ff2-7d30-4c55-89c1-0aced8e9d665" capacity="100000000.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
          <point xsi:type="esdl:Point" lat="52.08894703028796" lon="5.060577392578126"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="a377b420-d1fc-4ae2-ab0d-888ff069faad" name="In" id="cc1a6805-75e8-4197-b0e4-1911cccfd71b" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="646708fc-a862-4526-b0fd-4a45eea18c38" name="Out" id="ab3a0854-1a7b-4a8a-a244-8ba413561f31" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:Pipe" length="176.2" name="Pipe_6a5b" id="6a5b3b24-6a8c-4439-a8d2-fcf89f23a94c" capacity="100000000.0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08849875855484" lon="5.064654350280763"/>
          <point xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="d530c592-ce26-478b-b736-a55104b2ac61" name="In" id="5959232b-a2fa-4139-95ec-ecee0f720475" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="635530e4-fd2a-421d-919e-b4dbb1492297" name="Out" id="7e6d62b5-a72a-4b3c-b298-c9b7cef7cda0" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:Battery" capacity="2.2e+16" maxDischargeRate="2444444444444.0" maxChargeRate="2444444444444.0" selfDischargeRate="7610361.111" dischargeEfficiency="1.0" name="Battery_082c" chargeEfficiency="0.8475" id="082ce57c-5559-42f9-8f4f-51a11195994b">
        <geometry xsi:type="esdl:Point" lat="52.085083834889716" lon="5.0556421279907235"/>
        <port xsi:type="esdl:InPort" connectedTo="27a1da67-1272-42d1-a689-bc0fce944065" name="In" id="53fd334a-365c-48d5-a284-c7ca66c76363" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <costInformation xsi:type="esdl:CostInformation" id="3db45f76-5dd6-4820-8657-f15693de819e">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="455ba551-291f-4966-9750-60b3b379b256" value="0.003514">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" description="Cost in EUR/kW/yr" perMultiplier="KILO" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="e7ae9f2a-1214-4028-9e2e-016a84e9c153"/>
          </fixedOperationalAndMaintenanceCosts>
          <variableOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="2afdfc30-8bbb-484d-bc61-aaceb35716a7" value="0.201388889">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perUnit="WATTHOUR" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST" id="d86d1fcc-57b8-4779-bc56-e09a8544c8f6"/>
          </variableOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="aecf416a-f578-48a7-8a85-0f6bc8d13e9a" value="176.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" perUnit="WATT" perMultiplier="KILO" unit="EURO" physicalQuantity="COST" id="57a9aa74-7e43-48b4-ada4-2fe5e4644bc7"/>
          </investmentCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="c23e9251-d4bb-4284-9983-3d929906aabc" attributeReference="capacity" name="CapacityConstraint">
          <range xsi:type="esdl:Range" id="ad46f94a-f387-403a-9c7a-ab7c0f551ac3" name="EnergyRange" maxValue="22.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="energyInPJ"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:PowerPlant" fuel="URANIUM" power="15000000.0" efficiency="1.0" name="NuclearPowerPlant_f521" id="f521a519-9c80-4661-a66c-e6a035adce2c">
        <geometry xsi:type="esdl:Point" lat="52.08789226610088" lon="5.07345199584961"/>
        <port xsi:type="esdl:OutPort" connectedTo="2da59a7d-dd49-401c-9ce6-de1c7ee49b9c" name="Out" id="afaeff88-cc8a-4397-b6cf-84d48d5a70a8" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <costInformation xsi:type="esdl:CostInformation" id="ea2fafa9-0fd2-419d-b9ff-f55542816edb">
          <fixedOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="3b30600f-4dae-48c4-a8d4-b3b39f9d222e" value="77.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" perTimeUnit="YEAR" description="Cost in EUR/kW/yr" perMultiplier="KILO" perUnit="WATT" unit="EURO" physicalQuantity="COST" id="5793ba81-596d-4f60-b5ab-923d361416c3"/>
          </fixedOperationalAndMaintenanceCosts>
          <variableOperationalAndMaintenanceCosts xsi:type="esdl:SingleValue" id="cf049c21-8cfb-4c44-9100-f5592bf360db" value="0.686111">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/MWh" perUnit="WATTHOUR" perMultiplier="MEGA" unit="EURO" physicalQuantity="COST" id="5f557692-a0c9-45dd-9fa9-c2d8fd51b013"/>
          </variableOperationalAndMaintenanceCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="9ed833dc-1366-4c64-bda4-d9e6df62b950" value="6318.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/kW" perUnit="WATT" perMultiplier="KILO" unit="EURO" physicalQuantity="COST" id="6122a243-5c0d-4f84-a75d-ae79930ef86a"/>
          </investmentCosts>
        </costInformation>
        <constraint xsi:type="esdl:RangedConstraint" id="679292b5-ca04-47ed-b844-edadcc1a851d" attributeReference="power" name="PowerConstraint">
          <range xsi:type="esdl:Range" id="3d822715-bd29-4489-9cf6-9233e5030dba" name="PowerRange" maxValue="15.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="powerInGW"/>
          </range>
        </constraint>
      </asset>
      <asset xsi:type="esdl:Pipe" length="680.2" name="Pipe_90c7" id="90c750ac-0da7-4c9c-806f-c209813b4126">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.089975401365436" lon="5.0737953186035165"/>
          <point xsi:type="esdl:Point" lat="52.09000176954296" lon="5.063838958740235"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="1d054f21-810e-4456-8a5e-6abeff51aff3" name="In" id="4ec627f4-f767-4676-ae14-1855732f4cc4" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
        <port xsi:type="esdl:OutPort" connectedTo="635530e4-fd2a-421d-919e-b4dbb1492297" name="Out" id="c25dabc9-0151-4f4b-91a8-02d651522b3d" carrier="b2418fd5-d4f8-451f-ae4e-6171b1e71103"/>
      </asset>
      <asset xsi:type="esdl:ElectricityNetwork" name="ElectricityNetwork_db77" id="db777383-6bd8-4e34-b38b-8e98e58c1f86">
        <geometry xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
        <port xsi:type="esdl:InPort" connectedTo="d299818d-2859-4357-85b1-9562b3927c0b 4be502a0-b54f-4e1c-9b74-469a8e7ea22f b231ca53-083e-4465-9827-ee35588f5f9c" name="In" id="21a0abf6-95b0-4b9a-9211-68e96e5cea0d" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="b5aa0e4d-fc6d-460a-beaa-d99132712776 1420751d-903f-4f6a-96d9-1a608438cb56 b772afcc-c499-447c-b271-85a78a7ad6b3 7cc24dd1-04ba-47d0-af5c-d89343248edf 8e9135c7-5c07-4d61-8c36-83f1a94b79d5" name="Out" id="0333a271-111b-4d95-9c34-1ab84bff565e" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="309.5" name="ElectricityCable_d1de" id="d1deef89-6f2e-4c71-9de0-7f0009654164">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08542385533057" lon="5.0610690837579435"/>
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="40f4bd95-b5f4-41fe-bc8e-1e8fe92b982e" name="In" id="566b5ddf-f455-4416-8518-68839d6cb5a1" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="21a0abf6-95b0-4b9a-9211-68e96e5cea0d" name="Out" id="d299818d-2859-4357-85b1-9562b3927c0b" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="ELECTRICITY" type="TRUCK" name="MobilityDemand_eTruck_b8df" id="b8dfbde7-f92c-49d4-ad14-e24c7e0d860d" efficiency="1.0">
        <geometry xsi:type="esdl:Point" lat="52.08968535038432" lon="5.053603649139405"/>
        <port xsi:type="esdl:InPort" connectedTo="de3e0695-4999-4e9f-8583-9587b031e809" name="In" id="22e0e35a-c839-4ff3-a57c-3bd01ed9139c" carrier="67d4305b-4a8c-4163-be55-087bb77a3663">
          <profile xsi:type="esdl:SingleValue" id="94cef404-8fb3-4ed1-a3c1-95beed9c004d" value="16300000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eb07bccb-203f-407e-af98-e687656a221d"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="ELECTRICITY" type="VAN" name="MobilityDemand_eVan_3b7d" id="3b7d3605-7617-4840-afd3-14bc761b7a38"  efficiency="1.0">
        <geometry xsi:type="esdl:Point" lat="52.08878881724934" lon="5.051844120025636"/>
        <port xsi:type="esdl:InPort" connectedTo="4ec037a8-75cf-4f43-a397-38c1c5b636e4" name="In" id="12cba40b-7bbc-402a-9e33-c43170ae1e99" carrier="67d4305b-4a8c-4163-be55-087bb77a3663">
          <profile xsi:type="esdl:SingleValue" id="2de78ac6-5978-415f-bf99-3558344d89dd" value="5720000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eb07bccb-203f-407e-af98-e687656a221d"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:MobilityDemand" fuelType="ELECTRICITY" type="CAR" name="MobilityDemand_eCar_e584" id="e584f0f7-3a7c-49a1-a0de-6609abf5166b"  efficiency="1.0">
        <geometry xsi:type="esdl:Point" lat="52.08747035344503" lon="5.052552223205566"/>
        <port xsi:type="esdl:InPort" connectedTo="2038f34b-98d7-4b6d-a1e5-409ff61e71c1" name="In" id="70508362-737b-4820-b6bf-322de1af650d" carrier="67d4305b-4a8c-4163-be55-087bb77a3663">
          <profile xsi:type="esdl:SingleValue" id="f35e5ad8-a0e5-41ce-87de-b171a9115e54" value="64670000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="eb07bccb-203f-407e-af98-e687656a221d"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="361.9" name="ElectricityCable_95f7" id="95f746ae-eb42-4821-9e81-649a1057d0d0">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
          <point xsi:type="esdl:Point" lat="52.08954032418669" lon="5.053882598876953"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0333a271-111b-4d95-9c34-1ab84bff565e" name="In" id="b5aa0e4d-fc6d-460a-beaa-d99132712776" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="22e0e35a-c839-4ff3-a57c-3bd01ed9139c" name="Out" id="de3e0695-4999-4e9f-8583-9587b031e809" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="408.9" name="ElectricityCable_dd65" id="dd65c274-7139-4437-9ff6-2e204112fec8">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
          <point xsi:type="esdl:Point" lat="52.08868334157857" lon="5.052165985107423"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0333a271-111b-4d95-9c34-1ab84bff565e" name="In" id="1420751d-903f-4f6a-96d9-1a608438cb56" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="12cba40b-7bbc-402a-9e33-c43170ae1e99" name="Out" id="4ec037a8-75cf-4f43-a397-38c1c5b636e4" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="324.4" name="ElectricityCable_76c8" id="76c843a9-81a9-4e7d-acb9-3ae4262fabeb">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
          <point xsi:type="esdl:Point" lat="52.087430798929006" lon="5.052959918975831"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0333a271-111b-4d95-9c34-1ab84bff565e" name="In" id="b772afcc-c499-447c-b271-85a78a7ad6b3" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="70508362-737b-4820-b6bf-322de1af650d" name="Out" id="2038f34b-98d7-4b6d-a1e5-409ff61e71c1" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="253.5" name="ElectricityCable_8ba7" id="8ba73979-f258-4acc-9491-21eb03318904">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
          <point xsi:type="esdl:Point" lat="52.08530798847198" lon="5.055856704711915"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0333a271-111b-4d95-9c34-1ab84bff565e" name="Port" id="8e9135c7-5c07-4d61-8c36-83f1a94b79d5" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="53fd334a-365c-48d5-a284-c7ca66c76363" name="NewOutPort" id="27a1da67-1272-42d1-a689-bc0fce944065" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="700.5" name="ElectricityCable_94a6" id="94a67508-6d9d-46ce-a5f0-ff04e9325f48">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08615185068389" lon="5.067787170410157"/>
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="9b34bc49-f9f0-4335-9ac0-3b6ac2cc8575" name="In" id="5a3c9491-18ff-4f8c-80a7-45a19b901d60" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="21a0abf6-95b0-4b9a-9211-68e96e5cea0d" name="Out" id="4be502a0-b54f-4e1c-9b74-469a8e7ea22f" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="493.8" name="ElectricityCable_3dea" id="3dea698c-8847-4779-82ee-f58127e62764">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
          <point xsi:type="esdl:Point" lat="52.08849875855484" lon="5.064654350280763"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0333a271-111b-4d95-9c34-1ab84bff565e" name="In" id="7cc24dd1-04ba-47d0-af5c-d89343248edf" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="0700e32c-5105-4596-b15e-7b8d37269a2f" name="Out" id="a582e9fe-35f7-4a8a-9c5a-178db8ed8ea6" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
      <asset xsi:type="esdl:ElectricityCable" length="1078.2" name="ElectricityCable_9e89" id="9e891e39-3905-4bd3-acd9-362c6116fa91">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lat="52.08789226610088" lon="5.07345199584961"/>
          <point xsi:type="esdl:Point" lat="52.087285765403685" lon="5.057702064514161"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="afaeff88-cc8a-4397-b6cf-84d48d5a70a8" name="In" id="2da59a7d-dd49-401c-9ce6-de1c7ee49b9c" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
        <port xsi:type="esdl:OutPort" connectedTo="21a0abf6-95b0-4b9a-9211-68e96e5cea0d" name="Out" id="b231ca53-083e-4465-9827-ee35588f5f9c" carrier="67d4305b-4a8c-4163-be55-087bb77a3663"/>
      </asset>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="1b789820-f90f-459f-87b2-59fc4a385d58">
    <carriers xsi:type="esdl:Carriers" id="44d8eb44-4d6a-4f33-855a-cbf3ef9283e4">
      <carrier xsi:type="esdl:GasCommodity" name="Natural Gas" id="3cc3baa0-f1bd-44ba-bf75-2263a2432207">
        <cost xsi:type="esdl:SingleValue" id="396aa714-2852-49e4-b367-1b2d7a767a1b" value="40.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/J" perUnit="JOULE" unit="EURO" physicalQuantity="COST" id="bbf3c069-e51a-4b5d-b8e4-7393052e48d9"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:GasCommodity" name="Hydrogen" id="b2418fd5-d4f8-451f-ae4e-6171b1e71103">
        <cost xsi:type="esdl:SingleValue" id="8ddad72b-ce13-4253-9bed-931e6de9c500" value="5.0">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Cost in EUR/J" perUnit="JOULE" unit="EURO" physicalQuantity="COST" id="58ad229c-4dd5-4ea9-bc72-1c67f28772d0"/>
        </cost>
      </carrier>
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="67d4305b-4a8c-4163-be55-087bb77a3663">
        <cost xsi:type="esdl:SingleValue" id="69f7e706-d147-450a-af8e-95d3bc7ccd1f" value="46.24885079184887">
          <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="eur/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO" physicalQuantity="COST"/>
        </cost>
      </carrier>
    </carriers>
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="3badba03-4d8b-44f5-b489-87fbcb1e7bf4" name="QuantityAndUnits">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="PowerInGW" unit="WATT" multiplier="GIGA" physicalQuantity="POWER" id="powerInGW"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="EnergyInPJ" unit="JOULE" physicalQuantity="ENERGY" multiplier="PETA" id="energyInPJ"/>
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" description="Energy in GJ" unit="JOULE" multiplier="GIGA" physicalQuantity="ENERGY" id="eb07bccb-203f-407e-af98-e687656a221d"/>
    </quantityAndUnits>
    <dataSources xsi:type="esdl:DataSources" id="144a4661-4496-4904-b00a-fa2a9ffb66d5">
      <dataSource xsi:type="esdl:DataSource" id="91ce2a4f-0b8e-4114-b163-ef35ef9365a0" description="dfsdf_asda" name="NewDataSource"/>
    </dataSources>
  </energySystemInformation>
</esdl:EnergySystem>
