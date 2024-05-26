CREATE OR REPLACE VIEW view_continents_countries_currencies_details
AS
SELECT
    concat_ws(
    ': ',
    TRIM(con.continent_name),
    con.continent_code
    ) AS continent_details,
    concat_ws(
    ' - ',
    ctr.country_name,
    ctr.capital,
    ctr.area_in_sq_km,
    'km2'
    ) AS country_information,
    concat(
    cur.description,
    ' (',
    cur.currency_code,
    ')'
    ) AS currencies
FROM
    continents AS con,
    countries AS ctr,
    currencies AS cur
WHERE con.continent_code = ctr.continent_code AND ctr.currency_code = cur.currency_code
ORDER BY country_information, currencies;


ALTER VIEW view_continents_countries_currencies_details
RENAME COLUMN concat_ws TO country_information;
SELECT * FROM view_continents_countries_currencies_details