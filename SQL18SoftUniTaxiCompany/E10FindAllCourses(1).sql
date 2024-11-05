DELIMITER $$
CREATE FUNCTION udf_courses_by_client (phone_num VARCHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE number_courses INT;
    SET number_courses := (
        SELECT
            COUNT(c2.id)
        FROM clients c
                 RIGHT JOIN courses c2 on c.id = c2.client_id
        WHERE c.phone_number LIKE phone_num
        GROUP BY c.phone_number
        );
    RETURN number_courses;
END $$
DELIMITER ;


SELECT udf_courses_by_client ('(803) 6386812') as `count`;

SELECT udf_courses_by_client ('(831) 1391236') as `count`;