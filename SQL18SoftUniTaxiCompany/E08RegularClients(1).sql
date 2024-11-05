SELECT
    c.full_name,
    COUNT(c3.id) count_cars,
    SUM(c2.bill) total_sum
FROM clients c
    RIGHT JOIN courses c2 on c.id = c2.client_id
    RIGHT JOIN cars c3 on c3.id = c2.car_id
WHERE SUBSTRING(c.full_name, 2, 1) LIKE 'a'
GROUP BY c.full_name
HAVING count_cars > 1
ORDER BY full_name;