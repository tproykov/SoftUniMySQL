SELECT
    c.id `car_id`,
    c.make,
    c.mileage,
    COUNT(c2.id) count_of_courses,
    ROUND(AVG(c2.bill), 2) avg_bill
FROM cars c
    lEFT JOIN courses c2 on c.id = c2.car_id
GROUP BY c.id, c.make, c.mileage
HAVING NOT count_of_courses = 2
ORDER BY count_of_courses DESC, c.id;