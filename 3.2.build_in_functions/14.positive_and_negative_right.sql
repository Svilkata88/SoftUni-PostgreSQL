SELECT
    peak_name,
    RIGHT(peak_name, 4) AS positive_left,
    RIGHT(peak_name, -4) AS positive_right
FROM peaks