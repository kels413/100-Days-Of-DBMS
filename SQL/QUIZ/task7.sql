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


SELECT Students.name, Courses.name FROM Students
JOIN Courses ON Student.id = `Courses`.id
-- 
-- MANY TO MANY RELATIONSHIP, WILL STILL COME BACK TO IT.
