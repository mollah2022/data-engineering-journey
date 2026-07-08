-- Show previous employee salary
SELECT
    first_name,
    basic_salary,

    LAG(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS previous_salary

FROM employees;

-- Compare current salary with previous salary
SELECT
    first_name,
    basic_salary,

    LAG(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS previous_salary,

    basic_salary -
    LAG(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS salary_difference

FROM employees;

-- Show previous salary within each department
SELECT
    first_name,
    department_id,
    basic_salary,

    LAG(basic_salary)
    OVER(
        PARTITION BY department_id
        ORDER BY basic_salary DESC
    ) AS previous_salary

FROM employees;