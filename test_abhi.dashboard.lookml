- dashboard: test_for_sql
  title: test_for_sql
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Wr2W38xdKARPD2ueoerONC
  elements:
  - title: brand_and_product
    name: brand_and_product
    model: intermediate_ecomm
    explore: intermediate_example_ecommerce
    type: looker_pie
    fields: [products.brand, products.count]
    sorts: [products.count desc 0]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: New Tile
    name: New Tile
    model: intermediate_ecomm
    explore: intermediate_example_ecommerce
    type: looker_bar
    fields: [products.name, products.cost]
    sorts: [products.name]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen: {}
    row:
    col:
    width:
    height:
  - title: New Tile
    name: New Tile (2)
    model: intermediate_ecomm
    explore: intermediate_example_ecommerce
    type: looker_bar
    fields: [test_abhi.products_brand, test_abhi.products_count, test_abhi.temp]
    filters:
      test_abhi.products_brand: "-NULL"
    sorts: [test_abhi.products_count]
    limit: 500
    column_limit: 50
    dynamic_fields: [{measure: count_of_temp, based_on: test_abhi.temp, expression: '',
        label: Count of Temp, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {measure: count_of_temp_2, based_on: test_abhi.temp, expression: '', label: Count
          of Temp, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {measure: list_of_temp, based_on: test_abhi.temp, expression: '', label: List
          of Temp, type: list, _kind_hint: measure, _type_hint: list}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    listen: {}
    row:
    col:
    width:
    height:
