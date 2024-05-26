CREATE TABLE bookings_calculation
AS SELECT
       booked_for
FROM bookings
WHERE apartment_id = 93;

ALTER TABLE bookings_calculation
ADD COLUMN
    multiplication numeric,
ADD COLUMN
    modulo NUMERIC;

UPDATE bookings_calculation
SET multiplication = booked_for * 50,
    modulo = booked_for % 50;

SELECT * FROM bookings_calculation