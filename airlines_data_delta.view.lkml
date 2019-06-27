view: airlines_data_delta {
  sql_table_name: abe_demo.airlines_data_delta ;;
  suggestions: no

  dimension: _col_name {
    type: string
    sql: ${TABLE}.`# col_name` ;;
  }

  dimension: _partition_information {
    type: string
    sql: ${TABLE}.`# Partition Information` ;;
  }

  dimension: actual_elapsed_time {
    type: string
    sql: ${TABLE}.ActualElapsedTime ;;
  }

  dimension: air_time {
    type: string
    sql: ${TABLE}.AirTime ;;
  }

  dimension: arr_delay {
    type: string
    sql: ${TABLE}.ArrDelay ;;
  }

  dimension: arr_time {
    type: string
    sql: ${TABLE}.ArrTime ;;
  }

  dimension: cancellation_code {
    type: string
    sql: ${TABLE}.CancellationCode ;;
  }

  dimension: cancelled {
    type: number
    sql: ${TABLE}.Cancelled ;;
  }

  dimension: carrier_delay {
    type: string
    sql: ${TABLE}.CarrierDelay ;;
  }

  dimension: crsarr_time {
    type: number
    sql: ${TABLE}.CRSArrTime ;;
  }

  dimension: crsdep_time {
    type: number
    sql: ${TABLE}.CRSDepTime ;;
  }

  dimension: crselapsed_time {
    type: string
    sql: ${TABLE}.CRSElapsedTime ;;
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

  dimension: dep_time {
    type: string
    sql: ${TABLE}.DepTime ;;
  }

  dimension: dest {
    type: string
    sql: ${TABLE}.Dest ;;
  }

  dimension: distance {
    type: string
    sql: ${TABLE}.Distance ;;
  }

  dimension: diverted {
    type: number
    sql: ${TABLE}.Diverted ;;
  }

  dimension: flight_num {
    type: number
    sql: ${TABLE}.FlightNum ;;
  }

  dimension: late_aircraft_delay {
    type: string
    sql: ${TABLE}.LateAircraftDelay ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.Month ;;
  }

  dimension: nasdelay {
    type: string
    sql: ${TABLE}.NASDelay ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.Origin ;;
  }

  dimension: security_delay {
    type: string
    sql: ${TABLE}.SecurityDelay ;;
  }

  dimension: tail_num {
    type: string
    sql: ${TABLE}.TailNum ;;
  }

  dimension: taxi_in {
    type: string
    sql: ${TABLE}.TaxiIn ;;
  }

  dimension: taxi_out {
    type: string
    sql: ${TABLE}.TaxiOut ;;
  }

  dimension: unique_carrier {
    type: string
    sql: ${TABLE}.UniqueCarrier ;;
  }

  dimension: weather_delay {
    type: string
    sql: ${TABLE}.WeatherDelay ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }


  measure: count {
    type: count
    drill_fields: [_col_name]
  }
}
