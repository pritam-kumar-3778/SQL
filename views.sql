CREATE DATABASE SalesTeam;
USE SalesTeam;


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

-- We privide name, city and E-mail column to sales team as a view.alter

CREATE VIEW salesview1 AS
SELECT name, city, Email
FROM Customers;
-- We can do any operations on this view now
SELECT * FROM salesview1;
