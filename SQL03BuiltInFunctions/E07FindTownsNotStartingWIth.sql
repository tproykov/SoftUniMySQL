USE soft_uni;
SELECT town_id, name
FROM towns
WHERE LOWER(LEFT(name, 1)) NOT IN ('r', 'b', 'd')
ORDER BY name;
