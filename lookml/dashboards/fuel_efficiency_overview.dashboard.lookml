- dashboard: fuel_efficiency_overview
  title: "Fuel Efficiency Overview"
  layout: newspaper
  preferred_viewer: dashboards-next

  # Enable cross-filtering - click on chart elements to filter dashboard
  crossfilter_enabled: true

  elements:
  - title: "City Total Mpg"
    name: kpi_KBHvQmw
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [fuel_efficiency.city_total_mpg]
    sorts: [fuel_efficiency.city_total_mpg desc]
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
    value_format: "#,##0.0"

  - title: "Highway Total Mpg"
    name: kpi_RGmRSP
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [fuel_efficiency.highway_total_mpg]
    sorts: [fuel_efficiency.highway_total_mpg desc]
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
    value_format: "#,##0.0"

  - title: "Combined Total Mpg"
    name: kpi_ddmzp
    model: car_looker_auto
    explore: car_looker_auto
    type: single_value
    fields: [fuel_efficiency.combined_total_mpg]
    sorts: [fuel_efficiency.combined_total_mpg desc]
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
    value_format: "#,##0.0"

  - title: "City Wise Combined MPG"
    name: map_rvXmVBA
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_map
    fields: [city.country, fuel_efficiency.combined_total_mpg]
    sorts: [fuel_efficiency.combined_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 0
    width: 12
    height: 14
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false

  - title: "Combined MPG By Manufacturer"
    name: chart_chart_combined_mpg_manufacturer
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_column
    fields: [fuel_efficiency.manufacturer, fuel_efficiency.combined_total_mpg]
    sorts: [fuel_efficiency.combined_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 4
    col: 12
    width: 12
    height: 6
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    bar_padding: 0.5
    series_colors:
      fuel_efficiency.combined_total_mpg: '#00695C'

  - title: "City MPG By Manufacturer"
    name: chart_pie_city_mpg_manufacturer
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_pie
    fields: [fuel_efficiency.manufacturer, fuel_efficiency.city_total_mpg]
    sorts: [fuel_efficiency.city_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 10
    col: 12
    width: 12
    height: 4
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    colors: ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf']

  - title: "Highway MPG By Manufacturer"
    name: chart_pie_highway_mpg_manufacturer
    model: car_looker_auto
    explore: car_looker_auto
    type: looker_pie
    fields: [fuel_efficiency.manufacturer, fuel_efficiency.highway_total_mpg]
    sorts: [fuel_efficiency.highway_total_mpg desc]
    limit: 500
    column_limit: 50
    row: 14
    col: 12
    width: 12
    height: 4
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    colors: ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2', '#7f7f7f', '#bcbd22', '#17becf']
