SELECT
    title,
    round(cost::numeric, 3) AS modified_price
FROM books
ORDER BY id;