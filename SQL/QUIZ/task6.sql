--Self Join:
--Suppose you have a table named "Employees" with columns (employee_id, name, manager_id). Write a query to
--retrieve the names of all employees along with the names of their respective managers.

SELECT Employees.name, managers.name FROM EMPloyees
JOIN managers ON `EMPloyees`.employee_id = `managers`.manager_id;


-- correction on this self JOIN LATER, I HAVE NOT READ BOUT IT.
