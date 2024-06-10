SELECT
    e.employee_id,
    TRIM(LEADING ' ' FROM concat(e.first_name, ' ', e.last_name)) AS full_name,
    d.department_id,
    d.name
FROM
    employees AS e
    JOIN
    departments AS d
        ON e.employee_id = d.manager_id
WHERE d.manager_id = e.employee_id
ORDER BY e.employee_id
LIMIT 5;

SELECT * FROM departments