SELECT CONCAT(first_name, ' ', last_name) AS full_name,
       CONCAT_WS(', ', last_name, first_name) AS last_first_name
FROM employees;

