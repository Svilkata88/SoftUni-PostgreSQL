CREATE PROCEDURE sp_increase_salaries(department_name VARCHAR(20))
AS
$$
    BEGIN
        UPDATE employees
        SET salary = salary * 1.05
        WHERE department_id = (
            SELECT department_id FROM departments WHERE name = department_name
            );
    END;
$$
LANGUAGE plpgsql;

CALL sp_increase_salaries('Production');

SELECT
    d.name,
    e.salary
FROM employees AS e JOIN
    departments AS d
        USING (department_id)

