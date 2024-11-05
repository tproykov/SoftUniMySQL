SELECT
    CONCAT(u.id, ' ', u.username) id_username,
    u.email
FROM users u
    JOIN users_photos up on u.id = up.user_id
    JOIN photos p on p.id = up.photo_id
WHERE u.id LIKE p.id
ORDER BY u.id;