DELIMITER $$
CREATE FUNCTION udf_offers_from_city_name (cityName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count_offers INT;
    SET count_offers := (
        SELECT
            COUNT(c.name)
        FROM cities AS c
                 JOIN properties AS p on c.id = p.city_id
                 JOIN property_offers AS po on p.id = po.property_id
        WHERE c.name = cityName
    );
    RETURN count_offers;
END $$
DELIMITER ;

SELECT udf_offers_from_city_name('Vienna') as offers_count;
SELECT udf_offers_from_city_name('Amsterdam') as offers_count;
SELECT udf_offers_from_city_name('Paris') as offers_count;
