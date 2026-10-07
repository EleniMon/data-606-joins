USE SpartaGlobalDB;

--ALTER TABLE Courses
--ADD End_Date Date;

ALTER TABLE Courses
ADD CHECK (DATEDIFF(d, Starting_Date, End_Date) >= 0);