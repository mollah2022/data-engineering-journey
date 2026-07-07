-- =====================================
-- Table: projects
-- Company projects
-- =====================================

CREATE TABLE projects (

    project_id SERIAL PRIMARY KEY,

    project_name VARCHAR(100) NOT NULL,

    client_name VARCHAR(100),

    budget NUMERIC(12,2),

    start_date DATE,

    end_date DATE,

    status VARCHAR(30)

);