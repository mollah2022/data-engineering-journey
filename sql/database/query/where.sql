-- Use the WHERE clause to filter records based on one or more conditions.
-- Equal (=)
SELECT *
FROM employees
WHERE department_id = 2;

SELECT *
FROM employees
WHERE first_name = 'Sajib';

-- Not Equal (!=)
SELECT *
FROM employees
WHERE department_id != 2;

-- Greater Than (>)
SELECT *
FROM employees
WHERE basic_salary > 60000;

-- Less Than (<)
SELECT *
FROM employees
WHERE basic_salary < 50000;

-- Greater Than or Equal (>=)
SELECT *
FROM employees
WHERE basic_salary >= 60000;

-- Less Than or Equal (<=)
SELECT *
FROM employees
WHERE basic_salary <= 50000;

-- AND 
SELECT *
FROM employees
WHERE department_id = 2
AND basic_salary > 65000;

-- OR
SELECT *
FROM employees
WHERE department_id = 1
OR department_id = 2;

-- NOT
SELECT *
FROM employees
WHERE NOT department_id = 2;

-- BETWEEN
SELECT *
FROM employees
WHERE basic_salary
BETWEEN 50000 AND 70000;

-- IN

--bad way
SELECT *
FROM employees
WHERE department_id = 1
OR department_id = 2
OR department_id = 3;

-- good way
SELECT *
FROM employees
WHERE department_id IN (1,2,3);

-- NOT IN
SELECT *
FROM employees
WHERE department_id
NOT IN (1,2);

-- LIKE
-- start with s
SELECT *
FROM employees
WHERE first_name LIKE 'S%';

-- end with m
SELECT *
FROM employees
WHERE first_name LIKE '%m';

-- middle char is a
SELECT *
FROM employees
WHERE first_name LIKE '%a%';

-- second char is a
SELECT *
FROM employees
WHERE first_name LIKE '_a%';

-- ILIKE(Case-Insensitive)
SELECT *
FROM employees
WHERE first_name ILIKE 'sajib';

-- IS NULL
SELECT *
FROM employees
WHERE phone IS NOT NULL;

-- IS NOT NULL
SELECT *
FROM employees
WHERE phone IS NOT NULL;

-- Multiple Condition
SELECT *
FROM employees
WHERE department_id = 2
AND gender = 'Male'
AND basic_salary > 50000;
