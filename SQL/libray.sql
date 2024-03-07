-- A database sample of a libray website.
-- database name: customers_and_orders
-- tables : customers table and orders table.g

-- create DATABASE
CREATE DATABASE IF NOT EXISTS `customers_and_orders`

-- USE DB
USE customers_and_orders

--  CREATE TABLE

CREATE TABLE IF NOT EXISTS `customers`(
        id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(30),
        last_name VARCHAR(30),
        email VARCHAR(30)
)

CREATE TABLE IF NOT EXISTS `orders`(
        id INT AUTO_INCREMENT PRIMARY KEY,
        order_date DATE,
        amount DECIMAL(8, 2),
        customer_id INT,
        FOREIGN KEY(customer_id) REFERENCES customers(id)
)

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1)

SELECT * FROM customers

SELECT * FROM orders


SELECT * FROM customers WHERE id = 1


SELECT * FROM orders WHERE customer_id  = 1

-- using subquery to join the select

SELECT * FROM orders
WHERE customer_id = 
                    (
                        SELECT id FROM customers
                        WHERE last_name = "George"
                    );

SELECT * FROM customers, orders;


SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id


-- explicit inner join.
SELECT first_name, last_name, order_date, amount FROM customers
JOIN
    orders 
    ON customers.id = orders.id


