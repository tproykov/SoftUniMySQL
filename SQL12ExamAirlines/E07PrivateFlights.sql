SELECT
    CONCAT(UPPER(SUBSTRING(p.last_name, 1, 2)), p.country_id) AS flight_code,
    CONCAT(p.first_name, ' ', p.last_name),
    p.country_id
FROM passengers AS p
    LEFT JOIN flights_passengers AS fp on p.id = fp.passenger_id
WHERE fp.flight_id IS NULL
ORDER BY p.country_id;