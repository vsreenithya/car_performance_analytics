# Explore for MigrationApp
# Auto-generated from Qlik metadata

# Include views
include: "/**/*.view.lkml"
include: "/*.view.lkml"

explore: car_analysis {
  from: model_manufacturer
  label: "MigrationApp"

  join: fuel_efficiency {
    type: left_outer
    relationship: one_to_one
    sql_on: ${car_analysis.model} = ${fuel_efficiency.model} ;;
  }

  join: issues_and_solutions {
    type: left_outer
    relationship: one_to_many
    sql_on: ${fuel_efficiency.model} = ${issues_and_solutions.model} ;;
  }

  join: sales {
    type: left_outer
    relationship: one_to_one
    sql_on: ${fuel_efficiency.model} = ${sales.model} ;;
  }

  join: ratings_and_reviews {
    type: left_outer
    relationship: one_to_one
    sql_on: ${fuel_efficiency.model} = ${ratings_and_reviews.model} ;;
  }

  join: city {
    type: left_outer
    relationship: many_to_many
    sql_on: ${fuel_efficiency.city_code} = ${city.city_code} ;;
  }

}