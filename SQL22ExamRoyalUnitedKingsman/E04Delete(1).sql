DELETE e FROM employees e
    LEFT JOIN employees_clients ec on e.id = ec.employee_id
WHERE ec.client_id IS NULL;
