CREATE VIEW StudentDetails AS
SELECT 
    Student.StudentID,
    Student.StudentName,
    Student.DepartmentID,
    Course.CourseID,
    Course.CourseName
FROM Student
JOIN Enrollment
    ON Student.StudentID = Enrollment.StudentID
JOIN Course
    ON Enrollment.CourseID = Course.CourseID;
