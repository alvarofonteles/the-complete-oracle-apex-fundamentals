prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_name=>'Expense Details'
,p_alias=>'EXPENSE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Expense Details'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970113701993204702)
,p_plug_name=>'Expense Datails'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    e.expense_id,',
'    e.expense_name,',
'    e.category,',
'    e.amount,',
'    e.transaction_date,',
'    e.notes',
'FROM',
'    d_expenses e',
'WHERE',
'    e.expense_id =:p4_expense_id;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970114704884204712)
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
 p_id=>wwv_flow_imp.id(17970114812312204713)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17970114704884204712)
,p_button_name=>'ADD_EXPENSE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Expense'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15764888194837371303)
,p_name=>'P4_GROUP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970113942272204704)
,p_name=>'P4_EXPENSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_source=>'EXPENSE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114018671204705)
,p_name=>'P4_EXPENSE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Expense Name'
,p_source=>'EXPENSE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114127080204706)
,p_name=>'P4_CATEGORY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Category'
,p_source=>'CATEGORY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Food and Drink;https://icons.iconarchive.com/icons/aha-soft/desktop-buffet/16/Steak-icon.png,Home and Utilities;https://icons.iconarchive.com/icons/apathae/chakram-2/16/Home-icon.png,Transportation;https://icons.iconarchive.com/icons/iconshow/'
||'transport/16/Sportscar-car-icon.png,Entertainment;https://icons.iconarchive.com/icons/wwalczyszyn/android-style-honeycomb/16/Music-icon.png,Other;https://icons.iconarchive.com/icons/awicons/vista-artistic/16/coin-add-icon.png'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114299803204707)
,p_name=>'P4_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114307165204708)
,p_name=>'P4_TRANSACTION_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Transaction Date'
,p_source=>'TRANSACTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114464352204709)
,p_name=>'P4_NOTES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_item_source_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Notes'
,p_source=>'NOTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114597701204710)
,p_name=>'P4_PAYER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Payer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    user_name AS d,',
'    user_id AS r',
'FROM',
'    d_users',
'WHERE',
'    user_id IN (',
'        SELECT',
'            user_id',
'        FROM',
'            d_user_details',
'        WHERE',
'            group_id =:p4_group_id',
'    );'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(35813944328863886887)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970114647761204711)
,p_name=>'P4_INCLUDED_MEMBERS'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(17970113701993204702)
,p_prompt=>'Included Members'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    user_name AS d,',
'    user_id AS r',
'FROM',
'    d_users',
'WHERE',
'    user_id IN (',
'        SELECT',
'            user_id',
'        FROM',
'            d_user_details',
'        WHERE',
'            group_id =:p4_group_id',
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17970114900632204714)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Expense'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected   apex_t_varchar2;',
'    l_count      NUMBER;',
'BEGIN',
'    INSERT INTO d_expenses (',
'        expense_id,',
'        expense_name,',
'        category,',
'        amount,',
'        transaction_date,',
'        notes,',
'        group_id',
'    ) VALUES (',
'        expense_id_seq.NEXTVAL,',
'        :p4_expense_name,',
'        :p4_category,',
'        :p4_amount,',
'        :p4_transaction_date,',
'        :p4_notes,',
'        :p4_group_id',
'    ) RETURNING expense_id INTO :p4_expense_id;',
'',
'    l_selected := apex_string.split(:p4_included_members,'':'');',
'    l_count := l_selected.count;',
'    FOR i IN 1..l_selected.count LOOP',
'        INSERT INTO d_amount_details (',
'            amt_det_id,',
'            group_id,',
'            expense_id,',
'            borrowing_user_id,',
'            borrowing_amount,',
'            lending_user_id,',
'            lending_amount',
'        ) VALUES (',
'            amt_det_id_seq.NEXTVAL,',
'            :p4_group_id,',
'            :p4_expense_id,',
'            l_selected(i),',
'            :p4_amount / l_count,',
'            :p4_payer,',
'            :p4_amount / l_count',
'        );',
'',
'    END LOOP;',
'',
'END;   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>17970114900632204714
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(17970113837902204703)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(17970113701993204702)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Expense Details'
,p_internal_uid=>17970113837902204703
);
wwv_flow_imp.component_end;
end;
/
