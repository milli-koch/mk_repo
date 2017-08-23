view: economy {
  sql_table_name: mkdata.health_poverty ;;

  dimension: country_name {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}.Country_Name ;;
  }

  dimension: year {
    hidden: yes
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: gini_index__world_bank_estimate_ {
    type: average
    sql: ${TABLE}.GINI_index__World_Bank_estimate_ ;;
  }

  measure: income_share_held_by_fourth_20_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_fourth_20_ ;;
  }

  measure: income_share_held_by_highest_10_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_highest_10_ ;;
  }

  measure: income_share_held_by_highest_20_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_highest_20_ ;;
  }

  measure: income_share_held_by_lowest_10_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_lowest_10_ ;;
  }

  measure: income_share_held_by_lowest_20_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_lowest_20_ ;;
  }

  measure: income_share_held_by_second_20_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_second_20_ ;;
  }

  measure: income_share_held_by_third_20_ {
    group_label: "Income share"
    type: average
    sql: ${TABLE}.Income_share_held_by_third_20_ ;;
  }

  measure: poverty_gap_at_national_poverty_lines____ {
    type: average
    value_format: "0.00\%"
    sql: ${TABLE}.Poverty_gap_at_national_poverty_lines____ ;;
  }

  measure: poverty_gap_at__1_90_a_day__2011_ppp_____ {
    label: "Poverty Gap At $1.90 a Day"
    type: average
    value_format: "0.00\%"
    sql: ${TABLE}.Poverty_gap_at__1_90_a_day__2011_PPP_____ ;;
  }

  measure: poverty_headcount_ratio_at_national_poverty_lines____of_population_ {
    label: "Poverty Headcount Ratio At National Poverty Lines"
    type: average
    value_format: "0.00\%"
    sql: ${TABLE}.Poverty_headcount_ratio_at_national_poverty_lines____of_population_ ;;
  }

  measure: poverty_headcount_ratio_at__1_90_a_day__2011_ppp_____of_population_ {
    label: "Poverty Headcount Ratio At $1.90 a Day"
    type: average
    value_format: "0.00\%"
    sql: ${TABLE}.Poverty_headcount_ratio_at__1_90_a_day__2011_PPP_____of_population_ ;;
  }

  measure: count {
    hidden: yes
    type: count_distinct
    drill_fields: [country_name]
  }
}
