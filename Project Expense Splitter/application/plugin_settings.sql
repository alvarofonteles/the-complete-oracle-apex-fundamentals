prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>85645
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848564682633560354)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15547532014657
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848564971065560354)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15547532014684
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848565224067560354)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15547532014703
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848565699976560354)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15547532014718
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848566132763560355)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15547532014728
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848566517256560355)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15547532014738
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848566867954560355)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15547532014755
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848567144688560355)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15547532014775
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848567456087560355)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15547532014778
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848567768311560356)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15547532014781
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848568067586560356)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15547532014787
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848568314556560356)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15547532014795
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(17848568648053560356)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15547532014802
);
wwv_flow_imp.component_end;
end;
/
