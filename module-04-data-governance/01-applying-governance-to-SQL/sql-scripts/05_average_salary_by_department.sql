SELECT 
    d.department_name,
    COUNT(*) AS num_employees,
    ROUND(AVG(e.pay_rate), 2) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.pay_type = 'Salary'
GROUP BY d.department_name;
