SELECT 
    employee_id, 
    full_name, 
    start_date, 
    end_date, 
    status
FROM employees
WHERE end_date > DATE('now');