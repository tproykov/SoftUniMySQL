SELECT
    id,
    CONCAT(first_name, ' ', last_name) full_name,
    ucn
FROM colonists
ORDER BY first_name, last_name, id;
