DELETE c FROM colonists c
    LEFT JOIN travel_cards tc on c.id = tc.colonist_id
WHERE tc.journey_id IS NULL;