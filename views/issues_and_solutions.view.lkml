view: issues_and_solutions {
  sql_table_name: CAR_ANALYSIS.PUBLIC.ISSUES_AND_SOLUTIONS ;;

  dimension: row_id {
    primary_key: yes
    type: string
    sql: MD5(CAST(${TABLE}.C1 AS VARCHAR) || '-' || CAST(${TABLE}.C2 AS VARCHAR) || '-' || CAST(${TABLE}.C3 AS VARCHAR)) ;;
  }

  dimension: model {
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
    type: number
    sql: COUNT(${issue}) ;;
  }

  measure: total_issue {
    type: number
    sql: COUNT(${issue}) ;;
  }

  measure: total_solution {
    type: number
    sql: COUNT(${solution}) ;;
  }

  measure: avg_rating {
    type: number
    sql: COUNT(${issue}) ;;
  }

  set: detail {
    fields: [
      row_id,
      model,
      manufacturer,
      issue,
      solution,
    ]
  }
}