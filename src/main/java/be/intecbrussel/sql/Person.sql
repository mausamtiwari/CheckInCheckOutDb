CREATE TABLE IF NOT EXISTS person
(
    person_id     CHAR(16) PRIMARY KEY NOT NULL UNIQUE,
    first_name    VARCHAR(255)         NOT NULL,
    last_name     VARCHAR(255)         NOT NULL,
    date_of_birth DATE                 NOT NULL,
    gender CHAR(1) DEFAULT 'U',
    nick_name     VARCHAR(20)          NULL,
    user_id       INT                  NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

UPDATE person
SET gender = default
WHERE gender = '';

