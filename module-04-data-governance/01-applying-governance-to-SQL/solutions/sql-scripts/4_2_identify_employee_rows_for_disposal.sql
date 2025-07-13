SELECT
    full_name,
    d.department_name,
    e.end_date,
    status
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.status = 'Terminated' AND end_date <= '2022-12-31';