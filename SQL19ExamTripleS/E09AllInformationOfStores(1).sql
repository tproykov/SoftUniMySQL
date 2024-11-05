SELECT
    REVERSE(s.name) reversed_name,
    CONCAT(UPPER(t.name), '-', a.name) full_address,
    COUNT(e.id) employees_count
FROM stores s
    LEFT JOIN addresses a on a.id = s.address_id
    LEFT JOIN towns t on t.id = a.town_id
    LEFT JOIN employees e on s.id = e.store_id
GROUP BY s.name, t.name, a.name
HAVING employees_count >= 1
ORDER BY full_address;

