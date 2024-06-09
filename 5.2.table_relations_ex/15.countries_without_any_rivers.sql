SELECT
    count(*)
FROM countries AS ctrs
    LEFT JOIN countries_rivers AS ctriv
        ON ctrs.country_code = ctriv.country_code
WHERE ctriv.river_id IS NULL