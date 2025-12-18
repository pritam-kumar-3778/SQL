SELECT @@autocommit;
SET autocommit = 0;

CREATE DATABASE Trans;
USE Trans;

CREATE TABLE accounts (
ID int PRIMARY KEY AUTO_INCREMENT,
Name varchar(20),
Balance DECIMAL(10, 2)
);

INSERT INTO accounts (Name, Balance)
VALUES
("Pritam", 1000000.00),
("Sritam", 1100000.00),
("Pritesh", 1200000.00);

-- Transfer 50000 from pritam to Sritam
START TRansaction;

UPDATE accounts SET Balance = Balance - 50000 WHERE ID = 1;
UPDATE accounts SET Balance = Balance + 50000 WHERE ID = 2;

ROLLBACK;

-- Undo the un-committed changes, If in some case the transaction is not complete.
-- Due to rollback our transaction is not happens here.


-- After transaction see the report
SELECT * FROM accounts;
