USE SpartaGlobalDB;

INSERT INTO Courses (Course_Name, Trainer, Starting_Date)
VALUES
('Data Engineering', 'James Smith', '2026-10-12'),
('DevOps Engineering', 'Sarah Jones', '2026-10-19'),
('AI Engineering', 'Michael Brown', '2026-10-26');

INSERT INTO Spartans (First_Name, Middle_Name, Last_Name, Course_ID)
VALUES
('Alex', NULL, 'Taylor', 1),
('Emily', 'Rose', 'Wilson', 1),
('Daniel', NULL, 'Evans', 2),
('Sophie', 'Marie', 'Clark', 2),
('Ryan', NULL, 'Walker', 3);
							