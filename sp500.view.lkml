view: sp500 {
  sql_table_name: abe_demo.sp500 ;;
  suggestions: no

  dimension: beta_1yr {
    type: number
    sql: ${TABLE}.beta_1yr ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: div_yield {
    type: number
    sql: ${TABLE}.div_yield ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: market_cap {
    type: string
    sql: ${TABLE}.market_cap ;;
  }

  dimension: perf_52w {
    type: number
    sql: ${TABLE}.perf_52w ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.sector ;;
  }

  dimension: stddev_1yr {
    type: number
    sql: ${TABLE}.stddev_1yr ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}.ticker ;;
  }

  dimension: tot_return_1yr {
    type: number
    sql: ${TABLE}.tot_return_1yr ;;
  }

  dimension: vol_90day_avg {
    type: number
    sql: ${TABLE}.vol_90day_avg ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name]
  }
}
