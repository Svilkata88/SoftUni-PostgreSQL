SELECT
    a.name,
    a.country,
    b.booked_at::DATE
FROM apartments AS a LEFT JOIN
    bookings as b
        USING (booking_id)
LIMIT 10;

SELECT * FROM bookings