USE soft_uni;
SELECT employees.first_name, employees.last_name, employees.salary
FROM employees
WHERE salary > 50000
ORDER BY salary DESC;