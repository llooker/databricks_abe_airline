view: airlines {
  sql_table_name: abe_demo.airlines ;;
  suggestions: no

  dimension: airline {
    type: string
    sql: ${TABLE}.AIRLINE ;;
  }

  dimension: iata_code {
    type: string
    sql: ${TABLE}.IATA_CODE ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
