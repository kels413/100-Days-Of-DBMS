-- Aggregation with Inner Join:
-- Write a query to calculate the total sales amount for each customer, considering only orders placed after January 1, 2023.


-- sales amount (sum)
-- each customer (GROUP BY)

SELECT Customers.customer_name,
       Customers.customer_id,
       ORDERS.order_date,
       SUM(ORDERS.order_amount) AS 'SUM'
FROM Customers
JOIN ORDERS
ON  Customers.customer_id = ORDERS.customer_id
WHERE ORDERS.order_date > '2023-03-15'
GROUP BY Customers.customer_name, Customers.customer_id, ORDERS.order_date;








