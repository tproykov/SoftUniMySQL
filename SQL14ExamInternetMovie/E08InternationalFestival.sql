SELECT
    c.name,
    COUNT(m.id) AS movies_count
FROM countries AS c
    JOIN movies AS m on c.id = m.country_id
GROUP BY c.name
HAVING movies_count >= 7
ORDER BY c.name DESC;