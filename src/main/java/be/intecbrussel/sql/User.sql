CREATE TABLE IF NOT EXISTS users
(
    user_id         INT PRIMARY KEY     NOT NULL AUTO_INCREMENT,
    email           VARCHAR(255) UNIQUE NOT NULL,
    password        VARCHAR(15)         NOT NULL,
    gsm             INT(13) UNIQUE      NOT NULL,
    activation_code INT(6)              NOT NULL

);


