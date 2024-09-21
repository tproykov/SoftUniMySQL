USE soft_uni;
SELECT first_name, last_name, department_id
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees as e1
    WHERE e1.department_id = employees.department_id
    GROUP BY e1.department_id
    )
ORDER BY department_id, employee_id
LIMIT 10;