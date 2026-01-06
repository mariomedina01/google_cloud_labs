-- Show the menu IDs and total revenue from the order_item table with the top three highest and top three lowest by total revenue.
SELECT
  menu_id,
  total_revenue
FROM (
  SELECT
    menu_id,
    SUM(order_item.item_total) AS total_revenue
  FROM
    `qwiklabs-gcp-00-3e40df3d4d55`.`coffee_on_wheels`.`order_item` AS order_item
  GROUP BY
    menu_id
  ORDER BY
    SUM(order_item.item_total) DESC
  LIMIT
    3 )
UNION ALL
SELECT
  menu_id,
  total_revenue
FROM (
  SELECT
    menu_id,
    SUM(order_item.item_total) AS total_revenue
  FROM
    `qwiklabs-gcp-00-3e40df3d4d55`.`coffee_on_wheels`.`order_item` AS order_item
  GROUP BY
    menu_id
  ORDER BY
    SUM(order_item.item_total) ASC
  LIMIT
    3 )
ORDER BY
  total_revenue DESC;
