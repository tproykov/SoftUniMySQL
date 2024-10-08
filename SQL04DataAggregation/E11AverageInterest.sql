USE gringotts;
SELECT deposit_group,
       is_deposit_expired,
       AVG(wizzard_deposits.deposit_interest) AS average_interest
FROM wizzard_deposits
WHERE DATE(deposit_start_date) > '1985-01-01'
GROUP BY deposit_group, is_deposit_expired
ORDER BY deposit_group DESC, is_deposit_expired;