- dashboard: summary
  title: "Summary"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "Average Rating"
    name: kpi_ECtCRv
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0.0'

  - title: "Total Issue"
    name: kpi_RCNmU
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
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
    comparison_type: 'value'
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '0'

  - title: "Total Units Sold"
    name: kpi_LzwMUrg
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: single_value
    fields: [sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
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
    value_format: '[>=1000000]0.00,,"M";[>=1000]0.00,"K";0'

  - title: "Average Rating By Model_Manufacturer"
    name: chart_FgzFC
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_column
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model_manufacturer, ratings_and_reviews.avg_rating, ratings_and_reviews.count_review_count]
    sorts: [ratings_and_reviews.avg_rating desc]
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
    y_axis_tick_density: 'default'
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: 'linear'
    bar_padding: 0.5
    series_colors:
      ratings_and_reviews.avg_rating: '#00897B'

  - title: "Total Issue By Model_Manufacturer"
    name: chart_BTDa
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_column
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model_manufacturer, issues_and_solutions.count_issue]
    sorts: [issues_and_solutions.count_issue desc]
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
    y_axis_tick_density: 'default'
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: 'linear'
    bar_padding: 0.5
    series_colors:
      issues_and_solutions.count_issue: '#00897B'

  - title: "Total Units Sold By Model & Manufacturer"
    name: chart_rgeap
    model: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    explore: qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634
    type: looker_bar
    fields: [qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.manufacturer, qlik_migration_82d797ee_ddbe_46fd_a7a9_36028398d634.model, sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 16
    width: 8
    height: 8
