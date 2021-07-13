
USE emrsystem;

DROP TABLE patient;

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
