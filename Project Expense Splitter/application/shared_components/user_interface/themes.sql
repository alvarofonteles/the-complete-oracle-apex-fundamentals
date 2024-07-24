prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 85645
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>85645
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(17848839685737560558)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(17848596468463560371)
,p_default_dialog_template=>wwv_flow_imp.id(17848591144219560368)
,p_error_template=>wwv_flow_imp.id(17848581001214560363)
,p_printer_friendly_template=>wwv_flow_imp.id(17848596468463560371)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(17848581001214560363)
,p_default_button_template=>wwv_flow_imp.id(17848747742740560446)
,p_default_region_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_chart_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_form_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_reportr_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_tabform_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_wizard_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_menur_template=>wwv_flow_imp.id(17848686372290560414)
,p_default_listr_template=>wwv_flow_imp.id(17848673781955560408)
,p_default_irr_template=>wwv_flow_imp.id(17848663909423560404)
,p_default_report_template=>wwv_flow_imp.id(17848712372442560428)
,p_default_label_template=>wwv_flow_imp.id(17848745266604560445)
,p_default_menu_template=>wwv_flow_imp.id(17848749306029560447)
,p_default_calendar_template=>wwv_flow_imp.id(17848749491150560447)
,p_default_list_template=>wwv_flow_imp.id(17848729103731560436)
,p_default_nav_list_template=>wwv_flow_imp.id(17848740949422560442)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(17848740949422560442)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(17848735585619560439)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(17848609696104560378)
,p_default_dialogr_template=>wwv_flow_imp.id(17848606714124560377)
,p_default_option_label=>wwv_flow_imp.id(17848745266604560445)
,p_default_required_label=>wwv_flow_imp.id(17848746564655560445)
,p_default_navbar_list_template=>wwv_flow_imp.id(17848735193520560439)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
