SELECT
    c.name,
    COUNT(p.id) total_count_of_players,
    SUM(p.salary) total_sum_of_salaries
FROM countries c
    LEFT JOIN towns t on c.id = t.country_id
    LEFT JOIN stadiums s on t.id = s.town_id
    LEFT JOIN teams t2 on s.id = t2.stadium_id
    LEFT JOIN players p on t2.id = p.team_id
GROUP BY c.name
ORDER BY total_count_of_players DESC, c.name;
