USE geography;
SELECT COUNT(*) AS country_count
FROM ( -- this produces a table of all distinct countries where a mountain exists
        SELECT DISTINCT country_code AS mc_country_code
        FROM mountains_countries
    ) AS d
RIGHT JOIN countries AS c
    ON c.country_code = d.mc_country_code
WHERE d.mc_country_code IS NULL;