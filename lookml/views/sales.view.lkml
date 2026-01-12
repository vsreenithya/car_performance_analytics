view: sales {
  sql_table_name: CAR_ANALYTICS.PUBLIC.SALES_DATA ;;

  dimension: model {
    primary_key: yes
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.MANUFACTURER ;;
  }

  dimension: units_sold {
    type: number
    sql: ${TABLE}.UNITS_SOLD ;;
  }

  dimension: model_manufacturer {
    type: string
    sql: ${TABLE}.MODEL || ' ' || ${TABLE}.MANUFACTURER ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_units_sold {
    type: sum
    sql: ${units_sold} ;;
  }

  measure: sum_units_sold {
    type: sum
    sql: ${units_sold} ;;
  }

  measure: average_units_sold {
    type: average
    sql: ${units_sold} ;;
  }

  # TODO: Complex expression needs manual review. Original: =Sum({<City={"Berlin"}>} [Units Sold]) + Sum({<Manufacturer={"BMW"}>} [Units Sold])
  measure: unnamed_measure {
    type: sum
    sql: ${units_sold} ;;
  }

  set: detail {
    fields: [
      model,
      manufacturer,
      units_sold,
    ]
  }
}