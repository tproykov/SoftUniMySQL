INSERT INTO travel_cards (card_number, job_during_journey, colonist_id, journey_id)
    SELECT
        CASE
            WHEN birth_date > '1980-01-01' THEN CONCAT(YEAR(birth_date), DAY(birth_date), SUBSTRING(ucn, 1, 4))
            WHEN birth_date <= '1980-01-01' THEN CONCAT(YEAR(birth_date), MONTH(birth_date), RIGHT(ucn, 4))
        END,
        CASE
            WHEN id % 2 = 0 THEN 'Pilot'
            WHEN id % 3 = 0 THEN 'Cook'
            ELSE 'Engineer'
        END,
        id,
        SUBSTRING(ucn, 1, 1)
    FROM colonists
    WHERE id BETWEEN 96 AND 100;