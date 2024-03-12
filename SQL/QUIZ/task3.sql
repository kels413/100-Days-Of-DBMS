-- Filtering with Inner Join:
-- Modify the previous query to only retrieve employees who work in the 'Sales' department.

SELECT * from employees

SELECT employees.name FROM employees
JOIN Departments
ON employees.employee_id = Departments.department_id
WHERE Departments.department_name = 'sales'

SELECT department_id, name from Departments, employ WHERE `Departments`.department_id in
(SELECT employee_id FROM employees);

