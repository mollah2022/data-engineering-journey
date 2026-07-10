-- Count employees in every department including empty departments
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employee
FROM departments AS d
LEFT JOIN employees AS e
ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY d.department_name;

-- Find departments without employees
SELECT
    d.department_name
FROM employees AS e
RIGHT JOIN departments AS d
ON e.department_id = d.department_id
WHERE e.employee_id IS NULL;

-- Count employees in each department using RIGHT JOIN
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employee
FROM employees AS e
RIGHT JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;

-- Show average salary for every department

SELECT
    d.department_name,
    AVG(e.basic_salary) AS average_salary
FROM employees AS e
RIGHT JOIN departments AS d
ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY d.department_name;