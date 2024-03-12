-- oining Tables with Different Keys:
--Suppose you have two tables named "Employees" and "Departments". The "Employees" table contains (employee_id
--name, department_id) and the "Departments" table contains (department_id, department_name). Write a query to 
--list the names of all employees along with the names of their respective departments.

SELECT E.name AS 'Employee name', D.department_name AS 'Department name'
FROM Employees E
JOIN Departments D ON E.department_id = D.department_id;




