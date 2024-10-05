SELECT
    t.name AS team_name,
    a.name AS address_name,
    CHAR_LENGTH(a.name)
FROM teams t
    JOIN offices o on o.id = t.office_id
    JOIN addresses a on a.id = o.address_id
WHERE o.website IS NOT NULL
ORDER BY team_name, address_name;