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

