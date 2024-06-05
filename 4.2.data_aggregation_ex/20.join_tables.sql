SELECT
    concat_ws(' ', e.first_name, e.last_name) AS full_name,
    d.department_name,
    e.salary
FROM departments AS d
    JOIN employees AS e
        ON d.id = e.department_id