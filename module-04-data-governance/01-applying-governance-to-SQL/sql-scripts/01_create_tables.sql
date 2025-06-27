CREATE TABLE IF NOT EXISTS departments (
    DepartmentID INTEGER PRIMARY KEY,
    DepartmentName TEXT NOT NULL,
    CostCenter TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS job_titles (
    TitleID INTEGER PRIMARY KEY,
    JobTitle TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS employees (
    EmployeeID INTEGER PRIMARY KEY,
    FullName TEXT NOT NULL,
    StartDate TEXT NOT NULL,
    DepartmentID INTEGER,
    TitleID INTEGER,
    Status TEXT NOT NULL CHECK (Status IN ('Active', 'On-boarding', 'Terminated')),
    PayType TEXT NOT NULL CHECK (PayType IN ('Salary', 'Hourly')),
    PayRate REAL NOT NULL CHECK (PayRate > 0),
    FOREIGN KEY (DepartmentID) REFERENCES departments (DepartmentID),
    FOREIGN KEY (TitleID) REFERENCES job_titles (TitleID)
);