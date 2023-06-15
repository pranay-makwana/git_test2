view: test_abhi {
  derived_table: {
    sql:
      SELECT t.products_count as products_count,
             t.temp as temp,
             t.products_brand as temp1,
             t.products_brand as products_brand
      FROM (SELECT
          products.brand  AS products_brand,
          COUNT(DISTINCT products.id) AS products_count,
          CASE WHEN COUNT(DISTINCT products.id) > 500  THEN "YES"
              ELSE "NO"
          END AS temp
      FROM `bigquery-public-data.thelook_ecommerce.order_items`  AS order_items
      LEFT JOIN `bigquery-public-data.thelook_ecommerce.inventory_items` AS inventory_items ON inventory_items.id = order_items.inventory_item_id
      LEFT JOIN `bigquery-public-data.thelook_ecommerce.products` AS products ON products.id = inventory_items.product_id
      GROUP BY
          1
      ORDER BY
          2 DESC
      LIMIT 10) as t
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: products_brand {
    type: string
    sql: ${TABLE}.products_brand;;
  }

  dimension: products_count {
    type: number
    sql: ${TABLE}.products_count ;;
  }
  dimension: temp1 {
    type: string
    sql: ${TABLE}.temp1 ;;
  }

  dimension: temp {
    type: string
    sql: ${TABLE}.temp;;
  }

  set: detail {
    fields: [products_brand, products_count, temp]
  }
}
