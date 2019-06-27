view: airline_data_agg {
  sql_table_name: abe_demo.airline_data_agg ;;
  suggestions: no

  dimension: flights {
    type: number
    sql: ${TABLE}.flights ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
