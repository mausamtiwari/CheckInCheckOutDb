CREATE TABLE IF NOT EXISTS student
(
    student_id       INT AUTO_INCREMENT,
    person_id        CHAR(16) NULL,
    course_id        CHAR(20) NULL,
    total_attendance DOUBLE   NULL,

    PRIMARY KEY (student_id),

    CONSTRAINT person_to_student_fk
        FOREIGN KEY (person_id) REFERENCES person (person_id),

    CONSTRAINT course_to_student_fk
        FOREIGN KEY (course_id) REFERENCES course (course_id)
);

INSERT INTO student(person_id, course_id, total_attendance)
VALUES ('1', 'JAVA_SEP_2023', 61.0),
       ('3', 'JAVA_JAN_2023', 99.50),
       ('4', 'CSHARP_JUNI_2023', 100.0),
       ('5', 'JAVA_SEP_2023', 77.33);


