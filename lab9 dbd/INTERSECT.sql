--INTERSECT
SELECT department
FROM employees
WHERE salary > 60000
INTERSECT
SELECT department
FROM employees
WHERE age > 35;

