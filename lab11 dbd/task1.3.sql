SELECT ord_id, ord_date, emp_id, cust_id, total_amount 
FROM orders 
WHERE total_amount >= (
	SELECT AVG(total_amount) 
	FROM orders
);
