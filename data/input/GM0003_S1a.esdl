<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xmi="http://www.omg.org/XMI" xmlns:esdl="http://www.tno.nl/esdl" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="GemeenteAppingedam S1a" xmi:version="2.0">
  <instance>
    <area id="GM0003" name="appingedam" scope="MUNICIPALITY">
      <area scope="NEIGHBOURHOOD" id="BU00030000" name="Appingedam-Centrum">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="1813" id="1761cf8e-9cb4-477e-bf2e-7e96bc66375c">
          <asset xsi:type="esdl:HeatingDemand" id="43717dae-5dcc-4e0e-8ea1-7dc95c2a04d5" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="f3c313bd-3367-4ad3-b73d-ef890688b4e0">
              <profile xsi:type="esdl:SingleValue" id="06ee6070-9bb5-4ae8-b4dc-877402ba512c" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="a3e040a3-f4c2-403f-b8cb-9f78bbb7e5a0" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="1260b993-e875-4dc6-bd7b-b9a94a1c3da5">
              <profile xsi:type="esdl:SingleValue" id="ef9437cf-cde5-4c9a-8b78-604166337988">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="316ddd49-20cb-49dd-9c28-22a39151f5ad" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="270ab7d7-e7a3-4d15-a77d-e90268d39680">
              <profile xsi:type="esdl:SingleValue" id="64014e6a-43ee-44c2-b90f-3090ae2255eb">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="200a1ed9-d1f4-44ea-8f70-0110ea8a33fc" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="fa3a91ef-2172-44d6-a956-929874517543">
              <profile xsi:type="esdl:SingleValue" id="440134ad-6f0c-4d00-aff5-e05bec48a6fc" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="42d464e0-89bf-42f2-b11f-c6f8977c5a54" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="9b536f84-ca1a-420c-b204-cbecc4765bf2">
              <profile xsi:type="esdl:SingleValue" id="a06ef5b4-b567-4ff1-a750-ec21c73a1b48">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="dc2cb334-d904-4daa-9a27-0d499c1c41c8" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="f3d65122-3cab-4fc0-8041-713c3e232ac6">
              <profile xsi:type="esdl:SingleValue" id="1c3b84db-3f8b-451a-960b-26b12eaae2ff">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="01d38a47-d13a-4894-a44e-17233b6c61ee" aggregated="true">
            <port xsi:type="esdl:InPort" id="5242d5c6-bb64-44b4-bf2a-2ba15514dc23" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="5f85b71e-9bf3-4e72-b0dd-b4004342651b" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="6b5f3aff-cb0f-4922-9364-47ecbf452fca" aggregated="true">
            <port xsi:type="esdl:InPort" id="4b510741-7f9f-4594-8a59-33c92e421dc5" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="09aa5f75-e242-48c6-a00d-ee15835b2ee3" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="88dabaad-e7fd-4908-8c38-8d7d759f1245" aggregated="true">
            <port xsi:type="esdl:InPort" id="9a4d6a6f-3e75-4b48-98b3-c93c89886ba5" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="60c01f51-cdcd-4201-8c65-1f3f2b575f85" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="7117ec15-b484-4de9-b20e-6921963ebdc5" aggregated="true">
          <port xsi:type="esdl:InPort" id="2450c2d9-986a-4d21-bc3e-7c21a358809f" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="23bcfb8e-06ac-4a9d-843e-372ed2615290" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="98e0cae3-f267-425e-a0aa-eb86fd5194ed" aggregated="true">
          <port xsi:type="esdl:OutPort" id="60c30e7a-5e84-4e99-b062-67c52a9994b7" name="OutPort"/>
        </asset>
        <KPIs id="5a3b1ee8-7b94-42c6-b443-fabb025f7ddb">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="41331b0b-9f4f-49b6-9e00-90b72bb1a901" value="5229"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="083162dd-0772-4f7b-bbea-8e0816eb4af8" value="4310414"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="0adacc5c-b97d-400c-a932-d136c9054dfc" value="1683396"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="ad111350-9ed8-4846-a712-3b8452cdeca6" value="322"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="bd0fd2a9-b598-4276-ad00-176bf73fd2c5" value="929"/>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="BU00030001" name="Appingedam-West">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="1414" id="7584dd0e-697b-4219-b341-50a8217ae39f">
          <asset xsi:type="esdl:HeatingDemand" id="7fde3ec6-3a08-460e-952b-af3bc131bb1a" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="e56da570-ad85-4feb-aecf-25cff2b40f68">
              <profile xsi:type="esdl:SingleValue" id="85986748-d688-42a1-a586-a3e9260928bc" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="1a25e90e-4905-4a94-be01-6a8a17b6cf31" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="2b9edaf8-2df8-43e2-867a-0ff628fd60c8">
              <profile xsi:type="esdl:SingleValue" id="3c800cb4-bc87-4ce3-97e1-3dfd0c733289">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="761ea932-688c-47c1-998e-9cc263aaf25e" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="e5268e9f-2519-47a8-87eb-682087d484ab">
              <profile xsi:type="esdl:SingleValue" id="c46f4c2a-a7dc-4ef6-9d16-4c9784612a58">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="14c522ce-b0a0-44df-97e1-4a5c7c59b879" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="a1fb1a86-64fb-4030-8d6a-52cc3caed631">
              <profile xsi:type="esdl:SingleValue" id="5f3c2ab1-7f10-4909-85bd-6901cd90c29f" value="10.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="53e64cad-c6b8-4800-9c28-b9aee2939070" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="27f8fda7-efd0-4553-9692-314858bf1ad2">
              <profile xsi:type="esdl:SingleValue" id="f1ce7a81-3c55-4cd2-9cfb-9cabafe33c2e">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="f75b06fa-744a-4d79-bd9d-5ee06539008b" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="afcedaaf-f26b-47ed-8434-e0ce27369302">
              <profile xsi:type="esdl:SingleValue" id="fbfd1925-81c9-496c-aa2b-e6ec8cd50d83">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="3d9e1c18-7339-4317-82b8-bc61d0c25804" aggregated="true">
            <port xsi:type="esdl:InPort" id="dd5fcb96-4bcf-43bf-9830-115c6be45ad3" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="d288bbd1-2167-4bce-8979-f02111cb98fa" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="d67617fc-46f3-4f28-8feb-8276cd2adffc" aggregated="true">
            <port xsi:type="esdl:InPort" id="a232e833-82c3-419d-9a69-bd438bc6e6de" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="0664d934-94eb-467c-9d00-af6f4fdc7351" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="c1f72c25-8f98-4a6f-b210-1a5a715a5eea" aggregated="true">
            <port xsi:type="esdl:InPort" id="1709f776-2d4a-4622-bec2-2971500ec6e8" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="db66ef12-85a3-465f-b71b-d0c125c4b6dc" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="2a083457-7e0e-4e4c-81ad-e348ff6b9dd2" aggregated="true">
          <port xsi:type="esdl:InPort" id="96e9ee27-49f3-477b-9990-aae8b7de968b" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="09b8dc38-4602-4475-87d7-fc206d8ae3a1" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="77d4f8f7-d0db-4a73-b728-6adf54ed1a1b" aggregated="true">
          <port xsi:type="esdl:OutPort" id="367357ca-0aa9-404e-9622-b11e09765152" name="OutPort"/>
        </asset>
        <KPIs id="f1a0aa6a-b28b-4715-beb7-6a8b66ffa382">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="c66735dc-7cb7-4b83-86b6-5b463dc182de" value="4123"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="876745a5-0336-4888-901d-437a092b41d1" value="3429488"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="96beedc5-1360-47cc-81a7-a36bfd636808" value="1342916"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="63bf040a-7fcf-4b0e-9cd5-90c084fd06ce" value="326"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="dd77a4f8-42ed-414b-960b-83f191a599ff" value="950"/>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="BU00030002" name="Appingedam-Oost">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="3704" id="deb113d6-caa5-443c-94df-dff4281054b2">
          <asset xsi:type="esdl:HeatingDemand" id="fd71c7a6-9516-48b8-b44c-ae8587ffae7f" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="e09f71dc-d598-4dbe-a210-295b949e09d9">
              <profile xsi:type="esdl:SingleValue" id="e7732c8e-f1a7-4235-834a-e1120403d55e" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="2d8d8db9-f29b-4aa3-b09a-773f98675f5c" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="34dd0c52-4771-40b6-8c61-ef1344616017">
              <profile xsi:type="esdl:SingleValue" id="77b2f524-7068-40f5-818f-a400c249f553">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="59ea1ae9-961d-473f-b8b8-cdc0652f3a28" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="2f792b6f-5568-4252-82ab-b7ce3cc781fd">
              <profile xsi:type="esdl:SingleValue" id="fe0eae14-7d36-4fa7-a6a7-944f1ea58f1a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="06e6d2de-d6fa-4a07-aadd-420f30df29ae" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="15d72d5e-f66a-41f9-b30e-3a1964cb0320">
              <profile xsi:type="esdl:SingleValue" id="4249af21-16b7-429c-b4d2-6e6c476fe2a1" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="d456f58d-42fa-43ee-a1d2-49ae3b637bda" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="910d9856-defa-430f-a4b6-7126d9b2cb00">
              <profile xsi:type="esdl:SingleValue" id="6fcbd6fc-191e-4b6c-8d52-80d300aa2111">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="8c724b20-e330-4cd5-9feb-717bb651a14c" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="79505c66-3c79-4d85-a36d-2d63baa2f84e">
              <profile xsi:type="esdl:SingleValue" id="5648212a-4eb6-4bc7-9af0-2371005b7553">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="080067eb-aa62-43a7-9820-5db81f09ed72" aggregated="true">
            <port xsi:type="esdl:InPort" id="b9eabfd2-9738-42ec-81a9-9a6b91613e5f" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="3694bcc3-0739-4cbd-a1b6-a7ad5bd36081" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="497c39bc-70c0-4512-8cf8-b0651cf349e6" aggregated="true">
            <port xsi:type="esdl:InPort" id="d8ee4770-962e-4707-a373-85456d6be145" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="e47bd864-6b74-4ef3-a231-8920e3d2c024" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="f9afccf8-458a-46ac-b7e6-08e9b3c44991" aggregated="true">
            <port xsi:type="esdl:InPort" id="8df8fa51-3da1-45e7-afcb-8edee4414f1f" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="e64148c2-3ecd-440f-8555-3ac34940c01d" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="14875aff-30c0-4221-9d80-0ac42163a19f" aggregated="true">
          <port xsi:type="esdl:InPort" id="8d16a195-ac3e-4c0a-9cbf-004137530a84" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="dd9b22a4-83a6-4aad-867d-25ddcf76b4ee" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="f333663b-8231-4687-a010-283c9b8bc667" aggregated="true">
          <port xsi:type="esdl:OutPort" id="e2c0a8d4-1cc2-43ee-a797-2912c14292b4" name="OutPort"/>
        </asset>
        <KPIs id="066f4612-4e56-41a4-96ad-3a75f90f901d">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="8a31c571-4c08-4797-88d4-b91c16eb1706" value="9061"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="78a569df-612c-4ffa-9d87-3c9428e98a7d" value="8461333"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="aab82fa3-e5e9-441b-b2a8-66be6d08db80" value="3342532"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="272ae31f-669b-4754-961d-0d9f03b8cf9a" value="369"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="4182724e-0c7e-4e11-9a78-1da029d9388b" value="902"/>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="BU00030007" name="Verspreide huizen Damsterdiep en Eemskanaal">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="162" id="4314c30f-52e2-42d3-b252-80c9b4239e25">
          <asset xsi:type="esdl:HeatingDemand" id="49a5873f-13a4-47c3-b6cb-4248454234ea" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="113e6543-0b17-4e2b-8ac9-c47cb259a393">
              <profile xsi:type="esdl:SingleValue" id="a31585b8-20a8-4fa1-a3d6-bbb47f4e7305" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="67532cb0-26b0-4334-ac46-37e2009fa6c7" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="77d93dc0-8e53-48a3-9951-390215a58ff7">
              <profile xsi:type="esdl:SingleValue" id="38478ece-c7d5-4825-a8c4-f4f8867d940c">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="30319c62-fea5-4751-845a-8dc156a0a528" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="fdfb3d16-d3da-46b1-be29-337ac333403d">
              <profile xsi:type="esdl:SingleValue" id="efeefc53-2c71-498d-9ab3-4e904b7089b1">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="0874535d-8e5d-417a-b044-b9c2644a4cc7" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="852c74ba-8fa3-48fa-8699-3b1155ec0441">
              <profile xsi:type="esdl:SingleValue" id="68086317-a274-43c8-8218-06dca752efe3" value="11.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="e460feb2-8c4e-4627-aaed-b093de12b8f1" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="9bc9f29e-d539-4581-8ff0-83e7b7b6f1b3">
              <profile xsi:type="esdl:SingleValue" id="c5d045e0-dbcf-4d24-b4ac-27ac5d37f925">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="51eab842-0f0f-4864-9e07-1a0f39ad2a1f" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="abe0fce5-9f5d-4f7d-a70b-3523db1fd79c">
              <profile xsi:type="esdl:SingleValue" id="ca14a986-4817-4189-8fad-2927dead0d00">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="124e6ab1-21f9-43a9-975e-70be433ef3ec" aggregated="true">
            <port xsi:type="esdl:InPort" id="e896909a-1926-404b-a3b5-86de15fe9ee4" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="79eaf775-241d-4698-9585-1014aa2123e3" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="5a0046b5-b221-4b4e-80d7-0877c2b1e0ce" aggregated="true">
            <port xsi:type="esdl:InPort" id="10dbbe4e-3c9e-4b56-8dda-681f021c0160" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="193b46ba-a281-48ad-9cad-20f407a52e8b" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="b640417d-6d4b-471a-b81b-8937c2dcbe89" aggregated="true">
            <port xsi:type="esdl:InPort" id="da3c0b7e-c407-49b1-acaa-b7bf539b7313" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="44ce6000-a12b-42f6-ab5b-88e920e85554" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="d030d1e2-8fb2-4925-9355-0b98d2858780" aggregated="true">
          <port xsi:type="esdl:InPort" id="ce9207e9-ee5b-484a-8d45-5c4998b3b602" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="cdfc4e17-768b-4207-93e5-f39d49fff822" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="da121280-58a4-44aa-b486-e2ca04586464" aggregated="true">
          <port xsi:type="esdl:OutPort" id="397d0030-19bf-40d1-afd2-c427666171f9" name="OutPort"/>
        </asset>
        <KPIs id="0e9a0b90-bbcf-47f0-8f51-4ce477f5c4e3">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="ef10122e-1ae2-4bfc-95a4-03ceeb29d44f" value="514"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="f1c2b012-4988-413d-9bd1-c3faf3de783c" value="617887"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="652b6ee7-fccc-4376-ab21-232f7bba3772" value="143655"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="59c61b55-de3a-45b5-8093-cb058221dfae" value="280"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="ad7dcfba-4270-495e-a924-bbc5ac8d3c65" value="887"/>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="BU00030008" name="Verspreide huizen ten zuiden van Eemskanaal">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="103" id="32fb75d2-332f-486c-9eb8-f0f61792bb88">
          <asset xsi:type="esdl:HeatingDemand" id="de4163e7-220a-437d-aaba-cc479185610e" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="696ea398-dc0b-4720-95fb-6ffdcd13de74">
              <profile xsi:type="esdl:SingleValue" id="f51b5154-3bed-486a-bcd0-c222edef535d" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="8ff535ef-ce2e-4464-aad6-c799560e87fd" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="6895052e-2f4a-4665-b820-f200f9f8270c">
              <profile xsi:type="esdl:SingleValue" id="0b4db139-3e09-45d3-90ef-a32f0c1b3fb6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="eb959288-13c0-47f5-ad6c-b87d70382f12" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="7fd8efbb-3148-4bae-9247-ae0e0eab180f">
              <profile xsi:type="esdl:SingleValue" id="0fce8a35-71b5-4405-913d-20688e346bc6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="af015be0-5565-4ff5-bb76-97f2f874163a" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="a9e5b922-2b25-4323-a486-256b6d20fe81">
              <profile xsi:type="esdl:SingleValue" id="03c2ec3f-4584-4dfd-ad7a-187fe1945a99" value="8.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="611b0a3f-e5e0-4c12-9107-e8a63a5424d2" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="81cdb5d7-2913-4a5a-a360-5427a3fc5b27">
              <profile xsi:type="esdl:SingleValue" id="6b29a6f8-7b6d-4d26-9fcf-171c700af5d5">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="ce4cb580-8c2e-41e7-b1c8-0f385aee9774" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="9f837dca-2bd4-4089-8297-614ab74d16e0">
              <profile xsi:type="esdl:SingleValue" id="5d135d53-4ba5-47cc-8225-57852a973f14">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="da1761bd-bdc9-45d3-b341-d32a3b5cdbd8" aggregated="true">
            <port xsi:type="esdl:InPort" id="4bd26ea0-8ac0-417e-92e0-b7b5c0f63cfa" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="420b5a66-f541-40a1-bc32-926658217936" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="05aa1b40-5d00-443b-918b-2cc9a292f60d" aggregated="true">
            <port xsi:type="esdl:InPort" id="413068e0-f2c0-4883-b6a9-b05cff79f935" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="b822e9db-9e1f-4d9d-ab9e-acb4af37c8b1" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="fd894448-c8ab-4cdb-8b09-fe234cf510e9" aggregated="true">
            <port xsi:type="esdl:InPort" id="2ace79c4-6bc9-4b2b-86fa-bebc1c4f149f" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="07071336-79ff-413f-be04-521e292db103" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="51004787-18da-4b22-81b7-4ebbbff5d2d4" aggregated="true">
          <port xsi:type="esdl:InPort" id="7a349368-a970-4826-b98f-cbca8d3d3cc3" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="181e8837-fa20-4d15-a233-b38ff6153387" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="375ac34e-191e-4eec-b8bf-e05e43cdd5de" aggregated="true">
          <port xsi:type="esdl:OutPort" id="58116fd4-6a48-490c-9b8e-90a20f663f63" name="OutPort"/>
        </asset>
        <KPIs id="a643dddf-3b83-40a1-9cf0-9d75b554d3a4">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="0a69c0db-59e1-40bd-b3db-6d2afb910f00" value="284"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="1399c6e3-0f24-4b6d-8f68-9446eb6b3e8e" value="601987"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="95ecf1ef-5e11-4180-93bf-e6efc433d970" value="87924"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="4aa9d64b-314c-4ce5-9775-a4d2c38a77b0" value="309"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="627ba456-6983-4425-b682-d1807587f151" value="855"/>
        </KPIs>
      </area>
      <area scope="NEIGHBOURHOOD" id="BU00030009" name="Verspreide huizen ten noorden van het Damsterdiep">
        <asset xsi:type="esdl:AggregatedBuilding" name="woningequivalenten" aggregationCount="87" id="6b0e59c5-20da-417f-a524-0ae2dc9e51c3">
          <asset xsi:type="esdl:HeatingDemand" id="64cef01f-4425-4b43-9d24-df476ae2caab" name="Vraag_Warmte_totaal">
            <port xsi:type="esdl:InPort" id="d26bb2c1-4cb7-42f4-adf2-f1b7e4988ca3">
              <profile xsi:type="esdl:SingleValue" id="a68b5567-cce9-4384-ad49-71efcc4fe867" value="12.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="2908e041-9518-4e8d-b399-c02d3174b516" name="Vraag_Aardgas">
            <port xsi:type="esdl:InPort" id="1bc9bb7d-0d99-42e1-9077-947ff4c9d26e">
              <profile xsi:type="esdl:SingleValue" id="6a4d4a55-8067-49d9-acd2-1fc4e2812dd6">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:GasDemand" id="37e55c00-a533-4d80-98f6-2c8305a34384" name="Vraag_Hernieuwbaar_gas">
            <port xsi:type="esdl:InPort" id="78af36a4-52b3-4c45-a2c5-7e1b64d39f5e">
              <profile xsi:type="esdl:SingleValue" id="4a591934-2d1b-44ba-a320-957e6a82589a">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:ElectricityDemand" id="a51dbe0b-4429-47a7-b837-534d00684d4c" name="Vraag_Electricteit">
            <port xsi:type="esdl:InPort" id="433e1217-b6ca-49f0-9c61-3c1ca8022669">
              <profile xsi:type="esdl:SingleValue" id="76ec001a-76bb-447c-867b-fa92c87eb97b" value="12.0">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="a2bb4437-18af-49f6-89b2-63da7fd4ee5a" name="Vraag_MT_warmte">
            <port xsi:type="esdl:InPort" id="13593473-6612-4fd8-8f27-e742594f2470">
              <profile xsi:type="esdl:SingleValue" id="43c57b10-830a-442c-a49b-0888134a4110">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HeatingDemand" id="737e5817-3143-4017-a9ba-fdcaf589517c" name="Vraag_LT_warmte">
            <port xsi:type="esdl:InPort" id="9b64077a-eb0b-459f-a524-7c6a8a87ccaa">
              <profile xsi:type="esdl:SingleValue" id="8a6d9440-2217-48d6-a652-2840104fe4dd">
                <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="JOULE" perTimeUnit="YEAR" physicalQuantity="ENERGY" multiplier="GIGA"/>
              </profile>
            </port>
          </asset>
          <asset xsi:type="esdl:HConnection" name="Heating_lt15_connector" id="d0829f9c-b433-40f2-a9b5-4f313ec5592e" aggregated="true">
            <port xsi:type="esdl:InPort" id="a83d825b-64ae-417b-b30c-2a1e34ffdd9d" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="1579eb23-e67d-434c-96ac-388864320ca8" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:EConnection" name="Elektricity_connector" id="3fac0539-1ed7-4f2e-a72f-9faa09c94363" aggregated="true">
            <port xsi:type="esdl:InPort" id="39040ca4-ec07-432e-9fe0-7537f7d5a610" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="53a822e3-3add-49dd-9084-2baeb5007c91" name="OutPort"/>
          </asset>
          <asset xsi:type="esdl:HeatPump" name="eWP_lucht" id="71041776-d119-40ba-a5ee-8107e5d00409" aggregated="true">
            <port xsi:type="esdl:InPort" id="aa60bf0d-c495-4626-a623-e76183a49bd4" name="InPort"/>
            <port xsi:type="esdl:OutPort" id="c2d00540-5a5d-4f98-b379-3dbdea416c37" name="OutPort"/>
          </asset>
        </asset>
        <asset xsi:type="esdl:HeatNetwork" name="Heating_LT15_network" id="1f24c1a2-9038-4c68-9f86-49c096d98564" aggregated="true">
          <port xsi:type="esdl:InPort" id="e62862c6-bcc9-4631-86cc-514ecfe6d90a" name="InPort"/>
          <port xsi:type="esdl:OutPort" id="c2945d89-86f6-4060-8b1d-cd713e525342" name="OutPort"/>
        </asset>
        <asset xsi:type="esdl:ElectricityNetwork" name="Electricity_network" id="154d4047-f1ad-4229-ad26-0de9871a567d" aggregated="true">
          <port xsi:type="esdl:OutPort" id="3c9f6f69-c7bc-41e7-b9e1-4055bc81b016" name="OutPort"/>
        </asset>
        <KPIs id="33d645f8-1799-470e-8e8e-858b9699340e">
          <kpi xsi:type="esdl:StringKPI" name="CO2_reductie" id="0e6d618b-38d8-4421-9dfc-2d1c2c06015f" value="394"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_abs_meerkosten" id="ef858750-88aa-493b-9982-6bd7acf280a6" value="413414"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten" id="224286a3-a112-45ca-b108-524a8c2f90f0" value="112546"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_CO2" id="8605063c-cd92-4f12-ba06-255ab6c3f842" value="286"/>
          <kpi xsi:type="esdl:StringKPI" name="nat_meerkosten_WEQ" id="afdaae5d-1f40-49e1-aa23-1a7561673708" value="1308"/>
        </KPIs>
      </area>
    </area>
  </instance>
</esdl:EnergySystem>
