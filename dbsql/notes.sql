
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

