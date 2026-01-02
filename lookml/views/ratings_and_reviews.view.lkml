view: ratings_and_reviews {
  sql_table_name: CAR_ANALYTICS.PUBLIC.RATINGS_AND_REVIEWS ;;

  dimension: model {
    primary_key: yes
    type: string
    sql: ${TABLE}.MODEL ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.MANUFACTURER ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.RATING ;;
  }

  dimension: review_count {
    type: number
    sql: ${TABLE}.REVIEW_COUNT ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: avg_rating {
    type: average
    sql: ${rating} ;;
  }

  measure: count_review_count {
    type: count
    sql: ${review_count} ;;
  }

  measure: average_rating {
    type: average
    sql: ${rating} ;;
  }

  measure: sum_review_count {
    type: sum
    sql: ${review_count} ;;
  }

  measure: total_review {
    type: sum
    sql: ${review_count} ;;
  }

  set: detail {
    fields: [
      model,
      manufacturer,
      rating,
      review_count,
    ]
  }
}