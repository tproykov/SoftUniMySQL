DELIMITER $$
CREATE PROCEDURE udp_first_name_to_upper_case(letter CHAR(1))
BEGIN
    UPDATE athletes
    SET first_name = UPPER(first_name)
    WHERE RIGHT(first_name, 1) LIKE letter;
END $$
DELIMITER ;

CALL udp_first_name_to_upper_case ('s');