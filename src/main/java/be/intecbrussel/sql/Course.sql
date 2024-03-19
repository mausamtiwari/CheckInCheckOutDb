CREATE TABLE IF NOT EXISTS course
(
    course_id  CHAR(20)     NOT NULL UNIQUE,
    title      VARCHAR(255) NOT NULL,
    start_date DATE         NOT NULL,
    end_date   DATE         NULL,

    PRIMARY KEY (course_id)
);




