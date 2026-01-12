view: city {
  sql_table_name: CAR_ANALYTICS.PUBLIC.CITY ;;

  dimension: city_code {
    type: string
    sql: ${TABLE}.C1 ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.C2 ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.C3 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      city_code,
      city,
      country,
    ]
  }
}