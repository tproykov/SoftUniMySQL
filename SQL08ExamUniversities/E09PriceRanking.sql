SELECT
    u.name AS university_name,
    c.name AS city_name,
    u.address,
    CASE
        WHEN u.tuition_fee < 800 THEN 'cheap'
        WHEN u.tuition_fee >= 800 AND u.tuition_fee < 1200 THEN 'normal'
        WHEN u.tuition_fee >= 1200 AND u.tuition_fee < 2500 THEN 'high'
        WHEN u.tuition_fee > 2500 THEN 'expensive'
    END AS price_rank,
    u.tuition_fee
FROM universities AS u
JOIN cities AS c on c.id = u.city_id
ORDER BY tuition_fee;
