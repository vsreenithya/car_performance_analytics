view: model_manufacturer {
  sql_table_name: CAR_ANALYTICS.PUBLIC.MODEL_MANUFACTURER ;;

  dimension: model {
    primary_key: yes
    type: string
    sql: ${TABLE}.C1 ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.C2 ;;
  }

  dimension: model_manufacturer {
    type: string
    sql: ${TABLE}.C3 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      model,
      manufacturer,
      model_manufacturer,
    ]
  }
}