view: health {
  sql_table_name: mkdata.health_poverty ;;

  measure: adolescent_fertility_rate{
    description: "births per 1,000 women ages 15-19"
    type: average
    sql: ${TABLE}.Adolescent_fertility_rate__births_per_1_000_women_ages_15_19_ ;;
    value_format: "0.00"
  }

  measure: birth_rate {
    description: "per 1,000 people"
    type: average
    sql: ${TABLE}.Birth_rate__crude__per_1_000_people_ ;;
    value_format: "0.00"
  }

  measure: children_living_with_hiv {
    label: "Children Living with HIV"
    group_label: "Disease"
    description: "ages 0-14"
    type: average
    sql: ${TABLE}.Children__0_14__living_with_HIV ;;
    value_format: "#,##0"
    }

  measure: contraceptive_prevalence {
    description: "% of women ages 15-49"
    type: average
    sql: ${TABLE}.Contraceptive_prevalence__any_methods____of_women_ages_15_49_ ;;
    value_format: "0.00\%"
    }

  dimension: country_name {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}.Country_Name ;;
  }

  measure: death_rate {
    group_label: "Death"
    description: "per 1,000 people"
    type: average
    sql: ${TABLE}.Death_rate__crude__per_1_000_people_ ;;
    value_format: "0.00\%"
    }

  measure: diabetes_prevalence {
    group_label: "Disease"
    description: "% of population ages 20-79"
    type: average
    sql: ${TABLE}.Diabetes_prevalence____of_population_ages_20_to_79_ ;;
    value_format: "0.00\%"
    }

  measure: female_genital_mutilation_prevalence____ {
    type: average
    sql: ${TABLE}.Female_genital_mutilation_prevalence____ ;;
    value_format: "0.00\%"
    }

  measure: fertility_rate {
    description: "total births per woman"
    type: average
    sql: ${TABLE}.Fertility_rate__total__births_per_woman_ ;;
  }

  measure: health_expenditure__total____of_gdp_ {
    label: "Government expenditure on health (% of total GDP)"
    type: average
    sql: ${TABLE}.Health_expenditure__total____of_GDP_ ;;
    value_format: "0.00\%"
    }

  measure: incidence_of_malaria {
    group_label: "Disease"
    description: "per 1,000 population at risk"
    type: average
    sql: ${TABLE}.Incidence_of_malaria__per_1_000_population_at_risk_ ;;
    value_format: "#,##0"

  }

  measure: incidence_of_tuberculosis {
    group_label: "Disease"
    description: "per 1,000 people"
    type: average
    sql: ${TABLE}.Incidence_of_tuberculosis__per_100_000_people_ ;;
    value_format: "#,##0"
  }


  measure: life_expectancy_at_birth__female__years_ {
    label: "Female life expectancy"
    group_label: "Life Expectancy at birth (years)"
    type: average
    sql: ${TABLE}.Life_expectancy_at_birth__female__years_ ;;
    value_format: "0"
  }

  measure: life_expectancy_at_birth__male__years_ {
    label: "Male life expectancy"
    group_label: "Life Expectancy at birth (years)"
    type: average
    sql: ${TABLE}.Life_expectancy_at_birth__male__years_ ;;
    value_format: "0"
    }

  measure: life_expectancy_at_birth__total__years_ {
    label: "Life expectancy"
    group_label: "Life Expectancy at birth (years)"
    type: average
    sql: ${TABLE}.Life_expectancy_at_birth__total__years_ ;;
    value_format: "0"
    }

  measure: lifetime_risk_of_maternal_death____ {
    group_label: "Death"
    type: average
    sql: ${TABLE}.Lifetime_risk_of_maternal_death____ ;;
    value_format: "0.00\%"
    }

  measure: low_birthweight_babies {
    group_label: "Nutrition"
    type: average
    sql: ${TABLE}.Low_birthweight_babies____of_births_ ;;
    value_format: "0.00\%"
    }

  measure: number_of_infant_deaths {
    group_label: "Death"
    type: average
    sql: ${TABLE}.number_of_infant_deaths ;;
    value_format: "#,##0"
    }

  measure: number_of_under_five_deaths {
    group_label: "Death"
    type: average
    sql: ${TABLE}.number_of_under_five_deaths ;;
    value_format: "#,##0"
    }

  measure: prevalence_of_hiv{
    label: "Prevalence of HIV"
    group_label: "Disease"
    description: "% of population ages 15-49"
    type: average
    sql: ${TABLE}.Prevalence_of_HIV__total____of_population_ages_15_49_ ;;
    value_format: "0.00\%"
    }

  measure: prevalence_of_stunting_of_children_under_5_{
    group_label: "Nutrition"
    type: average
    sql: ${TABLE}.prevalence_of_stunting__height_for_age____of_children_under_5_ ;;
    value_format: "0.00\%"
  }

  measure: prevalence_of_undernourishment {
    group_label: "Nutrition"
    type: average
    sql: ${TABLE}.Prevalence_of_undernourishment____of_population_ ;;
    value_format: "0.00\%"
    }

  measure: prevalence_of_underweight_children_under_5_ {
    group_label: "Nutrition"
    type: average
    sql: ${TABLE}.Prevalence_of_underweight__weight_for_age____of_children_under_5_ ;;
    value_format: "0.00\%"
    }

  measure: women_who_were_first_married_by_age_18 {
    description: "% of women ages 20-24"
    type: average
    sql: ${TABLE}.Women_who_were_first_married_by_age_18____of_women_ages_20_24_ ;;
    value_format: "0.00\%"
  }

  dimension: year {
    hidden: yes
    type: number
    sql: ${TABLE}.time ;;
  }

}
