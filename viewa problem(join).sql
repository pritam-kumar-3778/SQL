-- Give the name and city from Customers table and order_id from Orders table as a view

CREATE DATABASE Problem;
USE Problem;


CREATE TABLE Customers(
customer_id int PRIMARY KEY,
name varchar(40),
city varchar (30),
password varchar(30),
Email varchar(30)
);

INSERT INTO Customers
VALUES
(1, "Pritam", "JSG", "asdf44@3", "pritam456@gmail.com"),
(2, "Sritam", "SBP", "dSHGFJ543##", "sritamC67@gmail.com"),
(3, "Pritesh", "JSG", "44898bhjjj", "pritesh123@gmail.com"),
(4, "Soumya", "SNG", "ASDF@1234", "soumya889@gmail.com");

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

CREATE VIEW view1 AS
SELECT c.name, c.city, o.order_id
FROM Customers c
INNER JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT * FROM view1;