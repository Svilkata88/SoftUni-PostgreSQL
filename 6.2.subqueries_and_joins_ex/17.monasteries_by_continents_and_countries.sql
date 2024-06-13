UPDATE countries
SET country_name = 'Burma'
WHERE country_name = 'Myanmar';

INSERT INTO monasteries(monastery_name, country_code)
VALUES
    ('Hanga Abbey',
        (
            SELECT country_code FROM countries WHERE country_name = 'Tanzania'
        )
    );

SELECT
    con.continent_name,
    c.country_name,
    count(m.monastery_name) AS monasteries_count
FROM countries AS c JOIN
    continents AS con
        USING (continent_code) LEFT JOIN
            monasteries AS m
                USING (country_code)
WHERE c.three_rivers IS FALSE
GROUP BY con.continent_name, c.country_name
ORDER BY monasteries_count DESC, c.country_name;

SELECT * FROM monasteries
