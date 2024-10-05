DELETE c FROM customers AS c
    LEFT JOIN orders AS o on c.id = o.customer_id
WHERE o.customer_id IS NULL;
