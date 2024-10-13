SELECT
    COUNT(c.id) count
FROM colonists c
    JOIN travel_cards tc on c.id = tc.colonist_id
    JOIN journeys j on j.id = tc.journey_id
WHERE j.purpose LIKE 'Technical'