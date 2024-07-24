prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>137637
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763981074461617338)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15545994302926
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763981322359617339)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15545994302940
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763981687895617339)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15545994302945
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763981975721617339)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15545994302951
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763982244523617339)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15545994302955
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763982507490617339)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15545994302959
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763982837555617340)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15545994302969
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763983109000617340)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15545994302977
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763983434540617340)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15545994302980
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763983777064617340)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15545994302983
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763984023252617340)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15545994302988
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763984351166617341)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15545994302998
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(15763984651051617341)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15545994303003
);
wwv_flow_imp.component_end;
end;
/
