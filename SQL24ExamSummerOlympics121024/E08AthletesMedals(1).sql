SELECT
    a.id,
    a.first_name,
    a.last_name,
    COUNT(dam.medal_id) medals_count,
    s.name
FROM athletes a
    LEFT JOIN disciplines_athletes_medals dam on a.id = dam.athlete_id
    LEFT JOIN disciplines d on d.id = dam.discipline_id
    LEFT JOIN sports s on s.id = d.sport_id
GROUP BY a.id, a.first_name, a.last_name, s.name
ORDER BY medals_count DESC, a.first_name
LIMIT 10;