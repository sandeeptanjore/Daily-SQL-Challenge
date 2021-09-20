/*          SQL Prep  Daily Challenge #25
Find the product that has been ordered the most. Show the product name, and how many times it has been ordered.
*/


SELECT P.productname AS "Product Name",
       SUM(OP.quantityordered) AS "Number of times the product was ordered"
FROM ORDERDETAILS OP , products P
WHERE P.productcode = OP.productcode
GROUP BY P.productname
ORDER BY SUM(OP.quantityordered) DESC;



