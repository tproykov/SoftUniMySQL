USE soft_uni;
SELECT
    DISTINCT e.manager_id AS employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS full_name,
    e.department_id,
    d.name AS department_name
FROM employees AS e JOIN departments AS d ON
    e.department_id = d.department_id
ORDER BY employee_id
LIMIT 5;

