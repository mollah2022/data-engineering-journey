-- Show all employees and all departments
SELECT
    e.first_name,
    d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY d.department_name;

-- Show unmatched employees and departments
SELECT
    e.first_name,
    d.department_name
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.department_id = d.department_id
WHERE
    e.employee_id IS NULL
    OR d.department_id IS NULL;

-- Count employees in every department
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employee
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;

-- Show employee salary with department information
SELECT
    e.first_name,
    d.department_name,
    e.basic_salary
FROM employees AS e
FULL OUTER JOIN departments AS d
ON e.department_id = d.department_id
ORDER BY e.first_name;