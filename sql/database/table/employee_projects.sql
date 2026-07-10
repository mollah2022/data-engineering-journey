-- =====================================
-- Table: employee_projects
-- Employee assignment
-- =====================================

CREATE TABLE employee_projects (

    employee_project_id SERIAL PRIMARY KEY,

    employee_id INT NOT NULL,

    project_id INT NOT NULL,

    assigned_date DATE NOT NULL,

    role VARCHAR(100),

    CONSTRAINT fk_employee

        FOREIGN KEY(employee_id)

        REFERENCES employees(employee_id)

        ON DELETE CASCADE,

    CONSTRAINT fk_project

        FOREIGN KEY(project_id)

        REFERENCES projects(project_id)

        ON DELETE CASCADE,

    CONSTRAINT unique_employee_project

        UNIQUE(employee_id, project_id)

);                                                                         