CREATE TABLE IF NOT EXISTS course
(
    course_id  CHAR(20)     NOT NULL UNIQUE,
    title      VARCHAR(255) NOT NULL,
    start_date DATE         NOT NULL,
    end_date   DATE         NULL,

    PRIMARY KEY (course_id)
);

INSERT INTO course (course_id, title, start_date, end_date)
VALUES ('JAVA_SEP_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2020-09-01',
        '2021-09-01'),
       ('JAVA_JAN_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2021-01-01',
        '2022-01-01'),
       ('JAVA_JUNI_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2021-06-01',
        '2022-06-01'),
       ('CSHARP_JUNI_2023', 'C# fundamentals, MSSQL, Microsoft Examinations', '2021-06-01',
        '2022-06-01')
;


