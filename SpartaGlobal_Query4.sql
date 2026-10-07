USE SpartaGlobalDB;

--ALTER TABLE Spartans
--ADD CHECK (Title IN ('Mr', 'Ms', 'Mx', 'Dr'));

INSERT INTO Spartans (First_Name, Middle_Name, Last_Name, Course_ID, Title)
VALUES ('John', NULL, 'Smith', 1, 'Sir');

-- ERROR MESSAGE
-- Msg 547, Level 16, State 0, Line 6
-- The INSERT statement conflicted with the CHECK constraint "CK__Spartans__Title__5FB337D6". 
-- The conflict occurred in database "SpartaGlobalDB", table "dbo.Spartans", column 'Title'.
-- The statement has been terminated.