USE soft_uni;
SELECT employees.first_name, employees.last_name
FROM employees
WHERE job_title NOT LIKE LOWER('%engineer%')
ORDER BY employee_id;