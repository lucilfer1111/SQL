SELECT cust_id, cus_city, cus_rate
FROM customers
WHERE cust_id NOT IN (
  SELECT cust_id
  FROM customers
  WHERE cus_city = 'Darhan'
);
