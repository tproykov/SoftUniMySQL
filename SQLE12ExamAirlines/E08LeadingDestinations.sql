SELECT
    c.name,
    c.currency,
    COUNT(p.id) AS booked_tickets
FROM countries AS c
    JOIN flights AS f ON c.id = f.destination_country
    JOIN flights_passengers AS fp ON f.id = fp.flight_id
    JOIN passengers AS p ON fp.passenger_id = p.id
GROUP BY c.name, c.currency
HAVING booked_tickets >= 20
ORDER BY booked_tickets DESC;