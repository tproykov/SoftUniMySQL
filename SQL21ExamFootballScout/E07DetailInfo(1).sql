SELECT
    t.name team_name,
    t.established,
    t.fan_base,
    COUNT(p.id) players_count
FROM teams t
    LEFT JOIN players p on t.id = p.team_id
GROUP BY t.name, t.established, t.fan_base
ORDER BY players_count DESC, fan_base DESC;