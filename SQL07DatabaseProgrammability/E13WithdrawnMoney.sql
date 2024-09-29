USE bank;
DELIMITER $$
CREATE PROCEDURE usp_withdraw_money(account_id INT, money_amount DECIMAL(19, 4))
BEGIN
    IF money_amount > 0 THEN START TRANSACTION;
        UPDATE accounts
        SET balance = balance - money_amount
        WHERE account_id = id;
        IF (SELECT balance FROM accounts WHERE account_id = id) < 0 THEN ROLLBACK;
            ELSE COMMIT;
        END IF;
    END IF;
END $$
DELIMITER ;