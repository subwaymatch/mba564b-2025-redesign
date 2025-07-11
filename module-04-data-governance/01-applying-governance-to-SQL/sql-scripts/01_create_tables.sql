CREATE TABLE IF NOT EXISTS departments (
    DepartmentID INTEGER PRIMARY KEY,
    DepartmentName TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS job_titles (
    JobTitleID INTEGER PRIMARY KEY,
    JobTitle TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS employees (
    EmployeeID INTEGER PRIMARY KEY,
    FullName TEXT NOT NULL,
    StartDate TEXT NOT NULL,
    EndDate TEXT CHECK (EndDate IS NULL OR EndDate >= StartDate),
    DepartmentID INTEGER,
    JobTitleID INTEGER,
    Status TEXT NOT NULL CHECK (Status IN ('Active', 'On-boarding', 'Terminated')),
    PayType TEXT NOT NULL CHECK (PayType IN ('Salary', 'Hourly')),
    PayRate REAL NOT NULL CHECK (PayRate > 0),
    FOREIGN KEY (DepartmentID) REFERENCES departments (DepartmentID),
    FOREIGN KEY (JobTitleID) REFERENCES job_titles (JobTitleID)
);