SELECT u.id, u.username
FROM users AS u
    JOIN instagraph.users_followers AS uf on u.id = uf.user_id
WHERE uf.user_id LIKE uf.follower_id
ORDER BY u.id;