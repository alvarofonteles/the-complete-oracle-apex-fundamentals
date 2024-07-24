prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'New Group'
,p_alias=>'NEW-GROUP'
,p_page_mode=>'MODAL'
,p_step_title=>'New Group'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731089453003181937)
,p_plug_name=>'New Group'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(17848673781955560408)
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731089800422181941)
,p_plug_name=>'Button Footer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(17848609696104560378)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(15731089920194181942)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(15731089800422181941)
,p_button_name=>'CREATE_GROUP'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(17848747742740560446)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Group'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731089583523181938)
,p_name=>'P2_GROUP_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15731089453003181937)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Group Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(17848745266604560445)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731089618033181939)
,p_name=>'P2_CATEGORY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(15731089453003181937)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Category'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Apartment;https://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/24/Actions-go-home-icon.png,Trip;https://icons.iconarchive.com/icons/google/noto-emoji-travel-places/16/42549-taxi-icon.png,Other;https://icons.iconarchive.com/icons/hopsta'
||'rter/soft-scraps/16/User-Group-icon.png'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(17848745266604560445)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731089774351181940)
,p_name=>'P2_DESCRIPTION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(15731089453003181937)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(17848745266604560445)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15731090026896181943)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Create Group'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_user_id    d_users.user_id%TYPE;',
'    l_group_id   d_groups.group_id%TYPE;',
'BEGIN',
'    SELECT',
'        user_id',
'    INTO',
'        l_user_id',
'    FROM',
'        d_users',
'    WHERE',
'        user_name = :app_user;',
'    ',
'    INSERT INTO d_groups (',
'        group_id,',
'        group_name,',
'        category,',
'        description',
'    ) VALUES (',
'        group_id_seq.NEXTVAL,',
'        :p2_group_name,',
'        :p2_category,',
'        :p2_description',
'    ) RETURNING group_id INTO l_group_id;',
'',
'    INSERT INTO d_user_details ( usr_det_id,group_id,user_id ) VALUES (',
'        usr_det_id_seq.NEXTVAL,',
'        l_group_id,',
'        l_user_id',
'    );',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(15731089920194181942)
,p_internal_uid=>15731090026896181943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15731090141081181944)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>15731090141081181944
);
wwv_flow_imp.component_end;
end;
/
