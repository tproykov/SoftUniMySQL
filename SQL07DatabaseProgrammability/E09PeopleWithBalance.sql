DELIMITER $$
CREATE PROCEDURE usp_get_holders_with_balance_higher_than(balance_higher DECIMAL(15, 4))
BEGIN
    SELECT first_name, last_name
    FROM account_holders AS ah
             JOIN accounts AS a ON ah.id = a.account_holder_id
    GROUP BY a.account_holder_id
    HAVING SUM(balance) > balance_higher
    ORDER BY account_holder_id;
END $$
DELIMITER ;