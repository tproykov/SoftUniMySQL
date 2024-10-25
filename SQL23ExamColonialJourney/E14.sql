SELECT
    j.id,
    p.name planet_name,
    s.name spaceport_name,
    j.purpose
FROM journeys j
    JOIN spaceports s on s.id = j.destination_spaceport_id
    JOIN planets p on p.id = s.planet_id
ORDER BY TIMESTAMPDIFF(HOUR, j.journey_start, j.journey_end)
LIMIT 1;