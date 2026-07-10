-- Retrieve all records and all columns from the employees table
SELECT *
FROM employees;

-- Show all department information
SELECT *
FROM departments;

-- Show all project information
SELECT *
FROM projects;

-- Show all salary information
SELECT *
FROM salaries;

-- Avoid using SELECT * in production; retrieve only the required columns for better performance and readability.

SELECT
    first_name,
    last_name
FROM employees;


SELECT
    first_name,
    basic_salary
FROM employees;

SELECT
    basic_salary,
    first_name,
    email
FROM employees;

-- Rename the column in the query result using an alias for better readability.
SELECT
    first_name AS employee_name,
    basic_salary AS salary
FROM employees;

SELECT
    first_name,
    basic_salary,
    basic_salary * 12 AS yearly_salary
FROM employees;

-- Concatenate first name and last name into a single full_name column.
SELECT
    first_name || ' ' || last_name AS full_name
FROM employees;