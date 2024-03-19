USE checkinoutdb;


## Lees de records van alle afdelingen die onderafdeling (sub-department) zijn van 'Instructors'
SELECT *
FROM department
WHERE parent_department_id = '1';

## Creëer een selectie-query om afdelingen te zoeken die bevat 'java' in hun titels.
SELECT *
FROM department
WHERE title LIKE '%java%';

## Update het wachtwoord van de 2e gebruiker uit de gebruikerstabel. Het nieuwe wachtwoord is "2021".
UPDATE users
SET password = '2021'
WHERE user_id = '2';

## Maak een selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'.
SELECT *
FROM users
WHERE email NOT LIKE '%Al%';

## Verander (update) de voornaam en de familienaam van een persoon bij je keuze.
UPDATE person
SET first_name = 'John',
    last_name  ='Doe'
WHERE user_id = '1';

## creëer een selectıequery om logs van het vandaag te zien.
SELECT *
FROM event_log
WHERE event_date = '2024-04-18';

## creëer een selectiequery om uitchekken vroeger dan 17:00 te zien.
SELECT *
FROM event_log
WHERE check_out_time < '17:00';

## (optioneel) sorteer alle logs bij evenementdatum
SELECT *
FROM event_log
ORDER BY event_date;

##Probeer een 5de student te creëren, na de record is gecreërd worden, verwijder het
INSERT INTO student(person_id, course_id, total_attendance)
VALUES (6, 'JAVA_SEP_2023', 300);

## Verwijder de net toegevoegd student.
DELETE
FROM student
WHERE person_id = 6;