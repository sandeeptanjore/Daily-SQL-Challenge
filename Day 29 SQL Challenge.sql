/*          SQL Prep  Daily Challenge #28
 We want a report of employees and orders that are still in the works (not shipped, cancelled, or resolved). 
Show the employee name (first and last), customer number, order number, and the status of the order.
*/

SELECT * FROM employees;

SELECT * FROM orders;

SELECT * FROM customers;

select distinct status from orders;


SELECT C.customernumber, 
       O.ordernumber,
       O.status,
       E.firstname,
       E.lastname
FROM customers C
INNER JOIN orders O ON O.customernumber = C.customernumber
INNER JOIN employees E ON E.employeenumber = C.salesrepemployeenumber
WHERE O.status NOT IN ('Cancelled','Resolved','Shipped');
