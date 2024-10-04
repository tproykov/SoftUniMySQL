SELECT
    flight_code,
    departure,
    CASE
        WHEN TIME(departure) BETWEEN '05:00:00' AND '11:59:59' THEN 'Morning'
        WHEN TIME(departure) BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon'
        WHEN TIME(departure) BETWEEN '17:00:00' AND '20:59:59' THEN 'Evening'
        WHEN (TIME(departure) BETWEEN '21:00:00' AND '23:59:59') OR
              (TIME(departure) BETWEEN '00:00:00' AND '04:59:59') THEN 'Night'
    END
FROM flights
ORDER BY flight_code DESC;