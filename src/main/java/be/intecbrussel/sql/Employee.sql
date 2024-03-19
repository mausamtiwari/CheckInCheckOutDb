CREATE TABLE IF NOT EXISTS employee
(
    employee_id     INT      NOT NULL UNIQUE AUTO_INCREMENT,
    person_id       CHAR(16) NOT NULL,
    department_id   INT      NOT NULL,
    work_start_date DATE     NOT NULL,
    work_end_date   DATE     NULL,
    profile_photo   BLOB     NULL,

    PRIMARY KEY (employee_id),

    CONSTRAINT person_to_employee_fk
        FOREIGN KEY (person_id) REFERENCES person (person_id),

    CONSTRAINT department_to_employee_fk
        FOREIGN KEY (department_id) REFERENCES department (department_id)
);

