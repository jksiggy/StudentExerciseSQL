
CREATE TABLE Cohort (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    CohortNumber INTEGER NOT NULL
);

CREATE TABLE Student (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    StudentName VARCHAR(40) NOT NULL,
    CohortId INTEGER NOT NULL,
    CONSTRAINT FK_Student_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);
 
CREATE TABLE Instructor (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    InstuctorName VARCHAR(40) NOT NULL,
    CohortId INTEGER NOT NULl,
    CONSTRAINT FK_Instructor_Cohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE Exercise (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    ExerciseName VARCHAR(40) NOT NULL,
    InstructorId INTEGER NOT NULL ,
    CONSTRAINT FK_Exercise_Instructor FOREIGN KEY(InstructorId) REFERENCES Instructor(Id)
);

CREATE TABLE StudentExersice (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    StudentId INTEGER NOT NULL,
    ExerciseId INTEGER NOT NULL,
    CONSTRAINT FK_StudentExercise_Student FOREIGN KEY (StudentId) REFERENCES Student(Id),
    CONSTRAINT FK_StudentExercise_Exercise FOREIGN KEY (ExerciseId) REFERENCES Exercise(Id),

);

INSERT INTO Cohort (CohortNumber) VALUES (31);
INSERT INTO Cohort (CohortNumber) VALUES (32);
INSERT INTO Cohort (CohortNumber) VALUES (33);

INSERT INTO Student(StudentName,CohortId) VALUES('Logan Palmer', 1);
INSERT INTO Student(StudentName,CohortId) VALUES('James Harrison', 2);
INSERT INTO Student(StudentName,CohortId) VALUES('Malcom Little', 1);
INSERT INTO Student(StudentName,CohortId) VALUES('Ken Young', 3);
INSERT INTO Student(StudentName,CohortId) VALUES('Warren Dillion', 3);
INSERT INTO Student(StudentName,CohortId) VALUES('Gilmore Bryant', 2);
INSERT INTO Student(StudentName,CohortId) VALUES(' Willy Gibson', 1);
INSERT INTO Student(StudentName,CohortId) VALUES('Chang Kang', 2);
INSERT INTO Student(StudentName,CohortId) VALUES('Josh Phillip', 1);
INSERT INTO Student(StudentName,CohortId) VALUES('Ortiz Gonze', 3);

INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Willie Nelson', 3);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Dolly Parton', 3);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('George Jones', 2);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Vince Gil', 1);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Alan Jackson', 2);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Elvis Presley', 1);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('George Strait', 1);
INSERT INTO Instructor(InstuctorName,CohortId) VALUES('Johnny Cash', 3);

INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('React', 4);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('JavaScript', 7);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('C#', 1);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('SQL', 2);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('API', 3);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('CSS', 4);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('HTML', 7);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('Json Server',8);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('.Net', 6);
INSERT INTO Exercise(ExerciseName,InstructorId) VALUES('Session Storage',5);

INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(1,1);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(1,2);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(2,3);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(2,4);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(3,5);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(3,1);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(4,4);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(4,3);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(5,5);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(5,3);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(6,1);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(6,2);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(7,3);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(7,4);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(8,5);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(8,1);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(9,4);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(9,3);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(10,1);
INSERT INTO StudentExersice(StudentId,ExerciseId) VALUES(10,4);