view: gdp {
  sql_table_name: mkdata.gdp ;;

  dimension: country {
    primary_key: yes
    hidden: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  measure: gdp {
    label: "GDP"
    view_label: "Economy"
    type: average
    sql: ${TABLE}.GDP ;;
    value_format: "$#,##0"
    }

  dimension: year {
    hidden: yes
    type: string
    sql: ${TABLE}.Year ;;
  }
}
