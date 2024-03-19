CREATE TABLE IF NOT EXISTS users
(
    user_id         INT PRIMARY KEY     NOT NULL AUTO_INCREMENT,
    email           VARCHAR(255) UNIQUE NOT NULL,
    password        VARCHAR(15)         NOT NULL,
    gsm             INT(13) UNIQUE      NOT NULL,
    activation_code INT(6)              NOT NULL

);


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