/*
                            Day 35 SQL Challenge
Create a query which displays the total number of products shipped in the years 2003, 2004 and 2005.
*/

SELECT EXTRACT (YEAR FROM orderdate) AS "YEAR",COUNT(orderdate) as "NUMBER OF ORDERS"
FROM   orders
WHERE  EXTRACT (YEAR FROM orderdate) BETWEEN 2003 AND 2006
AND    status = 'Shipped'
GROUP BY EXTRACT (YEAR FROM orderdate);

