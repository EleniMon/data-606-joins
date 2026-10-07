USE SpartaGlobalDB;

--ALTER TABLE Spartans
--ADD Title VARCHAR(5);

UPDATE Spartans
SET Title = 'Mr'
WHERE Spartan_ID = 1;

UPDATE Spartans
SET Title = 'Ms'
WHERE Spartan_ID = 2;

UPDATE Spartans
SET Title = 'Mr'
WHERE Spartan_ID = 3;

UPDATE Spartans
SET Title = 'Ms'
WHERE Spartan_ID = 4;

UPDATE Spartans
SET Title = 'Mr'
WHERE Spartan_ID = 5;
