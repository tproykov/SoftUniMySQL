USE soft_uni;
SELECT COUNT(salary)
FROM employees
WHERE manager_id IS NULL;