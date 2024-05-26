SELECT
    department_id,
    count(employees) AS employee_count
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT * FROM employees