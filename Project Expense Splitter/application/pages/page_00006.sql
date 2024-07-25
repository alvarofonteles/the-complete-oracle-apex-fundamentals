prompt --application/pages/page_00006
begin
--   Manifest
--     PAGE: 00006
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
 p_id=>6
,p_name=>'Member'
,p_alias=>'MEMBER'
,p_step_title=>'Member'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970116592953204730)
,p_plug_name=>'Member'
,p_title=>'&P6_GROUP_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    user_name,',
'    email_address',
'FROM',
'    d_users u',
'WHERE',
'    user_id IN (',
'        SELECT',
'            user_id',
'        FROM',
'            d_user_details',
'        WHERE',
'            group_id =:p6_group_id',
'    );'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'supplemental_info_column', 'EMAIL_ADDRESS',
  'text_column', 'USER_NAME')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970116947418204734)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(17970116592953204730)
,p_button_name=>'ADD_MEMBER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::P7_GROUP_ID:&P6_GROUP_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970116773312204732)
,p_name=>'P6_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17970116592953204730)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970116894629204733)
,p_name=>'P6_GROUP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17970116592953204730)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(17970117982903204744)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(17970118087575204745)
,p_event_id=>wwv_flow_imp.id(17970117982903204744)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(17970116592953204730)
);
wwv_flow_imp.component_end;
end;
/
