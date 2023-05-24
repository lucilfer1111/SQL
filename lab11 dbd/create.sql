CREATE TABLE employees (
    emp_id      INT             NOT NULL,
    first_name  VARCHAR(20)     NOT NULL,
    last_name   VARCHAR(20)     NOT NULL,
    emp_city   	VARCHAR(20)     NOT NULL,
		emp_rate	DECIMAL(5,2)	NOT NULL,
    PRIMARY KEY (emp_id)
);
CREATE TABLE customers (
    cust_id      INT             NOT NULL,
    cust_first_name  VARCHAR(20)     NOT NULL,
    cust_last_name   VARCHAR(20)     NOT NULL,
    cus_city   	VARCHAR(20)     NOT NULL,
	cus_rate	DECIMAL(5,2)	NOT NULL,
    PRIMARY KEY (cust_id)
);
CREATE TABLE orders (
    ord_id      INT             NOT NULL,
    ord_date  	DATE            NOT NULL,
    emp_id      INT             NOT NULL,
    cust_id     INT            	NOT NULL,
	total_amount DECIMAL(10,2)	NOT NULL,
   	FOREIGN KEY (emp_id)  REFERENCES employees   (emp_id),
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id),
  	PRIMARY KEY (ord_id)
);
INSERT INTO employees VALUES 
(10001,'Болд','Сүх','Улаанбаатар','0.11'),
(10002,'Бат','Туяа','Берлин','0.13'),
(10003,'Саран','Билгүүн','Сидней','0.12'),
(10004,'Гансүх','Цэцэг','Токио','0.14'),
(10005,'Баяр','Болд','Сөүл','0.15'),
(10010,'James','Peter','Вашингтон','0.12');

select * from employees;

INSERT INTO customers VALUES 
(20001,'Очир','Сүрэн','Улаанбаатар','100'),
(20002,'Наран','Тулга','Улаанбаатар','200'),
(20003,'Тамир','Анар','Эрдэнэт','300'),
(20004,'Сүхбат','Ганболд','Эрдэнэт','200'),
(20005,'Одонтуяа','Нямсүрэн','Дархан','300'),
(20006,'Батбаяр','Алтанцэцэг','Дархан','100');

select * from customers;

INSERT INTO orders VALUES 
(30001,'2022.03.06','10010','20001','580000.00'),
(30002,'2022.04.08','10003','20003','175000.25'),
(30003,'2022.03.22','10002','20005','1380000.00'),
(30004,'2022.04.15','10004','20001','280000.00'),
(30005,'2022.03.17','10001','20002','455000.00'),
(30006,'2022.03.06','10003','20003','580000.00'),
(30007,'2022.03.06','10010','20003','580000.00'),
(30008,'2022.03.06','10001','20002','580000.00'),
(30010,'2022.03.06','10005','20004','2635000.50');

select * from orders;