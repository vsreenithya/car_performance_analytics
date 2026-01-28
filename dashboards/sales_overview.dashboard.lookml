- dashboard: sales_overview
  title: "Sales Overview"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "Total Units Sold"
    name: kpi_VDzkKqp
    model: snowflake_car
    explore: car_analysis
    type: single_value
    fields: [sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Average Units Sold"
    name: kpi_mNWBmy
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [sales.average_units_sold]
    sorts: [sales.average_units_sold desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 8
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Calculated Metric"
    name: kpi_gqbeqUm
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [car_analysis.unnamed_measure]
    sorts: [car_analysis.unnamed_measure desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Units Sold By Manufacturer "
    name: chart_pfX
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.manufacturer, sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8
    series_colors:
      sales.total_units_sold: '#1f77b4'

  - title: "Units Sold Vs Avg Rating"
    name: chart_XNkgEj
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.model, sales.sum_units_sold, ratings_and_reviews.avg_rating]
    sorts: [sales.sum_units_sold desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 8
    series_colors:
      sales.sum_units_sold: '#1f77b4'

  - title: "Pivot-Table Chart"
    name: rjJANm
    model: car_analysis
    explore: car_analysis
    type: looker_grid
    fields: [city.city, car_analysis.manufacturer, sales.total_units_sold]
    sorts: [sales.total_units_sold desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 24
    height: 8
