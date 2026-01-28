- dashboard: fuel_efficiency_overview
  title: "Fuel Efficiency Overview"
  layout: newspaper
  preferred_viewer: dashboards-next

  crossfilter_enabled: true

  elements:
  - title: "City Total Mpg"
    name: kpi_KBHvQmw
    model: snowflake_car
    explore: car_analysis
    type: single_value
    fields: [fuel_efficiency.city_total_mpg]
    sorts: [fuel_efficiency.city_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 0
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Highway Total Mpg"
    name: kpi_RGmRSP
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [fuel_efficiency.highway_total_mpg]
    sorts: [fuel_efficiency.highway_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 8
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Combined Total Mpg"
    name: kpi_ddmzp
    model: car_analysis
    explore: car_analysis
    type: single_value
    fields: [fuel_efficiency.combined_total_mpg]
    sorts: [fuel_efficiency.combined_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 0
    col: 16
    width: 8
    height: 4
    value_format: '#,##0.00'

  - title: "Highway MPG by Manufacturer"
    name: chart_6f8a3456-59dd-4c3f-82f8-a2904f1f706f
    model: car_analysis
    explore: car_analysis
    type: looker_pie
    fields: [car_analysis.manufacturer, fuel_efficiency.sum_highway_mpg]
    sorts: [fuel_efficiency.sum_highway_mpg desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 8

  - title: "City MPG By Manufacturer"
    name: chart_9536eebb-86d3-40a3-97c3-62de2d289821
    model: car_analysis
    explore: car_analysis
    type: looker_pie
    fields: [car_analysis.manufacturer, fuel_efficiency.avg_city_mpg]
    sorts: [fuel_efficiency.avg_city_mpg desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 8

  - title: "Combined MPG by Manufacturer"
    name: chart_d6fe4ff9-8774-47ed-958a-b3a7186a5e82
    model: car_analysis
    explore: car_analysis
    type: looker_column
    fields: [car_analysis.manufacturer, fuel_efficiency.count_combined_mpg]
    sorts: [fuel_efficiency.count_combined_mpg desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 0
    width: 12
    height: 8
    series_colors:
      fuel_efficiency.count_combined_mpg: '#1f77b4'

  - title: "City Wise Combined MPG"
    name: map_rvXmVBA
    model: car_analysis
    explore: car_analysis
    type: looker_map
    fields: [city.city_location, car_analysis.count]
    sorts: [car_analysis.count desc]
    limit: 500
    column_limit: 50
    row: 12
    col: 12
    width: 12
    height: 8
