/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Course as TARGET
USING (VALUES
	(1,'Economics',3),
	(2,'Literature',3),
	(3,'Chemistry',4)

)
as Source(CourseID,Title,Credits)
on Target.CourseID= Source.CourseID
WHEN NOT MATCHED  BY  TARGET  THEN
INSERT (Title,Credits)
vALUES(Title,Credits);


MERGE INTO Student as TARGET
USING (VALUES
	(1,'Tibbetts','Donnie','2013-09-01'),
	(2,'Guzman','Lisa','2012-01-13'),
	(3,'Catlett','Phil','2011-09.03')
)
as Source(StudentID,LastName,FirstName,EnrollmentDate)
on Target.StudentID= Source.StudentID
WHEN NOT MATCHED  BY  TARGET  THEN
INSERT (LastName,FirstName,EnrollmentDate)
vALUES(LastName,FirstName,EnrollmentDate);


MERGE INTO Enrollment as TARGET
USING (VALUES
	(1,2.00,1,1),
	(2,3.50,1,2),
	(3,4.00,2,3),
	(4,1.80,2,1),
	(5,3.20,3,1),
	(6,4.00,3,2)



)
as Source(EnrollmetID,Grade,CourseID,StudentID)
on Target.EnrollmetID= Source.StudentID
WHEN NOT MATCHED  BY  TARGET  THEN
INSERT (Grade,CourseID,StudentID)
vALUES(Grade,CourseID,StudentID);