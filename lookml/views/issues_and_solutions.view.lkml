view: issues_and_solutions {
  sql_table_name: CAR_ANALYTICS.PUBLIC.ISSUES_AND_SOLUTIONS ;;

  dimension: model {
    primary_key: yes
    type: string
    sql: ${TABLE}.C1 ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.C2 ;;
  }

  dimension: issue {
    type: string
    sql: ${TABLE}.C3 ;;
  }

  dimension: solution {
    type: string
    sql: ${TABLE}.C4 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_issue {
    type: count
    sql: ${issue} ;;
  }

  measure: total_issue {
    type: count
    sql: ${issue} ;;
  }

  measure: total_solution {
    type: count
    sql: ${solution} ;;
  }

  measure: avg_rating {
    type: count
    sql: ${issue} ;;
  }

  set: detail {
    fields: [
      model,
      manufacturer,
      issue,
      solution,
    ]
  }
}