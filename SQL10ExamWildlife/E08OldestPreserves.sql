SELECT
    p.name,
    c.country_code,
    YEAR(p.established_on) AS founded_in
FROM preserves AS p
    JOIN countries_preserves AS cp ON p.id = cp.preserve_id
    JOIN countries c on c.id = cp.country_id
WHERE MONTH(p.established_on) LIKE 5
ORDER BY p.established_on
LIMIT 5;