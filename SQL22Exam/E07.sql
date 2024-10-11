SELECT
    c.id,
    CONCAT(c.card_number, ' : ', c2.full_name) card_token
FROM cards c
    LEFT JOIN bank_accounts ba on ba.id = c.bank_account_id
    LEFT JOIN clients c2 on c2.id = ba.client_id
ORDER BY c.id DESC;
