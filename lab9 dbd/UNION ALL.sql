--UNION ALL
SELECT department
FROM employees
WHERE salary > 60000
UNION ALL
SELECT department
FROM employees
WHERE age > 35;

