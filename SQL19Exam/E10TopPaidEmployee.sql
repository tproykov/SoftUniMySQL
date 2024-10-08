DELIMITER $$
CREATE FUNCTION udf_top_paid_employee_by_store(store_name VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE full_info VARCHAR(100);
    SET full_info := (
        SELECT
            CONCAT(e.first_name, ' ', e.middle_name, '. ', e.last_name,
                   ' works in store for ', TIMESTAMPDIFF(YEAR, e.hire_date, '2020-10-18'), ' years')
        FROM employees e
                 JOIN stores s on e.store_id = s.id
        WHERE s.name LIKE store_name
        ORDER BY e.salary DESC
        LIMIT 1
           );
    RETURN full_info;
END $$
DELIMITER ;

SELECT udf_top_paid_employee_by_store('Stronghold') as 'full_info';