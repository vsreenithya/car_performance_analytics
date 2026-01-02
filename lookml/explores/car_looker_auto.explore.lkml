# Explore for Car Performance Analytics
# Auto-generated from Qlik metadata

# Include views
include: "/views/*.view.lkml"

explore: car_looker_auto {
  from: sales
  label: "Car Performance Analytics"

  join: ratings_and_reviews {
    type: left_outer
    relationship: one_to_many
    sql_on: ${car_looker_auto.model} = ${ratings_and_reviews.model} ;;
  }

  join: issues_and_solutions {
    type: left_outer
    relationship: one_to_many
    sql_on: ${car_looker_auto.model} = ${issues_and_solutions.model} ;;
  }

  join: fuel_efficiency {
    type: left_outer
    relationship: one_to_many
    sql_on: ${car_looker_auto.model} = ${fuel_efficiency.model} ;;
  }

  join: model_manufacturer {
    type: left_outer
    relationship: one_to_many
    sql_on: ${car_looker_auto.model} = ${model_manufacturer.model} ;;
  }

  join: city {
    type: left_outer
    relationship: many_to_many
    sql_on: ${fuel_efficiency.city_code} = ${city.city_code} ;;
  }

}