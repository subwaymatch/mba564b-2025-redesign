CREATE TABLE IF NOT EXISTS departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS job_titles (
    job_title_id INTEGER PRIMARY KEY,
    job_title TEXT NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS employees (
    employee_id INTEGER PRIMARY KEY,
    full_name TEXT NOT NULL,
    start_date TEXT NOT NULL,
    end_date TEXT CHECK (end_date IS NULL OR end_date >= start_date),
    department_id INTEGER,
    job_title_id INTEGER,
    status TEXT NOT NULL CHECK (status IN ('Active', 'On-boarding', 'Terminated')),
    pay_type TEXT NOT NULL CHECK (pay_type IN ('Salary', 'Hourly')),
    pay_rate REAL NOT NULL CHECK (pay_rate > 0),
    FOREIGN KEY (department_id) REFERENCES departments (department_id),
    FOREIGN KEY (job_title_id) REFERENCES job_titles (job_title_id)
);