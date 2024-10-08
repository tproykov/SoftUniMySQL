SELECT
    CONCAT(e.first_name, ' ', e.last_name) Full_name,
    s.name store_name,
    a.name address,
    e.salary
FROM employees e
    JOIN stores s on s.id = e.store_id
    JOIN addresses a on a.id = s.address_id
WHERE e.salary < 4000 AND a.name LIKE '%5%' AND CHAR_LENGTH(a.name) > 8 AND RIGHT(e.last_name, 1) LIKE 'n';