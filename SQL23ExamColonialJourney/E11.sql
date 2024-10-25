SELECT DISTINCT
    s.name,
    s.manufacturer
FROM spaceships s
    JOIN journeys j on s.id = j.spaceship_id
    JOIN travel_cards tc on j.id = tc.journey_id
    JOIN colonists c on c.id = tc.colonist_id
WHERE tc.job_during_journey LIKE 'Pilot' AND TIMESTAMPDIFF(YEAR, c.birth_date, '2019-01-01') < 30
ORDER BY s.name;
