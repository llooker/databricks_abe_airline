- dashboard: airlines
  title: Airlines
  layout: newspaper
  refresh: 1 hour
  elements:
  - title: Most Popular Routes
    name: Most Popular Routes
    model: airline_data
    explore: airline_routes
    type: looker_bar
    fields: [airline_routes.origin_city, airline_routes.dest_city, airline_routes.count]
    filters: {}
    sorts: [airline_routes.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '20'
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Destination: airline_routes.dest_city
      Origin: airline_routes.origin_city
      Year: airline_routes.year
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Flights Trend by Year
    name: Flights Trend by Year
    model: airline-data
    explore: airline_routes
    type: looker_line
    fields: [airline_routes.year, airline_routes.count]
    sorts: [airline_routes.count desc]
    limit: 500
    series_types: {}
    listen:
      Destination: airline_routes.dest_city
      Origin: airline_routes.origin_city
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Destinations with most delays
    name: Destinations with most delays
    model: airline-data
    explore: airline_routes
    type: looker_column
    fields: [airline_routes.dest_city, airline_routes.arrival_delay]
    sorts: [airline_routes.arrival_delay desc]
    limit: 20
    listen:
      Destination: airline_routes.dest_city
      Origin: airline_routes.origin_city
      Year: airline_routes.year
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Airlines Market Share
    name: Airlines Market Share
    model: airline-data
    explore: airline_routes
    type: looker_pie
    fields: [airline_routes.airline, airline_routes.count]
    limit: 500
    series_types: {}
    listen:
      Destination: airline_routes.dest_city
      Origin: airline_routes.origin_city
      Year: airline_routes.year
    row: 0
    col: 8
    width: 8
    height: 6
  filters:
  - name: Destination
    title: Destination
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: airline-data
    explore: airline_routes
    listens_to_filters: []
    field: airline_routes.dest_city
  - name: Origin
    title: Origin
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: airline-data
    explore: airline_routes
    listens_to_filters: []
    field: airline_routes.origin_city
  - name: Year
    title: Year
    type: field_filter
    default_value: '2008'
    allow_multiple_values: true
    required: false
    model: airline-data
    explore: airline_routes
    listens_to_filters: []
    field: airline_routes.year
