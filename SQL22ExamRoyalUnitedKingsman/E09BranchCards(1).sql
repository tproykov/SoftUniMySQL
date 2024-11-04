SELECT
    b.name,
    COUNT(c2.id) count_of_cards
FROM branches b
    LEFT JOIN employees e on b.id = e.branch_id
    LEFT JOIN employees_clients ec on e.id = ec.employee_id
    LEFT JOIN clients c on c.id = ec.client_id
    LEFT JOIN bank_accounts ba on c.id = ba.client_id
    LEFT JOIN cards c2 on ba.id = c2.bank_account_id
GROUP BY b.name
ORDER BY count_of_cards DESC, b.name;