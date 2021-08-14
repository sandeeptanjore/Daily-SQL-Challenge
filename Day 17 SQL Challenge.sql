/*          SQL Prep  Daily SQL Challenge #17

Find a list of invalid employee email addresses (hint: there might not be any).

*/

SELECT E.employeenumber,
       E.lastname,
       E.firstname,
       E.email
 FROM employees E
WHERE E.email NOT LIKE '%classicmodelcars.com';
