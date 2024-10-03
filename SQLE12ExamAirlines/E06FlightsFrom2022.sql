SELECT flight_code, departure_country, airplane_id, departure
FROM flights
WHERE YEAR(departure) LIKE 2022
ORDER BY airplane_id, flight_code
LIMIT 20;