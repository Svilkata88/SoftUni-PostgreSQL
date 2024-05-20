CREATE VIEW view_addresses
AS
SELECT
    concat_ws(
    ' ',
    e.first_name,
    e.last_name
    ) AS full_name,
    e.department_id,
    concat_ws(
    ' ',
    a.number,
    a.street
    ) as address
FROM employees AS e, addresses AS a
WHERE e.address_id = a.id
ORDER BY address;

SELECT * FROM view_addresses
