SELECT
    p.id as photo_id,
    COUNT(DISTINCT l.id) likes_count,
    COUNT(DISTINCT c.id) comments_count
FROM photos p
    LEFT JOIN likes l on p.id = l.photo_id
    LEFT JOIN comments c on p.id = c.photo_id
GROUP BY p.id
ORDER BY likes_count DESC, comments_count DESC, photo_id;
