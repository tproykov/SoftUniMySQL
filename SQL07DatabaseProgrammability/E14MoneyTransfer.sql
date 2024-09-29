DELIMITER $$
CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, amount DECIMAL(19, 4))
BEGIN
    IF amount > 0
            AND from_account_id <> to_account_id
            AND (SELECT id FROM accounts WHERE id = from_account_id) IS NOT NULL
            AND (SELECT id FROM accounts WHERE id = to_account_id) IS NOT NULL
            AND (SELECT balance FROM accounts WHERE id = from_account_id) >= amount
        THEN START TRANSACTION;
        UPDATE accounts
            SET balance = balance - amount
            WHERE id = from_account_id;
        UPDATE accounts
            SET balance = balance + amount
            WHERE id = to_account_id;
    END IF;
END $$
DELIMITER ;