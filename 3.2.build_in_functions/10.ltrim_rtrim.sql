SELECT
    TRIM(leading 'M' FROM peak_name) AS left_trim,
    TRIM(trailing 'm' FROM peak_name) AS right_trim
FROM peaks