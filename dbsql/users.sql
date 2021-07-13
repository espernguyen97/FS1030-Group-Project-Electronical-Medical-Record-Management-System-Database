
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

