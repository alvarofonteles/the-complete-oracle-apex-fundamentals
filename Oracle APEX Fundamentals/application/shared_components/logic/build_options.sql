prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 137637
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>137637
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(15763984998056617341)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15545994303017
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(15764479444275617562)
,p_build_option_name=>'Feature: About Page'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15545994314268
,p_feature_identifier=>'APPLICATION_ABOUT_PAGE'
,p_build_option_comment=>'About this application page.'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(15764479566965617562)
,p_build_option_name=>'Feature: Theme Style Selection'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>15545994314272
,p_feature_identifier=>'APPLICATION_THEME_STYLE_SELECTION'
,p_build_option_comment=>'Allow administrators to select a default color scheme (theme style) for the application. Administrators can also choose to allow end users to choose their own theme style. '
);
wwv_flow_imp.component_end;
end;
/
