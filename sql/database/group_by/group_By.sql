-- Count the total number of employees in each department
SELECT
    department_id,
    COUNT(*) AS total_employee
FROM employees
GROUP BY department_id;

-- Calculate the total salary for each department
SELECT
    department_id,
    SUM(basic_salary) AS total_salary
FROM employees
GROUP BY department_id;

-- Average Salary
SELECT
    department_id,
    AVG(basic_salary) AS average_salary
FROM employees
GROUP BY department_id;

-- Highest Salary
SELECT
    department_id,
    MAX(basic_salary) AS highest_salary
FROM employees
GROUP BY department_id;

-- Lowest Salary
SELECT
    department_id,
    MIN(basic_salary) AS lowest_salary
FROM employees
GROUP BY department_id;

-- Multiple Aggregate Functions
SELECT
    department_id,
    COUNT(*) AS total_employee,
    SUM(basic_salary) AS total_salary,
    AVG(basic_salary) AS average_salary,
    MIN(basic_salary) AS minimum_salary,
    MAX(basic_salary) AS maximum_salary
FROM employees
GROUP BY department_id;

-- GROUP BY Multiple Columns
SELECT
    department_id,
    gender,
    COUNT(*) AS total_employee
FROM employees
GROUP BY department_id, gender;

-- WHERE + GROUP BY
SELECT
    department_id,
    AVG(basic_salary) AS average_salary
FROM employees
WHERE department_id = 2
GROUP BY department_id;

-- GROUP BY + ORDER BY
SELECT
    department_id,
    COUNT(*) AS total_employee
FROM employees
GROUP BY department_id
ORDER BY total_employee DESC;