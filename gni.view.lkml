view: gni {
  label: "GNI"
  sql_table_name: mkdata.GNI ;;

  dimension: country_name {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Country_Name ;;
  }

  dimension: gni_per_capita {
    label: "GNI Per Capita"
    view_label: "Economy"
    type: number
    sql: ${TABLE}.GNI_per_capita__Atlas_method__current_US__;;
    value_format: "$#,##0"
  }

  dimension: income_tier {
    view_label: "Economy"
    case: {
      when: {
        sql: ${gni_per_capita} > 200 and ${gni_per_capita}<= 1025 ;;
        label: "Low Income"
      }
      when: {
        sql: ${gni_per_capita} > 1025 and ${gni_per_capita} <= 4035;;
        label: "Lower Middle Income"
      }
      when: {
        sql: ${gni_per_capita} > 4035 and ${gni_per_capita} <= 12475;;
        label: "Upper Middle Income"
      }
      when: {
        sql: ${gni_per_capita} >12475;;
        label: "High Income"
      }
      else: "n/a"
    }
    drill_fields: [country_name]
  }

}
