CREATE VIEW continent_currency_usage
AS
SELECT
    ru.continent_code,
    ru.currency_code,
    ru.currency_usage
FROM (
    SELECT
        cbc.continent_code,
        cbc.currency_code,
        cbc.currency_usage,
        DENSE_RANK() OVER (PARTITION BY cbc.continent_code ORDER BY cbc.currency_usage DESC ) AS ranked_by_usage
    FROM (
        SELECT
            continent_code,
            currency_code,
            COUNT(currency_code) AS currency_usage
        FROM countries
        GROUP BY
            continent_code,
            currency_code
        HAVING
            COUNT(currency_code) > 1
        ORDER BY continent_code
    ) AS cbc
) AS ru
WHERE ranked_by_usage = 1
ORDER BY ru.currency_usage DESC, ru.continent_code,ru.currency_code;