DELIMITER $$
CREATE PROCEDURE udp_courses_by_address(address_name VARCHAR(100))
BEGIN
    SELECT
        a.name,
        cl.full_name,
        CASE
            WHEN co.bill <= 20 THEN 'Low'
            WHEN co.bill > 20 AND co.bill <= 30 THEN 'Medium'
            WHEN co.bill > 30 THEN 'High'
            END level_of_bill,
        ca.make,
        ca.`condition`,
        cat.name category_name
    FROM addresses a
             JOIN courses co on a.id = co.from_address_id
             JOIN cars ca on ca.id = co.car_id
             JOIN categories cat on cat.id = ca.category_id
             JOIN clients cl on cl.id = co.client_id
    WHERE a.name LIKE address_name
    ORDER BY ca.make, cl.full_name;
END $$
DELIMITER ;

CALL udp_courses_by_address('700 Monterey Avenue');