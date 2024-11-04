SELECT DISTINCT
    CONCAT(a.first_name, ' ', a.last_name) full_name,
    a.age
FROM athletes a
    LEFT JOIN disciplines_athletes_medals dam on a.id = dam.athlete_id
WHERE dam.medal_id IS NOT NULL
ORDER BY age
LIMIT 2;