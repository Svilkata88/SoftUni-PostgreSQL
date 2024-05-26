ALTER TABLE bookings
ADD COLUMN
    billing_day timestamptz DEFAULT CURRENT_TIMESTAMP;

SELECT
    concat_ws(
    ' ',
    extract(DAY FROM billing_day)::VARCHAR(2),
    'Day',
    extract(Month FROM billing_day)::VARCHAR(2),
    'Month',
    extract(YEAR FROM billing_day)::VARCHAR(4),
    'Year',
    TO_CHAR(billing_day, 'HH24:MI:SS')
    ) AS "Billing Day"
FROM bookings;


SELECT billing_day FROM bookings