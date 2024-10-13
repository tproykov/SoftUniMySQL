DELIMITER $$
CREATE FUNCTION udf_count_colonists_by_destination_planet (planet_name VARCHAR (30))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count INT;
    SET count := (
        SELECT COUNT(c.id)
        FROM planets p
                 RIGHT JOIN spaceports s on p.id = s.planet_id
                 RIGHT JOIN journeys j on s.id = j.destination_spaceport_id
                 RIGHT JOIN travel_cards tc on j.id = tc.journey_id
                 RIGHT JOIN colonists c on c.id = tc.colonist_id
        WHERE p.name LIKE planet_name
        );
    RETURN count;
END $$
DELIMITER ;


SELECT p.name, udf_count_colonists_by_destination_planet('Otroyphus') AS count
FROM planets AS p
WHERE p.name = 'Otroyphus';