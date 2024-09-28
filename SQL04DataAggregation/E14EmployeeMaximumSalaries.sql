USE soft_uni;
SELECT employees.department_id,
       MAX(employees.salary) AS max_salary
FROM employees
GROUP BY department_id
HAVING max_salary NOT BETWEEN 30000 AND 70000
ORDER BY department_id;


