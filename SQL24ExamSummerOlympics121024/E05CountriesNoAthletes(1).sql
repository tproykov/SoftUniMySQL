SELECT
    c.id,
    c.name
FROM countries c
    LEFT JOIN athletes a on c.id = a.country_id
WHERE a.country_id IS NULL
ORDER BY c.name DESC
LIMIT 15;
