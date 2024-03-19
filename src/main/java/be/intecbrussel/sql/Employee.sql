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


INSERT INTO employee(person_id, department_id, work_start_date, work_end_date, profile_photo)
VALUES (2, 1, '2020-09-05', NULL, NULL),
       (7, 1, '2021-08-05', NULL, NULL),
       (8, 2, '2017-10-29', NULL, NULL);

