USE geography;
SELECT country_name,
       country_code,
       IF (countries.currency_code = 'EUR', 'Euro', 'Not Euro') AS currency
FROM countries
ORDER BY country_name;

