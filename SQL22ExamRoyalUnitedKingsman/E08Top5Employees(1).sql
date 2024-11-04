SELECT
    CONCAT(e.first_name, ' ', e.last_name) name,
    e.started_on,
    COUNT(ec.client_id) count_of_clients
FROM employees e
    RIGHT JOIN employees_clients ec on e.id = ec.employee_id
GROUP BY e.id
ORDER BY count_of_clients DESC, e.id
LIMIT 5;