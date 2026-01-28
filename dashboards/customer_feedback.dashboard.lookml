- dashboard: customer_feedback
  title: "Customer Feedback"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "Total Review"
    name: kpi_yupAwh
    model: snowflake_car
    explore: car_analysis
    type: single_value
    fields: [ratings_and_reviews.total_review]
    sorts: [ratings_and_reviews.total_review desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Average Rating"
    name: kpi_gFmT
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [ratings_and_reviews.average_rating]
    sorts: [ratings_and_reviews.average_rating desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 8
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Total Solution"
    name: kpi_ZUGVp
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [issues_and_solutions.total_solution]
    sorts: [issues_and_solutions.total_solution desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Total Issue"
    name: kpi_sZZEjE
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [issues_and_solutions.total_issue]
    sorts: [issues_and_solutions.total_issue desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Manufacturer Wise Avg Rating & Review Count"
    name: HLWNGDb
    model: car_analysis
    explore: car_analysis
    type: looker_scatter
    fields: [car_analysis.manufacturer, ratings_and_reviews.sum_review_count, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.sum_review_count desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8

  - title: "Issue Count By Manufacturer"
    name: chart_nRymjVU
    model: car_analysis
    explore: car_analysis
    type: looker_pie
    fields: [car_analysis.manufacturer, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 8

  - title: "Avg Rating By Model_Manufacturer"
    name: chart_22c31e3c-329b-40a4-8044-d133293f6eee
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.manufacturer, ratings_and_reviews.avg_rating]
    sorts: [ratings_and_reviews.avg_rating desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 12
    height: 8
    series_colors:
      ratings_and_reviews.avg_rating: '#1f77b4'

  - title: "Issues & Solutions By Manufacturer"
    name: bFQnjFv
    model: car_analysis
    explore: car_analysis
    type: looker_grid
    fields: [car_analysis.manufacturer, issues_and_solutions.issue, issues_and_solutions.solution]
    sorts: [car_analysis.manufacturer desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 24
    height: 8
