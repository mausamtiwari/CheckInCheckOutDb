CREATE DATABASE IF NOT EXISTS checkinoutdb;

USE checkinoutdb;

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


INSERT INTO users (email, password, gsm, activation_code)
VALUES ('mausam.tiwari@student.intecbrussel.be', 'mausam2024', 0484403995, 1234),
       ('hilal.demir@instructor.intecbrussel.be', 'hilal2024', 0484403996, 1235),
       ('jonathan@student.intecbrussel.be', 'jonathan2024', 0484403997, 1236),
       ('nina@student.intecbrussel.be', 'nina2024', 0484403998, 1237),
       ('janan@student.intecbrussel.be', 'janan2024', 0484403999, 1238),
       ('elmaz@student.intecbrussel.be', 'janan2024', 0484403910, 1239),
       ('joe@instructor.intecbrussel.be', 'joe2024', 0484403911, 1240),
       ('alberto@tws.intecbrussel.be', 'alberto2024', 0484403912, 1241),
       ('ajana@its.intecbrussel.be', 'jana2024', 0484403913, 1242);

INSERT INTO person(person_id, first_name, last_name, date_of_birth, gender, nick_name, user_id)
VALUES ('1', 'Mausam', 'Tiwari', '1995-09-01', 'M', 'MSM', 1),
       ('2', 'Hilal', 'Demir', '1982-10-02', 'F', 'Hilal', 2),
       ('3', 'Jonathan', 'Deroo', '1967-11-03', '', 'John', 3),
       ('4', 'Nina', 'Charles', '1990-12-04', 'F', 'Nina', 4),
       ('5', 'Janan', 'Jan', ' 1991-05-09', 'F', 'Jan', 5),
       ('6', 'Elmaz', 'El', '1997-01-05', 'F', 'Elma', 6),
       ('7', 'Joe', 'Smith', '1988-02-06', 'M', 'Jo', 7),
       ('8', 'Alberto', 'Maio', '1990-03-07', 'M', 'Albert', 8),
       ('9', 'Ajana', 'Lima', '1967-04-08', '', 'Jana', 9)
;

INSERT INTO event_log (user_info, event_date, check_in_time, check_out_time, user_id)
VALUES ('User_id1', '2023-09-18', '08:00', '17:30', 1),
       ('user_id2', '2023-09-18', '13:00', '16:00', 2),
       ('user_id3', '2023-09-18', '09:00', '12:00', 3),
       ('user_id4', '2023-09-18', '09:00', '18:00', 4),
       ('user_id1', '2023-11-12', '12:00', '14:00', 1),
       ('User_id2', '2023-11-12', NULL, NULL, 2),
       ('user_id3', '2023-11-12', '16:00', '17:00', 3),
       ('user_id4', '2024-11-12', '11:00', '15:00', 4),
       ('user_id1', '2024-01-25', NULL, NULL, 1),
       ('User_id2', '2024-01-25', '09:00', '14:20', 2),
       ('user_id3', '2024-01-25', '9:30', '17:00', 3),
       ('user_id4', '2024-01-25', '18:00', '19:00', 4),
       ('user_id1', '2024-02-16', '17:00', '19:00', 1),
       ('User_id2', '2024-02-16', '17:30', '19:00', 2),
       ('user_id3', '2024-02-16', '15:00', '19:00', 3),
       ('user_id4', '2024-02-016', '12:00', '17:30', 4),
       ('user_id1', '2024-04-18', '09:00', NULL, 1),
       ('user_id2', '2024-04-18', '09:30', NULL, 2),
       ('User_id3', '2024-04-18', NULL, NULL, 3),
       ('user_id4', '2024-04-18', '09:00', NULL, 4);

INSERT INTO employee(person_id, department_id, work_start_date, work_end_date, profile_photo)
VALUES (2, 1, '2020-09-05', NULL, NULL),
       (7, 1, '2021-08-05', NULL, NULL),
       (8, 2, '2017-10-29', NULL, NULL);


INSERT INTO student(person_id, course_id, total_attendance)
VALUES ('1', 'JAVA_SEP_2023', 61.0),
       ('3', 'JAVA_JAN_2023', 99.50),
       ('4', 'CSHARP_JUNI_2023', 100.0),
       ('5', 'JAVA_SEP_2023', 77.33);


insert into course (course_id, title, start_date, end_date)
values ('JAVA_SEP_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2020-09-01',
        '2021-09-01'),
       ('JAVA_JAN_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2021-01-01',
        '2022-01-01'),
       ('JAVA_JUNI_2023', 'Java fundamentals, databases and SQL, JDBC, Testing, OCA, Spring', '2021-06-01',
        '2022-06-01'),
       ('CSHARP_JUNI_2023', 'C# fundamentals, MSSQL, Microsoft Examinations', '2021-06-01',
        '2022-06-01')
;
