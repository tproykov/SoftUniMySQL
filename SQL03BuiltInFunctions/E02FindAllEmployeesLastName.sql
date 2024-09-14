USE soft_uni;
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE LOWER('%ei%')
ORDER BY employee_id;