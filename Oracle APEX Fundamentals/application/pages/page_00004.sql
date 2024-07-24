prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.2'
,p_default_workspace_id=>5175876941333495070
,p_default_application_id=>137637
,p_default_id_offset=>0
,p_default_owner=>'WKSP_APEXXEPDB1'
);
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Regions'
,p_alias=>'REGIONS'
,p_step_title=>'Regions'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731086540483181908)
,p_plug_name=>'Region Display Selector'
,p_title=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731086346826181906)
,p_plug_name=>'Calander'
,p_title=>unistr('Calend\00E1rio')
,p_parent_plug_id=>wwv_flow_imp.id(15731086540483181908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PRODUCT_INFO'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'calendar_export', 'CSV',
  'display_column', 'PRODUCT_NAME',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '10',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'IMAGE_LAST_UPDATE',
  'view_edit_link', 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_PRODUCT_ID:&PRODUCT_ID.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731086419235181907)
,p_plug_name=>'HTML Output'
,p_parent_plug_id=>wwv_flow_imp.id(15731086540483181908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare cursor states is',
'select',
'    state_name',
'from',
'    demo_states;',
'',
'begin htp.p(''<div class="mytree-container">'');',
'',
'for i In states loop htp.p(''<li>'' || i.state_name || ''</li>'');',
'',
'end Loop;',
'',
'htp.p(''</ul>'');',
'',
'htp.p(''</div>'');',
'',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731086731898181910)
,p_plug_name=>'Faceted Search'
,p_parent_plug_id=>wwv_flow_imp.id(15731086540483181908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731087148277181914)
,p_plug_name=>'Faceted'
,p_parent_plug_id=>wwv_flow_imp.id(15731086731898181910)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(15731087457926181917)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(15731087457926181917)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(15731086731898181910)
,p_template=>wwv_flow_imp.id(15764289146442617395)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DEMO_PRODUCT_INFO'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(15764327509084617414)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731087556734181918)
,p_query_column_id=>1
,p_column_alias=>'PRODUCT_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731087683113181919)
,p_query_column_id=>2
,p_column_alias=>'PRODUCT_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Product Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731087739366181920)
,p_query_column_id=>3
,p_column_alias=>'PRODUCT_DESCRIPTION'
,p_column_display_sequence=>30
,p_column_heading=>'Product Description'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731087804733181921)
,p_query_column_id=>4
,p_column_alias=>'CATEGORY'
,p_column_display_sequence=>40
,p_column_heading=>'Category'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731087990779181922)
,p_query_column_id=>5
,p_column_alias=>'PRODUCT_AVAIL'
,p_column_display_sequence=>50
,p_column_heading=>'Product Avail'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731088008367181923)
,p_query_column_id=>6
,p_column_alias=>'LIST_PRICE'
,p_column_display_sequence=>60
,p_column_heading=>'List Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731088233725181925)
,p_query_column_id=>8
,p_column_alias=>'MIMETYPE'
,p_column_display_sequence=>80
,p_column_heading=>'Mimetype'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731088308997181926)
,p_query_column_id=>9
,p_column_alias=>'FILENAME'
,p_column_display_sequence=>90
,p_column_heading=>'Filename'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731088473247181927)
,p_query_column_id=>10
,p_column_alias=>'IMAGE_LAST_UPDATE'
,p_column_display_sequence=>100
,p_column_heading=>'Image Last Update'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(15731088535006181928)
,p_query_column_id=>11
,p_column_alias=>'TAGS'
,p_column_display_sequence=>110
,p_column_heading=>'Tags'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731088617075181929)
,p_plug_name=>'Tree'
,p_parent_plug_id=>wwv_flow_imp.id(15731086540483181908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    *',
'from',
'    (',
'        select',
'            null as parent,',
'            ''All Categories'' as id,',
'            ''All Categories'' as name',
'        from',
'            demo_product_info',
'        union',
'        select',
'            ''All Categories'' as parent,',
'            category as id,',
'            category as name',
'        from',
'            demo_product_info',
'        union',
'        select',
'            category as parent,',
'            to_char(product_id) as id,',
'            product_name as name',
'        from',
'            demo_product_info',
'    ) start with parent is null connect by prior id = parent'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'activate_node_link_with', 'S',
  'default_icon_css_class', 'icon-tree-folder',
  'icon_type_css_class', 'a-Icon',
  'node_id_column', 'ID',
  'node_label_column', 'NAME',
  'order_siblings_by', 'NAME',
  'parent_key_column', 'PARENT',
  'start_tree_with', 'NULL',
  'tree_hierarchy', 'SQL',
  'tree_tooltip', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15731088792162181930)
,p_plug_name=>'URL'
,p_parent_plug_id=>wwv_flow_imp.id(15731086540483181908)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(15764289146442617395)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_URL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'iframe_attributes', 'width="1150" height="600"',
  'inclusion_mode', 'IFRAME',
  'url', 'https://www.globo.com/')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15731087298882181915)
,p_name=>'P4_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(15731087148277181914)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_02=>'FACET'
);
wwv_flow_imp.component_end;
end;
/
