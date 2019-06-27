view: planes {
  sql_table_name: abe_demo.planes ;;
  suggestions: no

  dimension: aircraft_type {
    type: string
    sql: ${TABLE}.aircraft_type ;;
  }

  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
  }

  dimension: issue_date {
    type: string
    sql: ${TABLE}.issue_date ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: tailnum {
    type: string
    sql: ${TABLE}.tailnum ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
