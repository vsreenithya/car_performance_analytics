# Explore for MigrationApp
# Auto-generated from Qlik metadata

# Include views
include: "/views/*.view.lkml"

explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634 {
  from: model_manufacturer
  label: "MigrationApp"

  join: fuel_efficiency {
    type: left_outer
    relationship: many_to_one
    sql_on: ${qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model} = ${fuel_efficiency.model} ;;
  }

  join: issues_and_solutions {
    type: left_outer
    relationship: many_to_one
    sql_on: ${qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model} = ${issues_and_solutions.model} ;;
  }

  join: sales {
    type: left_outer
    relationship: many_to_one
    sql_on: ${qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model} = ${sales.model} ;;
  }

  join: ratings_and_reviews {
    type: left_outer
    relationship: many_to_one
    sql_on: ${qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model} = ${ratings_and_reviews.model} ;;
  }

  join: city {
    type: left_outer
    relationship: many_to_many
    sql_on: ${fuel_efficiency.city_code} = ${city.city_code} ;;
  }

}