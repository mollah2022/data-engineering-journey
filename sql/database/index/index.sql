--- Create index
CREATE INDEX index_name

ON table_name(column_name);

-- Drop Index
DROP INDEX idx_employee_salary;

-- Show all indexes in the current database
SELECT
    indexname,
    tablename
FROM pg_indexes;

-- Show indexes for the employees table
SELECT
    indexname
FROM pg_indexes
WHERE tablename = 'employees';

-- Check the execution plan for email search
EXPLAIN

SELECT *
FROM employees
WHERE email='rahim@example.com';

-- Check the execution plan for salary search
EXPLAIN

SELECT *
FROM employees
WHERE basic_salary > 70000;

-- Check the execution plan for department search
EXPLAIN

SELECT *
FROM employees
WHERE department_id = 2;