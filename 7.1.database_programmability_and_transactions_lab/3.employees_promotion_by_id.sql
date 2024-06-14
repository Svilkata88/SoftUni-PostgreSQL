CREATE PROCEDURE sp_increase_salary_by_id(id INT, OUT status VARCHAR(50))
AS
$$
    BEGIN
        IF (SELECT employee_id FROM employees WHERE employee_id = id) IS null THEN
            status := 'This ID does not exist';
            RETURN;
        END IF;

        UPDATE employees
        SET salary = salary * 1.05
        WHERE employee_id = id;
        status := format('Employee''s salary with ID %s increased!', id);
        COMMIT;
        RETURN;
    END;
$$
LANGUAGE plpgsql;


--CALL sp_increase_salary_by_id(294, null);
--CALL sp_increase_salary_by_id(5, null);

