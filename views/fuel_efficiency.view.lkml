view: fuel_efficiency {
  sql_table_name: CAR_ANALYSIS.PUBLIC.FUEL_EFFICIENCY ;;

  dimension: model {
    primary_key: yes
    type: string
    sql: ${TABLE}."MODEL" ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.MANUFACTURER ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.CITY_CODE ;;
  }

  dimension: city_mpg {
    type: number
    sql: ${TABLE}.CITY_MPG ;;
  }

  dimension: highway_mpg {
    type: number
    sql: ${TABLE}.HIGHWAY_MPG ;;
  }

  dimension: combined_mpg {
    type: number
    sql: ${TABLE}.COMBINED_MPG ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: sum_highway_mpg {
    type: sum
    sql: ${highway_mpg} ;;
  }

  measure: avg_city_mpg {
    type: average
    sql: ${city_mpg} ;;
  }

  measure: count_combined_mpg {
    type: number
    sql: COUNT(${combined_mpg}) ;;
  }

  measure: city_total_mpg {
    type: sum
    sql: ${city_mpg} ;;
  }

  measure: highway_total_mpg {
    type: sum
    sql: ${highway_mpg} ;;
  }

  measure: combined_total_mpg {
    type: sum
    sql: ${combined_mpg} ;;
  }

  set: detail {
    fields: [
      model,
      manufacturer,
      city_code,
      city_mpg,
      highway_mpg,
    ]
  }
}