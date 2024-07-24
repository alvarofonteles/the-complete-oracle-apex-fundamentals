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
,p_default_id_offset=>17965199062259326442
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(35814038747996887000)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(35813795530722886813)
,p_default_dialog_template=>wwv_flow_imp.id(35813790206478886810)
,p_error_template=>wwv_flow_imp.id(35813780063473886805)
,p_printer_friendly_template=>wwv_flow_imp.id(35813795530722886813)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(35813780063473886805)
,p_default_button_template=>wwv_flow_imp.id(35813946804999886888)
,p_default_region_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_chart_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_form_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_reportr_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_tabform_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_wizard_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_menur_template=>wwv_flow_imp.id(35813885434549886856)
,p_default_listr_template=>wwv_flow_imp.id(35813872844214886850)
,p_default_irr_template=>wwv_flow_imp.id(35813862971682886846)
,p_default_report_template=>wwv_flow_imp.id(35813911434701886870)
,p_default_label_template=>wwv_flow_imp.id(35813944328863886887)
,p_default_menu_template=>wwv_flow_imp.id(35813948368288886889)
,p_default_calendar_template=>wwv_flow_imp.id(35813948553409886889)
,p_default_list_template=>wwv_flow_imp.id(35813928165990886878)
,p_default_nav_list_template=>wwv_flow_imp.id(35813940011681886884)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(35813940011681886884)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(35813934647878886881)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(35813808758363886820)
,p_default_dialogr_template=>wwv_flow_imp.id(35813805776383886819)
,p_default_option_label=>wwv_flow_imp.id(35813944328863886887)
,p_default_required_label=>wwv_flow_imp.id(35813945626914886887)
,p_default_navbar_list_template=>wwv_flow_imp.id(35813934255779886881)
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
