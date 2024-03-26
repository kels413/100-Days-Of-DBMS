use management;

SELECT * FROM customers;

SELECT * FROM customers_and_orders

-- INNER JOIN

SELECT C.customer_name, O.order_amount
FROM Customers C
JOIN ORDERS O ON C.Customer_id = O.customer_id;



SELECT C.customer_name,   IFNULL(O.order_amount, 'why you No go buy something') as `order_amount`
FROM Customers C
LEFT JOIN ORDERS O ON C.Customer_id = O.customer_id;