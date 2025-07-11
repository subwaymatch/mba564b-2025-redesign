SELECT d.DepartmentName, ROUND(AVG(e.PayRate), 2) AS AvgPayRate
FROM employees e
JOIN departments d ON e.DepartmentID = d.DepartmentID
WHERE e.PayType = 'Salary'
GROUP BY d.DepartmentName;