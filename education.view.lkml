view: education {
  sql_table_name: mkdata.education ;;

  measure: adjusted_net_enrollment_rate__primary____of_primary_school_age_children_ {
    label: "Net enrollment"
    group_label: "Adjusted Net Enrollment Rate"
    description: "% of primary school age children enrolled in primary education"
    type: average
    sql: ${TABLE}.Adjusted_net_enrollment_rate__primary____of_primary_school_age_children_ ;;
    value_format: "0.00\%"
  }

  measure: adjusted_net_enrollment_rate__primary__female____of_primary_school_age_children_ {
    label: "Female enrollment"
    group_label: "Adjusted Net Enrollment Rate"
    description: "% of primary school age children enrolled in primary education"
    type: average
    sql: ${TABLE}.Adjusted_net_enrollment_rate__primary__female____of_primary_school_age_children_ ;;
    value_format: "0.00\%"
  }

  measure: adjusted_net_enrollment_rate__primary__male____of_primary_school_age_children_ {
    label: "Male enrollment"
    group_label: "Adjusted Net Enrollment Rate"
    description: "% of primary school age children enrolled in primary education"
    type: average
    sql: ${TABLE}.Adjusted_net_enrollment_rate__primary__male____of_primary_school_age_children_ ;;
    value_format: "0.00\%"
  }

  measure: adolescents_out_of_school____of_lower_secondary_school_age_ {
    label: "Adolescents out of school (total)"
    group_label: "Adolescents Out of School"
    description: "% of lower secondary school age"
    type: average
    sql: ${TABLE}.Adolescents_out_of_school____of_lower_secondary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: adolescents_out_of_school__female____of_female_lower_secondary_school_age_ {
    label: "Adolescents out of school (female)"
    group_label: "Adolescents Out of School"
    description: "% of lower secondary school age"
    type: average
    sql: ${TABLE}.Adolescents_out_of_school__female____of_female_lower_secondary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: adolescents_out_of_school__male____of_male_lower_secondary_school_age_ {
    label: "Adolescents out of school (male)"
    group_label: "Adolescents Out of School"
    description: "% of lower secondary school age"
    type: average
    sql: ${TABLE}.Adolescents_out_of_school__male____of_male_lower_secondary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: children_out_of_school____of_primary_school_age_ {
    label: "Children out of school (total)"
    group_label: "Children Out of School"
    description: "% of primary school age"
    type: average
    sql: ${TABLE}.Children_out_of_school____of_primary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: children_out_of_school__female____of_female_primary_school_age_ {
    label: "Children out of school (female)"
    group_label: "Children Out of School"
    description: "% of primary school age"
    type: average
    sql: ${TABLE}.Children_out_of_school__female____of_female_primary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: children_out_of_school__male____of_male_primary_school_age_ {
    label: "Children out of school (male)"
    group_label: "Children Out of School"
    description: "% of primary school age"
    type: average
    sql: ${TABLE}.Children_out_of_school__male____of_male_primary_school_age_ ;;
    value_format: "0.00\%"
  }

  measure: compulsory_education__duration__years_ {
    label: "Compulsory Education Duration (Years)"
    type: average
    sql: ${TABLE}.Compulsory_education__duration__years_ ;;
    value_format: "0"
  }

  measure: lower_secondary {
    description: "The percentage of population ages 25 and over that attained or completed lower secondary education."
    group_label: "Educational Attainment"
    type: average
    sql: ${TABLE}.Educational_attainment__at_least_completed_lower_secondary__population_25___total______cumulative_ ;;
    value_format: "0.00\%"
  }

  measure: primary {
    description: "The percentage of population ages 25 and over that attained or completed primary education."
    group_label: "Educational Attainment"
    type: average
    sql: ${TABLE}.Educational_attainment__at_least_completed_primary__population_25__years__total______cumulative_ ;;
    value_format: "0.00\%"
  }

  measure: upper_secondary {
    description: "The percentage of population ages 25 and over that attained or completed upper secondary education."
    group_label: "Educational Attainment"
    type: average
    sql: ${TABLE}.Educational_attainment__at_least_completed_upper_secondary__population_25___total______cumulative_ ;;
    value_format: "0.00\%"
  }

  measure: government_expenditure_on_education__total____of_gdp_ {
    label: "Government Expenditure on Education (% of total GDP)"
    type: average
    sql: ${TABLE}.Government_expenditure_on_education__total____of_GDP_ ;;
    value_format: "0.00\%"
  }

  measure: persistence_to_grade_5__female____of_cohort_ {
    label: "Persistance to grade 5 (female)"
    group_label: "Persistance to Grade 5"
    type: average
    sql: ${TABLE}.Persistence_to_grade_5__female____of_cohort_ ;;
    value_format: "0.00\%"
  }

  measure: persistence_to_grade_5__male____of_cohort_ {
    label: "Persistance to grade 5 (male)"
    group_label: "Persistance to Grade 5"
    type: average
    sql: ${TABLE}.Persistence_to_grade_5__male____of_cohort_ ;;
    value_format: "0.00\%"
  }

  measure: persistence_to_grade_5__total____of_cohort_ {
    label: "Persistance to grade 5 (total)"
    group_label: "Persistance to Grade 5"
    type: average
    sql: ${TABLE}.Persistence_to_grade_5__total____of_cohort_ ;;
    value_format: "0.00\%"
  }

  measure: primary_completion_rate__total____of_relevant_age_group_ {
    label: "Primary Completion Rate"
    type: average
    sql: ${TABLE}.Primary_completion_rate__total____of_relevant_age_group_ ;;
    value_format: "0.00\%"
  }

  measure: progression_to_secondary_school____ {
    label: "Progression to Secondary School"
    type: average
    sql: ${TABLE}.Progression_to_secondary_school____ ;;
    value_format: "0.00\%"
  }

  measure: pupil_teacher_ratio__primary {
    label: "Primary pupil teacher ratio"
    group_label: "Pupil Teacher Ratio"
    type: average
    sql: ${TABLE}.Pupil_teacher_ratio__primary ;;
    value_format: "0.00"
  }

  measure: pupil_teacher_ratio__secondary {
    label: "Secondary pupil teacher ratio"
    group_label: "Pupil Teacher Ratio"
    type: average
    sql: ${TABLE}.Pupil_teacher_ratio__secondary ;;
    value_format: "0.00\%"
  }

  measure: school_enrollment__primary____net_ {
    label: "Primary School Enrollment (% Net)"
    type: average
    sql: ${TABLE}.School_enrollment__primary____net_ ;;
    value_format: "0.00\%"
  }

  measure: school_enrollment__primary____gross_ {
    type: average
    sql: ${TABLE}.School_enrollment__primary____gross_ ;;
  }

  measure: literacy_rate__adult_total____of_people_ages_15_and_above_{
    label: "Total Literacy Rate"
    group_label: "Adult Literacy Rate"
    type: average
    sql: ${TABLE}.literacy_rate__adult_total____of_people_ages_15_and_above_ ;;
    value_format: "0.00\%"
    }

  measure: literacy_rate__adult_female____of_females_ages_15_and_above_ {
    label: "Female Literacy Rate"
    group_label: "Adult Literacy Rate"
    type: average
    sql: ${TABLE}.Literacy_rate__adult_female____of_females_ages_15_and_above_ ;;
    value_format: "0.00\%"
    }

  measure: literacy_rate__adult_male____of_males_ages_15_and_above_ {
    label: "Male Literacy Rate"
    group_label: "Adult Literacy Rate"
    type: average
    sql: ${TABLE}.Literacy_rate__adult_male____of_males_ages_15_and_above_ ;;
    value_format: "0.00\%"
    }

  measure: primary_education__teachers {
    type: average
    sql: ${TABLE}.Primary_education__teachers ;;
  }

  measure: school_enrollment__secondary____net_ {
    label: "Secondary School Enrollment (% Net)"
    type: average
    sql: ${TABLE}.School_enrollment__secondary____net_ ;;
    value_format: "0.00\%"
  }

  measure: school_enrollment__primary_and_secondary__gross___gender_parity_index__gpi_ {
    type: average
    sql: ${TABLE}.School_enrollment__primary_and_secondary__gross___gender_parity_index__GPI_ ;;
    value_format: "0.00"
  }

  dimension: country_name {
    hidden: yes
    map_layer_name: countries
    sql: ${TABLE}.Country_Name ;;
  }

  set: drill_set{
    fields: [country_name]
  }

  filter: measure_type {
    suggestions: ["Net Enrollment", "Children out of school (total)", "Primary Completion Rate", "Adult Literacy" ]
  }

  measure: variable_measure{
    type: number
    sql: case
    when {% condition measure_type %} 'Net Enrollment' {% endcondition %} then ${adjusted_net_enrollment_rate__primary____of_primary_school_age_children_}
    when {% condition measure_type %} 'Children out of school (total)' {% endcondition %} then ${children_out_of_school____of_primary_school_age_}
    when {% condition measure_type %} 'Primary Completion Rate' {% endcondition %} then ${primary_completion_rate__total____of_relevant_age_group_}
    when {% condition measure_type %} 'Adult Literacy' {% endcondition %} then ${literacy_rate__adult_total____of_people_ages_15_and_above_}
    end
  ;;
  value_format: "0.00\%"
  }

}
