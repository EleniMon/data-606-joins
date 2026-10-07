USE SpartaGlobalDB;

--ALTER TABLE Spartans
--ADD Spartan_Status VARCHAR(15) DEFAULT 'Active';

INSERT INTO Spartans (First_Name, Middle_Name, Last_Name, Course_ID, Title, Email)
VALUES ('Emily', NULL, 'Smithson', 3, 'Ms', 'emilysmithson@gmail.com');

SELECT *
FROM Spartans
Where Email = 'emilysmithson@gmail.com';