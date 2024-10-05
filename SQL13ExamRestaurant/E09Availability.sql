SELECT
    t.id AS table_id,
    t.capacity,
    COUNT(oc.client_id) AS count_clients,
    CASE
        WHEN t.capacity > COUNT(oc.client_id) THEN 'Free seats'
        WHEN t.capacity = COUNT(oc.client_id) THEN 'Full'
        WHEN t.capacity < COUNT(oc.client_id) THEN 'Extra seats'
    END AS availability
FROM tables AS t
    JOIN orders AS o on t.id = o.table_id
    JOIN orders_clients AS oc on o.id = oc.order_id
WHERE t.floor = 1
GROUP BY t.id, t.capacity
ORDER BY table_id DESC;