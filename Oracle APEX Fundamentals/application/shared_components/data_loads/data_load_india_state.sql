prompt --application/shared_components/data_loads/data_load_india_state
begin
--   Manifest
--     DATA LOAD: Data Load India State
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>137637
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(16470686068242857224)
,p_name=>'Data Load India State'
,p_format=>'CSV'
,p_encoding=>'iso-8859-1'
,p_csv_enclosed=>'"'
,p_has_header_row=>true
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16470686417572857243)
,p_data_profile_id=>wwv_flow_imp.id(16470686068242857224)
,p_name=>'ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_selector_type=>'NAME'
,p_selector=>'ID'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(16470686732155857243)
,p_data_profile_id=>wwv_flow_imp.id(16470686068242857224)
,p_name=>'STATE_NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>255
,p_selector_type=>'NAME'
,p_selector=>'STATE_NAME'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(16470686939442857243)
,p_name=>'Data Load India State'
,p_static_id=>'data_load_india_state'
,p_target_type=>'TABLE'
,p_table_name=>'DEMO_INIDA_STATE'
,p_data_profile_id=>wwv_flow_imp.id(16470686068242857224)
,p_loading_method=>'MERGE'
,p_commit_interval=>200
,p_error_handling=>'ABORT'
,p_skip_validation=>'N'
,p_version_scn=>15546513500670
);
wwv_flow_imp.component_end;
end;
/
