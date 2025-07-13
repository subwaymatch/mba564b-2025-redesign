SELECT full_name, start_date, department_name
FROM employees
JOIN departments ON employees.department_id = departments.department_id
WHERE start_date >= '2025-01-01'
ORDER BY start_date DESC;