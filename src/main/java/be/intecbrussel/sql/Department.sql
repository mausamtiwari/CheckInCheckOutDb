CREATE TABLE IF NOT EXISTS department
(
    department_id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title                VARCHAR(50)     NOT NULL,
    parent_department_id INT DEFAULT NULL REFERENCES department

);

INSERT INTO department (title, parent_department_id)
VALUES ('Instructors', NULL),
       ('Human Resources', NULL),
       ('Administration', NULL),
       ('IT Services', NULL),
       ('Accounting', NULL),
       ('Java', 1),
       ('C#', 1),
       ('JavaScript', 1),
       ('Python', 1),
       ('System and Networking', 1),
       ('Ethical Hacking', 1),
       ('Data Analysis', 1),
       ('Job Applications', 2),
       ('Personal Development ', 2),
       ('Financial Accounting', 5),
       ('Student Reimbursement', 5),
       ('Computer Hardware', 4);

