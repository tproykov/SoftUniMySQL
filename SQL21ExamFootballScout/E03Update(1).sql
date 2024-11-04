UPDATE coaches c
    LEFT JOIN players_coaches pc on c.id = pc.coach_id
SET c.coach_level = c.coach_level + 1
WHERE c.first_name LIKE 'A%' AND pc.player_id IS NOT NULL;