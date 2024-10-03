DELIMITER $$
CREATE PROCEDURE udp_special_offer(first_name VARCHAR(50))
BEGIN
    UPDATE property_offers AS po
        JOIN agents AS a on a.id = po.agent_id
    SET po.price = po.price * 0.9
    WHERE a.first_name LIKE first_name;
END $$
DELIMITER ;


CALL udp_special_offer('Hans');
