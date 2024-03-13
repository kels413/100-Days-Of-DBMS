-- Joining Tables with NULL Values:
--Suppose you have a table named "Orders" with columns (order_id, customer_id, order_date) and a table named "Customers" with columns (customer_id, customer_name). Write a query to retrieve the names of customers who have not placed any orders.


-- SELECT C.customer_name FROM Customers C
-- JOIN ORDERS O ON C.customer_id NOT IN O.Customer_id;


SELECT C.customer_name
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
WHERE O.customer_id IS NULL;
