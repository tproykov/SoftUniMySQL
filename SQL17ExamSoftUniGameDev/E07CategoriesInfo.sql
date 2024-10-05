SELECT
    c.name,
    COUNT(g.id) games_count,
    ROUND(AVG(g.budget), 2) avg_budget,
    MAX(g.rating) max_rating
FROM categories c
    JOIN games_categories gc on c.id = gc.category_id
    JOIN games g on g.id = gc.game_id
GROUP BY c.name
HAVING max_rating >= 9.5
ORDER BY games_count DESC, c.name;