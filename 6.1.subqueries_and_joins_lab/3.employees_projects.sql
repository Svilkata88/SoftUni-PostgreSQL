SELECT
    e.employee_id,
    TRIM(LEADING FROM concat(e.first_name, ' ', e.last_name)) AS full_name,
    ep.project_id,
    p.name
FROM
    projects AS p
    JOIN
    employees_projects AS ep
        USING (project_id)
            JOIN
            employees AS e
                USING (employee_id)
WHERE p.project_id = 1