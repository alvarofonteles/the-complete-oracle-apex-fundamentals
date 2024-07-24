prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 85645
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>85645
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(17848866967361560576)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
