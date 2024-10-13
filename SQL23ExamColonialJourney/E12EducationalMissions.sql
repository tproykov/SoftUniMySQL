SELECT
    p.name planet_name,
    s.name spaceport_name
FROM planets p
         JOIN spaceports s on p.id = s.planet_id
         JOIN journeys j on s.id = j.destination_spaceport_id
WHERE j.purpose LIKE 'Educational'
ORDER BY s.name DESC;