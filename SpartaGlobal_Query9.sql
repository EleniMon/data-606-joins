USE SpartaGlobalDB;

--EXEC sp_rename 'Spartans.Spartan_Status', 'Status', 'COLUMN';

ALTER TABLE Spartans
DROP COLUMN Middle_Name;

SELECT * FROM Spartans;