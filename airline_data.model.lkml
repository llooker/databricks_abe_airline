connection: "abe-demo-conn"

# include all the views
include: "*.view"

datagroup: airline_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: airline_data_default_datagroup

explore: airline_data_agg {}

explore: airline_routes {}

explore: airlines {}

explore: airlines_data_delta {}

explore: airports {}

explore: dow30 {}

explore: planes {}

explore: sp500 {}
