DELIMITER $$
CREATE FUNCTION udf_total_medals_count_by_country (country_name VARCHAR(40))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count_of_medals INT;
    SET count_of_medals :=(
        SELECT COUNT(dam.medal_id)
        FROM countries c
                 RIGHT JOIN athletes a on c.id = a.country_id
                 RIGHT JOIN disciplines_athletes_medals dam on a.id = dam.athlete_id
        WHERE c.name LIKE country_name
          );
    RETURN count_of_medals;
END $$
DELIMITER ;


SELECT c.name, udf_total_medals_count_by_country ('Bahamas') as count_of_medals
FROM countries c
WHERE c.name = 'Bahamas'
