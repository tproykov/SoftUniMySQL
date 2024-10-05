DELIMITER $$
CREATE PROCEDURE udp_happy_hour(product_type VARCHAR(50))
BEGIN
    UPDATE products
    SET price = price * 0.80
    WHERE price >= 10.00 AND type LIKE product_type;
END $$
DELIMITER ;

CALL udp_happy_hour ('Cognac');