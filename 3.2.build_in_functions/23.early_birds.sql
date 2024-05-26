SELECT
    id,
    age(starts_at, booked_at) AS "Eearly Birds"
FROM bookings
WHERE starts_at - booked_at >= '10 MONTHS';