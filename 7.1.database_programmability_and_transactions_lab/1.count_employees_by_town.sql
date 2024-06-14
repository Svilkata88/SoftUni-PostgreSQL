CREATE OR REPLACE FUNCTION fn_count_employees_by_town(town_name VARCHAR(20))
RETURNS INT
AS
$$
    BEGIN
        RETURN (
            SElECT
                COUNT(*)
            FROM employees AS e JOIN
                    addresses AS a
                        USING (address_id) JOIN
                            towns AS t
                                USING (town_id)
            WHERE town_name = t.name);
    end;
$$
LANGUAGE plpgsql;

SELECT * FROM employees;

SELECT * FROM fn_count_employees_by_town('Sofia')

