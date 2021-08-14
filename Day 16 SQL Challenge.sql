/*          SQL Prep  Daily SQL Challenge #16

We want to see how many customers our employees are working with. 
Show a list of employee first and last names (same column), along with the number of customers they are working with.

*/

SELECT C.salesrepemployeenumber AS "Employee Number",
       E.firstname||' '||E.lastname AS "Employee''s Full Name",
       COUNT(C.Salesrepemployeenumber) AS "Employee Serving # of Customers"
FROM   customers C, 
       employees E 
WHERE  E.employeenumber= C.salesrepemployeenumber             
HAVING COUNT(C.customernumber) > 1
AND    C.Salesrepemployeenumber IS NOT NULL
GROUP BY C.salesrepemployeenumber,
          E.lastname,
          E.firstname;
       
       



