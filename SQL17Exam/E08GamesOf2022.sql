SELECT
    g.name,
    g.release_date,
    CONCAT(LEFT(g.description, 10), '...') summary,
    CASE
        WHEN MONTH(g.release_date) IN (1, 2, 3) THEN 'Q1'
        WHEN MONTH(g.release_date) IN (4, 5, 6) THEN 'Q2'
        WHEN MONTH(g.release_date) IN (7, 8, 9) THEN 'Q3'
        WHEN MONTH(g.release_date) IN (10, 11, 12) THEN 'Q4'
    END quarter,
    t.name
FROM games g
    JOIN teams t on t.id = g.team_id
WHERE
    YEAR(g.release_date) = 2022
    AND RIGHT(g.name, 1) LIKE '2'
    AND MONTH(g.release_date) % 2 = 0
ORDER BY quarter;