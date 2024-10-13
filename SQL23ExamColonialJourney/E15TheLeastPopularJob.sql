SELECT tc.job_during_journey job_name
FROM travel_cards tc
WHERE tc.journey_id =  (
    SELECT j.id
    FROM journeys j
    ORDER BY DATEDIFF(j.journey_end, j.journey_start) DESC
    LIMIT 1
)
GROUP BY tc.job_during_journey
ORDER BY COUNT(tc.job_during_journey)
LIMIT 1;