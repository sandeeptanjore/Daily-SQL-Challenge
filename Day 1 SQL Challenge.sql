/* SQL Prep:Daily SQL Challenge #1 */

/*
Show the customer name for all customers who have ever made a payment over $100,000.
*/

SELECT DISTINCT C.customername
FROM   customers C, payments P
WHERE  C.customernumber = P.customernumber
AND    p.amount > 100000;

--Do this with EXISTS Operator
SELECT C.customername       
FROM customers C 
WHERE EXISTS (SELECT 'X'
              FROM payments P
              WHERE C.customernumber = P.customernumber 
              AND P.amount > 100000
              );

  