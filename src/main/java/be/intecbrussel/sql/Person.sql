CREATE TABLE IF NOT EXISTS person
(
    person_id     CHAR(16) PRIMARY KEY NOT NULL UNIQUE,
    first_name    VARCHAR(255)         NOT NULL,
    last_name     VARCHAR(255)         NOT NULL,
    date_of_birth DATE                 NOT NULL,
    gender        CHAR(1) DEFAULT 'U',
    nick_name     VARCHAR(20)          NULL,
    user_id       INT                  NOT NULL,

    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

UPDATE person
SET gender = default
WHERE gender = '';

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