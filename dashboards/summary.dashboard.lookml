- dashboard: summary
  title: "Summary"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "Average Rating"
    name: kpi_ECtCRv
    model: snowflake_car
    explore: car_analysis
    type: single_value
    fields: [ratings_and_reviews.average_rating]
    sorts: [ratings_and_reviews.average_rating desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Total Issue"
    name: kpi_RCNmU
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [issues_and_solutions.total_issue]
    sorts: [issues_and_solutions.total_issue desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 8
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Total Units Sold"
    name: kpi_LzwMUrg
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Average Rating By Model_Manufacturer"
    name: chart_FgzFC
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.model_manufacturer, ratings_and_reviews.avg_rating, ratings_and_reviews.count_review_count]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8
    series_colors:
      ratings_and_reviews.avg_rating: '#1f77b4'

  - title: "Total Issue By Model_Manufacturer"
    name: chart_BTDa
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.model_manufacturer, issues_and_solutions.count_issue]
    sorts: [issues_and_solutions.count_issue desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 8
    series_colors:
      issues_and_solutions.count_issue: '#1f77b4'

  - title: "Total Units Sold By Model & Manufacturer"
    name: chart_rgeap
    model: car_analysis
    explore: car_analysis
    type: looker_bar
    fields: [car_analysis.manufacturer, car_analysis.model, sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 12
    height: 8
