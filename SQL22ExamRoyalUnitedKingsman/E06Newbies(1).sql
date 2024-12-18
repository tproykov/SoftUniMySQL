SELECT
    id,
    CONCAT(first_name, ' ', last_name) full_name,
    CONCAT('$', salary),
    started_on
FROM employees
WHERE salary >= 100000 AND started_on >= '2018-01-01'
ORDER BY salary DESC, id;