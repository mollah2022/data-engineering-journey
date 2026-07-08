-- COUNT()
SELECT COUNT(*)
FROM employees;

-- COUNT(column_name)
SELECT COUNT(phone)
FROM employees;

-- COUNT(DISTINCT)
SELECT COUNT(DISTINCT department_id)
FROM employees;

-- SUM()
SELECT SUM(basic_salary)
FROM employees;

-- Alias
SELECT SUM(basic_salary) AS total_salary
FROM employees;

-- AVG()
SELECT AVG(basic_salary)
FROM employees;

-- Alias
SELECT AVG(basic_salary) AS average_salary
FROM employees;

-- MIN()
SELECT MIN(basic_salary)
FROM employees;

-- MAX()
SELECT MAX(basic_salary)
FROM employees;

-- Multiple Aggregate
SELECT
    COUNT(*) AS total_employees,
    SUM(basic_salary) AS total_salary,
    AVG(basic_salary) AS average_salary,
    MIN(basic_salary) AS minimum_salary,
    MAX(basic_salary) AS maximum_salary
FROM employees;

-- WHERE + Aggregate
SELECT AVG(basic_salary) AS average_salary
FROM employees
WHERE department_id = 2;