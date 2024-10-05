DELETE g FROM games g
    LEFT JOIN games_categories gc on g.id = gc.game_id
WHERE gc.category_id IS NULL AND g.release_date IS NULL;