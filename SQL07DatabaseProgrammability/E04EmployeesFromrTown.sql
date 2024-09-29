USE soft_uni;
DELIMITER $$
CREATE PROCEDURE usp_get_employees_from_town(town_name VARCHAR(50))
BEGIN
    SELECT first_name, last_name
    FROM employees AS e
    JOIN addresses AS a ON e.address_id = a.address_id
    JOIN towns AS t ON a.town_id = t.town_id
    WHERE t.name LIKE town_name
    ORDER BY first_name, last_name, employee_id;
END $$
DELIMITER ;