- dashboard: sales_overview
  title: "Sales Overview"
  layout: newspaper
  preferred_viewer: dashboards-next

  # Enable cross-filtering - click on chart elements to filter dashboard
  crossfilter_enabled: true

  elements:
  - title: "Total Units Sold"
    name: kpi_total_units_sold
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [car_looker_auto.total_units_sold]
    sorts: [car_looker_auto.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '[>=1000000]0.00,,"M";[>=1000]0.00,"K";0'

  - title: "Average Units Sold"
    name: kpi_avg_units_sold
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [car_looker_auto.average_units_sold]
    sorts: [car_looker_auto.average_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 8
    width: 8
    height: 4
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '[>=1000000]0.00,,"M";[>=1000]0.00,"K";0'

  - title: "Calculated Metric"
    name: kpi_gqbeqUm
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [car_looker_auto.unnamed_measure]
    sorts: [car_looker_auto.unnamed_measure desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
    height: 4
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false

  - title: "Units Sold By Manufacturer "
    name: chart_pfX
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [car_looker_auto.manufacturer, car_looker_auto.total_units_sold]
    sorts: [car_looker_auto.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    bar_padding: 0.5
    series_colors:
      car_looker_auto.total_units_sold: '#00897B'

  - title: "Units Sold Vs Avg Rating"
    name: chart_XNkgEj
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [car_looker_auto.model, car_looker_auto.sum_units_sold, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 12
    height: 8
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    bar_padding: 0.5
    series_colors:
      car_looker_auto.sum_units_sold: '#00897B'

  - title: "Pivot-Table Chart"
    name: rjJANm
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_grid
    fields: [city.city, car_looker_auto.manufacturer, car_looker_auto.total_units_sold]
    sorts: [car_looker_auto.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 16
