CREATE TABLE IF NOT EXISTS student
(id integer NOT NULL,
 firstname varchar(100) NOT NULL,
 lastname varchar(100) NOT NULL,
 dateofbirth date,
 enrolleddate date,
 gender nchar(1),
 nationalidnumber varchar(20),
 studentcardnumber varchar(20));

 CREATE TABLE IF NOT EXISTS teacher
(id integer NOT NULL,
 firstname varchar(100) NOT NULL,
 lastname varchar(100) NOT NULL,
 dateofbirth date,
 academicrank varchar(30),
 hiredate date);
 

 CREATE TABLE IF NOT EXISTS gradedetails
(id integer NOT NULL,
 gradeid integer,
 achievementtypeid integer,
 achievementpoints char(3),
 achievementmaxpoints char(3),
 achievementdate date);
 
 CREATE TABLE IF NOT EXISTS Course
(ID integer NOT NULL,
 Name varchar(100),
 Credit char(2),
 AcademicYear varchar(10),
 Semester nchar(1));

 CREATE TABLE IF NOT EXISTS Grade
(ID integer NOT NULL,
 StudentID integer,
 CourseID integer,
 TeacherID integer, 
 Grade smallint,
 Comment text,
 CreatedDate date);


 CREATE TABLE IF NOT EXISTS AchievementType
(ID integer NOT NULL,
 Name  varchar(100),
 Description text,
 ParticipationRate varchar(20));