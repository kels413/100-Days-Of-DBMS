-- Basic Inner Join:
-- Write a query to retrieve the names of all employees along with their department names.


SELECT Employees.name,Departments.department_name, COUNT(Departments.department_name) AS 'COUNT' From Employees
JOIN Departments
ON `Employees`.department_id = Departments.department_id
WHERE `Departments`.department_name = 'sales' OR `Departments`.department_name = 'Marketing'
GROUP BY Departments.department_name, Employees.name


SELECT * FROM departments;

SELECT * FROM Employees
