CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE details (
account_id INT PRIMARY KEY,
name VARCHAR(50),
balance DECIMAL(10, 2),
branch VARCHAR(50)
);

INSERT INTO details VALUES
(1, "Pritam", 200.25, "Jharsuguda"),
(2, "Sritam", 100.3, "Sambalpur"),
(3, "Sakhi", 500.59, "Sambalpur"),
(4, "Pritesh", 300.25, "Jharsuguda");

-- Create a stored procedure where When we pass acount ID it return balance of that member.
DELIMITER $$

CREATE PROCEDURE check_balance(IN acc_id INT)
BEGIN
	SELECT balance
    FROM details
    WHERE account_id = acc_id;
END $$

DELIMITER ;

-- Call the procedure
CALL check_balance(3);


-- Use of both IN and OUT
-- DELIMITER $$

-- CREATE PROCEDURE check_balance(IN acc_id INT, OUT bal DECIMAL(10,2))
-- BEGIN
-- 	SELECT balance
--     FROM details
--     WHERE account_id = acc_id;
-- END $$

-- DELIMITER ;

-- Call the procedure
-- CALL check_balance(3, @balance);
-- SELECT @balance



-- Drop procedure
-- DROP PROCEDURE IF EXISTS procedure_name









