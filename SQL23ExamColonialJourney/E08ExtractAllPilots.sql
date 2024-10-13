SELECT
    c.id,
    CONCAT(c.first_name, ' ', c.last_name) full_name
FROM colonists c
    JOIN travel_cards tc on c.id = tc.colonist_id
WHERE tc.job_during_journey LIKE 'Pilot'
ORDER BY c.id;
