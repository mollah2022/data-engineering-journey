-- =====================================
-- Table: employees
-- Store employee information
-- =====================================

CREATE TABLE employees (

    employee_id SERIAL PRIMARY KEY,

    first_name VARCHAR(50) NOT NULL,

    last_name VARCHAR(50) NOT NULL,

    email VARCHAR(100) UNIQUE NOT NULL,

    phone VARCHAR(20) UNIQUE,

    gender VARCHAR(10),

    date_of_birth DATE,

    hire_date DATE NOT NULL,

    job_title VARCHAR(100) NOT NULL,

    basic_salary NUMERIC(10,2) NOT NULL,

    department_id INT NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_department
        FOREIGN KEY(department_id)
        REFERENCES departments(department_id)

);