/*                              SQL Prep  Daily SQL Challenge #5 */

/*
We need to get some feedback from all of the employees who have sold Harley Davidson Motorcycles. 
Get a report of the employee first names and emails for all employees who have ever sold a Harley.

*/

SELECT DISTINCT salesrepemployeenumber
         FROM customers WHERE customernumber IN(
                                                SELECT customernumber FROM orders 
                                                WHERE ordernumber IN(
                                                    SELECT DISTINCT ordernumber 
                                                    FROM orderdetails O
                                                    WHERE productcode IN (SELECT productcode FROM products WHERE productline ='Motorcycles'
                                                                            AND productname like '%Harley%'
                                                                             )
                                        ))
ORDER BY salesrepemployeenumber                               ;
 