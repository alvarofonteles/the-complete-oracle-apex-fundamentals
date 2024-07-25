prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>85645
,p_default_id_offset=>17965199062259326442
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Expense'
,p_alias=>'EXPENSE'
,p_step_title=>'Expense'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731090400390181947)
,p_plug_name=>'GROUP_NAME'
,p_title=>'&P3_GROUP_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT expense_id, expense_name, category, amount, group_id FROM d_expenses ',
'WHERE expense_id IN ( SELECT expense_id FROM d_expenses WHERE group_id = :p3_group_id );'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'counter_column', 'AMOUNT',
  'image_type', 'IMAGE_URL',
  'image_url_column', 'CATEGORY',
  'link_target', 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_GROUP_ID,P5_EXPENSE_ID,P5_EXPENSE_NAME:&GROUP_ID.,&EXPENSE_ID.,&EXPENSE_NAME.',
  'list_view_features', 'IMAGE',
  'text_column', 'EXPENSE_NAME')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17965495105386092889)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(35813885434549886856)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(35813768569960886799)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(35813948368288886889)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970116402144204729)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15731090400390181947)
,p_button_name=>'VIEW_MEMBERES'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View Members'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_GROUP_ID,P6_GROUP_NAME:&P3_GROUP_ID.,&P3_GROUP_NAME.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970113669609204701)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(15731090400390181947)
,p_button_name=>'ADD_EXPENSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Expense'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_GROUP_ID:&P3_GROUP_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731090632867181949)
,p_name=>'P3_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15731090400390181947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731090719257181950)
,p_name=>'P3_GROUP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15731090400390181947)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18449029197939147402)
,p_name=>'DIALOG_CLOSED'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18449029202934147403)
,p_event_id=>wwv_flow_imp.id(18449029197939147402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15731090400390181947)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15731090511865181948)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Group Name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT group_name',
'  INTO :p3_group_name',
'  FROM d_groups',
' WHERE group_id = :p3_group_id;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>15731090511865181948
);
wwv_flow_imp.component_end;
end;
/
