USE soft_uni;
SELECT DISTINCT department_id,
                (SELECT DISTINCT salary
                 FROM employees AS e1
                 WHERE e1.department_id = e.department_id
                 ORDER BY salary DESC
                 LIMIT 1 OFFSET 2) AS `third_highest_salary`
FROM employees AS e
HAVING third_highest_salary IS NOT NULL
ORDER BY department_id;
