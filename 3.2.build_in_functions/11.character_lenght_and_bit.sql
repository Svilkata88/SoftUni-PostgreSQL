SELECT
    concat_ws(
    ' ',
    m.mountain_range,
    p.peak_name
    ) AS mountain_information,
    CHAR_LENGTH(concat(m.mountain_range, ' ', p.peak_name)) AS characters_length,
    BIT_LENGTH(concat(m.mountain_range, ' ', p.peak_name)) AS bits_of_a_tring
FROM peaks AS p, mountains AS m
WHERE p.mountain_id = m.id