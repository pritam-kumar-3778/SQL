CREATE DATABASE accounts;
USE accounts;

CREATE TABLE acc (
account_id INT PRIMARY KEY,
name VARCHAR(50),
balance DECIMAL(10, 2),
branch VARCHAR(50)
);

INSERT INTO acc VALUES
(1, "Pritam", 200.25, "Jharsuguda"),
(2, "Sritam", 100.3, "Sambalpur"),
(3, "Sakhi", 500.59, "Sambalpur"),
(4, "Pritesh", 300.25, "Jharsuguda");

-- The default index is account_id bcz It's primary key but we also make branch col as index.
CREATE INDEX idx_branch ON acc(branch);
-- For showing all indexes from the table
SHOW INDEX FROM acc;

SELECT * FROM acc
WHERE branch = "Jharsuguda";  -- This is more faster while we create index (branch) and doing operations


--  Composit Index
CREATE INDEX idx2_branch ON acc(branch, balance)