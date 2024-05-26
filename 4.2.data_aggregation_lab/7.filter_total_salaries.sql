SELECT
    department_id,
    SUM(salary) AS total_salary
FROM employees
group by department_id
HAVING SUM(salary) < 4200
order by department_id