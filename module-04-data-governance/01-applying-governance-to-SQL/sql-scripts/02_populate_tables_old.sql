INSERT INTO departments (DepartmentID, DepartmentName) VALUES
(1, 'Engineering'),
(2, 'Human Resources'),
(3, 'Marketing');

INSERT INTO job_titles (JobTitleID, JobTitle) VALUES
(1, 'Software Engineer'),
(2, 'HR Specialist'),
(3, 'Marketing Manager'),
(4, 'Data Analyst');

INSERT INTO employees (
    EmployeeID, FullName, StartDate, EndDate, DepartmentID, JobTitleID, Status, PayType, PayRate
) VALUES
(101, 'Alice Kim',     '2022-01-10', NULL,        1, 1, 'Active',      'Salary', 85000.00),
(102, 'Bob Lee',       '2023-03-15', NULL,        1, 4, 'Active',      'Salary', 70000.00),
(103, 'Cindy Park',    '2024-07-01', NULL,        2, 2, 'On-boarding', 'Salary', 60000.00),
(104, 'David Tran',    '2021-05-21', NULL,        3, 3, 'Active',      'Salary', 95000.00),
(105, 'Emily Zhou',    '2020-11-18', '2023-12-15', 3, 4, 'Terminated',  'Hourly', 45.00);
