prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>'Add Member'
,p_alias=>'ADD-MEMBER'
,p_page_mode=>'MODAL'
,p_step_title=>'Add Member'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970117002593204735)
,p_plug_name=>'Add Member'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970117348645204738)
,p_plug_name=>'Button Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(35813808758363886820)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970117480181204739)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17970117348645204738)
,p_button_name=>'ADD_MEMBER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Member'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970117166321204736)
,p_name=>'P7_MEMBERS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17970117002593204735)
,p_prompt=>'Members'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    user_name AS d,',
'    user_id AS r',
'FROM',
'    d_users u',
'WHERE',
'    user_id NOT IN (',
'        SELECT',
'            user_id',
'        FROM',
'            d_user_details',
'        WHERE',
'            group_id =:p7_group_id',
'    );'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970117271827204737)
,p_name=>'P7_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17970117002593204735)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17970117516904204740)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Member'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected   apex_t_varchar2;',
'BEGIN',
'    l_selected := apex_string.split(:p7_members,'':'');',
'    FOR i IN 1..l_selected.count LOOP',
'        INSERT INTO d_user_details ( usr_det_id,group_id,user_id ) VALUES (',
'            usr_det_id_seq.NEXTVAL,',
'            :p7_group_id,',
'            l_selected(i)',
'        );',
'',
'    END LOOP;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17970117516904204740
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17970117614649204741)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17970117614649204741
);
wwv_flow_imp.component_end;
end;
/
