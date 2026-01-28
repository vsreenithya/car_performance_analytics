view: city {
  sql_table_name: CAR_ANALYSIS.PUBLIC.CITY ;;

  dimension: row_id {
    primary_key: yes
    type: string
    sql: MD5(CAST(${TABLE}.C1 AS VARCHAR) || '-' || CAST(${TABLE}.C2 AS VARCHAR) || '-' || CAST(${TABLE}.C3 AS VARCHAR)) ;;
  }

  dimension: city_code {
    type: string
    sql: ${TABLE}.C1 ;;
  }

  dimension: city {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.C2 ;;
  }

  dimension: city_location {
    type: location
    sql_latitude: CASE WHEN ${TABLE}.C2 = 'New York' THEN 40.7128 WHEN ${TABLE}.C2 = 'Toronto' THEN 43.6532 WHEN ${TABLE}.C2 = 'London' THEN 51.5074 WHEN ${TABLE}.C2 = 'Paris' THEN 48.8566 WHEN ${TABLE}.C2 = 'Berlin' THEN 52.52 WHEN ${TABLE}.C2 = 'Tokyo' THEN 35.6762 WHEN ${TABLE}.C2 = 'Sydney' THEN -33.8688 WHEN ${TABLE}.C2 = 'Mumbai' THEN 19.076 WHEN ${TABLE}.C2 = 'Dubai' THEN 25.2048 WHEN ${TABLE}.C2 = 'São Paulo' THEN -23.5505 END ;;
    sql_longitude: CASE WHEN ${TABLE}.C2 = 'New York' THEN -74.006 WHEN ${TABLE}.C2 = 'Toronto' THEN -79.3832 WHEN ${TABLE}.C2 = 'London' THEN -0.1278 WHEN ${TABLE}.C2 = 'Paris' THEN 2.3522 WHEN ${TABLE}.C2 = 'Berlin' THEN 13.405 WHEN ${TABLE}.C2 = 'Tokyo' THEN 139.6503 WHEN ${TABLE}.C2 = 'Sydney' THEN 151.2093 WHEN ${TABLE}.C2 = 'Mumbai' THEN 72.8777 WHEN ${TABLE}.C2 = 'Dubai' THEN 55.2708 WHEN ${TABLE}.C2 = 'São Paulo' THEN -46.6333 END ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.C3 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      row_id,
      city_code,
      city,
      country,
    ]
  }
}