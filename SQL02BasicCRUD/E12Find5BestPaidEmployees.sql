USE soft_uni;
SELECT employees.first_name, employees.last_name
FROM employees
ORDER BY salary DESC
LIMIT 5;
