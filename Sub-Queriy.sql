CREATE DATABASE Query;
USE Query;


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

-- Sub-Query / Inner-Query / Nested-Query

-- Give data of Orders table which amount is greater then average of amount value.
-- Sub-Query after the WHERE Statement. 
SELECT *
FROM Orders
WHERE amount > (
	SELECT AVG(amount)
    FROM Orders
);

-- Give count of orders of each customers 
-- Sub-Query after the SELECT Statement. 

SELECT name, 
	(
	SELECT COUNT(*)
    FROM Orders o
    WHERE o.customer_id = c.customer_id
	) AS order_count
FROM Customers c;

-- Average Sepnding value of each customer 
-- Sub-Query after the FROM Statement. 
SELECT 
	summary.customer_id, 
    summary.avg_amount
FROM 
	(
		SELECT 
			customer_id, 
            AVG(amount) as avg_amount
		FROM Orders
		GROUP BY customer_id
	) AS summary


