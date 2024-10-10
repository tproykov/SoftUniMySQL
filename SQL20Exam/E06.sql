SELECT
    p.id,
    p.date date_and_time,
    p.description,
    COUNT(c.comment) commentsCount
FROM photos p
    RIGHT JOIN comments c on p.id = c.photo_id
GROUP BY p.id, p.date, p.description
ORDER BY commentsCount DESC, p.id
LIMIT 5;