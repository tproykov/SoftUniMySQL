DELIMITER $$
CREATE PROCEDURE udp_find_school_by_car(car_brand VARCHAR(20))
BEGIN
    SELECT
        ds.name,
        ds.average_lesson_price
    FROM driving_schools AS ds
             JOIN cars AS c ON ds.car_id = c.id
    WHERE c.brand LIKE car_brand
    ORDER BY average_lesson_price DESC;
END $$
DELIMITER ;


CALL udp_find_school_by_car(('Mercedes-Benz'));