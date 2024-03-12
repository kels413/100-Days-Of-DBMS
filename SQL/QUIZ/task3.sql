-- Filtering with Inner Join:
-- Modify the previous query to only retrieve employees who work in the 'Sales' department.


SELECT employees.name FROM employees
JOIN Departments
ON employees.department_id = Departments.department_id
WHERE Departments.department_name = 'sales'

SELECT department_id, department_name from Departments WHERE `Departments`.department_id in
(SELECT employee_id FROM employees);

-- using subquerry

SELECT name,
(SELECT department_name FROM Departments WHERE `Departments`.department_id = employees.department_id)
FROM 
employees



