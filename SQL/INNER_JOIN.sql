CREATE DATABASE IF NOT EXISTS `management`

USE `management`

-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert some sample data into the Departments table
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance');

-- Create the Employees table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert some sample data into the Employees table
INSERT INTO Employees (employee_id, name, department_id) VALUES
(1, 'John Doe', 1),
(2, 'Jane Smith', 2),
(3, 'David Brown', 1),
(4, 'Emily Johnson', 3),
(5, 'Michael Lee', 2);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- Insert some sample data into the Customers table
INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'ABC Company'),
(2, 'XYZ Corporation'),
(3, '123 Industries');

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert some sample data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-02-20'),
(3, 1, '2023-03-10'),
(4, 3, '2023-04-05');

SHOW TABLES