- dashboard: summary
  title: "Summary"
  layout: newspaper
  preferred_viewer: dashboards-next

  # Enable cross-filtering - click on chart elements to filter dashboard
  crossfilter_enabled: true

  elements:
  - title: "Average Rating"
    name: kpi_ECtCRv
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [ratings_and_reviews.average_rating]
    sorts: [ratings_and_reviews.average_rating desc]
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
    value_format: "0.0"

  - title: "Total Issue"
    name: kpi_RCNmU
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [issues_and_solutions.total_issue]
    sorts: [issues_and_solutions.total_issue desc]
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
    value_format: "0"

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
    value_format: '[>=1000000]0.00,,"M";[>=1000]0.00,"K";0'

  - title: "Average Rating By Model_Manufacturer"
    name: chart_FgzFC
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [model_manufacturer.model_manufacturer, ratings_and_reviews.avg_rating, ratings_and_reviews.count]
    sorts: [ratings_and_reviews.count desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 8
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
      ratings_and_reviews.avg_rating: '#00897B'

  - title: "Total Issue By Model_Manufacturer"
    name: chart_BTDa
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [model_manufacturer.model_manufacturer, issues_and_solutions.count]
    sorts: [issues_and_solutions.count desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 8
    width: 8
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
      issues_and_solutions.count: '#00897B'

  - title: "Total Units Sold By Model & Manufacturer"
    name: chart_rgeap
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_bar
    fields: [car_looker_auto.manufacturer, car_looker_auto.model, car_looker_auto.total_units_sold]
    sorts: [car_looker_auto.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 16
    width: 8
    height: 8
