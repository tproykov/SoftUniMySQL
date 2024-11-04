DELIMITER $$
CREATE FUNCTION udf_client_cards_count(name VARCHAR(30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cards INT;
    SET cards := (
        SELECT COUNT(c2.id)
        FROM clients c
                 LEFT JOIN bank_accounts ba on c.id = ba.client_id
                 LEFT JOIN cards c2 on ba.id = c2.bank_account_id
        WHERE c.full_name LIKE name
        );
    RETURN cards;
END $$
DELIMITER ;


SELECT c.full_name, udf_client_cards_count('Baxy David') as `cards` FROM clients c
WHERE c.full_name = 'Baxy David';
