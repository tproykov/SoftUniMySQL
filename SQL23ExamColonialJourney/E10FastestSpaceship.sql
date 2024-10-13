SELECT
    s.name spaceship_name,
    s2.name spaceport_name
FROM spaceships s
    JOIN journeys j on s.id = j.spaceship_id
    JOIN spaceports s2 on s2.id = j.destination_spaceport_id
ORDER BY s.light_speed_rate DESC
LIMIT 1;