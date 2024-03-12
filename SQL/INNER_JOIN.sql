CREATE DATABASE IF NOT EXISTS `management`

USE `management`

-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    department_name VARCHAR(50)
);

-- Insert some sample data into the Departments table
INSERT INTO Departments (department_name) VALUES
('Sales'),
('Marketing'),
('Finance');




-- Create the Employees table
CREATE TABLE IF NOT EXISTS Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    name VARCHAR(50) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert some sample data into the Employees table
INSERT INTO Employees (name, department_id) VALUES
('John Doe', 1),
('Jane Smith', 2),
('David Brown', 1),
('Emily Johnson', 3),
('Michael Lee', 2);



-------------------------------------------------------------------------------------------------------
-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT PRIMARY KEY NOT NULL UNIQUE,
    customer_name VARCHAR(50)
);

-- Insert some sample data into the Customers table
INSERT INTO Customers (customer_name) VALUES
('ABC Company'),
('XYZ Corporation'),
('123 Industries');

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL UNIQUE,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert some sample data into the Orders table
INSERT INTO Orders (customer_id, order_date) VALUES
(1, '2023-01-15'),
(2, '2023-02-20'),
(1, '2023-03-10'),
(3, '2023-04-05');


SELECT * from customers;

SELECT * FROM Orders;

SELECT `Orders`.order_id, `Orders`.customer_id, `Orders`.order_date, Customers.customer_name FROM Customers
JOIN Orders
ON Customers.customer_id = Orders.Customer_id;
