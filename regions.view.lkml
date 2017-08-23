view: countries_and_regions {
  sql_table_name: mkdata.regions ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: region {
    primary_key: yes
    type: string
    sql: ${TABLE}.Region ;;
    drill_fields: [country]
  }

  measure: country_count {
    type: count_distinct
    sql: ${country} ;;
    drill_fields: [country]
  }

  filter: region_filter {
    label: "FILTER Region"
    suggestions: ["East Asia & Pacific", "Europe & Central Asia", "Latin America & Caribbean", "Middle East & North Africa", "North America", "South Asia", "Sub-Saharan Africa"]
  }

  dimension: region_compare {
    sql:
      CASE
      WHEN {% condition region_filter %} ${region} {% endcondition %}
      THEN ${region}
          ELSE 'Rest of World'
        END ;;
  }

  filter: country_filter {
    label: "FILTER Country"
    suggest_dimension: country
  }

  dimension: country_compare {
    sql:
    CASE
    WHEN {%condition country_filter %} ${country} {% endcondition %}
    THEN ${country}
      ELSE 'Rest of World'
        END;;
  }


}
