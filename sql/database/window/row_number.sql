-- Assign a serial number based on salary (highest to lowest)
SELECT
    first_name,
    basic_salary,

    ROW_NUMBER()
    OVER(
        ORDER BY basic_salary DESC
    ) AS serial_number

FROM employees;

-- Assign row numbers within each department
SELECT
    first_name,
    department_id,
    basic_salary,

    ROW_NUMBER()
    OVER(
        PARTITION BY department_id
        ORDER BY basic_salary DESC
    ) AS department_serial

FROM employees;

-- Get the highest paid employee from each department
SELECT *
FROM (
    SELECT
        first_name,
        department_id,
        basic_salary,

        ROW_NUMBER()
        OVER(
            PARTITION BY department_id
            ORDER BY basic_salary DESC
        ) AS rn

    FROM employees
) AS ranked_employee

WHERE rn = 1;

-- Assign row numbers for pagination
SELECT
    first_name,
    basic_salary,

    ROW_NUMBER()
    OVER(
        ORDER BY employee_id
    ) AS row_num

FROM employees;

-- Get rows 1 to 5
SELECT *
FROM (
    SELECT
        first_name,
        ROW_NUMBER()
        OVER(
            ORDER BY employee_id
        ) AS row_num
    FROM employees
) AS employee_list

WHERE row_num BETWEEN 1 AND 5;