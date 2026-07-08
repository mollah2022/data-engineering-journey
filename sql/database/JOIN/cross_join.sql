-- Show every employee with every project
SELECT
    e.first_name,
    p.project_name
FROM employees AS e
CROSS JOIN projects AS p;

-- Generate every employee and department combination
SELECT
    e.first_name,
    d.department_name
FROM employees AS e
CROSS JOIN departments AS d;

-- Generate every project for every department
SELECT
    p.project_name,
    d.department_name
FROM projects AS p
CROSS JOIN departments AS d;

-- Generate all possible employee, project and department combinations
SELECT
    e.first_name,
    p.project_name,
    d.department_name
FROM employees AS e
CROSS JOIN projects AS p
CROSS JOIN departments AS d;