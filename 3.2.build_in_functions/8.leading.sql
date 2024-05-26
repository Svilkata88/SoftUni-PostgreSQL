SELECT
    continent_name,
    TRIM(leading ' ' FROM continent_name) AS trim
FROM continents