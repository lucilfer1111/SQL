SELECT ord_id, ord_date, emp_id, cust_id, total_amount 
FROM orders 
WHERE emp_id = (
	SELECT emp_id 
	FROM employees 
	WHERE last_name = 'Бат'
);
