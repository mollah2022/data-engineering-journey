-- ASC (Ascending)
-- order by salary
SELECT *
FROM employees
ORDER BY basic_salary ASC;

-- Order by name
SELECT *
FROM employees
ORDER BY first_name ASC;

-- order by date 
SELECT *
FROM employees
ORDER BY hire_date ASC;

-- DESC (Descending)
SELECT *
FROM employees
ORDER BY basic_salary DESC;

-- Multiple Column Sort
SELECT *
FROM employees
ORDER BY department_id ASC,
         basic_salary DESC;

-- NULLS FIRST
SELECT *
FROM employees
ORDER BY phone NULLS FIRST;

-- NULLS LAS
SELECT *
FROM employees
ORDER BY phone NULLS LAST;

-- LIMIT
SELECT *
FROM employees
LIMIT 5;

  -- Highest Salary
SELECT *
FROM employees
ORDER BY basic_salary DESC
LIMIT 1;

  -- Top 3 Highest Salary
SELECT *
FROM employees
ORDER BY basic_salary DESC
LIMIT 3;

  -- Lowest Salary
SELECT *
FROM employees
ORDER BY basic_salary
LIMIT 1;

-- OFFSET
SELECT *
FROM employees
OFFSET 2;

-- LIMIT + OFFSET
SELECT *
FROM employees
ORDER BY employee_id
LIMIT 3
OFFSET 0;