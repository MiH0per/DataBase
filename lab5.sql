CREATE DATABASE lab5;

CREATE TABLE customers(
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(255),
    city VARCHAR(255),
    grade INT,
    salesman_id INT
);

INSERT INTO customers (customer_id, cust_name, city, grade, salesman_id)
VALUES 
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Graham Zusi', 'California', 200, 5002),
(3005, 'Brad Guzan', 'London', NULL, 5005),
(3004, 'Fabian John', 'Paris', 300, 5006),
(3009, 'Brad Davis', 'New York', 200, 5001),
(3008, 'Geoff Camer', 'Berlin', 100, 5003),
(3003, 'Julian Green', 'London', 300, 5002);

CREATE TABLE orders (
    ord_no INT PRIMARY KEY,
    purch_amt NUMERIC(10, 2),
    ord_date DATE,
    customer_id INT,  
    salesman_id INT,  
);

INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id)
VALUES 
(70001, 150.50, '2012-10-05', 3005, 5002), 
(70009, 270.65, '2012-09-05', 3001, 5005),
(70002, 65.26, '2012-10-10', 3002, 5001),
(70004, 110.50, '2012-08-17', 3009, 5003),
(70007, 948.50, '2012-09-10', 3005, 5002),
(70005, 2400.60, '2012-07-27', 3007, 5001),
(70008, 5760.00, '2012-09-10', 3002, 5001);

CREATE TABLE salesmen (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    commission NUMERIC(3, 2)
);

INSERT INTO salesmen (salesman_id, name, city, commission)
VALUES 
(5001, 'James Hoog', 'New York', 0.13),
(5002, 'Nail Knite', 'Paris', 0.15),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5003, 'Lauson Hen', 'San Jose', 0.12),
(5007, 'Paul Adam', 'Rome', 0.13);

/* 3 */
SELECT SUM(purch_amt) FROM orders;
	
/* 4 */
SELECT AVG(purch_amt) FROM orders;

/* 5 */
SELECT count(cust_name) FROM customers;

/* 6 */
SELECT MIN(purch_amt) FROM orders;

/* 7 */
SELECT * FROM customers WHERE cust_name LIKE '%b';

/* 8 */
SELECT o.* FROM orders as o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city ='New York';

/* 9 */
SELECT c.* FROM customers as c
JOIN orders as o ON c.customer_id = o.customer_id
WHERE o.purch_amt > 10;

/* 10 */
SELECT SUM(grade) FROM customers;

/* 11 */
SELECT * FROM customers WHERE cust_name IS NOT NULL;

/* 12 */
SELECT MAX(grade) FROM customers;


DROP TABLE customers;

