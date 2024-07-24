prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>85645
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Expense Splitter'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731089262418181935)
,p_plug_name=>'Groups'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(17848673781955560408)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    g.group_id,',
'    g.group_name,',
'    g.category,',
'    g.description',
'FROM',
'    d_groups g',
'WHERE',
'    g.group_id IN (',
'        SELECT',
'            group_id',
'        FROM',
'            d_user_details',
'        WHERE',
'            user_id = (',
'                SELECT',
'                    user_id',
'                FROM',
'                    d_users',
'                WHERE',
'                    user_name = UPPER(nvl(:app_user, ''ALVAROFONTELES@HOTMAIL.COM''))',
'            )',
'    );'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'image_type', 'IMAGE_URL',
  'image_url_column', 'CATEGORY',
  'list_view_features', 'IMAGE',
  'supplemental_info_column', 'DESCRIPTION',
  'text_column', 'GROUP_NAME')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17848875322275560584)
,p_plug_name=>'Expense Splitter'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(17848640442834560393)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15731089304017181936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15731089262418181935)
,p_button_name=>'NEW_GROUP'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(17848747742740560446)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Group'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(15731090250903181945)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(15731090337177181946)
,p_event_id=>wwv_flow_imp.id(15731090250903181945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(15731089262418181935)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15731089162786181934)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch User Details'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_user_id   NUMBER;',
'BEGIN',
'    SELECT',
'        nvl(',
'            MAX(user_id),',
'            -1',
'        )',
'    INTO',
'        l_user_id',
'    FROM',
'        d_users',
'    WHERE',
'        user_name =:app_user;',
'',
'    IF',
'        l_user_id =-1',
'    THEN',
'        INSERT INTO d_users (',
'            user_id,',
'            first_name,',
'            last_name,',
'            user_name,',
'            email_address',
'        ) SELECT',
'            user_id_seq.NEXTVAL,',
'            awpu.first_name,',
'            awpu.last_name,',
'            awpu.user_name,',
'            lower(awpu.email)',
'        FROM',
'            apex_workspace_apex_users awpu',
'        WHERE',
'            user_name =:app_user;',
'',
'    END IF;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>15731089162786181934
);
wwv_flow_imp.component_end;
end;
/
