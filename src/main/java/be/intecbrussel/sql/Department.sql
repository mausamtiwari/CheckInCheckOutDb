CREATE TABLE IF NOT EXISTS department
(
    department_id        INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    title                VARCHAR(50)     NOT NULL,
    parent_department_id INT DEFAULT NULL,

    FOREIGN KEY (parent_department_id) REFERENCES department (department_id)

);

