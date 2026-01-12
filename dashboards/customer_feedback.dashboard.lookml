- dashboard: customer_feedback
  title: "Customer Feedback"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "Avg Rating By Model_Manufacturer"
    name: chart_avg_rating_model_manuf_injected
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_column
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.manufacturer, qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model, ratings_and_reviews.avg_rating]
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
    y_axis_tick_density: 'default'
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: 'linear'
    bar_padding: 0.5
    series_colors:
      ratings_and_reviews.avg_rating: '#00897B'

  - title: "Total Review"
    name: kpi_yupAwh
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false

  - title: "Average Rating"
    name: kpi_gFmT
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0.0'

  - title: "Total Solution"
    name: kpi_ZUGVp
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false

  - title: "Total Issue"
    name: kpi_sZZEjE
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'

  - title: "Manufacturer Wise Avg Rating & Review Count"
    name: HLWNGDb
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_scatter
    fields: [ratings_and_reviews.manufacturer, ratings_and_reviews.total_review, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.total_review desc]
    limit: 500
    column_limit: 50
    row: 20
    col: 0
    width: 12
    height: 8

  - title: "Issue Count By Manufacturer"
    name: chart_nRymjVU
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_pie
    fields: [ratings_and_reviews.manufacturer, issues_and_solutions.count]
    sorts: [issues_and_solutions.count desc]
    limit: 500
    column_limit: 50
    row: 20
    col: 12
    width: 12
    height: 8
    value_labels: 'legend'
    label_type: 'labPer'
    inner_radius: 0
    colors: ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf']

  - title: "Avg Rating By Model_Manufacturer"
    name: chart_22c31e3c-329b-40a4-8044-d133293f6eee
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_column
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.manufacturer, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 28
    col: 0
    width: 12
    height: 8
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: 'default'
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: 'linear'
    bar_padding: 0.5
    series_colors:
      ratings_and_reviews.avg_rating: '#00897B'

  - title: "Issues & Solutions By Manufacturer"
    name: bFQnjFv
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_grid
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.manufacturer, issues_and_solutions.issue, issues_and_solutions.solution]
    sorts: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.manufacturer desc]
    limit: 500
    column_limit: 50
    row: 28
    col: 0
    width: 24
    height: 8
