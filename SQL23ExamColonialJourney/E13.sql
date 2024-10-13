SELECT
    p.name planet_name,
    COUNT(j.id) journeys_count
FROM planets p
    RIGHT JOIN spaceports s on p.id = s.planet_id
    RIGHT JOIN journeys j on s.id = j.destination_spaceport_id
GROUP BY p.name
ORDER BY journeys_count DESC, p.name;