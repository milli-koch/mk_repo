view: countries_and_regions {
  derived_table: {
    sql: select Country, Region, case
        when GNI_per_capita__Atlas_method__current_US__ between 200 and 1025 then "Low Income"
        when GNI_per_capita__Atlas_method__current_US__ between 1025 and 4035
          then"Lower Middle Income"
        when GNI_per_capita__Atlas_method__current_US__ between 4035 and 12475
          then "Upper Middle Income"
        when GNI_per_capita__Atlas_method__current_US__ >12475
          then "High Income"
        else "n/a"
        end as income_tier
      from GNI join regions on GNI.Country_Name = regions.Country
      group by 1, 2, 3
      order by 1 asc
 ;;
persist_for: "24 hours"
  }


  measure: count {
    type: count_distinct
    drill_fields: [detail*]
    sql: ${country} ;;
  }

  dimension: country1 {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Country ;;
  }

  dimension: region1 {
    hidden: yes
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: income_tier {
    type: string
    sql: ${TABLE}.income_tier ;;
  }

  set: detail {
    fields: [country, region, income_tier]
  }

  filter: region_filter {
    suggestions: ["East Asia & Pacific", "Europe & Central Asia", "Latin America & Caribbean", "Middle East & North Africa", "North America", "South Asia", "Sub-Saharan Africa"]
  }

  dimension: region {
    sql:
      CASE
      WHEN {% condition region_filter %} ${region1} {% endcondition %}
      THEN ${region1}
          ELSE 'Rest of World'
        END ;;
  }

  filter: country_filter {
    suggest_dimension: country
  }

  dimension: country {
    map_layer_name: countries
    sql:
    CASE
    WHEN {%condition country_filter %} ${country1} {% endcondition %}
    THEN ${country1}
      ELSE 'Rest of World'
        END;;
  }

}
