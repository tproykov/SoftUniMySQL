USE soft_uni;
SELECT employees.first_name, employees.last_name
FROM employees
WHERE department_id != 4;