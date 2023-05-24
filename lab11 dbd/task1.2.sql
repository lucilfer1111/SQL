SELECT cus_rate, COUNT(*) as count 
FROM customers 
WHERE cus_rate > (
	SELECT AVG(cus_rate) 
	FROM customers 
	WHERE cus_city = 'Улаанбаатар'
) AND cus_city = 'Улаанбаатар'
GROUP BY cus_rate;
