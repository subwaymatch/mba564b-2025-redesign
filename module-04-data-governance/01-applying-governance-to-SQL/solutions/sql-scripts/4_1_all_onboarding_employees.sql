SELECT full_name, start_date, department_name, job_title, pay_type, 'HIDDEN' AS pay_rate, status
FROM employees
JOIN departments ON employees.department_id = departments.department_id
JOIN job_titles ON employees.job_title_id = job_titles.job_title_id
WHERE status = 'On-boarding';
