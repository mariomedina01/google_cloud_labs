#  retrieve the top ten small-sized items by total revenue from the coffee_on_wheels dataset, including the menu_id, item_name, and total_revenue fields.
SELECT oi.menu_id, m.item_name, ROUND(SUM(oi.item_total), 2) AS total_revenue
FROM .. AS oi
INNER JOIN .. AS m
  ON oi.menu_id = m.menu_id
WHERE m.item_size = 'Small'
GROUP BY 1, 2
ORDER BY total_revenue DESC
LIMIT 10;
