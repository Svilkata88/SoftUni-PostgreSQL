SELECT
    continent_name,
    TRIM(trailing ' ' FROM continent_name) AS trim
FROM continents