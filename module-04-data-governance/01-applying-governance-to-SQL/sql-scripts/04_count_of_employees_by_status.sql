SELECT status, COUNT(*) AS num_employees
FROM employees
GROUP BY Status;