view: airline_routes {
  sql_table_name: abe_demo.airline_routes ;;
  suggestions: no

  dimension: air_time {
    type: string
    sql: ${TABLE}.AirTime ;;
  }

  dimension: airline {
    type: string
    sql: ${TABLE}.airline ;;
  }

  dimension: arr_delay {
    type: string
    sql: ${TABLE}.ArrDelay ;;
  }

  dimension: carrier_delay {
    type: string
    sql: ${TABLE}.CarrierDelay ;;
  }

  dimension: crsdep_time {
    type: number
    sql: ${TABLE}.CRSDepTime ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DayOfWeek ;;
  }

  dimension: dayof_month {
    type: number
    sql: ${TABLE}.DayofMonth ;;
  }

  dimension: dep_delay {
    type: string
    sql: ${TABLE}.DepDelay ;;
  }

  dimension: dest {
    type: string
    sql: ${TABLE}.dest ;;
  }

  dimension: dest_city {
    type: string
    sql: ${TABLE}.dest_city ;;
  }

  dimension: dest_country {
    type: string
    sql: ${TABLE}.dest_country ;;
  }

  dimension: dest_state {
    type: string
    sql: ${TABLE}.dest_state ;;
  }

  dimension: distance {
    type: string
    sql: ${TABLE}.Distance ;;
  }

  dimension: manufacturer {
    type: string
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.origin ;;
  }

  dimension: origin_city {
    type: string
    sql: ${TABLE}.origin_city ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}.origin_country ;;
  }

  dimension: origin_state {
    type: string
    sql: ${TABLE}.origin_state ;;
  }

  dimension: taxi_in {
    type: string
    sql: ${TABLE}.TaxiIn ;;
  }

  dimension: taxi_out {
    type: string
    sql: ${TABLE}.TaxiOut ;;
  }

  dimension: weather_delay {
    type: string
    sql: ${TABLE}.WeatherDelay ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: delay_per_mile {
    type: average
    value_format_name: decimal_2
    sql:   ${arr_delay} / nullif(${distance},0) ;;
  }
  measure: arrival_delay {
    type: sum
    sql: CAST( ${arr_delay} AS int) ;;
  }

}
