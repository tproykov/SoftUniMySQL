SELECT
    g.name,
    CASE
        WHEN g.budget < 50000 THEN 'Normal budget'
        WHEN g.budget >= 5000 THEN 'Insufficient budget'
    END budget_level,
    t.name team_name,
    a.name address_name
FROM games g
    LEFT JOIN teams t on t.id = g.team_id
    LEFT JOIN offices o on o.id = t.office_id
    LEFT JOIN addresses a on a.id = o.address_id
    LEFT JOIN games_categories gc on g.id = gc.game_id
WHERE g.release_date IS NULL AND gc.category_id IS NULL
ORDER BY g.name;