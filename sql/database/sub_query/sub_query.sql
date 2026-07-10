-- Single Row Subquery
SELECT
    first_name,
    basic_salary
FROM employees
WHERE basic_salary > (
    SELECT AVG(basic_salary)
    FROM employees
);

-- Multiple Row Subquery
SELECT
    first_name,
    department_id
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location = 'Dhaka'
);

-- Multiple Column Subquery
SELECT
    first_name,
    department_id,
    job_title
FROM employees
WHERE (department_id, job_title) IN (
    SELECT department_id, job_title
    FROM employee_archive
);