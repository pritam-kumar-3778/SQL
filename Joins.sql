CREATE DATABASE Joins;
USE Joins;

CREATE TABLE Customers(
customer_id int PRIMARY KEY,
name varchar(40),
city varchar (30)
);

INSERT INTO Customers
VALUES
(1, "Pritam", "JSG"),
(2, "Sritam", "SBP"),
(3, "Pritesh", "JSG"),
(4, "Soumya", "SNG");

CREATE TABLE Orders(
order_id int PRIMARY KEY,
customer_id int, 
amount int
);

INSERT INTO Orders
VALUES
(101, 1, 500),
(1022, 1, 900),
(1033, 2, 300),
(104, 5, 600);

-- Inner Join
SELECT *
FROM Customers c
INNER JOIN Orders O
ON c.customer_id = o.customer_id;

-- left Join
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

-- Right Join
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

-- Full Join / Outer Join
SELECT *
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id
UNION
SELECT *
FROM Customers c
RIGHT JOIN Orders o
ON c.customer_id = o.customer_id;

-- Cross Join
SELECT *
FROM Customers
CROSS JOIN Orders;

-- Self Join (The table is joined with it self)
SELECT *
FROM Customers as A
JOIN Customers as B
ON A.customer_id = B.customer_id;