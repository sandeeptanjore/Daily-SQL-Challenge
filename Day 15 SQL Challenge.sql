/*                              SQL Prep  Daily SQL Challenge #15

Show a list of all the countries that customers come from.

This sounds quite simple

*/


SELECT C.customernumber, 
       C.customername, 
       C.contactlastname, 
       C.contactfirstname, 
       C.country
FROM customers C
ORDER BY C.country;

