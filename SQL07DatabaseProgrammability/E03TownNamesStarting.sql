DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(name_start VARCHAR(10))
BEGIN
    SELECT name AS town_name
    FROM towns
    WHERE UPPER(name) LIKE UPPER(CONCAT(name_start, '%'))
    ORDER BY name;
END $$
DELIMITER ;