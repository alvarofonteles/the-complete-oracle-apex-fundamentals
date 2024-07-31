prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Balance'
,p_alias=>'BALANCE'
,p_step_title=>'Balance'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var acc = document.getElementsByClassName("accordion");',
'var i;',
'',
'for (i = 0; i < acc.length; i++) {',
'  acc[i].addEventListener("click", function() {',
'    this.classList.toggle("active");',
'    var panel = this.nextElementSibling;',
'    if (panel.style.maxHeight) {',
'      panel.style.maxHeight = null;',
'    } else {',
'      panel.style.maxHeight = panel.scrollHeight + "px";',
'    } ',
'  });',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.accordion {',
'    background-color: #fcfbfa;',
'    color: #444;',
'    cursor: pointer;',
'    padding: 18px;',
'    width: 100%;',
'    border: none;',
'    text-align: left;',
'    outline: none;',
'    font-size: 15px;',
'    transition: 0.4s;',
'  }',
'  ',
'  .active, .accordion:hover {',
'    background-color: #f4f4f4;',
'  }',
'  ',
'  .panel {',
'    padding: 0 18px;',
'    background-color: white;',
'    max-height: 0;',
'    overflow: hidden;',
'    transition: max-height 0.2s ease-out;',
'  }',
'  ',
'  .ul-sql {',
'    list-style-type: none;',
'    padding: 0;',
'    margin: 0;',
'  }',
'  ',
'  .ul-sql .li-sql {',
'    border: 1px solid #ddd;',
'    margin-top: -1px; /* Prevent double borders */',
'    padding: 12px;',
'  }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(18449029804899147409)
,p_plug_name=>'Balances'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(35813872844214886850)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_prompt_1            VARCHAR2(20);',
'    l_prompt_2            VARCHAR2(20);',
'    l_prompt_3            VARCHAR2(20);',
'    l_prompt_4            VARCHAR2(20);',
'    l_prompt_5            VARCHAR2(20);',
'    l_individual_amount   NUMBER(12,2);',
'    l_shared_amount       NUMBER(12,2);',
'---Individual Balance',
'    CURSOR c_individual_balance IS',
'        SELECT',
'            borrowing_user_id AS user_id,',
'            ( lending_amount - borrowing_amount ) AS amount',
'        FROM',
'            (',
'                SELECT',
'                    borrowing_user_id,',
'                    SUM(borrowing_amount) AS borrowing_amount',
'                FROM',
'                    d_amount_details',
'                WHERE',
'                        group_id =:p8_group_id',
'                    AND',
'                        borrowing_user_id <> lending_user_id',
'                    AND',
'                        lending_user_id IN (',
'                            SELECT',
'                                user_id',
'                            FROM',
'                                d_user_details',
'                            WHERE',
'                                group_id =:p8_group_id',
'                        )',
'                GROUP BY',
'                    borrowing_user_id',
'                UNION',
'                SELECT',
'                    user_id AS borrowing_user_id,',
'                    0 AS borrowing_amount',
'                FROM',
'                    d_user_details',
'                WHERE',
'                        user_id NOT IN (',
'                            SELECT',
'                                borrowing_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    borrowing_user_id <> lending_user_id',
'                                AND',
'                                    borrowing_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'                    AND',
'                        group_id =:p8_group_id',
'            ),',
'            (',
'                SELECT',
'                    lending_user_id,',
'                    SUM(lending_amount) AS lending_amount',
'                FROM',
'                    d_amount_details',
'                WHERE',
'                        group_id =:p8_group_id',
'                    AND',
'                        lending_user_id <> borrowing_user_id',
'                    AND',
'                        borrowing_user_id IN (',
'                            SELECT',
'                                user_id',
'                            FROM',
'                                d_user_details',
'                            WHERE',
'                                group_id =:p8_group_id',
'                        )',
'                GROUP BY',
'                    lending_user_id',
'                UNION',
'                SELECT',
'                    user_id AS lending_user_id,',
'                    0 AS lending_amount',
'                FROM',
'                    d_user_details',
'                WHERE',
'                        user_id NOT IN (',
'                            SELECT',
'                                lending_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    lending_user_id <> borrowing_user_id',
'                                AND',
'                                    lending_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'                    AND',
'                        group_id =:p8_group_id',
'            )',
'        WHERE',
'            borrowing_user_id = lending_user_id;',
'',
'---Shared Balance',
'',
'    CURSOR c_shared_balance ( p_user_id NUMBER ) IS',
'        SELECT',
'            b.borrowing_user_id AS user_id_1,',
'            ( l.lending_amount - b.borrowing_amount ) AS amount,',
'            b.lending_user_id AS user_id_2',
'        FROM',
'            (',
'                SELECT',
'                    borrowing_user_id,',
'                    SUM(borrowing_amount) AS borrowing_amount,',
'                    lending_user_id',
'                FROM',
'                    d_amount_details',
'                WHERE',
'                        group_id =:p8_group_id',
'                    AND',
'                        borrowing_user_id <> lending_user_id',
'                    AND',
'                        lending_user_id IN (',
'                            SELECT',
'                                user_id',
'                            FROM',
'                                d_user_details',
'                            WHERE',
'                                group_id =:p8_group_id',
'                        )',
'                GROUP BY',
'                    borrowing_user_id,',
'                    lending_user_id',
'                UNION',
'                SELECT',
'                    b.user_id AS borrowing_user_id,',
'                    0 AS borrowing_amount,',
'                    l.user_id AS lending_user_id',
'                FROM',
'                    d_user_details b,',
'                    d_user_details l',
'                WHERE',
'                        b.user_id <> l.user_id',
'                    AND',
'                        b.group_id =:p8_group_id',
'                    AND',
'                        l.group_id =:p8_group_id',
'                    AND',
'                        b.user_id NOT IN (',
'                            SELECT',
'                                borrowing_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    borrowing_user_id <> lending_user_id',
'                                AND',
'                                    borrowing_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'                UNION',
'                SELECT',
'                    b.user_id AS borrowing_user_id,',
'                    0 AS borrowing_amount,',
'                    l.user_id AS lending_user_id',
'                FROM',
'                    d_user_details b,',
'                    d_user_details l',
'                WHERE',
'                        b.user_id <> l.user_id',
'                    AND',
'                        b.group_id =:p8_group_id',
'                    AND',
'                        l.group_id =:p8_group_id',
'                    AND',
'                        b.group_id =:p8_group_id',
'                    AND',
'                        l.user_id NOT IN (',
'                            SELECT',
'                                lending_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    borrowing_user_id <> lending_user_id',
'                                AND',
'                                    borrowing_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'            ) b,',
'            (',
'                SELECT',
'                    lending_user_id,',
'                    SUM(lending_amount) AS lending_amount,',
'                    borrowing_user_id',
'                FROM',
'                    d_amount_details',
'                WHERE',
'                        group_id =:p8_group_id',
'                    AND',
'                        lending_user_id <> borrowing_user_id',
'                    AND',
'                        borrowing_user_id IN (',
'                            SELECT',
'                                user_id',
'                            FROM',
'                                d_user_details',
'                            WHERE',
'                                group_id =:p8_group_id',
'                        )',
'                GROUP BY',
'                    lending_user_id,',
'                    borrowing_user_id',
'                UNION',
'                SELECT',
'                    l.user_id AS lending_user_id,',
'                    0 AS lending_amount,',
'                    b.user_id AS borrowing_user_id',
'                FROM',
'                    d_user_details l,',
'                    d_user_details b',
'                WHERE',
'                        l.user_id <> b.user_id',
'                    AND',
'                        l.group_id =:p8_group_id',
'                    AND',
'                        b.group_id =:p8_group_id',
'                    AND',
'                        l.user_id NOT IN (',
'                            SELECT',
'                                lending_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    lending_user_id <> borrowing_user_id',
'                                AND',
'                                    lending_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'                UNION',
'                SELECT',
'                    l.user_id AS lending_user_id,',
'                    0 AS lending_amount,',
'                    b.user_id AS borrowing_user_idborrowing_user_id',
'                FROM',
'                    d_user_details l,',
'                    d_user_details b',
'                WHERE',
'                        l.user_id <> b.user_id',
'                    AND',
'                        l.group_id =:p8_group_id',
'                    AND',
'                        b.user_id NOT IN (',
'                            SELECT',
'                                borrowing_user_id',
'                            FROM',
'                                d_amount_details',
'                            WHERE',
'                                    group_id =:p8_group_id',
'                                AND',
'                                    lending_user_id <> borrowing_user_id',
'                                AND',
'                                    lending_user_id IN (',
'                                        SELECT',
'                                            user_id',
'                                        FROM',
'                                            d_user_details',
'                                        WHERE',
'                                            group_id =:p8_group_id',
'                                    )',
'                        )',
'            ) l',
'        WHERE',
'                b.lending_user_id = l.borrowing_user_id',
'            AND',
'                b.borrowing_user_id = l.lending_user_id',
'            AND',
'                b.borrowing_user_id = p_user_id;',
'',
'BEGIN',
'    FOR r_individual_balance IN c_individual_balance LOOP',
'        IF',
'            r_individual_balance.amount > 0',
'        THEN',
'            l_prompt_1 := '' gets back '';',
'        ELSIF r_individual_balance.amount < 0 THEN',
'            l_prompt_1 := '' owes '';',
'        ELSE',
'            l_prompt_1 := '''';',
'        END IF;',
'',
'        IF',
'            r_individual_balance.amount <> 0',
'        THEN',
'            l_prompt_2 := '' in total'';',
'        ELSE',
'            l_prompt_2 := '' is settled up'';',
'        END IF;',
'',
'        IF',
'            r_individual_balance.amount <> 0',
'        THEN',
'            l_individual_amount := abs(r_individual_balance.amount);',
'        ELSE',
'            l_individual_amount := '''';',
'        END IF;',
'',
'        htp.p(''<button type ="button" class="accordion"><strong>''',
'         || get_user_name(r_individual_balance.user_id)',
'         || ''</strong>''',
'         || l_prompt_1',
'         || ''<strong>''',
'         || l_individual_amount',
'         || ''</strong>''',
'         || l_prompt_2',
'         || ''</button>'');',
'',
'        htp.p(''<ul class="panel ul-sql">'');',
'        FOR r_shared_balance IN c_shared_balance(r_individual_balance.user_id) LOOP',
'            IF',
'                r_shared_balance.amount > 0',
'            THEN',
'                l_prompt_3 := '' gets back '';',
'            ELSIF r_shared_balance.amount < 0 THEN',
'                l_prompt_3 := '' owes '';',
'            ELSE',
'                l_prompt_3 := '''';',
'            END IF;',
'',
'            IF',
'                r_shared_balance.amount > 0',
'            THEN',
'                l_prompt_4 := '' from '';',
'            ELSIF r_shared_balance.amount < 0 THEN',
'                l_prompt_4 := '' to '';',
'            ELSE',
'                l_prompt_4 := '''';',
'            END IF;',
'',
'            IF',
'                r_shared_balance.amount <> 0',
'            THEN',
'                l_prompt_5 := '' in total'';',
'            ELSE',
'                l_prompt_5 := '' is settled up'';',
'            END IF;',
'',
'            IF',
'                r_shared_balance.amount <> 0',
'            THEN',
'                l_shared_amount := abs(r_shared_balance.amount);',
'            ELSE',
'                l_shared_amount := '''';',
'            END IF;',
'',
'            IF',
'                l_shared_amount IS NOT NULL',
'            THEN',
'                htp.p(''<li class="li-sql"><strong>''',
'                 || get_user_name(r_shared_balance.user_id_1)',
'                 || ''</strong>''',
'                 || l_prompt_3',
'                 || ''<strong>''',
'                 || l_shared_amount',
'                 || ''</strong>''',
'                 || l_prompt_4',
'                 || ''<strong>''',
'                 || get_user_name(r_shared_balance.user_id_2)',
'                 || ''</strong>''',
'                 || l_prompt_5',
'                 || ''</li>'');',
'            END IF;',
'',
'        END LOOP;',
'',
'        htp.p(''</ul>'');',
'    END LOOP;',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(18449029999404147410)
,p_name=>'P8_GROUP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(18449029804899147409)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp.component_end;
end;
/
