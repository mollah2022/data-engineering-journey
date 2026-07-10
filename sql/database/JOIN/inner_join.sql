-- Show employee first name with department name
SELECT
    e.first_name,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

-- Show employee name, job title and department name
SELECT
    e.first_name,
    e.last_name,
    e.job_title,
    d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id;

-- Show employee salary with department name
SELECT
    e.first_name,
    d.department_name,
    e.basic_salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY e.basic_salary DESC;

-- Show employee salary with department name
SELECT
    e.first_name,
    d.department_name,
    e.basic_salary
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY e.basic_salary DESC;