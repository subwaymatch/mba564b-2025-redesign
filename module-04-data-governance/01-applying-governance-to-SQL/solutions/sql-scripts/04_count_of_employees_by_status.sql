SELECT Status, COUNT(*) AS NumEmployees
FROM employees
GROUP BY Status;