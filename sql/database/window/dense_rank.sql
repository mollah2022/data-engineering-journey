-- Rank employees by salary without skipping ranks
SELECT
    first_name,
    basic_salary,

    DENSE_RANK()
    OVER(
        ORDER BY basic_salary DESC
    ) AS salary_rank

FROM employees;

-- Rank employees within each department without skipping ranks
SELECT
    first_name,
    department_id,
    basic_salary,

    DENSE_RANK()
    OVER(
        PARTITION BY department_id
        ORDER BY basic_salary DESC
    ) AS department_rank

FROM employees;

-- Show the top 2 salary groups from each department
SELECT *
FROM (
    SELECT
        first_name,
        department_id,
        basic_salary,

        DENSE_RANK()
        OVER(
            PARTITION BY department_id
            ORDER BY basic_salary DESC
        ) AS salary_rank

    FROM employees
) AS ranked_employee

WHERE salary_rank <= 2;

-- Show company-wide dense salary ranking

SELECT
    first_name,
    department_id,
    basic_salary,

    DENSE_RANK()
    OVER(
        ORDER BY basic_salary DESC
    ) AS company_rank

FROM employees;