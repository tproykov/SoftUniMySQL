SELECT
    MAX(sd.speed) max_speed,
    t.name town_name
FROM towns t
         JOIN stadiums s ON t.id = s.town_id
         JOIN teams t2 ON s.id = t2.stadium_id
         LEFT JOIN players p ON t2.id = p.team_id
         LEFT JOIN skills_data sd ON p.skills_data_id = sd.id
WHERE t2.name != 'Devify'
GROUP BY t.name
ORDER BY max_speed DESC, town_name;