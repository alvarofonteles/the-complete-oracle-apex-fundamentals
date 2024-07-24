prompt --application/shared_components/navigation/lists/dashboard
begin
--   Manifest
--     LIST: Dashboard
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>137637
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(16453108473577278702)
,p_name=>'Dashboard'
,p_list_status=>'PUBLIC'
,p_version_scn=>15546502237107
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16453108601926278702)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Demo Report'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16453109048147278703)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Demo Form'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(16453109443229278703)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Regions'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
