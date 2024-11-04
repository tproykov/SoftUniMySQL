UPDATE employees_clients ec
    JOIN (
        SELECT ec1.employee_id
        FROM employees_clients ec1
        GROUP BY ec1.employee_id
        ORDER BY COUNT(ec1.client_id), ec1.employee_id
        LIMIT 1
    ) lowest_employee
    JOIN clients c ON c.id = ec.client_id
SET ec.employee_id = lowest_employee.employee_id
    WHERE c.id = ec.employee_id;