DELETE f
FROM flights AS f
LEFT JOIN flights_passengers AS fp ON f.id = fp.flight_id
WHERE fp.passenger_id IS NULL;

