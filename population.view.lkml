view: population {
  sql_table_name: mkdata.health_poverty ;;

  measure: population__total {
    label: "Total"
    type: average
    sql: ${TABLE}.Population__total ;;
    value_format: "#,##0.00"
    }

  measure: population_ages_0_14____of_total_ {
    label: "Percent of Population ages 0-14"
    value_format: "0.00\%"
    type: average
    sql: ${TABLE}.Population_ages_0_14____of_total_ ;;
  }

  measure: population_ages_15_64____of_total_ {
    label: "Percent of Population Ages 15-64"
    value_format: "0.00\%"
    type: average
    sql: ${TABLE}.Population_ages_15_64____of_total_ ;;
  }

  measure: population_ages_65_and_above____of_total_ {
    label: "Percent of Population Ages 65 and above"
    value_format: "0.00\%"
    type: average
    sql: ${TABLE}.Population_ages_65_and_above____of_total_ ;;
  }


  measure: population_growth__annual___ {
    label: "Annual Population Growth"
    value_format: "0.00\%"
    type: average
    sql: ${TABLE}.Population_growth__annual___ ;;
  }

  dimension: country_name {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Country_Name ;;
  }

  dimension: year {
    hidden: yes
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: count {
    hidden: yes
    type: count
    approximate_threshold: 100000
    drill_fields: [country_name]
  }



}
