-- Show next employee salary
SELECT
    first_name,
    basic_salary,

    LEAD(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS next_salary

FROM employees;

-- Compare current salary with next salary
SELECT
    first_name,
    basic_salary,

    LEAD(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS next_salary,

    basic_salary -
    LEAD(basic_salary)
    OVER(
        ORDER BY basic_salary DESC
    ) AS salary_gap

FROM employees;