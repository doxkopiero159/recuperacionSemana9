CREATE TABLE [dbo].[Course]
(
	[CourseID] INT NOT NULL identity(1,1) PRIMARY KEY, 
    [Title] NCHAR(50) NULL, 
    [Credits] INT NULL
)
