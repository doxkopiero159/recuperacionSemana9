CREATE TABLE [dbo].[Student]
(
	[StudentID] INT NOT NULL PRIMARY KEY identity(1,1), 
    [LastName] NCHAR(50) NULL, 
    [FirstName] NCHAR(50) NULL, 
    [EnrollmentDate] DATETIME NULL, 
    [Email] NVARCHAR(50) NULL
)
