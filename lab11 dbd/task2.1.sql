SELECT ord_id, ord_date, emp_id, cust_id, total_amount
FROM orders
JOIN employees ON orders.emp_id = employees.emp_id
JOIN customers ON orders.cust_id = customers.cust_id
WHERE emp_city = 'Sydney' OR cus_city = 'Sydney';
