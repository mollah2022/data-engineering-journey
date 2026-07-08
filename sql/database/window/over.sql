-- Show each employee with overall average salary
SELECT
    first_name,
    basic_salary,

    AVG(basic_salary)
    OVER() AS company_average_salary

FROM employees;


-- Show each employee with department average salary
SELECT

    first_name,

    department_id,

    basic_salary,

    AVG(basic_salary)

    OVER(

        PARTITION BY department_id

    ) AS department_average

FROM employees;

-- Show department total salary for each employee
SELECT

    first_name,

    department_id,

    basic_salary,

    SUM(basic_salary)

    OVER(

        PARTITION BY department_id

    ) AS department_total_salary

FROM employees;


-- Show total employees in each department
SELECT

    first_name,

    department_id,

    COUNT(*)

    OVER(

        PARTITION BY department_id

    ) AS total_employee

FROM employees;