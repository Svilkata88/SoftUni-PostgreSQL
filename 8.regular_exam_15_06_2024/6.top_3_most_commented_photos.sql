SELECT
    p.id AS photo_id,
    capture_date,
    description,
    COUNT(*) AS comments_count
FROM photos AS p JOIN
    comments AS c
        ON p.id = c.photo_id
WHERE description IS NOT NULL
GROUP BY
    p.id,
    capture_date,
    description
ORDER BY
    comments_count DESC,
    p.id
LIMIT 3;