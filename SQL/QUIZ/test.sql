use management;

SELECT * FROM customers;

SELECT * FROM customers_and_orders

-- INNER JOIN

SELECT C.customer_name, O.order_amount
FROM Customers C
JOIN ORDERS O ON C.Customer_id = O.customer_id;

