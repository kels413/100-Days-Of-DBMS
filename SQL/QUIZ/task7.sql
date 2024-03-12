-- Joining Multiple Tables:
--Suppose you have tables named "Students", "Courses", and "Enrollments" with appropriate columns. Write a 
--query to retrieve the names of all students along with the names of the courses they are enrolled in.


-- Tables
    -- Student, Courses, Enrollments.

-- student table
    -- student_id

-- courses_table
    -- student_id

-- Enrollments_table
    -- student_table

-- querry
    -- all student name.
    -- students courses.

-- design tables

CREATE TABLE `Students`(
    student_id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    student_name VARCHAR(40)
)


CREATE TABLE `Courses`(
    course_id = INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
)

CREATE TABLE `Enrollment`(
    enroll_id = INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY KEY,
    student_id INT NOT NULL,
    courses_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
    FOREIGN KEY (courses_id) REFERENCES Courses(course_id)
)

