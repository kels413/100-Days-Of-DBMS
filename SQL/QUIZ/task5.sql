-- Aggregation with Inner Join:
-- Write a query to calculate the total sales amount for each customer, considering only orders placed after January 1, 2023.


-- sales amount (sum)
-- each customer (GROUP BY)

SELECT C.customer_name,
       C.customer_id,
       O.order_date,
       SUM(O.order_amount) AS 'SUM'
FROM Customers C
JOIN ORDERS O
ON  C.customer_id = O.customer_id
WHERE O.order_date > '2023-01-15'
GROUP BY C.customer_name, C.customer_id, O.order_date;




