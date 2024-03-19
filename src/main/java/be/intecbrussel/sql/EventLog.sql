CREATE TABLE IF NOT EXISTS event_log
(
    event_id       INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_info      VARCHAR(255) DEFAULT NULL,
    event_date     DATE            NOT NULL,
    check_in_time  TIME         DEFAULT NULL,
    check_out_time TIME         DEFAULT NULL,
    user_id        INT          DEFAULT NULL,

    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

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