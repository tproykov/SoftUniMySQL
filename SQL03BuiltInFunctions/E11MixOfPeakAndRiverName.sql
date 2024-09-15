USE geography;
SELECT
    p.peak_name,
    r.river_name,
    LOWER(CONCAT(LEFT(p.peak_name, LENGTH(p.peak_name) - 1), r.river_name)) AS mix
FROM peaks AS p, rivers AS r
WHERE UPPER(RIGHT(p.peak_name, 1)) LIKE UPPER(LEFT(r.river_name, 1))
ORDER BY mix;