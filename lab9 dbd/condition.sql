SELECT first_name, last_name, salary,
       CASE
           WHEN salary > 75000 THEN 'High'
           WHEN salary > 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level,
       COALESCE(department, 'No department assigned') AS department,
       GREATEST(age, 30) AS adjusted_age,
       LEAST(age, 40) AS adjusted_age2
FROM employees;
