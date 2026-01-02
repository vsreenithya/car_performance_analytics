- dashboard: customer_feedback
  title: "Customer Feedback"
  layout: newspaper
  preferred_viewer: dashboards-next

  # Enable cross-filtering - click on chart elements to filter dashboard
  crossfilter_enabled: true

  elements:
  - title: "Total Review"
    name: kpi_yupAwh
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [ratings_and_reviews.total_review]
    sorts: [ratings_and_reviews.total_review desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 6
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

  - title: "Average Rating"
    name: kpi_gFmT
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [ratings_and_reviews.average_rating]
    sorts: [ratings_and_reviews.average_rating desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 6
    width: 6
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

  - title: "Total Solution"
    name: kpi_ZUGVp
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [issues_and_solutions.total_solution]
    sorts: [issues_and_solutions.total_solution desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 12
    width: 6
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

  - title: "Total Issue"
    name: kpi_sZZEjE
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [issues_and_solutions.total_issue]
    sorts: [issues_and_solutions.total_issue desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 18
    width: 6
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

  - title: "Manufacturer Wise Avg Rating & Review Count"
    name: HLWNGDb
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_scatter
    fields: [ratings_and_reviews.manufacturer, ratings_and_reviews.total_review, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8

  - title: "Issue Count By Manufacturer"
    name: chart_nRymjVU
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_pie
    fields: [ratings_and_reviews.manufacturer, issues_and_solutions.count]
    sorts: [issues_and_solutions.count desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 8
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    colors: ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf']

  - title: "Avg Rating By Model_Manufacturer"
    name: chart_avg_rating_model_manuf_injected
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [car_looker_auto.manufacturer, car_looker_auto.model, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 24
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

  - title: "Issues & Solutions By Manufacturer"
    name: bFQnjFv
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_grid
    fields: [car_looker_auto.manufacturer, issues_and_solutions.issue, issues_and_solutions.solution]
    sorts: [issues_and_solutions.solution desc]
    limit: 500
    column_limit: 50
    row: 20
    col: 0
    width: 24
    height: 8
