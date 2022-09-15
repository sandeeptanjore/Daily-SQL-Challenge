/*
            SQL Prep  Daily Challenge #32
 Find the total number of customers that each employee represents. Prepare a report in this format 
 – "Andy Fixter represents 5 customers". 
 Name the column “No. of customers” and order it by customer count ascending.
 
 */

SELECT E.employeenumber,
        E.firstname||' '||E.lastname AS "Employee Name",
       'represents '|| COUNT(C.salesRepEmployeeNumber)||' customers' AS "Number of Customers"
FROM employees  E
LEFT JOIN customers  C
ON E.employeeNumber = C.salesRepEmployeeNumber
GROUP BY E.employeenumber,
         E.firstname||' '||E.lastname
ORDER BY COUNT(C.salesRepEmployeeNumber);
