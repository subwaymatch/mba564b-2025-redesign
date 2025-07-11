SELECT FullName, StartDate, DepartmentName, JobTitle, PayType, PayRate, Status
FROM employees
JOIN departments ON employees.DepartmentID = departments.DepartmentID
JOIN job_titles ON employees.JobTitleID = job_titles.JobTitleID
WHERE Status = 'On-boarding';