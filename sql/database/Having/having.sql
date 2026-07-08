-- Count the total number of employees in each department
SELECT
    department_id,
    COUNT(*) AS total_employee
FROM employees
GROUP BY department_id;

-- Show departments that have more than one employee
SELECT
    department_id,
    COUNT(*) AS total_employee
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;

-- Show departments where the average salary is greater than 60000
SELECT
    department_id,
    AVG(basic_salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(basic_salary) > 60000;

-- Show departments where the total salary is greater than 100000
SELECT
    department_id,
    SUM(basic_salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(basic_salary) > 100000;

-- WHERE + HAVING
SELECT
    department_id,
    COUNT(*) AS total_male
FROM employees
WHERE gender = 'Male'
GROUP BY department_id
HAVING COUNT(*) > 1;

-- HAVING + ORDER BY
SELECT
    department_id,
    AVG(basic_salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(basic_salary) > 50000
ORDER BY average_salary DESC;
