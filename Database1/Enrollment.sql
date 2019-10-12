﻿create TABLE [dbo].[Enrollment]
(
	[EnrollmetID] INT NOT NULL PRIMARY KEY identity(1,1), 
    [Grade] DECIMAL(3, 2) NULL, 
    [CourseID] INT NOT NULL, 
    [StudentID] INT NOT NULL
	
	CONSTRAINT [FK_dbo.Enrollment_dbo.Course_CourseID]FOREIGN KEY ([CourseID])
	REFERENCES [dbo].[Course]([CourseID])ON DELETE  CASCADE,

	CONSTRAINT [FK_dbo.Enrollment_dbo.Student_StudentID]FOREIGN KEY ([StudentID])
	REFERENCES [dbo].[Student]([StudentID])ON DELETE  CASCADE
)
