SELECT product_id, 
SUM(quantity),
SUM(price) FROM order_items GROUP BY product_id;
