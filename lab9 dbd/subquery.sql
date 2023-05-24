WITH sales_employees AS (
    SELECT id
    FROM employees
    WHERE department = 'Sales'
)
SELECT first_name, last_name
FROM employees
WHERE EXISTS (
    SELECT 1
    FROM sales_employees
    WHERE sales_employees.id = employees.id
);
