CREATE TABLE employees ( 
	id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL, 
	age INTEGER, hire_date DATE,
	salary NUMERIC(10,2),
	department VARCHAR(50) ); 
INSERT INTO employees (
	first_name, last_name, age, hire_date, salary, department) 
	VALUES ('Bold', 'Bat', 32, '2018-01-01', 50000.00, 'IT'), 
	('Jagaa', 'Saraa', 28, '2020-05-01', 60000.00, 'Sales'), 
	('Nymdorj', 'Jugdernamjil', 45, '2010-12-01', 80000.00, 'HR'), 
	('Altanhuyg', 'Borhuu', 37, '2015-06-01', 75000.00, 'Marketing');