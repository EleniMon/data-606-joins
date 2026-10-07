USE SpartaGlobalDB;

--ALTER TABLE Spartans
--ADD Email VARCHAR(80);

CREATE UNIQUE INDEX IDX_Spartans_Email -- creates a rule that doesn't allow duplicate values.
ON Spartans(Email)
WHERE Email IS NOT NULL;
