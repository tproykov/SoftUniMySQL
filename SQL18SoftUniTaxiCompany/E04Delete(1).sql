DELETE c FROM clients c
    LEFT JOIN courses c2 on c.id = c2.client_id
    WHERE c2.client_id IS NULL AND CHAR_LENGTH(full_name) > 3;