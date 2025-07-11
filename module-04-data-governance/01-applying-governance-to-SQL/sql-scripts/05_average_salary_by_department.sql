SELECT 
    d.DepartmentName,
    COUNT(*) AS NumEmployees,
    ROUND(AVG(e.PayRate), 2) AS AvgSalary
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE e.PayType = 'Salary'
GROUP BY d.DepartmentName;