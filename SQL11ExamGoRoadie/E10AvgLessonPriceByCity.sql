DELIMITER $$
CREATE FUNCTION udf_average_lesson_price_by_city (city_name VARCHAR(40))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE average_lesson_price DECIMAL(10, 2);
    SET average_lesson_price := (
        SELECT AVG(ds.average_lesson_price)
        FROM driving_schools AS ds
                 JOIN cities AS c ON ds.city_id = c.id
        WHERE c.name LIKE city_name
        );
    RETURN average_lesson_price;
END $$
DELIMITER ;

SELECT c.name, udf_average_lesson_price_by_city ('London') as average_lesson_price
FROM cities c
WHERE c.name = 'London'

SELECT udf_average_lesson_price_by_city ('London') as average_lesson_price;