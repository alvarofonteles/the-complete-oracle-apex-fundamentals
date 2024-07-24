prompt --application/shared_components/navigation/lists/user_interface
begin
--   Manifest
--     LIST: User Interface
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
 p_id=>wwv_flow_imp.id(15764505497971617587)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(15764479566965617562)
,p_version_scn=>15545994315005
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(15764505977576617587)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10010:&APP_SESSION.::&DEBUG.:10010::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(15764479566965617562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
