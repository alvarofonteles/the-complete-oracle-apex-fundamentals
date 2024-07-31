prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_name=>'Total Amount Spent'
,p_alias=>'TOTAL-AMOUNT-SPENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Charts'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18449030759682147418)
,p_plug_name=>'Charts'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(18449030838724147419)
,p_region_id=>wwv_flow_imp.id(18449030759682147418)
,p_chart_type=>'bar'
,p_title=>'&APP_USER.'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(18449030933289147420)
,p_chart_id=>wwv_flow_imp.id(18449030838724147419)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    get_user_name(ad.borrowing_user_id) as user_name,',
'    sum(ad.borrowing_amount) as spend_amount,',
'case',
'        when e.category = ''https://icons.iconarchive.com/icons/aha-soft/desktop-buffet/16/Steak-icon.png'' then ''Food and Drink''',
'        when e.category = ''https://icons.iconarchive.com/icons/apathae/chakram-2/16/Home-icon.png'' then ''Home and Utilities''',
'        when e.category = ''https://icons.iconarchive.com/icons/iconshow/transport/16/Sportscar-car-icon.png'' then ''Transportation''',
'        when e.category = ''https://icons.iconarchive.com/icons/wwalczyszyn/android-style-honeycomb/16/Music-icon.png'' then ''Entertainment''',
'        when e.category = ''https://icons.iconarchive.com/icons/awicons/vista-artistic/16/coin-add-icon.png'' then ''Other''',
'    end as category',
'from',
'    d_amount_details ad,',
'    d_expenses e',
'where',
'    ad.expense_id = e.expense_id',
'    and borrowing_user_id = (select user_id from d_users where user_name = :app_user)',
'group by',
'    e.category,',
'    ad.borrowing_user_id;'))
,p_items_value_column_name=>'SPEND_AMOUNT'
,p_items_label_column_name=>'CATEGORY'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(18449031071267147421)
,p_chart_id=>wwv_flow_imp.id(18449030838724147419)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(18449031137645147422)
,p_chart_id=>wwv_flow_imp.id(18449030838724147419)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp.component_end;
end;
/
