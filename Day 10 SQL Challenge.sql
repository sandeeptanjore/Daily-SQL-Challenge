/*                              SQL Prep  Daily SQL Challenge #10

 We want to get an idea of the status of the orders of our customers. 
 Show each customer number, and then the number of orders they
 have by status type. 
 So you will have a column for customer number, and then one column each for “shipped”, “in process”, “cancelled”, “disputed”, “resolved”, and “on hold”.
*/

--This is the solution based on the requirement
SELECT C.customernumber, 
       C.customername, 
       C.contactlastname,
       O.status,
       COUNT(O.status)
FROM customers C, orders O
WHERE C.customernumber = O.customernumber
GROUP BY C.customernumber,C.customername, C.contactlastname,O.status
ORDER BY C.customernumber;

--This is an additional query that I have framed to check if the results are correct or not
SELECT C.customernumber, 
       C.customername, 
       C.contactlastname,
       O.ordernumber,
       O.status,
       COUNT(O.status)
FROM customers C, orders O
WHERE C.customernumber = O.customernumber
AND O.customernumber IN(114,124,121,141)
GROUP BY C.customernumber,C.customername, C.contactlastname,O.ordernumber,O.status
ORDER BY C.customernumber;