USE soft_uni;
SELECT
    e1.employee_id,
    CONCAT(e1.first_name, ' ', e1.last_name) AS employee_name,
    CONCAT(e2.first_name, ' ', e2.last_name) AS manager_name,
    d.name AS department_name
FROM employees AS e1
    JOIN employees AS e2
        ON e1.manager_id = e2.employee_id
    JOIN departments AS d
        ON e1.department_id = d.department_id
WHERE e1.manager_id IS NOT NULL
ORDER BY e1.employee_id
LIMIT 5;