-- Show all employees with their department names
SELECT
    e.first_name,
    d.department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id;

-- Show all departments with their employees
SELECT
    d.department_name,
    e.first_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
ORDER BY d.department_name;

-- Find departments that have no employees
SELECT
    d.department_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
WHERE e.employee_id IS NULL;

-- Count employees in every department including empty departments
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employee
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY d.department_name;