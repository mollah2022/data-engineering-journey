-- =====================================
-- Table: departments
-- Store all company departments
-- =====================================

CREATE TABLE departments (

    department_id SERIAL PRIMARY KEY,

    department_name VARCHAR(100) NOT NULL UNIQUE,

    location VARCHAR(100) NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);