/*                              SQL Prep  Daily SQL Challenge #7

We want to dig into customer order history. Show each customer name, along with date of their initial order
and their most recent order. Call the initial order 'first_order' and the last one 'last_order'.
Also include any customers who have never made an order.
*/

--Number of customers
SELECT COUNT(1) FROM(
SELECT C.customernumber,
       C.customername, 
       MIN(O.orderdate) AS first_order,
       MAX(O.orderdate) AS last_order
FROM customers C, orders O
WHERE C.customernumber = O.customernumber(+)
GROUP BY C.customernumber, C.customername
ORDER BY C.customernumber);

--Answering the exact question asked

SELECT C.customernumber,
       C.customername, 
       MIN(O.orderdate) AS first_order,
       MAX(O.orderdate) AS last_order
FROM customers C, orders O
WHERE C.customernumber = O.customernumber(+)
GROUP BY C.customernumber, C.customername
ORDER BY C.customernumber;


