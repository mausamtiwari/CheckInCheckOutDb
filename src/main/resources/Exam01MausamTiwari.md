# Intec Brussel Exam 01 : Databases en SQL

## Inschrijvingsformulier

| Cursist     |                                                              |
| ----------- | ------------------------------------------------------------ |
| Voornaam    | Mausam                                                       |
| Familienaam | Tiwari                                                       |
| Klascode    | Java September 2023                                          |
| Notities    | ........................................................................................ |

* * *

## 

## Vragen & Antwoorden voor de start

| Vraag                                                                                | Antwoord                                                                                                                                                                                                                                         |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Moet ik alle code zelf programmeren zonder een oplossing te zoeken via zoekmachines? | Nee, je mag alle resources gebruiken om te je vragen te antwoorden. Probeer echter niet te veel tijd te besteden aan het zoeken. Soms kost het meer tijd om tijd te besteden aan het vinden van een bestaand antwoord dan het zelf te schrijven. |
| Mag ik hulp of code-stuks vragen aan de andere cursisten?                            | Nee, het is een volledig individueel examen.                                                                                                                                                                                                     |

---

## Ontwikkelingstappen

> De oplossingscode moet in SQL gecodeerd worden. 
>
> Gebruik hiervoor MySQL v8+
>
> Het examen is open om iets van online te zoeken, van je boek te bekijken, maar mogen jullie niet elkaar antwoorden vragen.
>
> Eerst maak een user met **jouw naam**. En dan maak een nieuwe database  met de naam "**checkinoutdb**".
>
> **De powershell code zullen jullie hier schrijven.( om sql te openen en een database te creeren)**
>
> * CREATE USER 'mausam'@'localhost' IDENTIFIED BY 'mausam2024';
>* CREATE DATABASE checkinoutdb;
> * GRANT ALL ON checkinoutdb.* TO 'mausam'@'localhost';
>* FLUSH PRIVILEGES;


---------------

## Check In / Out.

Het doel van deze applicatie is om alle check-ins en check-outs van zowel medewerkers (employees) als studenten in onze organisatie te registreren.

1. **Database:**
    - [x] Je moet eerst een database maken met de naam "**checkinoutdb**".    

2. **Departement vereisten:**
    - [x] creeër een tabel genoemd '**department**'
    - [x] De tabel vereiest,
        - een automatisch gegenereerde unieke identificatie (primary key),
        - een titel,
        - en zijn parent-id (zelfverwijzend) die ook een ander afdelingsrecord uit dezelfde tabel zal zijn. 
    - [x] ID-info moet numeriek en incrementeel zijn.
    - [x] Titel zal op tekst gebaseerde gegevens zijn en de tekenlengte mag nooit langer zijn dan 50. We kunnen nooit een record maken met een null-titel.
    - [x] Hieronder wordt code ingevoegd om je te helpen de tabelstructuur te begrijpen:
    - [x] Lees de records van alle afdelingen die onderafdeling (sub-departement) zijn van 'Instructors'
    - [x] Creëer een selectie-query om afdelingen te zoeken die bevat 'java' in hun titels.  

```
insert into department (Title, ParentDepartmentId)
values ('Instructors', null),
       ('Human Resources', null),
       ('Administration', null),
       ('IT Services', null),
       ('Accounting', null),
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
       ('Computer Hardware', 4)
;
```

**3. User vereisten:**

-  [x] De tabel **user** vereist,
        - een unieke identificatie,
            - een email,
            - a GSM-nummer,
            - a wachtwoord,
            - en een activatie-code.
    
    - [x] E-mail- en telefoonnummergegevens kunnen nooit gedupliceerd worden (moet uniek).
    - [x] Elke gebruiker kan een e-mailadres van maximaal 255 karakters hebben.
    - [x] Elke gebruiker kan ook een telefoonnummer hebben van maximaal 13 cijfers.
    - [x] Maak een nieuwe gebruiker met uw gegevens. Gebruik je studentenmailadres om het nieuwe record aan te maken.
    - [x] Update het wachtwoord van de 2e gebruiker uit de gebruikerstabel. Het nieuwe wachtwoord is "2021".
    - [x] Maak een selectiequery om gebruikers te filteren wiens e-mails beginnen met 'Al'. 



4. **Person vereisten:**
    - [x] sql-code voor de **person** tabel wordt aan je gegeven.
    - [x] Je moet echter zelf tabelrelaties (primary key, foreign key enz.) creëren.
    - [x] Als er geen geslacht is ingesteld tijdens invoegopdrachten, moet de standaardwaarde voor geslacht 'U' zijn, wat staat voor 'Undefined'.
    - [x] Verander (update) de voornaam en de familienaam van een persoon bij je keuze.
    - [x] Hieronder vind je de code voor het creeëren van een personentabel:

```

create table if not exists person
(
    person_id     char(16)         not null unique,
    first_name    varchar(255)     not null,
    last_name     varchar(255)     not null,
    date_of_birth date             not null,
    gender        char ________        null,
    nick_name     varchar(20)          null,
    user_id       int              not null
);

```



5. **Event log vereisten:**
    - [x] De **Event log** tabel  heeft
        - een uniek auto-geincrementeerde (primary key) sleutel,
        - user info
        - event date
        - check in time
        - check out time
    - [x] Deze tabel verzamelt logs over wie en wanneer ingecheckt of uitgecheckt.
    - [x] Er is een 1-N (een-op-veel) relatie tussen de tabel 'event_log' en de tabel 'User'.
    - [x] Eén gebruiker kan 0, 1 of meer keren in- of uitchecken.
    - [x] Aan de andere kant kan één event_log maar van één gebruiker zijn.
    - [x] wanneer een gebruiker incheckt, heeft de uitcheckkolom geen waarde.
    - [x] wanneer een gebruiker uitcheckt, moeten we het relevante event_log bijwerken in plaats van een nieuw record te maken,
    - [x] creëer 20 evenementen, inclusief check-in en check-outs. Geef verschillende datums voor de nieuwe records.
    - [x] creëer een selectıequery om logs van het vandaag te zien.
    - [x] creëer een selectiequery om uitchekken vroeger dan 17:00 te zien.  
    - [x] (optioneel) sorteer alle logs bij evenementdatum



6. **Employee vereisten:**
	- [x] Hieronder vindt je de SQL-code voor de tabel **employee**. Gewoon kopiëren, plakken en uitvoeren.
	- [x] Creeër het minsts 3 records de werknemers.

```
create table if not exists employee
(
    employee_id     int      not null unique auto_increment,
    person_id       char(16) not null,
    department_id   int      not null,
    work_start_date date     not null,
    work_end_date   date     null,
    profile_photo   blob     null,

    primary key (employee_id),

    constraint person_to_employee_fk
        foreign key (person_id) references person (person_id)
);
```



7. **Student vereisten:**
	- [x] De SQL-code voor de **student** tabel wordt hieronder gegeven. Gewoon kopiëren, plakken en uitvoeren.
	- [x] Creeër het minst 4 nieuwe records van de studenten
	- [x] Probeer een 5de student te creëren, na de record is gecreërd worden, verwijder het. 

- [x] ```
  create table if not exists student
  (
      student_id       int auto_increment,
      person_id        char(16) null,
      course_id        char(10) null,
      total_attendance double   null,
  
      primary key (student_id),
  
      constraint person_to_student_fk
          foreign key (person_id) references person (person_id)
  );
  ```




8. **Course vereisten:**
	- [x] De SQL-code voor de **course** wordt hieronder gegeven. Gewoon kopiëren, plakken en uitvoeren.
	- [x] Er worden ook instructies voor de cursustabel ingevoegd, zodat je geen tijd verspilt aan typefouten.


```
create table course
(
    course_id  char(20)     not null unique,
    title      varchar(255) not null,
    start_date date         not null,
    end_date   date         null,

    primary key (course_id)
);
```

- [x] Voer de volgende instructies uit om nieuwe cursussen te maken:

```
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
```



## Het einde van de vragen. Begin waar je wilt. Gebruik wat je hebt. Doe wat je kan. Veel succes allemaal!

- [x] Code-share

  ## PROJECT ALS ZIP

  Maak een zip-bestand van je voltooide project.
  Vergeet niet om screenshots toe te voegen aan je zip-bestand.
  src, pom.xml en alle andere vereiste bronnen moeten in de zip zitten.
  Aan de andere kant mag elk bestand met de extensie .iml of elke map met de naam .idea NOOIT aan de zip toegevoegd worden.
  Dit zijn instellingen (configs) van Intellij-applicaties die speciaal zijn aangepast voor je PC's.

  Als je klaar bent, uploader je de code als zip-bestand naar "Aankondigingen → Files → Cursisten Examens". 
  Vergeet **NIET** dat een **juiste naamgevingsconventie** volgen essentieel is; 
  bijvoorbeeld: "Exam01 Hilal Demir.zip". Gebruik geen extra underscore, speciaal karakters of iets anders. 

  Zorgen ervoor dat jullie het mark-down-bestand (***.md) aan de zip hebben toegevoegd. Bovendien, vergeten dan niet om
  een wachtwoord in te stellen voor het zip-bestand. Proberen het minst 4 karakters te zetten in jullie wachtwoord.

  RESOURCES:

  Intellij Idea heeft al een plug-in waarmee je een markdown-bestand kunt openen en bewerken. 
  Daarom is het installeren van de Typora-app slechts een optie voor jou. 
  Als je al vertrouwd bent met het werken aan markdown-bestanden via Intellij, hoeft je deze niet te installeren.




## Het type van dit examen: Individueel examen

> __**Push de code naar GitHub en deel de link van de repository.**__
> 

Nuttige Resources:

- [Typora Markdown Reference | Markdown Guide](https://www.markdownguide.org/tools/typora/)

