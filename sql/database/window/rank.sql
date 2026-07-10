-- Rank employees by salary
SELECT
    first_name,
    basic_salary,

    RANK()
    OVER(
        ORDER BY basic_salary DESC
    ) AS salary_rank

FROM employees;

-- Rank employees within each department
SELECT
    first_name,
    department_id,
    basic_salary,

    RANK()
    OVER(
        PARTITION BY department_id
        ORDER BY basic_salary DESC
    ) AS department_rank

FROM employees;

-- Show the top 2 highest paid employees from each department
SELECT *
FROM (
    SELECT
        first_name,
        department_id,
        basic_salary,

        RANK()
        OVER(
            PARTITION BY department_id
            ORDER BY basic_salary DESC
        ) AS salary_rank

    FROM employees
) AS ranked_employee

WHERE salary_rank <= 2;

-- Show company-wide salary ranking
SELECT
    first_name,
    department_id,
    basic_salary,

    RANK()
    OVER(
        ORDER BY basic_salary DESC
    ) AS company_rank

FROM employees;