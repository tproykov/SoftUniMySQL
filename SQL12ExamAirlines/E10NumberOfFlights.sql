DELIMITER $$
CREATE FUNCTION udf_count_flights_from_country(country VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE flights_count INT;
    SET flights_count := (
        SELECT COUNT(*)
        FROM flights AS f
                 JOIN countries AS c ON f.departure_country = c.id
        WHERE c.name LIKE country
        GROUP BY c.name
        );
    RETURN flights_count;
END $$
DELIMITER ;

SELECT udf_count_flights_from_country('Brazil') AS 'flights_count';

SELECT udf_count_flights_from_country('Philippines') AS 'flights_count';