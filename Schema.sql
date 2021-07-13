--Drop Old Create New DB
DROP DATABASE emrsystem;

CREATE DATABASE emrsystem;

USE emrsystem;

-- https://www.w3schools.com/sql/sql_datatypes.asp
CREATE TABLE user (
    UserID  int NOT NULL AUTO_INCREMENT,
    email varchar(100),
    username varchar(20),
    password varchar(255),
    job_position varchar(255),
    First_Name varchar(255),
    Last_name varchar(255),
    Admin_Flag boolean,
    Last_Login date(255),
    PRIMARY KEY (UserID)
);

DESC users;

INSERT INTO user (UserID, email, username, password, job_position, First_Name, Last_name, Admin_Flag, Last_Login)
VALUES (1,"test@test.com", "HelloEveryBody", "$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK", "Doctor", "Nick", 1, "");




USE emrsystem;

-- https://www.w3schools.com/sql/sql_datatypes.asp
CREATE TABLE patient (
    PatientID int NOT NULL AUTO_INCREMENT,
    DOB date,
    OHIP varchar(10),
    Address varchar(255),
    First_Name varchar(50),
    Last_name varchar(50),
    Phone_Number varchar(20),
    Email varchar(100),
    Last_Visit date,
    Last_Edit datetime,
    Age varchar(255),
    PRIMARY KEY (PatientID)
);

DESC patient;

INSERT INTO patient (PatientID, DOB, OHIP, Address, First_Name,Last_name,Phone_Number,Email,Last_Visit,Last_Edit,Age)
VALUES (1, "1985-03-03", "651ASD12d5612d1165", "123 Fake St Faketown USA", "Barticulous", "Samperson","","","36");




USE emrsystem;


-- https://www.w3schools.com/sql/sql_datatypes.asp
CREATE TABLE notes (
    NoteID int NOT NULL AUTO_INCREMENT,,
    FOREIGN KEY (patient_id) REFERENCES patient (patient_id),
    Note varchar(1000),
    Last_Edit datetime,
    PRIMARY KEY (NoteID)
);

DESC notes;

INSERT INTO notes (NoteID, patient_id, Note, Last_Edit)
VALUES (1, , );

