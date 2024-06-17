SELECT
    CASE
        WHEN description IS null then '...'
        ELSE LEFT(description, 10) || '...'
    END AS summary,
    TO_CHAR(capture_date, 'DD.MM HH24:MI') AS date
FROM photos
WHERE EXTRACT(DAY FROM capture_date) = 10
ORDER BY capture_date DESC;

SELECT * FROM photos