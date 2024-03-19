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




