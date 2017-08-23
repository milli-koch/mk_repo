view: world {
  sql_table_name: mkdata.world ;;

  dimension: children_out_of_school__female____of_female_primary_school_age_{
    label: "Children Out of School (female)"
    type: number
    sql: ${TABLE}.Children_out_of_school__female____of_female_primary_school_age___SE_PRM_UNER_FE_ZS_ ;;
    value_format: "0.00\%"
    }

  dimension: children_out_of_school__primary__female_ {
    type: number
    sql: ${TABLE}.Children_out_of_school__primary__female__SE_PRM_UNER_FE_ ;;
    value_format: "#,##0.00"
  }

  dimension: children_out_of_school__primary_ {
    type: number
    sql: ${TABLE}.Children_out_of_school__primary__SE_PRM_UNER_ ;;
    value_format: "0,,\" Million\""
    }

  dimension: country_name {
    hidden: yes
    type: string
    sql: ${TABLE}.Country_Name ;;
  }

  dimension: primary_education__pupils_percent_female_ {
    type: number
    sql: ${TABLE}.Primary_education__pupils____female___SE_PRM_ENRL_FE_ZS_ ;;
    value_format: "0.00\%"
    }

  dimension: primary_education__pupils_ {
    type: number
    sql: ${TABLE}.Primary_education__pupils__SE_PRM_ENRL_ ;;
    value_format: "0,,\" Million\""
    }

  dimension: primary_education__teachers_ {
    type: number
    sql: ${TABLE}.Primary_education__teachers__SE_PRM_TCHR_ ;;
    value_format: "#,##0.00"
    }

  dimension: school_enrollment__primary_ {
    type: number
    sql: ${TABLE}.School_enrollment__primary____net___SE_PRM_NENR_ ;;
    value_format: "0.00\%"
    }

  dimension: female_primary_school_enrollment {
    type: number
    sql: ${TABLE}.School_enrollment__primary__female____net___SE_PRM_NENR_FE_ ;;
    value_format: "0.00\%"
    }

  dimension: male_primary_school_enrollment {
    type: number
    sql: ${TABLE}.School_enrollment__primary__male____net___SE_PRM_NENR_MA_ ;;
    value_format: "0.00\%"
    }

  dimension: school_enrollment__primary_and_secondary__gross___gender_parity_index__gpi_ {
    type: number
    sql: ${TABLE}.School_enrollment__primary_and_secondary__gross___gender_parity_index__GPI___SE_ENR_PRSC_FM_ZS_ ;;
    value_format: "0.00"
  }

  dimension: secondary_education__pupils_percent_female_ {
    type: number
    sql: ${TABLE}.Secondary_education__pupils____female___SE_SEC_ENRL_FE_ZS_ ;;
    value_format: "0.00\%"
    }

  dimension: secondary_education__pupils_ {
    type: number
    sql: ${TABLE}.Secondary_education__pupils__SE_SEC_ENRL_ ;;
    value_format: "#,##0.00"
    }

  dimension: primary_completion_rate__total____of_relevant_age_group_ {
    type: number
    sql: ${TABLE}.primary_completion_rate__total____of_relevant_age_group_ ;;
    value_format: "0.00\%"
    }


}
