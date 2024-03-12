-- count how many employee in each department.

SELECT Employees.name,Departments.department_name, COUNT(Departments.department_name) AS 'COUNT' From Employees
JOIN Departments
ON `Employees`.department_id = Departments.department_id
WHERE `Departments`.department_name = 'sales' OR `Departments`.department_name = 'Marketing'
GROUP BY Departments.department_name, Employees.name