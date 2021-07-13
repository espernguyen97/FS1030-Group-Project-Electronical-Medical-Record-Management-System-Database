--Drop Old Create New DB
DROP DATABASE emrsystem;

CREATE DATABASE emrsystem;

USE emrsystem;

-- https://www.w3schools.com/sql/sql_datatypes.asp
CREATE TABLE user (
    User_Email varchar(255),
    username varchar(255),
    password varchar(255),
    job_position varchar(255),
    First_Name varchar(255),
    Last_name varchar(255),
    PRIMARY KEY (User_Email)
);

DESC users;

INSERT INTO user (User_Email, username, password, job_position, First_Name,Last_name)
VALUES ("test@test.com", "HelloEveryBody", "$2b$10$tPDPMQasnDA.N/jB/ZLJ0OyF8VZixbfGVrj2TkXP8d7Sbvr8rdUfK", "Doctor", "Nick", "Riviera");




USE emrsystem;

-- https://www.w3schools.com/sql/sql_datatypes.asp
CREATE TABLE patient (
    PatientID int NOT NULL AUTO_INCREMENT,
    DOB date,
    OHIP varchar(255),
    Address varchar(255),
    First_Name varchar(255),
    Last_name varchar(255),
    Phone_Number varchar(255),
    Email varchar(255),
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
CREATE TABLE patient_record (
    PatientRecordID int NOT NULL AUTO_INCREMENT,,
    FOREIGN KEY (patient_id) REFERENCES patient (patient_id),
    FOREIGN KEY (Record_id) REFERENCES patient (patient_id),
    PRIMARY KEY (PatientRecordID)
);

DESC patient_records;

INSERT INTO patient_record (PatientRecordID, patient_id, Record_id)
VALUES (1, , );

