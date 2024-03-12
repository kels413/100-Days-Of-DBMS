-- Basic Inner Join:
-- Write a query to retrieve the names of all employees along with their department names.


SELECT Employees.name, Departments.department_name From Employees
JOIN Departments
ON `Employees`.department_id = Departments.department_id;
