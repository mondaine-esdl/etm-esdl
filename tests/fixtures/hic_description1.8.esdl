<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" id="ca739827-1ad1-4d0a-951f-fb8de1c912cb" description="Energy System created from an Excel file" name="ES1">
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="6d9a8a23-ccad-457b-977d-b8bdeaced023">
    <sectors xsi:type="esdl:Sectors" id="d6ef6e3a-b37b-4d63-a27d-da8dbdfe9ed8">
      <sector xsi:type="esdl:Sector" name="Harbour Industrial Complex" id="HIC"/>
      <sector xsi:type="esdl:Sector" name="Edible Oil" id="EDOIL"/>
      <sector xsi:type="esdl:Sector" name="Chemical Feedstock" id="CHEMFEED"/>
      <sector xsi:type="esdl:Sector" name="Non Chloride" id="NONCHLO"/>
      <sector xsi:type="esdl:Sector" name="Refinery" id="REF"/>
    </sectors>
    <carriers xsi:type="esdl:Carriers" id="carrs">
      <carrier xsi:type="esdl:ElectricityCommodity" name="Electricity" id="E"/>
      <carrier xsi:type="esdl:GasCommodity" name="Fossil_Methane_H" id="FMH"/>
      <carrier xsi:type="esdl:GasCommodity" name="Green_Methane" id="GM"/>
      <carrier xsi:type="esdl:GasCommodity" name="Fossil_Methane_G" id="FMG"/>
      <carrier xsi:type="esdl:HeatCommodity" name="Steam" id="S"/>
      <carrier xsi:type="esdl:HeatCommodity" name="HT_Heat" id="HTH"/>
      <carrier xsi:type="esdl:GasCommodity" name="H2_Current" id="H2C"/>
      <carrier xsi:type="esdl:GasCommodity" name="H2" id="H2"/>
      <carrier xsi:type="esdl:GasCommodity" name="H2_Hvision" id="H2H"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Refgas" id="RG"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Petcokes" id="PC"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Heavy_Gasoil" id="HG"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Coal" id="C"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Biomass" id="BM"/>
      <carrier xsi:type="esdl:GasCommodity" name="CO2" id="CO2"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Plastic waste" id="PW"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Crude oil" id="CO"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Methanol" id="MeOH"/>
      <carrier xsi:type="esdl:EnergyCommodity" name="Oilrest" id="OR"/>
    </carriers>
  </energySystemInformation>
  <instance xsi:type="esdl:Instance" id="9a44df7a-f56c-43a7-aa12-745f8b59ebb4" name="Instance1">
    <area xsi:type="esdl:Area" sector="REF" name="RotterdamHIC" id="RotterdamHIC_area">
      <asset xsi:type="esdl:Building" name="RotterdamHIC" id="RotterdamHIC_building" sector="HIC"/>
      <asset xsi:type="esdl:ElectricityNetwork" name="ElectricityNetwork" sector="HIC" id="EN">
        <port xsi:type="esdl:InPort" carrier="E" id="EN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="EN_OP1" connectedTo="BungelodersMVB_EConnection_IP1 NesteMVB_EConnection_IP1 LyondellMVB_EConnection_IP1 BPEURA_EConnection_IP1 IndoramaEURA_EConnection_IP1 GunvorEURB_EConnection_IP1 AlcoEURC_EConnection_IP1 CaldicEURC_EConnection_IP1 ExxonEURC_EConnection_IP1 VPREURC_EConnection_IP1 ShellPER_EConnection_IP1" carrier="E" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="GasNetwork" sector="HIC" id="FMHN">
        <port xsi:type="esdl:InPort" carrier="FMH" id="FMHN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="FMHN_OP1" connectedTo="BungelodersMVB_GConnection_IP1 NesteMVB_GConnection_IP1 LyondellMVB_GConnection_IP1 BPEURA_GConnection_IP1 IndoramaEURA_GConnection_IP1 GunvorEURB_GConnection_IP1 AlcoEURC_GConnection_IP1 CaldicEURC_GConnection_IP1 ExxonEURC_GConnection_IP1 VPREURC_GConnection_IP1 ShellPER_GConnection_IP1" carrier="FMH" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="H2CNetwork" sector="HIC" id="H2CN">
        <port xsi:type="esdl:InPort" carrier="H2C" id="H2CN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="H2CN_OP1" connectedTo="BungelodersMVB_HConnection_IP1 NesteMVB_HConnection_IP1 LyondellMVB_HConnection_IP1 BPEURA_HConnection_IP1 IndoramaEURA_HConnection_IP1 GunvorEURB_HConnection_IP1 AlcoEURC_HConnection_IP1 CaldicEURC_HConnection_IP1 ExxonEURC_HConnection_IP1 VPREURC_HConnection_IP1 ShellPER_HConnection_IP1" carrier="H2C" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="H2Network" sector="HIC" id="H2N">
        <port xsi:type="esdl:InPort" carrier="H2" id="H2N_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" carrier="H2" id="H2N_OP1" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:GasNetwork" name="H2HNetwork" sector="HIC" id="H2HN">
        <port xsi:type="esdl:InPort" carrier="H2H" id="H2HN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" carrier="H2H" id="H2HN_OP1" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="SteamNetwork" sector="HIC" id="SN">
        <port xsi:type="esdl:InPort" carrier="S" id="SN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="SN_OP1" connectedTo="D2_S_IP1" carrier="S" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:EnergyNetwork" name="RefgasNetwork" sector="HIC" id="RGN">
        <port xsi:type="esdl:InPort" carrier="RG" id="RGN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="RGN_OP1" connectedTo="C8IP1 C11IP1 C18IP1 C21IP1 C63IP1 C67IP1 C70IP1 C73IP1" carrier="RG" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:EnergyNetwork" name="PetcokeNetwork" sector="HIC" id="PCN">
        <port xsi:type="esdl:InPort" carrier="PC" id="PCN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="PCN_OP1" connectedTo="C9IP1 C12IP1 C19IP1 C22IP1 C64IP1 C68IP1 C71IP1 C74IP1" carrier="PC" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:HeatNetwork" name="HTHeatNetwork" sector="HIC" id="HTHN">
        <port xsi:type="esdl:InPort" carrier="HTH" id="HTHN_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" carrier="HTH" id="HTHN_OP1" name="Out1"/>
      </asset>
      <asset xsi:type="esdl:EnergyNetwork" name="ORNetwork" sector="HIC" id="OR">
        <port xsi:type="esdl:InPort" carrier="OR" id="OR_IP1" name="In1"/>
        <port xsi:type="esdl:OutPort" id="OR_OP1" connectedTo="C65IP1" carrier="OR" name="Out1"/>
      </asset>
      <area xsi:type="esdl:Area" name="Neste_MVB" id="NesteMVB_area">
        <asset xsi:type="esdl:Building" name="Neste_MVB" sector="EDOIL" id="NesteMVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="NesteMVB" sector="EDOIL" power="10.0" id="D2_E">
            <port xsi:type="esdl:InPort" connectedTo="NesteMVB_EConnection_OP1" id="D2_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1C" name="NesteMVB_D2_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f645288b-66b8-459a-87e7-119e5e3b266d" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="NesteMVB" sector="EDOIL" power="16.0" id="D2_S">
            <port xsi:type="esdl:InPort" connectedTo="SN_OP1" id="D2_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="16.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2A" name="NesteMVB_D2_S" startDate="2018-12-31T23:00:00.000000+0000" id="E2A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="3b508750-20aa-414e-a0c2-4de70b23086c" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="NesteMVB" sector="EDOIL" power="119.0" id="D2_H2C">
            <port xsi:type="esdl:InPort" connectedTo="NesteMVB_HConnection_OP1" id="D2_H2C_IP1" carrier="H2" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="119.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2B" name="NesteMVB_D2_H2C" startDate="2018-12-31T23:00:00.000000+0000" id="E2B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c6266c0d-6efb-44b7-8d5e-4a6c14dcdc47" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="NesteMVB" sector="HIC" id="NesteMVB_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="NesteMVB_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="NesteMVB_EConnection_OP1" connectedTo="D2_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="NesteMVB" sector="HIC" id="NesteMVB_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="NesteMVB_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="FMH" id="NesteMVB_GConnection_OP1" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="NesteMVB" sector="HIC" id="NesteMVB_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="NesteMVB_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" id="NesteMVB_HConnection_OP1" connectedTo="D2_H2C_IP1" carrier="H2C" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.96447134091554" lon="4.031381607055663"/>
            <point xsi:type="esdl:Point" lat="51.96277900245963" lon="4.038591384887694"/>
            <point xsi:type="esdl:Point" lat="51.96685108376488" lon="4.040994644165038"/>
            <point xsi:type="esdl:Point" lat="51.96854326847375" lon="4.0340423583984375"/>
            <point xsi:type="esdl:Point" lat="51.96447134091554" lon="4.031381607055663"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Bungeloders_MVB" id="BungelodersMVB_area">
        <asset xsi:type="esdl:Building" name="Bungeloders_MVB" sector="CHEMFEED" id="BungelodersMVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="BungelodersMVB" sector="CHEMFEED" power="10.0" id="D1_E">
            <port xsi:type="esdl:InPort" connectedTo="BungelodersMVB_EConnection_OP1" id="D1_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1A" name="BungelodersMVB_D1_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="cbdac42b-4b37-42f7-b6d5-6860d19a1c9b" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="BungelodersMVB" sector="CHEMFEED" power="7.0" id="D1_S">
            <port xsi:type="esdl:InPort" connectedTo="C1OP1" id="D1_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="7.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1B" name="BungelodersMVB_D1_S" startDate="2018-12-31T23:00:00.000000+0000" id="E1B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="9f9b8e85-6174-4bbb-b112-238db2324996" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="BungelodersMVB" sector="CHEMFEED" power="9.0" id="C1" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="BungelodersMVB_GConnection_OP1" id="C1IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C1OP1" connectedTo="D1_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="BungelodersMVB" sector="HIC" id="BungelodersMVB_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="BungelodersMVB_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="BungelodersMVB_EConnection_OP1" connectedTo="D1_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="BungelodersMVB" sector="HIC" id="BungelodersMVB_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="BungelodersMVB_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="BungelodersMVB_GConnection_OP1" connectedTo="C1IP1 C10IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="BungelodersMVB" sector="HIC" id="BungelodersMVB_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="BungelodersMVB_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="BungelodersMVB_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.96304343455526" lon="4.038419723510741"/>
            <point xsi:type="esdl:Point" lat="51.96166837062299" lon="4.044084548950194"/>
            <point xsi:type="esdl:Point" lat="51.96568766971396" lon="4.046659469604491"/>
            <point xsi:type="esdl:Point" lat="51.96690396550417" lon="4.041337966918944"/>
            <point xsi:type="esdl:Point" lat="51.96304343455526" lon="4.038419723510741"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Lyondell_MVB" id="LyondellMVB_area">
        <asset xsi:type="esdl:Building" name="Lyondell_MVB" sector="NONCHLO" id="LyondellMVB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="LyondellMVB" sector="NONCHLO" power="10.0" id="D3_E">
            <port xsi:type="esdl:InPort" connectedTo="LyondellMVB_EConnection_OP1" id="D3_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3A" name="LyondellMVB_D3_E" startDate="2018-12-31T23:00:00.000000+0000" id="E3A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="60e30160-35d3-4619-91de-cde2fa09a3f2" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="LyondellMVB" sector="NONCHLO" power="234.0" id="D3_S">
            <port xsi:type="esdl:InPort" connectedTo="C2OP1" id="D3_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="234.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3B" name="LyondellMVB_D3_S" startDate="2018-12-31T23:00:00.000000+0000" id="E3B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="c3dce6b8-4238-491a-88f7-fe4daf8847e8" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="LyondellMVB" sector="NONCHLO" power="85.0" id="C2" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="LyondellMVB_GConnection_OP1" id="C2IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C2OP1" connectedTo="D3_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="LyondellMVB" sector="HIC" id="LyondellMVB_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="LyondellMVB_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="LyondellMVB_EConnection_OP1" connectedTo="D3_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="LyondellMVB" sector="HIC" id="LyondellMVB_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="LyondellMVB_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="LyondellMVB_GConnection_OP1" connectedTo="C2IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="LyondellMVB" sector="HIC" id="LyondellMVB_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="LyondellMVB_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="LyondellMVB_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.96838462887152" lon="4.033527374267578"/>
            <point xsi:type="esdl:Point" lat="51.96452422546275" lon="4.0312957763671875"/>
            <point xsi:type="esdl:Point" lat="51.96632226294014" lon="4.024171829223633"/>
            <point xsi:type="esdl:Point" lat="51.96447134091554" lon="4.0160179138183585"/>
            <point xsi:type="esdl:Point" lat="51.966480909842716" lon="4.014902114868164"/>
            <point xsi:type="esdl:Point" lat="51.968437508801344" lon="4.014730453491211"/>
            <point xsi:type="esdl:Point" lat="51.971768818590135" lon="4.015846252441405"/>
            <point xsi:type="esdl:Point" lat="51.97250907602367" lon="4.017820358276366"/>
            <point xsi:type="esdl:Point" lat="51.97235045046028" lon="4.020051956176758"/>
            <point xsi:type="esdl:Point" lat="51.9695479729138" lon="4.032068252563477"/>
            <point xsi:type="esdl:Point" lat="51.96912494221078" lon="4.033784866333007"/>
            <point xsi:type="esdl:Point" lat="51.96838462887152" lon="4.033527374267578"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="BP_EurA" id="BPEURA_area">
        <asset xsi:type="esdl:Building" name="BP_EurA" sector="REF" id="BPEURA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="BPEURA" sector="REF" power="171.0" id="D4_E">
            <port xsi:type="esdl:InPort" connectedTo="BPEURA_EConnection_OP1" id="D4_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="171.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3C" name="BPEURA_D4_E" startDate="2018-12-31T23:00:00.000000+0000" id="E3C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="01173fdb-b64b-4867-88f8-76e3ae70db2a" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="BPEURA" sector="REF" power="843.0" id="D4_HTH">
            <port xsi:type="esdl:InPort" connectedTo="C7OP1 C8OP1 C9OP1" id="D4_HTH_IP1" carrier="HTH" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="843.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3D" name="BPEURA_D4_HTH" startDate="2018-12-31T23:00:00.000000+0000" id="E3D">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d7aba0c7-71fe-4ad9-a064-543ca7550787" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="BPEURA" sector="REF" power="678.0" id="D4_S">
            <port xsi:type="esdl:InPort" connectedTo="C10OP1 C11OP1 C12OP1" id="D4_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="678.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E4A" name="BPEURA_D4_S" startDate="2018-12-31T23:00:00.000000+0000" id="E4A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="2de678e4-21b4-4aab-a0f0-e39ced2a5aa8" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="BPEURA" sector="REF" power="621.0" id="D4_H2C">
            <port xsi:type="esdl:InPort" connectedTo="BPEURA_HConnection_OP1" id="D4_H2C_IP1" carrier="H2" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="621.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G1A" name="BPEURA_D4_H2C" startDate="2018-12-31T23:00:00.000000+0000" id="G1A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4aa4bbfe-e74d-49d4-a498-5ca5e13d1372" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="BPEURA" sector="REF" power="150.0" id="C7" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="BPEURA_GConnection_OP1" id="C7IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C7OP1" connectedTo="D4_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="BPEURA" sector="REF" power="566.0" id="C8" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C8IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C8OP1" connectedTo="D4_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="BPEURA" sector="REF" power="162.0" id="C9" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C9IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C9OP1" connectedTo="D4_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="BPEURA" sector="REF" power="87.0" id="C10" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="BungelodersMVB_GConnection_OP1" id="C10IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C10OP1" connectedTo="D4_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="BPEURA" sector="REF" power="327.0" id="C11" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C11IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C11OP1" connectedTo="D4_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="BPEURA" sector="REF" power="93.0" id="C12" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C12IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C12OP1" connectedTo="D4_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="BPEURA" sector="HIC" id="BPEURA_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="BPEURA_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="BPEURA_EConnection_OP1" connectedTo="D4_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="BPEURA" sector="HIC" id="BPEURA_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="BPEURA_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="BPEURA_GConnection_OP1" connectedTo="C7IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="BPEURA" sector="HIC" id="BPEURA_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="BPEURA_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" id="BPEURA_HConnection_OP1" connectedTo="D4_H2C_IP1" carrier="H2C" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.959817256410304" lon="4.090604782104491"/>
            <point xsi:type="esdl:Point" lat="51.9526765283903" lon="4.115839004516602"/>
            <point xsi:type="esdl:Point" lat="51.943841609699746" lon="4.115839004516602"/>
            <point xsi:type="esdl:Point" lat="51.942254314142616" lon="4.117984771728516"/>
            <point xsi:type="esdl:Point" lat="51.94066696241654" lon="4.1178131103515625"/>
            <point xsi:type="esdl:Point" lat="51.94140773354533" lon="4.116010665893555"/>
            <point xsi:type="esdl:Point" lat="51.94172520314166" lon="4.112577438354492"/>
            <point xsi:type="esdl:Point" lat="51.940719875045716" lon="4.108285903930664"/>
            <point xsi:type="esdl:Point" lat="51.93886789589058" lon="4.10614013671875"/>
            <point xsi:type="esdl:Point" lat="51.93823291400881" lon="4.105968475341796"/>
            <point xsi:type="esdl:Point" lat="51.940719875045716" lon="4.085369110107422"/>
            <point xsi:type="esdl:Point" lat="51.94299505905917" lon="4.083051681518555"/>
            <point xsi:type="esdl:Point" lat="51.94701603231016" lon="4.08416748046875"/>
            <point xsi:type="esdl:Point" lat="51.959817256410304" lon="4.090604782104491"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Indorama_EurA" id="IndoramaEURA_area">
        <asset xsi:type="esdl:Building" name="Indorama_EurA" sector="NONCHLO" id="IndoramaEURA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="IndoramaEURA" sector="NONCHLO" power="10.0" id="D5_E">
            <port xsi:type="esdl:InPort" connectedTo="C14OP2" id="D5_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G2A" name="IndoramaEURA_D5_E" startDate="2018-12-31T23:00:00.000000+0000" id="G2A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="0e6a2845-659a-411e-adcb-87cc96f77866" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="IndoramaEURA" sector="NONCHLO" power="32.0" id="D5_S">
            <port xsi:type="esdl:InPort" connectedTo="C14OP1" id="D5_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="32.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G2C" name="IndoramaEURA_D5_S" startDate="2018-12-31T23:00:00.000000+0000" id="G2C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="01841947-b9a0-4c8b-ba1e-08ca39c2cf88" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" CHPType="GAS_TURBINE" assetType="Cogen" name="IndoramaEURA" heatEfficiency="0.49" sector="NONCHLO" power="91.0" id="C14" electricalEfficiency="0.31">
            <port xsi:type="esdl:InPort" connectedTo="IndoramaEURA_GConnection_OP1" id="C14IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C14OP1" connectedTo="D5_S_IP1" carrier="S" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C14OP2" connectedTo="D5_E_IP1" carrier="E" name="Out2"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="IndoramaEURA" sector="HIC" id="IndoramaEURA_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="IndoramaEURA_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="E" id="IndoramaEURA_EConnection_OP1" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="IndoramaEURA" sector="HIC" id="IndoramaEURA_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="IndoramaEURA_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="IndoramaEURA_GConnection_OP1" connectedTo="C14IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="IndoramaEURA" sector="HIC" id="IndoramaEURA_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="IndoramaEURA_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="IndoramaEURA_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.95976436630957" lon="4.0907764434814435"/>
            <point xsi:type="esdl:Point" lat="51.95690820820573" lon="4.100990295410155"/>
            <point xsi:type="esdl:Point" lat="51.9621972463581" lon="4.105281829833983"/>
            <point xsi:type="esdl:Point" lat="51.96404826229181" lon="4.096956253051757"/>
            <point xsi:type="esdl:Point" lat="51.96225013358844" lon="4.095582962036132"/>
            <point xsi:type="esdl:Point" lat="51.96351940839634" lon="4.091291427612303"/>
            <point xsi:type="esdl:Point" lat="51.96198569681289" lon="4.090604782104491"/>
            <point xsi:type="esdl:Point" lat="51.961139488647916" lon="4.0907764434814435"/>
            <point xsi:type="esdl:Point" lat="51.95976436630957" lon="4.0907764434814435"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="ADM_EurA" id="ADMEURA_area">
        <asset xsi:type="esdl:Building" name="ADM_EurA" sector="EDOIL" id="ADMEURA_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ADMEURA" sector="EDOIL" power="10.0" id="D6_E">
            <port xsi:type="esdl:InPort" connectedTo="C15OP2" id="D6_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1A" name="BungelodersMVB_D1_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="58de8719-a999-442a-95d7-9218f046b2a0" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ADMEURA" sector="EDOIL" power="53.0" id="D6_S">
            <port xsi:type="esdl:InPort" connectedTo="C15OP1 C16OP1" id="D6_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="53.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1B" name="BungelodersMVB_D1_S" startDate="2018-12-31T23:00:00.000000+0000" id="E1B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="20a0e5ad-dac8-4469-873c-410d65eaf1d6" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" assetType="Cogen" type="GAS_MOTOR" name="ADMEURA" heatEfficiency="0.49" sector="EDOIL" power="70.0" id="C15" electricalEfficiency="0.31">
            <port xsi:type="esdl:InPort" connectedTo="ADMEURA_GConnection_OP1" id="C15IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C15OP1" connectedTo="D6_S_IP1" carrier="S" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C15OP2" connectedTo="D6_E_IP1" carrier="E" name="Out2"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="ADMEURA" sector="EDOIL" power="23.0" id="C16" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="ADMEURA_GConnection_OP1" id="C16IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C16OP1" connectedTo="D6_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="ADMEURA" sector="HIC" id="ADMEURA_EConnection">
          <port xsi:type="esdl:InPort" carrier="E" id="ADMEURA_EConnection_IP1" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="E" id="ADMEURA_EConnection_OP1" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="ADMEURA" sector="HIC" id="ADMEURA_GConnection">
          <port xsi:type="esdl:InPort" carrier="FMH" id="ADMEURA_GConnection_IP1" name="In1"/>
          <port xsi:type="esdl:OutPort" id="ADMEURA_GConnection_OP1" connectedTo="C15IP1 C16IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="ADMEURA" sector="HIC" id="ADMEURA_HConnection">
          <port xsi:type="esdl:InPort" carrier="H2C" id="ADMEURA_HConnection_IP1" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="ADMEURA_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.958706551191256" lon="4.119272232055662"/>
            <point xsi:type="esdl:Point" lat="51.95833631000295" lon="4.120988845825194"/>
            <point xsi:type="esdl:Point" lat="51.95161854603265" lon="4.1213321685791"/>
            <point xsi:type="esdl:Point" lat="51.95082504288314" lon="4.120130538940429"/>
            <point xsi:type="esdl:Point" lat="51.94447651219548" lon="4.120559692382811"/>
            <point xsi:type="esdl:Point" lat="51.94447651219548" lon="4.121932983398437"/>
            <point xsi:type="esdl:Point" lat="51.948021219299676" lon="4.121847152709959"/>
            <point xsi:type="esdl:Point" lat="51.948021219299676" lon="4.124422073364256"/>
            <point xsi:type="esdl:Point" lat="51.95119534610021" lon="4.124422073364256"/>
            <point xsi:type="esdl:Point" lat="51.95595611506815" lon="4.125795364379882"/>
            <point xsi:type="esdl:Point" lat="51.95749003294782" lon="4.123907089233397"/>
            <point xsi:type="esdl:Point" lat="51.960557711268194" lon="4.122877120971679"/>
            <point xsi:type="esdl:Point" lat="51.96135104218675" lon="4.121246337890624"/>
            <point xsi:type="esdl:Point" lat="51.958706551191256" lon="4.119272232055662"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Gunvor_EurB" id="GunvorEURB_area">
        <asset xsi:type="esdl:Building" name="Gunvor_EurB" sector="REF" id="GunvorEURB_building">
          <asset xsi:type="esdl:ElectricityDemand" name="GunvorEURB" sector="REF" power="25.0" id="D7_E">
            <port xsi:type="esdl:InPort" connectedTo="GunvorEURB_EConnection_OP1" id="D7_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="25.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1C" name="NesteMVB_D2_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f697f3e9-2d70-4b73-a86c-10478e71d47a" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="GunvorEURB" sector="REF" power="112.0" id="D7_HTH">
            <port xsi:type="esdl:InPort" connectedTo="C17OP1 C18OP1 C19OP1" id="D7_HTH_IP1" carrier="HTH" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="112.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2A" name="NesteMVB_D2_S" startDate="2018-12-31T23:00:00.000000+0000" id="E2A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6493d405-afc2-42a3-96e4-3eb65781c51b" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="GunvorEURB" sector="REF" power="139.0" id="D7_S">
            <port xsi:type="esdl:InPort" connectedTo="C20OP1 C21OP1 C22OP1" id="D7_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="139.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2B" name="NesteMVB_D2_H2C" startDate="2018-12-31T23:00:00.000000+0000" id="E2B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d611b88e-7032-41f3-a472-5df58c99c3b7" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="GunvorEURB" sector="REF" power="38.0" id="D7_H2C">
            <port xsi:type="esdl:InPort" connectedTo="GunvorEURB_HConnection_OP1" id="D7_H2C_IP1" carrier="H2" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="38.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3A" name="LyondellMVB_D3_E" startDate="2018-12-31T23:00:00.000000+0000" id="E3A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="4d5fda4e-e46b-4d00-9309-ead189dafd01" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="GunvorEURB" sector="REF" power="24.0" id="C17" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="GunvorEURB_GConnection_OP1" id="C17IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C17OP1" connectedTo="D7_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="GunvorEURB" sector="REF" power="90.0" id="C18" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C18IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C18OP1" connectedTo="D7_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="GunvorEURB" sector="REF" power="26.0" id="C19" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C19IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C19OP1" connectedTo="D7_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="GunvorEURB" sector="REF" power="28.0" id="C20" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="GunvorEURB_GConnection_OP1" id="C20IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C20OP1" connectedTo="D7_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="GunvorEURB" sector="REF" power="105.0" id="C21" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C21IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C21OP1" connectedTo="D7_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="GunvorEURB" sector="REF" power="30.0" id="C22" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C22IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C22OP1" connectedTo="D7_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="GunvorEURB" sector="HIC" id="GunvorEURB_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="GunvorEURB_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="GunvorEURB_EConnection_OP1" connectedTo="D7_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="GunvorEURB" sector="HIC" id="GunvorEURB_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="GunvorEURB_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="GunvorEURB_GConnection_OP1" connectedTo="C17IP1 C20IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="GunvorEURB" sector="HIC" id="GunvorEURB_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="GunvorEURB_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" id="GunvorEURB_HConnection_OP1" connectedTo="D7_H2C_IP1" carrier="H2C" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.93881498107706" lon="4.153776168823242"/>
            <point xsi:type="esdl:Point" lat="51.93886789589058" lon="4.163560867309569"/>
            <point xsi:type="esdl:Point" lat="51.93934412640405" lon="4.164419174194336"/>
            <point xsi:type="esdl:Point" lat="51.93937058350659" lon="4.165835380554198"/>
            <point xsi:type="esdl:Point" lat="51.938735608739705" lon="4.165921211242676"/>
            <point xsi:type="esdl:Point" lat="51.938100624985566" lon="4.166736602783202"/>
            <point xsi:type="esdl:Point" lat="51.93812708282141" lon="4.168710708618164"/>
            <point xsi:type="esdl:Point" lat="51.93746563224403" lon="4.168667793273925"/>
            <point xsi:type="esdl:Point" lat="51.9375450068282" lon="4.1719722747802725"/>
            <point xsi:type="esdl:Point" lat="51.93992617905522" lon="4.171843528747559"/>
            <point xsi:type="esdl:Point" lat="51.940164289326816" lon="4.172444343566894"/>
            <point xsi:type="esdl:Point" lat="51.93352318453739" lon="4.186091423034667"/>
            <point xsi:type="esdl:Point" lat="51.93344380283804" lon="4.172573089599609"/>
            <point xsi:type="esdl:Point" lat="51.92958039041375" lon="4.172787666320801"/>
            <point xsi:type="esdl:Point" lat="51.9292892979214" lon="4.16956901550293"/>
            <point xsi:type="esdl:Point" lat="51.93587811107017" lon="4.152789115905761"/>
            <point xsi:type="esdl:Point" lat="51.93881498107706" lon="4.153776168823242"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="AlcoEnergy_EurC" id="AlcoEURC_area">
        <asset xsi:type="esdl:Building" name="AlcoEnergy_EurC" sector="CHEMFEED" id="AlcoEURC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="AlcoEURC" sector="CHEMFEED" power="10.0" id="D8_E">
            <port xsi:type="esdl:InPort" connectedTo="C23OP2" id="D8_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3B" name="LyondellMVB_D3_S" startDate="2018-12-31T23:00:00.000000+0000" id="E3B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="608433f5-fd78-404d-95d8-8feb97d91b32" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="AlcoEURC" sector="CHEMFEED" power="74.0" id="D8_S">
            <port xsi:type="esdl:InPort" connectedTo="C23OP1" id="D8_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="74.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3C" name="BPEURA_D4_E" startDate="2018-12-31T23:00:00.000000+0000" id="E3C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="b30a0c68-0a9d-425d-b461-048b312ba0d9" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:CHP" assetType="Cogen" type="STEG" name="AlcoEURC" heatEfficiency="0.49" sector="CHEMFEED" power="150.0" id="C23" electricalEfficiency="0.31">
            <port xsi:type="esdl:InPort" connectedTo="CaldicEURC_GConnection_OP1" id="C23IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C23OP1" connectedTo="D8_S_IP1" carrier="S" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C23OP2" connectedTo="D8_E_IP1" carrier="E" name="Out2"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="AlcoEURC" sector="HIC" id="AlcoEURC_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="AlcoEURC_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="E" id="AlcoEURC_EConnection_OP1" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="AlcoEURC" sector="HIC" id="AlcoEURC_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="AlcoEURC_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="FMH" id="AlcoEURC_GConnection_OP1" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="AlcoEURC" sector="HIC" id="AlcoEURC_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="AlcoEURC_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="AlcoEURC_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.929686241761004" lon="4.176971912384032"/>
            <point xsi:type="esdl:Point" lat="51.92972593595189" lon="4.180362224578857"/>
            <point xsi:type="esdl:Point" lat="51.929262834873896" lon="4.180297851562499"/>
            <point xsi:type="esdl:Point" lat="51.929236371810816" lon="4.183108806610107"/>
            <point xsi:type="esdl:Point" lat="51.924988847947134" lon="4.183237552642821"/>
            <point xsi:type="esdl:Point" lat="51.92367878284642" lon="4.182486534118652"/>
            <point xsi:type="esdl:Point" lat="51.92349351802915" lon="4.182121753692626"/>
            <point xsi:type="esdl:Point" lat="51.92513440837587" lon="4.180126190185546"/>
            <point xsi:type="esdl:Point" lat="51.92508147736547" lon="4.177100658416748"/>
            <point xsi:type="esdl:Point" lat="51.929686241761004" lon="4.176971912384032"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Caldic_EurC" id="CaldicEURC_area">
        <asset xsi:type="esdl:Building" name="Caldic_EurC" sector="NONCHLO" id="CaldicEURC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="CaldicEURC" sector="NONCHLO" power="10.0" id="D9_E">
            <port xsi:type="esdl:InPort" connectedTo="CaldicEURC_EConnection_OP1" id="D9_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3D" name="BPEURA_D4_HTH" startDate="2018-12-31T23:00:00.000000+0000" id="E3D">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="77406ac0-9023-4f79-8f54-bd91519c3649" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="CaldicEURC" sector="NONCHLO" power="7.0" id="D9_S">
            <port xsi:type="esdl:InPort" connectedTo="C24OP1" id="D9_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="7.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E4A" name="BPEURA_D4_S" startDate="2018-12-31T23:00:00.000000+0000" id="E4A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="6aab4281-f5c5-485a-b6f0-466b0ea1fca3" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="CaldicEURC" sector="NONCHLO" power="9.0" id="C24" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="ExxonEURC_GConnection_OP1" id="C24IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C24OP1" connectedTo="D9_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="CaldicEURC" sector="HIC" id="CaldicEURC_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="CaldicEURC_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="CaldicEURC_EConnection_OP1" connectedTo="D9_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="CaldicEURC" sector="HIC" id="CaldicEURC_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="CaldicEURC_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="CaldicEURC_GConnection_OP1" connectedTo="C23IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="CaldicEURC" sector="HIC" id="CaldicEURC_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="CaldicEURC_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="CaldicEURC_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.93275106502559" lon="4.177199319108484"/>
            <point xsi:type="esdl:Point" lat="51.93269814299767" lon="4.184366181596277"/>
            <point xsi:type="esdl:Point" lat="51.92925807730136" lon="4.184409096940516"/>
            <point xsi:type="esdl:Point" lat="51.92931100338632" lon="4.176984742387293"/>
            <point xsi:type="esdl:Point" lat="51.93275106502559" lon="4.177199319108484"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Exxonmobil_EurC" id="ExxonEURC_area">
        <asset xsi:type="esdl:Building" name="Exxonmobil_EurC" sector="REF" id="ExxonEURC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ExxonEURC" sector="REF" power="10.0" id="D10_E">
            <port xsi:type="esdl:InPort" connectedTo="ExxonEURC_EConnection_OP1" id="D10_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="10.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G1A" name="BPEURA_D4_H2C" startDate="2018-12-31T23:00:00.000000+0000" id="G1A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="826f9a89-7036-4b9d-bb16-73e13a2139bd" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ExxonEURC" sector="REF" power="26.0" id="D10_S">
            <port xsi:type="esdl:InPort" connectedTo="C25OP1" id="D10_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="26.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G2A" name="IndoramaEURA_D5_E" startDate="2018-12-31T23:00:00.000000+0000" id="G2A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="a4c5c751-9875-498f-9bdb-6f2436399835" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="ExxonEURC" sector="REF" power="31.0" id="C25" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="VPREURC_GConnection_OP1" id="C25IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C25OP1" connectedTo="D10_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="ExxonEURC" sector="HIC" id="ExxonEURC_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="ExxonEURC_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="ExxonEURC_EConnection_OP1" connectedTo="D10_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="ExxonEURC" sector="HIC" id="ExxonEURC_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="ExxonEURC_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="ExxonEURC_GConnection_OP1" connectedTo="C24IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="ExxonEURC" sector="HIC" id="ExxonEURC_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="ExxonEURC_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="ExxonEURC_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.930533043551236" lon="4.190340042114258"/>
            <point xsi:type="esdl:Point" lat="51.9254519931273" lon="4.190511703491211"/>
            <point xsi:type="esdl:Point" lat="51.9254519931273" lon="4.1878509521484375"/>
            <point xsi:type="esdl:Point" lat="51.92584897090666" lon="4.1878509521484375"/>
            <point xsi:type="esdl:Point" lat="51.92584897090666" lon="4.1848039627075195"/>
            <point xsi:type="esdl:Point" lat="51.92624594517497" lon="4.1848039627075195"/>
            <point xsi:type="esdl:Point" lat="51.926219480332946" lon="4.183859825134277"/>
            <point xsi:type="esdl:Point" lat="51.9312475201331" lon="4.183688163757324"/>
            <point xsi:type="esdl:Point" lat="51.93119459633192" lon="4.185833930969238"/>
            <point xsi:type="esdl:Point" lat="51.932120753840735" lon="4.185791015625"/>
            <point xsi:type="esdl:Point" lat="51.932120753840735" lon="4.188323020935059"/>
            <point xsi:type="esdl:Point" lat="51.931406291162034" lon="4.19003963470459"/>
            <point xsi:type="esdl:Point" lat="51.930533043551236" lon="4.190340042114258"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="VPREnergy_EurC" id="VPREURC_area">
        <asset xsi:type="esdl:Building" name="VPREnergy_EurC" sector="CHEMFEED" id="VPREURC_building">
          <asset xsi:type="esdl:ElectricityDemand" name="VPREURC" sector="CHEMFEED" power="20.0" id="D11_E">
            <port xsi:type="esdl:InPort" connectedTo="VPREURC_EConnection_OP1" id="D11_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="20.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="G2C" name="IndoramaEURA_D5_S" startDate="2018-12-31T23:00:00.000000+0000" id="G2C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1977b502-72c5-42c6-8b83-1bc2f0381e1d" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="VPREURC" sector="CHEMFEED" power="15.0" id="D11_S">
            <port xsi:type="esdl:InPort" connectedTo="C27OP1" id="D11_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="15.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1A" name="BungelodersMVB_D1_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="fcdc5d35-68b7-4961-a5f0-65c5866ec4f5" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="VPREURC" sector="CHEMFEED" power="19.0" id="D11_HTH">
            <port xsi:type="esdl:InPort" connectedTo="C26OP1" id="D11_HTH_IP1" carrier="HTH" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="19.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1B" name="BungelodersMVB_D1_S" startDate="2018-12-31T23:00:00.000000+0000" id="E1B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="1c084c27-062d-4709-b7e7-15830cb527ab" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="VPREURC" sector="CHEMFEED" power="31.0" id="C26" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="VPREURC_GConnection_OP1" id="C26IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C26OP1" connectedTo="D11_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="VPREURC" sector="CHEMFEED" power="36.0" id="C27" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="VPREURC_GConnection_OP1" id="C27IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C27OP1" connectedTo="D11_S_IP1" carrier="S" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="VPREURC" sector="HIC" id="VPREURC_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1" id="VPREURC_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="VPREURC_EConnection_OP1" connectedTo="D11_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="VPREURC" sector="HIC" id="VPREURC_GConnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="VPREURC_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="VPREURC_GConnection_OP1" connectedTo="C25IP1 C26IP1 C27IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="VPREURC" sector="HIC" id="VPREURC_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="VPREURC_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="VPREURC_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.88435904809015" lon="4.310846328735352"/>
            <point xsi:type="esdl:Point" lat="51.88043842739859" lon="4.309666156768799"/>
            <point xsi:type="esdl:Point" lat="51.874795312301615" lon="4.312348365783691"/>
            <point xsi:type="esdl:Point" lat="51.87659694713619" lon="4.322304725646973"/>
            <point xsi:type="esdl:Point" lat="51.88314051341635" lon="4.319300651550292"/>
            <point xsi:type="esdl:Point" lat="51.88435904809015" lon="4.310846328735352"/>
          </exterior>
        </geometry>
      </area>
      <area xsi:type="esdl:Area" name="Shell_PER" id="ShellPER_area">
        <asset xsi:type="esdl:Building" name="Shell_PER" sector="REF" id="ShellPER_building">
          <asset xsi:type="esdl:ElectricityDemand" name="ShellPER" sector="REF" power="171.0" id="D33_E">
            <port xsi:type="esdl:InPort" connectedTo="C63OP2 C64OP2 ShellPER_EConnection_OP1" id="D33_E_IP1" carrier="E" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="171.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E1C" name="NesteMVB_D2_E" startDate="2018-12-31T23:00:00.000000+0000" id="E1C">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="f3d01fc3-ca7f-425f-92b8-08af3adb6d66" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ShellPER" sector="REF" power="843.0" id="D33_HTH">
            <port xsi:type="esdl:InPort" connectedTo="C72OP1 C73OP1 C74OP1" id="D33_HTH_IP1" carrier="HTH" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="843.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2A" name="NesteMVB_D2_S" startDate="2018-12-31T23:00:00.000000+0000" id="E2A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="d26305f9-226e-4831-a718-581eba2be055" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" name="ShellPER" sector="REF" power="678.0" id="D33_S">
            <port xsi:type="esdl:InPort" connectedTo="C63OP1 C64OP1 C69OP1 C70OP1 C71OP1" id="D33_S_IP1" carrier="S" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="678.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E2B" name="NesteMVB_D2_H2C" startDate="2018-12-31T23:00:00.000000+0000" id="E2B">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="589ef40b-fd26-47b8-ab86-f539f44a7c60" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" name="ShellPER" sector="REF" power="621.0" id="D33_H2C">
            <port xsi:type="esdl:InPort" connectedTo="C62OP1 C65OP2" id="D33_H2C_IP1" carrier="H2C" name="In">
              <profile xsi:type="esdl:InfluxDBProfile" database="energy_profiles" multiplier="621.0" measurement="standard_profiles (1)" endDate="2019-12-31T22:00:00.000000+0000" host="http://10.30.2.1" port="8086" field="E3A" name="LyondellMVB_D3_E" startDate="2018-12-31T23:00:00.000000+0000" id="E3A">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" id="dabab48b-b8ae-4677-b6fe-27a33432565a" unit="WATT" description="ENERGY in MW" physicalQuantity="ENERGY" multiplier="MEGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasConversion" assetType="SMR" name="ShellPER" sector="REF" power="296.0" id="C62" efficiency="0.75">
            <port xsi:type="esdl:InPort" connectedTo="ShellPER_GConnection_OP1" id="C62IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C62OP1" connectedTo="D33_H2C_IP1" carrier="H2C" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:CHP" assetType="Cogen" name="ShellPER" heatEfficiency="0.62" sector="REF" power="699.0" id="C63" electricalEfficiency="0.33">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C63IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C63OP1" connectedTo="D33_S_IP1" carrier="S" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C63OP2" connectedTo="ShellPER_EConnection_IP1 D33_E_IP1" carrier="E" name="Out2"/>
          </asset>
          <asset xsi:type="esdl:CHP" assetType="Cogen" name="ShellPER" heatEfficiency="0.62" sector="REF" power="200.0" id="C64" electricalEfficiency="0.33">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C64IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C64OP1" connectedTo="D33_S_IP1" carrier="S" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C64OP2" connectedTo="ShellPER_EConnection_IP1 D33_E_IP1" carrier="E" name="Out2"/>
          </asset>
          <asset xsi:type="esdl:CHP" assetType="Gasifier" name="ShellPER" sector="REF" power="783.0" id="C65" electricalEfficiency="0.23" efficiency="0.51">
            <port xsi:type="esdl:InPort" connectedTo="OR_OP1" id="C65IP1" carrier="OR" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C65OP1" connectedTo="ShellPER_EConnection_IP1" carrier="E" name="Out1"/>
            <port xsi:type="esdl:OutPort" id="C65OP2" connectedTo="D33_H2C_IP1" carrier="H2C" name="Out2"/>
          </asset>
          <asset xsi:type="esdl:PowerPlant" assetType="PowerPlant_baseload" name="ShellPER" sector="REF" power="34.0" id="C66" efficiency="0.59">
            <port xsi:type="esdl:InPort" connectedTo="ShellPER_GConnection_OP1" id="C66IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C66OP1" connectedTo="ShellPER_EConnection_IP1" carrier="E" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:PowerPlant" assetType="PowerPlant_baseload" name="ShellPER" sector="REF" power="129.0" id="C67" efficiency="0.59">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C67IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C67OP1" connectedTo="ShellPER_EConnection_IP1" carrier="E" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:PowerPlant" assetType="PowerPlant_baseload" name="ShellPER" sector="REF" power="37.0" id="C68" efficiency="0.59">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C68IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C68OP1" connectedTo="ShellPER_EConnection_IP1" carrier="E" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="ShellPER" sector="REF" power="25.0" id="C69" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="ShellPER_GConnection_OP1" id="C69IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C69OP1" connectedTo="D33_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="ShellPER" sector="REF" power="92.0" id="C70" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C70IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C70OP1" connectedTo="D33_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Boiler" name="ShellPER" sector="REF" power="26.0" id="C71" efficiency="0.85">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C71IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C71OP1" connectedTo="D33_S_IP1" carrier="S" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="ShellPER" sector="REF" power="180.0" id="C72" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="ShellPER_GConnection_OP1" id="C72IP1" carrier="FMH" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C72OP1" connectedTo="D33_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="ShellPER" sector="REF" power="680.0" id="C73" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="RGN_OP1" id="C73IP1" carrier="RG" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C73OP1" connectedTo="D33_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
          <asset xsi:type="esdl:GasHeater" assetType="Furnace" name="ShellPER" sector="REF" power="194.0" id="C74" efficiency="0.8">
            <port xsi:type="esdl:InPort" connectedTo="PCN_OP1" id="C74IP1" carrier="PC" name="In1"/>
            <port xsi:type="esdl:OutPort" id="C74OP1" connectedTo="D33_HTH_IP1" carrier="HTH" name="Out1"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:EConnection" name="ShellPER" sector="HIC" id="ShellPER_EConnection">
          <port xsi:type="esdl:InPort" connectedTo="EN_OP1 C65OP1 C66OP1 C67OP1 C68OP1 C63OP2 C64OP2" id="ShellPER_EConnection_IP1" carrier="E" name="In1"/>
          <port xsi:type="esdl:OutPort" id="ShellPER_EConnection_OP1" connectedTo="D33_E_IP1" carrier="E" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:GConnection" name="ShellPER" sector="HIC" id="ShellPER_Gconnection">
          <port xsi:type="esdl:InPort" connectedTo="FMHN_OP1" id="ShellPER_GConnection_IP1" carrier="FMH" name="In1"/>
          <port xsi:type="esdl:OutPort" id="ShellPER_GConnection_OP1" connectedTo="C62IP1 C66IP1 C69IP1 C72IP1" carrier="FMH" name="Out1"/>
        </asset>
        <asset xsi:type="esdl:HConnection" name="ShellPER" sector="HIC" id="ShellPER_HConnection">
          <port xsi:type="esdl:InPort" connectedTo="H2CN_OP1" id="ShellPER_HConnection_IP1" carrier="H2C" name="In1"/>
          <port xsi:type="esdl:OutPort" carrier="H2C" id="ShellPER_HConnection_OP1" name="Out1"/>
        </asset>
        <geometry xsi:type="esdl:Polygon">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lat="51.8857099935731" lon="4.35530662536621"/>
            <point xsi:type="esdl:Point" lat="51.87823955127769" lon="4.357109069824218"/>
            <point xsi:type="esdl:Point" lat="51.877497737483424" lon="4.359083175659178"/>
            <point xsi:type="esdl:Point" lat="51.877974619184755" lon="4.378910064697265"/>
            <point xsi:type="esdl:Point" lat="51.879352249020855" lon="4.381742477416991"/>
            <point xsi:type="esdl:Point" lat="51.8848093677625" lon="4.380111694335937"/>
            <point xsi:type="esdl:Point" lat="51.884650431922665" lon="4.378738403320312"/>
            <point xsi:type="esdl:Point" lat="51.88576297100002" lon="4.378309249877929"/>
            <point xsi:type="esdl:Point" lat="51.888464736976516" lon="4.36328887939453"/>
            <point xsi:type="esdl:Point" lat="51.8857099935731" lon="4.35530662536621"/>
          </exterior>
        </geometry>
      </area>
      <geometry xsi:type="esdl:Polygon">
        <exterior xsi:type="esdl:SubPolygon">
          <point xsi:type="esdl:Point" lat="51.915835211347094" lon="4.005412333639611"/>
          <point xsi:type="esdl:Point" lat="51.932773437657886" lon="4.074763529928673"/>
          <point xsi:type="esdl:Point" lat="51.93023311117966" lon="4.115275614889611"/>
          <point xsi:type="esdl:Point" lat="51.93192667814355" lon="4.135188334616173"/>
          <point xsi:type="esdl:Point" lat="51.93573697012998" lon="4.148921244772423"/>
          <point xsi:type="esdl:Point" lat="51.92515202679765" lon="4.175700419577111"/>
          <point xsi:type="esdl:Point" lat="51.9111760785123" lon="4.190806620748986"/>
          <point xsi:type="esdl:Point" lat="51.89931428617737" lon="4.220332377584923"/>
          <point xsi:type="esdl:Point" lat="51.890415886148915" lon="4.231318705709923"/>
          <point xsi:type="esdl:Point" lat="51.87515738611083" lon="4.238185160788048"/>
          <point xsi:type="esdl:Point" lat="51.86455815820764" lon="4.264277690084923"/>
          <point xsi:type="esdl:Point" lat="51.867526193815614" lon="4.328822367819298"/>
          <point xsi:type="esdl:Point" lat="51.87812472230152" lon="4.384440653952111"/>
          <point xsi:type="esdl:Point" lat="51.875712121686824" lon="4.406256933764712"/>
          <point xsi:type="esdl:Point" lat="51.88249423299046" lon="4.412093420581118"/>
          <point xsi:type="esdl:Point" lat="51.88652062752263" lon="4.415869970874087"/>
          <point xsi:type="esdl:Point" lat="51.89457233464137" lon="4.4114067750733055"/>
          <point xsi:type="esdl:Point" lat="51.90008056625852" lon="4.402823706225649"/>
          <point xsi:type="esdl:Point" lat="51.89859764725278" lon="4.391494055346743"/>
          <point xsi:type="esdl:Point" lat="51.90008056625852" lon="4.380507727221743"/>
          <point xsi:type="esdl:Point" lat="51.901775270901275" lon="4.370894690112368"/>
          <point xsi:type="esdl:Point" lat="51.901139764152084" lon="4.3537285524170555"/>
          <point xsi:type="esdl:Point" lat="51.89669096517913" lon="4.332099218920962"/>
          <point xsi:type="esdl:Point" lat="51.8981739471179" lon="4.3084099489014305"/>
          <point xsi:type="esdl:Point" lat="51.89965688010865" lon="4.2891838746826805"/>
          <point xsi:type="esdl:Point" lat="51.90537630600039" lon="4.274420996264712"/>
          <point xsi:type="esdl:Point" lat="51.90383973274857" lon="4.265401478845212"/>
          <point xsi:type="esdl:Point" lat="51.96629763276185" lon="4.12699081891025"/>
          <point xsi:type="esdl:Point" lat="51.990828360840354" lon="4.02262070172275"/>
          <point xsi:type="esdl:Point" lat="51.98152518312206" lon="3.974555516175875"/>
          <point xsi:type="esdl:Point" lat="51.96824702945511" lon="3.9578845151300035"/>
          <point xsi:type="esdl:Point" lat="51.92168835794175" lon="3.9812304623956285"/>
          <point xsi:type="esdl:Point" lat="51.915835211347094" lon="4.005412333639611"/>
        </exterior>
      </geometry>
    </area>
  </instance>
</esdl:EnergySystem>
