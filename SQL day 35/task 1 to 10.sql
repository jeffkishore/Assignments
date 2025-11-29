use edu_platform;
CREATE TABLE departments (
  dept_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(100)
);
INSERT INTO departments (name, location) VALUES
('Engineering', 'Building A'),
('Human Resources', 'Building B'),
('Sales', 'Building C'),
('Marketing', 'Building D');
CREATE TABLE employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(150),
  phone VARCHAR(50), 
  emp_code VARCHAR(10),
  hire_date DATE,
  last_login DATETIME,
  notes TEXT,
  dept_id INT,
  salary DECIMAL(10,2),
  active BOOLEAN DEFAULT 1,
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);
INSERT INTO employees 
(first_name, last_name, email, phone, emp_code, hire_date, last_login, notes, dept_id, salary, active)
VALUES
('Asha', 'Patel', 'asha.patel@example.com', '9876543210', 'EMP101', '2022-03-01', '2024-11-01 09:15:00', 'Senior developer', 1, 75000, 1),
('Rahul', 'Mehra', 'rahul.mehra@example.com', '9876501234', 'EMP102', '2021-07-10', '2024-11-10 10:30:00', 'Team lead', 1, 82000, 1),
('Nisha', 'Verma', 'nisha.verma@example.com', '9898989898', 'EMP103', '2020-05-12', '2024-10-25 14:20:00', 'HR executive', 2, 52000, 1),
('Sameer', 'Khan', 'sameer.khan@example.com', '9000012345', 'EMP104', '2019-12-20', '2024-11-02 08:45:00', 'Sales manager', 3, 61000, 1),
('Meera', 'Joshi', 'meera.joshi@example.com', '9090909090', 'EMP105', '2023-02-15', '2024-11-05 11:40:00', 'Marketing associate', 4, 70000, 1);
select * from employees;
-- Use YEAR() and MONTH() to list employees hired in 2022.
SELECT *
FROM employees
WHERE YEAR(hire_date) = 2022
AND MONTH(hire_date) = 3;
-- Compute DATEDIFF(NOW(), hire_date) for employee id 1 and interpret the result.
SELECT DATEDIFF(NOW(), hire_date) AS days_worked
FROM employees
WHERE emp_id = 1;
-- Trim leading/trailing spaces from email and show rows where trimmed ≠ raw.
SELECT *,
TRIM(email) AS trimmed_email
FROM employees
WHERE TRIM(email) <> email;
-- Use LPAD to display emp_code as 4-digit zero-padded strings.
SELECT emp_id,
       LPAD(emp_code, 4, '0') AS padded_code
FROM employees;
-- Replace all hyphens in phone with nothing using REPLACE().
SELECT phone,
       REPLACE(phone, '-', '') AS clean_phone
FROM employees;

CREATE TABLE employee_contacts_clean (
  emp_id INT PRIMARY KEY,
  clean_email VARCHAR(150),
  clean_phone VARCHAR(50)
);

select * from employee_contacts_clean;
-- Normalize Contacts Script: Write an SQL script that standardizes email (trim & lower), cleans phone to digits only, and writes cleaned values into a new table employee_contacts_clean.
INSERT INTO employee_contacts_clean (emp_id, clean_email, clean_phone)
SELECT
  emp_id,
  LOWER(TRIM(email)) AS clean_email,
  REPLACE(REPLACE(REPLACE(phone, '-', ''), ' ', ''), '+', '') AS clean_phone
FROM employees;
-- Tenure Buckets: Build a query that groups employees into tenure buckets (<1 year, 1–3 years, 3–5, 5+) using TIMESTAMPDIFF(YEAR,...) and CASE, and show counts per bucket.
SELECT
  CASE
    WHEN TIMESTAMPDIFF(YEAR, hire_date, NOW()) < 1 THEN '<1 year'
    WHEN TIMESTAMPDIFF(YEAR, hire_date, NOW()) BETWEEN 1 AND 3 THEN '1–3 years'
    WHEN TIMESTAMPDIFF(YEAR, hire_date, NOW()) BETWEEN 3 AND 5 THEN '3–5 years'
    ELSE '5+ years'
  END AS tenure_bucket,
  COUNT(*) AS employee_count
FROM employees
GROUP BY tenure_bucket;
-- Username Generator: Create a stored procedure (or a single UPDATE statement) that builds unique usernames using CONCAT, SUBSTRING, and LPAD (append numeric suffix if collision).
ALTER TABLE employees ADD username VARCHAR(100);

UPDATE employees
SET username = LOWER(
       CONCAT(
         SUBSTRING(first_name, 1, 3),
         SUBSTRING(last_name, 1, 3)
       )
     );

-- Monthly Hiring Report: Use MONTH() & YEAR() to produce a report of hires per month/year for the last 24 months, including totals.
SELECT 
    YEAR(hire_date) AS hire_year,
    MONTH(hire_date) AS hire_month,
    COUNT(*) AS hires
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 24 MONTH)
GROUP BY hire_year, hire_month
ORDER BY hire_year, hire_month;
-- Phone Validation View: Create a VIEW named vw_valid_phones that returns employees with phone numbers normalized to E.164 format (or marks invalid numbers).
SELECT 
    YEAR(hire_date) AS hire_year,
    MONTH(hire_date) AS hire_month,
    COUNT(*) AS hires
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 24 MONTH)
GROUP BY hire_year, hire_month
ORDER BY hire_year, hire_month;