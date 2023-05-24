SELECT cust_id, cust_first_name, cus_city, cus_rate
FROM customers
WHERE cus_rate NOT IN (
  SELECT cus_rate
  FROM customers
  WHERE cus_city = 'Erdenet'
);
