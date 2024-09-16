USE restaurant;
SELECT department_id, MIN(salary) AS `Min Salary`
FROM employees
GROUP BY department_id
HAVING MIN(salary) >= 800
ORDER BY department_id;