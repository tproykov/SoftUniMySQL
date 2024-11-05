SELECT
    a.id,
    a.first_name,
    a.last_name
FROM athletes a
    LEFT JOIN disciplines_athletes_medals dam on a.id = dam.athlete_id
WHERE dam.medal_id IS NULL
ORDER BY a.id;
