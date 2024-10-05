DELETE c FROM countries AS c
LEFT JOIN movies AS m on c.id = m.country_id
WHERE m.country_id IS NULL;