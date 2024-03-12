-- Multiple Table Join:
-- Create a query to list the names of all customers who have made orders, along with the order IDs and order dates

-- names of all customers (customer table)
-- placed order (order table)
-- order_id (order table)
-- order_dates (order_table)


SELECT customer_name AS 'name', order_date AS 'order_date', order_id AS 'order_id' FROM Customers
JOIN ORDERS
ON Customers.customer_id = ORDERS.customer_id