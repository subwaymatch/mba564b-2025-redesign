SELECT FullName, StartDate, DepartmentName
FROM employees
JOIN departments ON employees.DepartmentID = departments.DepartmentID
WHERE StartDate >= '2023-01-01'
ORDER BY StartDate DESC;