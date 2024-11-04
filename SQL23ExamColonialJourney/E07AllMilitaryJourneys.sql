SELECT id, journey_start, journey_end
FROM journeys
WHERE purpose LIKE 'Military'
ORDER BY journey_start;