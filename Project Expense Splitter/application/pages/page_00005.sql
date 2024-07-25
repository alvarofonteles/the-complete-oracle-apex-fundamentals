prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_name=>'Expense View'
,p_alias=>'EXPENSE-VIEW'
,p_step_title=>'Expense View'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970115866617204723)
,p_plug_name=>'Main'
,p_title=>'&P5_EXPENSE_NAME.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970115983938204724)
,p_plug_name=>'Payer Details'
,p_parent_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    CURSOR c_payer IS',
'        SELECT',
'            ad.lending_user_id,',
'            e.amount,',
'            e.transaction_date,',
'            e.notes',
'        FROM',
'            d_amount_details ad,',
'            d_expenses e',
'        WHERE',
'                ad.expense_id = e.expense_id',
'            AND',
'                ad.group_id =:p5_group_id',
'            AND',
'                ad.expense_id =:p5_expense_id',
'            AND',
'                ROWNUM = 1;',
'',
'    r_payer   c_payer%rowtype;',
'BEGIN',
'    OPEN c_payer;',
'    FETCH c_payer INTO r_payer;',
'    htp.p(''<div><strong>''',
'     || get_user_name(r_payer.lending_user_id) -- create function',
'     || ''</strong> paid <strong>''',
'     || r_payer.amount',
'     || ''</strong> on ''',
'     || r_payer.transaction_date',
'     || ''</div><div style="padding:8px 0px 0px 16px">''',
'     || r_payer.notes',
'     || ''</div>'');',
'',
'    CLOSE c_payer;',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(17970116084847204725)
,p_plug_name=>'Split Details'
,p_parent_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813825093873886828)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE BEGIN',
'    htp.p(''<ul class="ul-sql">'');',
'    FOR i IN (',
'        SELECT',
'            borrowing_user_id,',
'            borrowing_amount',
'        FROM',
'            d_amount_details',
'        WHERE',
'                group_id =:p5_group_id',
'            AND',
'                expense_id =:p5_expense_id',
'    ) LOOP',
'        htp.p(''<li class="li-sql"><strong>''',
'         || get_user_name(i.borrowing_user_id)',
'         || ''</strong> owes <strong>''',
'         || i.borrowing_amount',
'         || ''</strong></li>'');',
'    END LOOP;',
'',
'    htp.p(''</ul>'');',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970118202525204747)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_button_name=>'DELETE_EXPENSE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete Expense'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'javascript: apex.confirm(''Are you sure you want to delete the expense?'', ''DELETE'');'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(17970118144842204746)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_button_name=>'UPDATE_EXPENSE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(35813946804999886888)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update Expense'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_GROUP_ID,P4_EXPENSE_ID:&P5_GROUP_ID.,&P5_EXPENSE_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(18449029419440147405)
,p_branch_name=>'Go To Page 3'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970116165310204726)
,p_name=>'P5_EXPENSE_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970116283805204727)
,p_name=>'P5_GROUP_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(17970116331680204728)
,p_name=>'P5_EXPENSE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(17970115866617204723)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(18450786345468469867)
,p_name=>'DIALOG_CLOSED'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(18450786717766469868)
,p_event_id=>wwv_flow_imp.id(18450786345468469867)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(18449029326678147404)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Expense'
,p_process_sql_clob=>'DELETE FROM d_expenses WHERE expense_id =:p5_expense_id;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_internal_uid=>18449029326678147404
);
wwv_flow_imp.component_end;
end;
/
