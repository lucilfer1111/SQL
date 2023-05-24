SELECT first_name, last_name, hire_date,
       DATE_PART('year', NOW() - hire_date) AS years_of_service
FROM employees;
