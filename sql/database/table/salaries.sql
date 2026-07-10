-- =====================================
-- Table: salaries
-- Monthly salary history
-- =====================================

CREATE TABLE salaries (

    salary_id SERIAL PRIMARY KEY,

    employee_id INT NOT NULL,

    salary_month DATE NOT NULL,

    basic_salary NUMERIC(10,2) NOT NULL,

    bonus NUMERIC(10,2) DEFAULT 0,

    deduction NUMERIC(10,2) DEFAULT 0,

    payment_date DATE,

    CONSTRAINT fk_salary_employee

        FOREIGN KEY(employee_id)

        REFERENCES employees(employee_id)

        ON DELETE CASCADE

);