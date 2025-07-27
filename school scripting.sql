CREATE TABLE Teachers
(
 Id INT PRIMARY KEY,
 Name VARCHAR(50),
 Address VARCHAR(200)
)

CREATE TABLE Subjects
(
  Id INT PRIMARY KEY,
  Name VARCHAR(50)
)

CREATE TABLE TeacherSubjects
(
  Id INT PRIMARY KEY,
  TeacherId INT,
  SubjectId INT
)

GO

SELECT Id,Name
	FROM Subjects
	WHERE Name = 'English'

SELECT TeacherId
	FROM TeacherSubjects
	WHERE SubjectId = 1

SELECT Name
	FROM Teachers
	WHERE Id = 1

GO

SELECT C.Id, C.Name
	FROM Subjects A
	INNER JOIN TeacherSubjects B ON A.Id = B.SubjectId
	INNER JOIN Teachers C ON B.TeacherId = C.Id
	WHERE A.Name = 'English'	        




