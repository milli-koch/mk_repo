connection: "mk_thesis"

include: "*.view.lkml"
include: "*.dashboard.lookml"

explore: education {
  join: health {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${health.country_name} ;;
  }
  join: population {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${population.country_name} ;;
  }
  join: economy {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${economy.country_name} ;;
  }
  join: gdp {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${gdp.country} ;;
  }
  join: gni {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${gni.country_name} ;;
  }
  join: countries_and_regions {
    type: inner
    relationship: one_to_one
    sql_on: ${education.country_name}=${countries_and_regions.country1} ;;
  }

 }
explore:  world {}
